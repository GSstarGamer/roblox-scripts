

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Type-Silent by GS",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading Type-Silent...",
   LoadingSubtitle = "by GS",
   ShowText = "Type-Silent", -- for mobile users to unhide rayfield, change if you'd like
--    Theme = "Bloom", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = Enum.KeyCode.RightShift, -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = true,
   DisableBuildWarnings = true, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = 'TypeSilent', -- Create a custom folder for your hub/game
      FileName = "TypeSilent-Config"
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

if not game:IsLoaded() then
    game.Loaded:Wait()
end


local vu = game:GetService("VirtualUser")
local Http = game:GetService('HttpService')
local TPS = game:GetService('TeleportService')
local Api = 'https://games.roblox.com/v1/games/'


game.Players.LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local _place = game.PlaceId
local _servers = Api .. _place .. '/servers/Public?sortOrder=Asc&limit=100'
local function ListServers(cursor)
    local Raw =
        game:HttpGet(_servers .. ((cursor and '&cursor=' .. cursor) or ''))
    return Http:JSONDecode(Raw)
end


Drawing.clear()
function instanceESP(targetInstance, text)
    if targetInstance:GetAttribute("ESP_Text") == true then return end

    local RunService = game:GetService('RunService')
    local Camera = workspace.CurrentCamera

    local textESP = Drawing.new('Text')
    textESP.Size = 16
    textESP.Color = Color3.fromRGB(255, 0, 255)
    textESP.Outline = true
    textESP.Center = true
    textESP.Text = text
    textESP.Visible = false

    targetInstance:SetAttribute("ESP_Text", true)
    local connection
    connection = RunService.RenderStepped:Connect(function()
        if not targetInstance or not targetInstance:IsDescendantOf(workspace) then
            textESP:Remove()
            connection:Disconnect()
            targetInstance:SetAttribute("ESP_Text", false)
            return
        end

        local pos = targetInstance:IsA('Model')
                and targetInstance:GetPivot().Position
            or targetInstance.Position
        local screenPos, onScreen = Camera:WorldToViewportPoint(pos)

        if onScreen then
            textESP.Position = Vector2.new(screenPos.X, screenPos.Y)
            textESP.Visible = true
        else
            textESP.Visible = false
        end
    end)

    return {targetInstance, textESP} -- PART, ESP
end

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")

-- tween HRP to a target CFrame at constant speed (studs/sec)
local function tweenToCFrame(targetCFrame, speed, easingStyle, easingDirection)
    speed = speed or 16 -- studs per second
    easingStyle = easingStyle or Enum.EasingStyle.Linear
    easingDirection = easingDirection or Enum.EasingDirection.Out

    local distance = (targetCFrame.Position - hrp.Position).Magnitude
    local time = distance / speed

    local tweenInfo = TweenInfo.new(
        time,
        easingStyle,
        easingDirection,
        0,     -- repeat count
        false, -- reverse
        0      -- delay
    )

    local tween = TweenService:Create(hrp, tweenInfo, {CFrame = targetCFrame})
    tween:Play()
    tween.Completed:Wait()
    return tween
end

local function rgb(r: number, g: number, b: number): Color3
    return Color3.new(r/255, g/255, b/255)
end

local function raceByElementType(ElementType)
    if ElementType == "Vollstandig" then
        return "Quincy"
    elseif ElementType == "Res" then
        return "Arrancar"
    elseif ElementType == "Shikai" then
        return "Shinigami"
    elseif ElementType == "Fullbring" then
        return "Fullbringer"
    else
        return "Unknown"
    end
end

local places = {
    menu = 14067600077,
    matchmaking = 18637069183,
    cullingGames = 115509275831248,
    testing = 12109643,
    kt = 14069678431,
    hell = 18363155549
}


local function serverType()
    for key, val in pairs(places) do
        if val == game.PlaceId then
            return key
        end
    end
    return nil
end




local Misc = Window:CreateTab("Misc", 4483362458)


local npcNamesTog = Misc:CreateToggle({
   Name = "Force NPC Names",
   CurrentValue = false,
   Flag = "npcNamesTog", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    for i, v in pairs(workspace.Effects:GetChildren()) do
        if string.find(v.Name, "^marker.") and v:IsA("Part") then
            v:FindFirstChildOfClass("BillboardGui").Enabled = Value
        end
    end
   end
})    


