if not game:IsLoaded() then
    game.Loaded:Wait()
end


local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Rionnag Hub - ARX",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading Rionnag Hub - ARX",
   LoadingSubtitle = "by GS",
   ShowText = "Rionnag Hub", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Bloom", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevent/ojzs Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Rionnag Hub", -- Create a custom folder for your hub/game
      FileName = "ARX"
   },

--    Discord = {
--       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
--       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
--       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
--    },

--    KeySystem = false, -- Set this to true to use our key system
--    KeySettings = {
--       Title = "Untitled",
--       Subtitle = "Key System",
--       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
--       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
--       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
--       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
--       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
--    }
})

local vu = game:GetService("VirtualUser")

game.Players.LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- 1) Collect completed chapters
local plrName = game:GetService("Players").LocalPlayer.Name
local completedFolder = ReplicatedStorage.Player_Data[plrName].ChapterLevels
local COMPLETED = {}
for _, inst in ipairs(completedFolder:GetChildren()) do
    COMPLETED[inst.Name] = true
end

-- 2) Load every world's ModuleScript and flatten into chapter map
local levelsFolder = ReplicatedStorage.Shared.Info.GameWorld.Levels
local ALL = {}  -- [chapterId] = info

for _, m in ipairs(levelsFolder:GetChildren()) do
    if m:IsA("ModuleScript") then
        local ok, data = pcall(require, m)
        if ok and type(data) == "table" then
            for _, chapters in pairs(data) do
                if type(chapters) == "table" then
                    for chapterId, info in pairs(chapters) do
                        if type(chapterId) == "string" and type(info) == "table" then
                            ALL[chapterId] = info
                        end
                    end
                end
            end
        end
    end
end

-- Helpers
local function normalizeReq(req)
    if not req then return {} end
    local t = {}
    if type(req) == "string" then
        table.insert(t, req)
    elseif type(req) == "table" then
        for k, v in pairs(req) do
            if type(v) == "string" then
                table.insert(t, v)
            elseif type(k) == "string" and v == true then
                table.insert(t, k)
            end
        end
    end
    return t
end

local function requirementsMet(info)
    local reqField = info.Requirements and info.Requirements.Required_Levels
    local reqs = normalizeReq(reqField)
    for _, need in ipairs(reqs) do
        if not COMPLETED[need] then
            return false
        end
    end
    return true
end

-- Only allow Story chapters
local function isStoryChapter(chapterId, info)
    if not chapterId or not info then return false end
    if string.find(chapterId, "_Chapter") then
        return true
    end
    if info.Name and string.find(info.Name, "Chapter") then
        return true
    end
    return false
end

-- 3) Memoized depth based on requirement chain length
local DEPTH, VISITING = {}, {}
local function depthOf(chapterId)
    if DEPTH[chapterId] ~= nil then return DEPTH[chapterId] end
    if VISITING[chapterId] then
        DEPTH[chapterId] = 0
        return 0
    end
    VISITING[chapterId] = true

    local info = ALL[chapterId]
    if not info then
        DEPTH[chapterId] = 0
        VISITING[chapterId] = nil
        return 0
    end

    local reqs = normalizeReq(info.Requirements and info.Requirements.Required_Levels)
    local best = 0
    for _, r in ipairs(reqs) do
        best = math.max(best, 1 + depthOf(r))
    end

    DEPTH[chapterId] = best
    VISITING[chapterId] = nil
    return best
end

-- 4) Gather playable story chapters (unlocked & not completed)
local candidates = {}
for chapterId, info in pairs(ALL) do
    if isStoryChapter(chapterId, info) and not COMPLETED[chapterId] and requirementsMet(info) then
        table.insert(candidates, { id = chapterId, info = info })
    end
end

-- 5) Pick the "best" by depth > LayoutOrder > id
table.sort(candidates, function(a, b)
    local da, db = depthOf(a.id), depthOf(b.id)
    if da ~= db then return da < db end
    local la, lb = tonumber(a.info.LayoutOrder) or 0, tonumber(b.info.LayoutOrder) or 0
    if la ~= lb then return la < lb end
    return a.id < b.id
end)

