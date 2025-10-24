--// 1. Load libraries
local Sense = loadstring(game:HttpGet('https://sirius.menu/sense'))()
local Notif = loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMinisterq/Notification-Library/Main/Library.lua"))()
local Players = game:GetService("Players")
local player = Players.LocalPlayer

--// 2. Configure ESP
Sense.sharedSettings.textSize = 20

Sense.teamSettings.enemy.enabled = true
Sense.teamSettings.enemy.box = true
Sense.teamSettings.enemy.name = true
Sense.teamSettings.enemy.boxColor[1] = Color3.new(1, 0, 0)
Sense.teamSettings.enemy.boxColor[2] = 1
Sense.teamSettings.enemy.weapon = true

Sense.teamSettings.friendly.enabled = true
Sense.teamSettings.friendly.box = true
Sense.teamSettings.friendly.name = true
Sense.teamSettings.friendly.boxColor[1] = Color3.new(0, 1, 0)
Sense.teamSettings.friendly.boxColor[2] = 1
Sense.teamSettings.friendly.weapon = true

--// 3. Global lists
getgenv().selectedPlayer = nil
getgenv().EnemyList = {}
getgenv().AllyList = {}

--// 4. Whitelist refresh
local function getWhitelist(allyList, enemyList)
    local returnIDs = {}
    for _, player in ipairs(allyList) do
        table.insert(returnIDs, player.UserId)
    end
    for _, player in ipairs(enemyList) do
        table.insert(returnIDs, player.UserId)
    end
    return returnIDs
end

local function RefreshWhitelist()
    Sense.whitelist = getWhitelist(getgenv().AllyList, getgenv().EnemyList)
end

--// 5. Sense logic
Sense.isFriendly = function(player)
    if table.find(getgenv().AllyList, player) then
        return true
    elseif table.find(getgenv().EnemyList, player) then
        return false
    end
    return false
end


Sense.getWeapon = function(player) return player.Character:GetAttribute("Character") end

--// 6. GUI
local library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
local PepsisWorld = library:CreateWindow({
    Name = "SG TSB",
    Themeable = { Info = "Made by GS" }
})

-- minimal remote logger for workspace.Live.slender242666.Communicate
local remote = workspace:FindFirstChild("Live")
and workspace.Live:FindFirstChild("slender242666")
and workspace.Live.slender242666:FindFirstChild("Communicate")



local GeneralTab = PepsisWorld:CreateTab({ Name = "General" })
local Visual = GeneralTab:CreateSection({ Name = "Visual", Side = "Right" })

Visual:AddToggle({
    Name = "ESP",
    Default = false,
    Callback = function(value)
        if value then
            Sense.Load()
            RefreshWhitelist()
        else
            Sense.Unload()
        end
    end
})


local Combat = GeneralTab:CreateSection({ Name = "Combat", Side = "Right" })


getgenv().ModifyMoves = false
Combat:AddToggle({
    Name = "Modify Moves",
    Flag = "Modify_Moves",
    Callback = function(val) 
        getgenv().ModifyMoves = val
    end
})


if not remote then
    error("Communicate remote not found")
end


local function handleMove(name)
    if not getgenv().ModifyMoves then return end

    if name == "Lethal Whirlwind Stream" then
        local char = player.Character
        if char then
            char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)
        end
    end
end

local mt = getrawmetatable(game)
local old = mt.__namecall

if setreadonly then pcall(setreadonly, mt, false) end

mt.__namecall = newcclosure(function(self, ...)
    if checkcaller() then
        return old(self, ...)
    end

    if getnamecallmethod() == "FireServer" and self == remote then
        local args = {...}
        -- print all args shallow
        for i = 1, #args do
            local v = args[i]
            if v["ToolName"] then
                print("used move:", v["ToolName"])
                handleMove(v["ToolName"])
            end
        end
    end

    return old(self, ...)
end)

if setreadonly then pcall(setreadonly, mt, true) end


local Binds = GeneralTab:CreateSection({ Name = "Binds", Side = "Right" })


local function GetClosestInView(teamType) -- teamType = "ally" or "enemy"
    local lp = Players.LocalPlayer
    if not lp.Character or not lp.Character:FindFirstChild("HumanoidRootPart") then
        return nil
    end

    local root = lp.Character.HumanoidRootPart
    local forward = root.CFrame.LookVector

    -- pick which list
    local checkList = (teamType == "ally") and getgenv().AllyList or getgenv().EnemyList
    local closestPlr, smallestAngle = nil, math.huge

    for _, plr in ipairs(checkList) do
        if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            local targetRoot = plr.Character.HumanoidRootPart
            local direction = (targetRoot.Position - root.Position).Unit
            local angle = math.acos(math.clamp(forward:Dot(direction), -1, 1)) -- radians

            if angle < smallestAngle then
                smallestAngle = angle
                closestPlr = plr
            end
        end
    end

    return closestPlr
end



-- Binds:AddKeybind({
--     Name = "Ally TP",
--     Value = Enum.KeyCode.K,
--     Callback = function() 
--         print("called")
--         print(GetClosestInView("ally"))
--     end
-- })