-- local antiAFKConnection = nil
-- local antiAfkTog = Misc:CreateToggle({
--    Name = "Anti AFK Kick",
--    CurrentValue = true,
--    Flag = "antiAfkTog", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
--    Callback = function(Value)
--     if Value == true then
--         if antiAFKConnection == nil then
--             antiAFKConnection = game.Players.LocalPlayer.Idled:Connect(function()
--             vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
--             task.wait(1)
--             vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
--         end)
--         Rayfield:Notify({
--             Title = "Anti AFK Kick",
--             Content = "Is enabled",
--             Duration = 1,
--             Image = 4483362458,
--         })
--         end
--     else
--         if antiAFKConnection then
--             antiAFKConnection:Disconnect()
--                 Rayfield:Notify({
--                 Title = "Anti AFK Kick",
--                 Content = "Is disabled",
--                 Duration = 1,
--                 Image = 4483362458,
--             })
--         end
--     end
--     end
-- })    

local LowServer = Misc:CreateButton({
   Name = "Join low player server",
   Callback = function()

    local Server, Next
    repeat
        local Servers = ListServers(Next)
        Server = Servers.data[1]
        Next = Servers.nextPageCursor
    until Server

    Rayfield:Notify({
        Title = "Low player server found",
        Content = "Player count: " .. Server.playing .. ". Ping: " .. Server.ping .. ". Joining...",
        Duration = 1,
        Image = 4483362458,
    })

    task.wait(1)

    TPS:TeleportToPlaceInstance(_place, Server.id, game.Players.LocalPlayer)
   end,
})


if serverType() == "hell" then
    local Hell = Window:CreateTab("Hell", 4483362458)

    getgenv().MarkMeteorLootOrb = false
    getgenv().MarkedLootOrbs = {}
    local MarkMeteorLootTog = Hell:CreateToggle({
    Name = "Mark and Notify Meteor Loot Orbs",
    CurrentValue = false,
    Flag = "MarkMeteorLootTog", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().MarkMeteorLootOrb = Value

        if Value == false then
            for i, v in pairs(getgenv().MarkedLootOrbs) do
                v[1]:SetAttribute("ESP_Text", false)
                v[2]:Remove()
            end
        end
    end
    })    

    spawn(function()
        while task.wait() do
            if getgenv().MarkMeteorLootOrb then
                for i, v in pairs(workspace.Misc:GetChildren()) do
                    if v.Name == "lootorb" then
                        if v:GetAttribute("ESP_Text") == false then
                            Rayfield:Notify({
                                Title = "Metor Loot Orb Spawned",
                                Content = "Look around!",
                                Duration = 2,
                                Image = 4483362458,
                            })
                        end
                        local esp = instanceESP(v, "Meteor Loot Orb")
                        table.insert(getgenv().MarkedLootOrbs, esp)
                    end
                end
            end
        end
    end)


    getgenv().MarkQuestShinigami = false
    getgenv().MarkedQuestShinigami = {}
    local MarkQuestShinigamiTog = Hell:CreateToggle({
    Name = "Mark Quest Sinigami",
    CurrentValue = false,
    Flag = "MarkQuestShinigamiTog", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().MarkQuestShinigami = Value

        if Value == false then
            for i, v in pairs(getgenv().MarkedQuestShinigami) do
                v[1]:SetAttribute("ESP_Text", false)
                v[2]:Remove()
            end
        end
    end
    })    

    spawn(function()
        while task.wait() do
            if getgenv().MarkQuestShinigami then
                for i, v in pairs(workspace.Entities:GetChildren()) do
                    if string.find(v.Name, "^Shinigami_") and v:FindFirstChild("ClickDetector") then
                        local esp = instanceESP(v, "Quest Shinigami")
                        table.insert(getgenv().MarkedQuestShinigami, esp)
                    end
                end
            end
        end
    end)


    local SpotCFrames = {
        CFrame.new(-359.987610, 478.070587, 70.333183)
    }

    local spotLabels = {}
    local labelToCFrame = {}
    for i, cf in ipairs(SpotCFrames) do
        local label = ("Spot %d"):format(i)
        table.insert(spotLabels, label)
        labelToCFrame[label] = cf
    end

    -- Storage for selected CFrame
    getgenv().SelSpot = SpotCFrames[1]

    local AFKSpotsDrop = Hell:CreateDropdown({
        Name = "AFK Spots",
        Options = spotLabels,
        CurrentOption = {spotLabels[1]},
        MultipleOptions = false,
        Flag = "AFKSpotsDrop",
        Callback = function(currentSelectionTable)
            local label = currentSelectionTable and currentSelectionTable[1]
            local cf = label and labelToCFrame[label]
            getgenv().SelSpot = cf
        end,
    })

    getgenv().LoopTPSpot = false
    local LoopTPSpotTog = Hell:CreateToggle({
        Name = "Loop TP spot",
        CurrentValue = false,
        Flag = "LoopTPSpotTog", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().LoopTPSpot = Value
        end,
    })

    spawn(function()
        while task.wait() do
            if getgenv().LoopTPSpot then
                tweenToCFrame(getgenv().SelSpot, 100)
                task.wait(2)
            end
        end
    end)
end




Rayfield:LoadConfiguration()