-- 6) Return best playable Story chapter
local function GetBestPlayableChapter()
    local best = candidates[#candidates]
    if not best then return nil end
    return {
        world = tostring(best.info.World or "Unknown"),
        chapter = tostring(best.id),
    }
end

local function play(world, chapter)
    local event = game:GetService("ReplicatedStorage").Remote.Server.PlayRoom.Event

    event:FireServer("Create")

    event:FireServer("Change-Mode", {["Mode"] = "Story"})

    event:FireServer("Change-World", {["World"] = world})

    event:FireServer("Change-Chapter", {["Chapter"] = chapter})
    
    event:FireServer("Submit")
    
    -- event:FireServer("Start")
end

local function yen()
    return game:GetService("Players").LocalPlayer:WaitForChild("Yen").Value
end

local function maxYen()
    local name = game:GetService("Players").LocalPlayer.Name
    return game:GetService("ReplicatedStorage"):WaitForChild("Player_Data")[name].Stats.YenMax.Value
end

local function getUpgCost(unit)
        return unit:WaitForChild("Upgrade_Folder").Upgrade_Cost.Value
end

local function gameRunning()
    return game:GetService("ReplicatedStorage").Values.Game.GameRunning.Value
end

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UnitsFolder = ReplicatedStorage.Shared.Info.Units

-- Collect all unit infos from every .temp file
local AllUnits = {}

for _, genreFolder in ipairs(UnitsFolder:GetChildren()) do
    if genreFolder:IsA("Folder") then
        local tempModule = genreFolder:FindFirstChild("Temp")
        if tempModule and tempModule:IsA("ModuleScript") then
            local ok, unitTable = pcall(require, tempModule)
            if ok and type(unitTable) == "table" then
                for unitKey, unitInfo in pairs(unitTable) do
                    if type(unitInfo) == "table" and unitInfo.DisplayName then
                        table.insert(AllUnits, {
                            Key = unitKey,        -- table key (e.g. "Gojo")
                            Info = unitInfo       -- full details
                        })
                    end
                end
            end
        end
    end
end

local function Normalize(str)
    str = string.lower(str or "")

    -- replace : with ()
    str = str:gsub(":(%w+)", " (%1)")

    -- replace underscores with spaces
    str = str:gsub("_", " ")

    return str
end

local function FindUnit(query)
    local q = Normalize(query)

    for _, unit in ipairs(AllUnits) do
        local display = Normalize(unit.Info.DisplayName or "")
        local key = Normalize(unit.Key or "")

        -- exact match after normalization
        if display == q or key == q then
            return unit.Info, unit.Key
        end

        -- partial match
        if display:find(q, 1, true) or key:find(q, 1, true) then
            return unit.Info, unit.Key
        end
    end

    return nil
end

local function needToSell(rarity)
    if rarity == "Mythic" then
        return game:GetService("ReplicatedStorage").Player_Data[plrName].Setting["Sell Auto Mythic"].Value
    elseif rarity == "Legendary" then
        return game:GetService("ReplicatedStorage").Player_Data[plrName].Setting["Sell Auto Legendary"].Value
    elseif rarity == "Epic" then
        return game:GetService("ReplicatedStorage").Player_Data[plrName].Setting["Sell Auto Epic"].Value
    elseif rarity == "Rare" then
        return game:GetService("ReplicatedStorage").Player_Data[plrName].Setting["Sell Auto Rare"].Value
    elseif rarity == "Shiny" then
        return game:GetService("ReplicatedStorage").Player_Data[plrName].Setting["Sell Auto Shiny"].Value
    end
end

local function getInv()
    local ret = {}
    for i, v in ipairs(game:GetService("ReplicatedStorage").Player_Data[plrName].Items:GetChildren()) do
        if not v.IsGamepass.Value then
            ret[v.Name] = v.Amount.Value
        end
    end
    return ret
end

local function getGold()
    return game:GetService("ReplicatedStorage").Player_Data[plrName].Data.Gold.Value
end

local Main = Window:CreateTab("Main", 4483362458)

local quickPlay = Main:CreateSection("Quick Play")

local playNextLvl = Main:CreateButton({
Name = "Continue Story mode",
Callback = function()
local nextPlayable = GetBestPlayableChapter()
    if nextPlayable then
        Rayfield:Notify({
            Title = "Found a playable chapter",
            Content = ("World: %s, Chapter: %s"):format(nextPlayable.world, nextPlayable.chapter),
            Duration = 5,
            Image = 4483362458,
        })

        play(nextPlayable.world, nextPlayable.chapter)
    else
        Rayfield:Notify({
            Title = "Found a playable chapter",
            Content = "No playable chapters available.",
            Duration = 5,
            Image = 4483362458,
        })
    end
end,
})

local Tasks = Main:CreateSection("Tasks")

getgenv().autoUpgradeMaxYen = false
local autoUpgradeMaxYenTog = Main:CreateToggle({
   Name = "Upgrade Max Yen",
   CurrentValue = false,
   Flag = "autoUpgradeMaxYenTog", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      getgenv().autoUpgradeMaxYen = Value
   end,
})

spawn(function()
    while task.wait() do
        if getgenv().autoUpgradeMaxYen then
           if yen() == maxYen() then
                game:GetService("ReplicatedStorage").Remote.Server.Gameplay.StatsManager:FireServer("MaximumYen")
           end
        end
    end
end)


getgenv().autoUpgradeUnits = false
local autoUpgradeUnitsTog = Main:CreateToggle({
   Name = "Upgrade Units",
   CurrentValue = false,
   Flag = "autoUpgradeUnitsTog", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      getgenv().autoUpgradeUnits = Value
   end,
})

spawn(function()
    while task.wait(1) do
        if getgenv().autoUpgradeUnits then
           for i, v in ipairs(game:GetService("Players").LocalPlayer.UnitsFolder:GetChildren()) do
                if yen() >= getUpgCost(v) then
                    game:GetService("ReplicatedStorage").Remote.Server.Units.Upgrade:FireServer(v)
                end
            end
        end
    end
end)

getgenv().autoNextLevel = false
getgenv().autoRetryLevel = false

local autoNextLevelTog
local autoRetryLevelTog

autoNextLevelTog = Main:CreateToggle({
   Name = "Next level",
   CurrentValue = false,
   Flag = "autoNextLevelTog", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    if getgenv().autoRetryLevel then
        getgenv().autoRetryLevel = false
        autoRetryLevelTog:Set(false)
    end
      getgenv().autoNextLevel = Value
   end,
})

spawn(function()
    while task.wait() do
        if getgenv().autoNextLevel and not gameRunning() then
            task.wait(2)
            game:GetService("ReplicatedStorage").Remote.Server.OnGame.Voting.VoteNext:FireServer()
        end
    end
end)

autoRetryLevelTog = Main:CreateToggle({
   Name = "Retry level",
   CurrentValue = false,
   Flag = "autoRetryLevelTog", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    if getgenv().autoNextLevel then
        getgenv().autoNextLevel = false
        autoNextLevelTog:Set(false)
    end
      getgenv().autoRetryLevel = Value
   end,
})

spawn(function()
    while task.wait() do
        if getgenv().autoRetryLevel and not gameRunning() then
            task.wait(2)
            game:GetService("ReplicatedStorage").Remote.Server.OnGame.Voting.VoteRetry:FireServer()
        end
    end
end)

getgenv().autoRoll = false
local autoRollTog = Main:CreateToggle({
   Name = "Roll",
   CurrentValue = false,
   Flag = "autoRollTog", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      getgenv().autoRoll = Value
   end,
})

spawn(function()
    while task.wait() do
        if getgenv().autoRoll then 
            local ohString1 = "10x"
            local ohString2 = "Rateup"
            local ohTable3 = {}

            game:GetService("ReplicatedStorage").Remote.Server.Gambling.UnitsGacha:FireServer(ohString1, ohString2, ohTable3)

            local ohString1 = "Selling"

            game:GetService("ReplicatedStorage").Remote.Server.Gambling.UnitsGacha:FireServer(ohString1)
            game:GetService("ReplicatedStorage").Remote.Server.Gambling.UnitsGacha:FireServer(ohString1)
        end
    end
end)

getgenv().autoSell = false
local autoSellTog = Main:CreateToggle({
   Name = "Sell Bad Units",
   CurrentValue = false,
   Flag = "autoSellTog", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      getgenv().autoSell = Value
   end,
})

spawn(function()
    while task.wait() do
        if getgenv().autoSell then 
            local needToSellList = {}
            for i, v in ipairs(game:GetService("ReplicatedStorage").Player_Data[plrName].Collection:GetChildren()) do
                local unit, key = FindUnit(v.Name)  
                if unit and needToSell(unit.Rarity) then
                    -- print(v.Name)
                    table.insert(needToSellList, v)
                end
            end
            game:GetService("ReplicatedStorage").Remote.Server.Units.Sell:FireServer(needToSellList)
        end
    end
end)

local Misc = Window:CreateTab("Misc", 4483362458)


local ARX_CODES = {
    "FreeCyclopsSoul",
    "SorryForShutdownBlameZaru",
    "ewGearMode?!",
    "SneakyUpdate!",
    "FollowUpTheIg!?",
    "First6.7Update!",
    "CyclopsSoulMine!",
    "CelestialMageOp67",
    "FairyPatch67",
    "FairyTalePeak!",
    "6.5UpdateIsReal!!!",
    "FallPart2!?!",
    "Sorry4Delay",
    "ReallySorry4Delay",
    "FollowUpTheInsta!",
    "FixPatchSJW!",
    "SorryForPassiveDelay!",
    "SoloPeakLeveling!",
    "NewRaidAndEvos?!",
    "IgrisIsMetaAgain!!",
    "SorryForAllTheIssues!",
    "TYFORTHESUPPORT!?",
    "FallEvent?!",
    "SorryForLate!",
    "NewRangerUnit!",
    "PityOnRanger?!",
    "NewCode!?",
    "BerserkUpdate?!",
    "NewDivineTrials!",
    "UpgradeInFieldFix!",
    "Shutdown2!",
    "DBZUpdate!",
    "NewPortals?!",
    "GTBossEvent!!",
    "SorryForDelayz!",
    "LBreset!",
    "MinorChanges!",
    "Dungeons!",
    "SAOUpd!",
    "RiftMode!",
    "EzSoulFrags",
    "CraftingFix!",
    "SmartRejoin",
    "S3Battlepass!",
    "StatBoosters!",
    "GraveyardRaid!",
    "ChainsawUpd!",
    "SneakCode!",
    "3xALLMODES!!",
    "YOUTUBEBACK!!",
    "BRANDONTHEBEST!",
    "TYBW2!",
    "QOL2!",
    "ARXBLEACH!",
    "Srry4Shutdown",
    "SmallFixs",
    "FixBossRushShop",
    "TYBW",
    "MattLovesARX2",
    "RaitoLovesARX",
    "BrandonTheBest",
    "Sorry4AutoTraitRoll",
    "Sorry4EvoUnits",
    "SorryDelay!!!",
    "SummerEvent!",
    "2xWeekEnd!",
    "Sorry4Quest",
    "SorryRaids",
    "BOSSTAKEOVER",
    "RAIDS",
    "BizzareUpdate2!",
    "Sorry4Delays",
    "JoJo Part 1",
    "NewLobby",
    "Instant Trait",
    "HBDTanny",
    "PortalsFix",
    "UPDATE 1.5",
    "THANKYOU4PATIENCE"
}

local redeemCodes = Misc:CreateButton({
   Name = "Redeem all codes",
   Callback = function()

    for i, v in ipairs(ARX_CODES) do
        spawn(function()
            game:GetService("ReplicatedStorage").Remote.Server.Lobby.Code:FireServer(v)
        end)
    end
    Rayfield:Notify({
        Title = "Redeemed all codes",
        Content = "About " .. #ARX_CODES .. " codes",
        Duration = 6.5,
        Image = 4483362458,
    })
   end,
})

local Info = Window:CreateTab("Info", 4483362458)
-- local ItemsGot = Main:CreateSection("Items got")

local itemsBefore = getInv()
local changes = {} -- list of changes

local function checkForChanges()
    local itemsNow = getInv() or {}

    for key, value in pairs(itemsNow) do
        local oldValue = itemsBefore[key] or 0
        if value > oldValue then
            local diff = value - oldValue
            changes[key] = (changes[key] or 0) + diff
        end
    end

    -- update snapshot
    itemsBefore = itemsNow
end

-- function to turn change list into string
local function changesToString()
    local strParts = {}
    for key, amount in pairs(changes) do
        table.insert(strParts, "+" .. amount .. " " .. key)
    end
    return table.concat(strParts, "\n")
end

spawn(function()
    while task.wait() do
        checkForChanges()
    end
end)

local itemsGotPara = Info:CreateParagraph({Title = "Items got since execute", Content = ""})

spawn(function()
    local changes = changesToString()
    while task.wait() do
        if changes ~= changesToString() then
            changes = changesToString()
            itemsGotPara:Set({Title = "Items got since execute", Content = changes})
        end
    end
end)

Rayfield:LoadConfiguration()