local PlayersTab = PepsisWorld:CreateTab({ Name = "Players" })
local PlayerList = PlayersTab:CreateSection({ Name = "Player list", Side = "Left" })

--// 7. Dropdown setup
local playerMap = {}

local dropdown = PlayerList:AddDropdown({
    Name = "Select Player",
    List = {},  
    Callback = function(val)
        local player = playerMap[val]
        if player then
            getgenv().selectedPlayer = player
            print("Selected player:", player.Name, "DisplayName:", player.DisplayName)
        else
            getgenv().selectedPlayer = nil
        end
    end
})

local function UpdatePlayerList()
    local displayList = {}
    table.clear(playerMap)

    for _, plr in ipairs(Players:GetPlayers()) do
        local label = string.format("%s (%s)", plr.DisplayName, plr.Name)
        table.insert(displayList, label)
        playerMap[label] = plr
    end

    dropdown:UpdateList(displayList)
end

local function AutoAddAllies(plr)
    -- Rule 1: If their Name starts with "SG_"
    local isSG = plr.Name:sub(1,3) == "SG_"

    -- Rule 2: If they are a Roblox friend of the LocalPlayer
    local isFriend = false
    pcall(function()
        isFriend = player:IsFriendsWith(plr.UserId)
    end)

    if isSG or isFriend then
        if not table.find(getgenv().AllyList, plr) then
            table.insert(getgenv().AllyList, plr)
            Notif:SendNotification("Info", plr.DisplayName .. " auto-added to Ally List.", 3)
            RefreshWhitelist()
        end
    end
end

for _, plr in ipairs(Players:GetPlayers()) do
    AutoAddAllies(plr)
end

UpdatePlayerList()
Players.PlayerAdded:Connect(function(player)
    AutoAddAllies(player)
    UpdatePlayerList()
end)
Players.PlayerRemoving:Connect(function(plr)
    -- auto-remove from Ally/Enemy
    local allyIndex = table.find(getgenv().AllyList, plr)
    if allyIndex then
        Notif:SendNotification("Info", 'Ally ' .. plr.DisplayName .. " has left the game", 3)
        table.remove(getgenv().AllyList, allyIndex)
     end

    local enemyIndex = table.find(getgenv().EnemyList, plr)
    if enemyIndex then
        Notif:SendNotification("Info", 'Enemy ' .. plr.DisplayName .. " has left the game", 3)
        table.remove(getgenv().EnemyList, enemyIndex)
    end


    RefreshWhitelist()
    UpdatePlayerList()

end)

--// 8. Buttons
PlayerList:AddButton({
    Name = "Add Enemy",
    Callback = function()
        local plr = getgenv().selectedPlayer
        if plr then
            if not table.find(getgenv().EnemyList, plr) then
                local allyIndex = table.find(getgenv().AllyList, plr)
                if allyIndex then table.remove(getgenv().AllyList, allyIndex) end

                table.insert(getgenv().EnemyList, plr)
                RefreshWhitelist()
                Notif:SendNotification("Success", plr.DisplayName .. " added to Enemy List.", 3)
            else
                Notif:SendNotification("Warning", plr.DisplayName .. " is already in the Enemy List.", 3)
            end
        else
            Notif:SendNotification("Warning", "No player selected", 3)
        end
    end
})

PlayerList:AddButton({
    Name = "Add Ally",
    Callback = function()
        local plr = getgenv().selectedPlayer
        if plr then
            if not table.find(getgenv().AllyList, plr) then
                local enemyIndex = table.find(getgenv().EnemyList, plr)
                if enemyIndex then table.remove(getgenv().EnemyList, enemyIndex) end

                table.insert(getgenv().AllyList, plr)
                RefreshWhitelist()
                Notif:SendNotification("Success", plr.DisplayName .. " added to Ally List.", 3)
            else
                Notif:SendNotification("Warning", plr.DisplayName .. " is already in the Ally List.", 3)
            end
        else
            Notif:SendNotification("Warning", "No player selected", 3)
        end
    end
})

PlayerList:AddButton({
    Name = "Remove from list",
    Callback = function()
        local plr = getgenv().selectedPlayer
        if plr then
            if table.find(getgenv().AllyList, plr) then
                table.remove(getgenv().AllyList, table.find(getgenv().AllyList, plr))
                RefreshWhitelist()
                Notif:SendNotification("Success", plr.DisplayName .. " removed from Ally List.", 3)
            elseif table.find(getgenv().EnemyList, plr) then
                table.remove(getgenv().EnemyList, table.find(getgenv().EnemyList, plr))
                RefreshWhitelist()
                Notif:SendNotification("Success", plr.DisplayName .. " removed from Enemy List.", 3)
            else
                Notif:SendNotification("Warning", plr.DisplayName .. " is not in any List.", 3)
            end
        else
            Notif:SendNotification("Warning", "No player selected", 3)
        end
    end
})


-- --// Sections for Allies & Enemies
-- local AllySection = PlayersTab:CreateSection({
--     Name = "Allies",
--     Side = "Right"
-- })

-- local EnemySection = PlayersTab:CreateSection({
--     Name = "Enemies",
--     Side = "Right"
-- })


