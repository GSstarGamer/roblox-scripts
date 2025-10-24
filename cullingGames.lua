getgenv().slot = "B"
getgenv().leaveIfNotWinning = true
getgenv().pingOnDrop = {"True Hogyoku", "Hogyoku Fragment", "Yhwach's Blood"}
getgenv().webhookURL = "https://discord.com/api/webhooks/1407275208246558730/wA--L_2avkJ-6EoAqcAVIwSSZ5BIB0cuY7giqMjm2UQaUqLXEEMxL1xeIIxMJWXemoXi"



if not game:IsLoaded() then
    game.Loaded:Wait()
end




local function hasToBank()
    local success, result = pcall(function()
        readfile("hasToBank")
    end)

    return success
end




local vu = game:GetService("VirtualUser")
game.Players.LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)


local NotificationHolder = loadstring(
    game:HttpGet(
        'https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua'
    )
)()
local Notification = loadstring(
    game:HttpGet(
        'https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua'
    )
)()

local function len(table)
    local c = 0
    for i, v in pairs(table) do
        c = c + 1
    end
    return c
end


local places = {
    menu = 14067600077,
    matchmaking = 18637069183,
    cullingGames = 115509275831248,
    testing = 12109643,
    kt = 14069678431
}


local function serverType()
    for key, val in pairs(places) do
        if val == game.PlaceId then
            return key
        end
    end
    return nil
end


local function mainmenuTP(tpto)
    local RS = game:GetService("ReplicatedStorage")
    local remote = RS.Remotes.Teleport
    
    
    game:GetService("ReplicatedStorage").Remotes.GetSlotData:FireServer()
    
    
    local args = {
        slot = getgenv().slot,
        teleportTo = tpto
    }
    
    local test = game:GetService("ReplicatedStorage").Remotes.ChooseSlot:InvokeServer(args.slot, args.teleportTo)
    
    local result = remote:InvokeServer(args)
    
end


local function joinQueue() 
    local ohString1 = "JoinQueue"
    local ohString2 = "CULLING GAMES"

    game:GetService("ReplicatedStorage").Remotes.Team:FireServer(ohString1, ohString2) 
end

local function notif(text)
    Notification:Notify(
        { Title = 'Auto Culling Games', Description = text },
        { OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = 'default' }
    )

end

local function isWinning()
    local lpFaction = game.Players.LocalPlayer:WaitForChild("CullingPoints").Association.Value
    
    local points = {
        Arrancar = 0,
        Fullbringer = 0,
        Quincy = 0,
        Shinigami = 0
    }
    
    for _, v in pairs(game:GetService("Players"):GetPlayers()) do
        local cullingP = v:FindFirstChild("CullingPoints")
        
        if cullingP and cullingP:FindFirstChild("Association") then
            points[cullingP.Association.Value] = points[cullingP.Association.Value] + cullingP.Value
        end
    end 



    local largestFaction = ""
    local largestPoints = 0
    for key, val in pairs(points) do
        if val > largestPoints then
            largestFaction = key
            largestPoints = val
        end
    end
    if largestFaction == lpFaction then
        print("Currently winning")
        return true
    else
        return false
    end
end

local function getCurrentState()
    return game:GetService("ReplicatedStorage"):WaitForChild("CurrentGameState").Value
end

local function otherFactionsExist()
    local lpFaction = game.Players.LocalPlayer:WaitForChild("CullingPoints").Association.Value
    
    local playerCount = {
        Arrancar = 0,
        Fullbringer = 0,
        Quincy = 0,
        Shinigami = 0
    }

    for _, v in pairs(game:GetService("Players"):GetPlayers()) do
        local cullingP = v:FindFirstChild("CullingPoints")
        
        if cullingP and cullingP:FindFirstChild("Association") then
            playerCount[cullingP.Association.Value] = playerCount[cullingP.Association.Value] + 1
        end
    end

    for key, val in pairs(playerCount) do
        if key ~= lpFaction and val > 0 then
            return true
        end
    end

    return false
end

local HttpService = game:GetService("HttpService")

local function sendDiscordEmbed(webhookUrl: string, itemsMap: table)
    local function rgbToDecimal(r, g, b)
        return (r * 65536) + (g * 256) + b
    end

    local function buildBlock(title: string, map: table): string
        local lines = {}
        for i, val in pairs(map) do
            table.insert(lines, "[+" .. val.count .. "] " .. val.name)
        end
        if #lines > 0 then
            return title .. "\n```cs\n" .. table.concat(lines, "\n") .. "\n```"
        end
        return ""
    end

    local function splitGoodItems(itemList)
        local items = {}
        local goodItems = {}

        for key, val in pairs(itemList) do
            if table.find(getgenv().pingOnDrop, val.name) ~= nil then
                table.insert(goodItems, {name = val.name, count = val.count})
            else
                table.insert(items, {name = val.name, count = val.count})
            end
        end

        return items, goodItems
    end

    local itemsMap, goodItemsMap = splitGoodItems(itemsMap)

    -- build embed description
    local parts = {}
    local itemsBlock = buildBlock("Items:", itemsMap)
    if itemsBlock ~= "" then table.insert(parts, itemsBlock) end

    local goodBlock = buildBlock("Good items found:", goodItemsMap)
    if goodBlock ~= "" then table.insert(parts, goodBlock) end

    local bodyText = table.concat(parts, "\n\n")

    -- ping only if good items exist
    local content = ""
    if #goodItemsMap > 0 then
        content = string.format("Found %d good item%s @everyone", #goodItemsMap, #goodItemsMap == 1 and "" or "s")
    end

    local color = rgbToDecimal(128, 0, 255)
    if #goodItemsMap > 0 then
        color = rgbToDecimal(255, 255, 0)
    end

    local embed = {
        title = "Auto Culling Games",
        description = bodyText,
        color = color
    }

    local payload = HttpService:JSONEncode({
        content = content,
        embeds = { embed }
    })

    local response = request({
        Url = webhookUrl,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = payload
    })

    return response
end


local TeleportService = game:GetService("TeleportService")

local TS = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LP = Players.LocalPlayer

local RETRYABLE = {
    [Enum.TeleportResult.Failure] = true,
    [Enum.TeleportResult.GameEnded] = true,
    [Enum.TeleportResult.GameFull] = true,
    [Enum.TeleportResult.Unauthorized] = true,
}

local conn
conn = TS.TeleportInitFailed:Connect(function(player, teleportResult, errorMessage)
    if player ~= LP then return end

    if RETRYABLE[teleportResult] ~= true then
        warn("Teleport failed (non-retryable):", teleportResult, errorMessage)
        return
    end

    if conn then conn:Disconnect(); conn = nil end

    pcall(function()
        notif("Failed to join Culling Games. Going to main menu")
    end)

    task.defer(function()
        local ok, err = pcall(function()
            TS:Teleport(places.menu, LP)
        end)
        if not ok then
            warn("Retry teleport to menu failed:", err)
        end
    end)
end)






local lp = game.Players.LocalPlayer

if hasToBank() and serverType() ~= nil and serverType() ~= "menu" and serverType() ~= "kt" then
    notif("Need to bank first. Going to main menu")
    TeleportService:Teleport(places.menu, game.Players.LocalPlayer)
end

if serverType() == "menu" then
    if hasToBank() then
        notif("Need to bank first. Going to main menu")
        mainmenuTP('')
    else
        notif("Joining Culling Games...")
        mainmenuTP('Matchmaking')
    end

elseif serverType() == "cullingGames" then
    notif("Joined Culling Games!")

    notif("Waiting for players to join...")
    repeat task.wait(1) 
    until getCurrentState() == "Countdown" or getCurrentState() == "Ongoing"
    
    if otherFactionsExist() == false then
        notif("No other factions exist. Going to main menu")
        TeleportService:Teleport(places.menu, game.Players.LocalPlayer)
        return
    end
    notif("Other factions exist!")

    repeat task.wait(1) 
    until getCurrentState() == "Ongoing"
    notif("Match started!")

    spawn(function()
        while task.wait(30) and getgenv().leaveIfNotWinning do
            if isWinning() == false then
                notif("Not winning. Leaving server.")
                task.wait(5)
                TeleportService:Teleport(places.menu, game.Players.LocalPlayer)
            end
        end
    end)

    local RS = game:GetService("ReplicatedStorage")
    local clientItems = require(RS.Modules.ClientModules.ClientItems)

    -- two maps: { [itemName] = count }
    local itemsMap = {}

    local oldItemObtained
    oldItemObtained = hookfunction(clientItems.ItemObtained, function(player, itemName, count, ...)
        print("[HOOKED ItemObtained] Player:", player.Name, "Item:", itemName, "Count:", count)

        table.insert(itemsMap, {name = itemName, count = count})

        return oldItemObtained(player, itemName, count, ...)
end)
    notif("Hooked ItemObtained Notif...")

    
    
    repeat task.wait(1) 
    until getCurrentState() == "MatchOver"
    notif("Match over! Manual leave in 60 seconds.")
    task.wait(5)

    if len(itemsMap) > 0 then
        notif(`Got {#itemsMap} items`)
        local result = sendDiscordEmbed(getgenv().webhookURL, itemsMap)
        notif("Sent webhook result: "..tostring(result))
    else
        notif("No items dropped.")
    end

    task.wait(55)
    notif("Leaving server.")
    TeleportService:Teleport(places.menu, game.Players.LocalPlayer)
    
elseif serverType() == "matchmaking" then
    notif("Queuing for Culling Games...")
    while task.wait(1) do
        joinQueue()
    end
elseif serverType() == "testing" then
    writefile('hasToBank', '')
    TeleportService:Teleport(places.menu, game.Players.LocalPlayer)
elseif hasToBank() and serverType() == 'kt' then
--// LocalScript

getgenv().pingOnDrop = { 'True Hogyoku', 'Hogyoku Fragment', "Yhwach's Blood",  "Locked Element Reroll"}

    local TweenService = game:GetService('TweenService')
    local Players = game:GetService('Players')

    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:WaitForChild('HumanoidRootPart')

    -- Config
    local SPEED = 100 -- studs per second (change this)
    local Y_OFFSET = -15 -- lift a bit to avoid clipping

    -- Example target (your code):
    local nel = workspace.NPCs:WaitForChild('Nel').Nel

    local function tweenToPosition(pos: Vector3, speed: number, yOffset: number?)
        yOffset = yOffset or 0
        local startPos = hrp.Position
        local dest = pos + Vector3.new(0, yOffset, 0)

        local distance = (dest - startPos).Magnitude
        if distance < 0.05 then
            return
        end -- already there

        local time = math.max(distance / math.max(speed, 0.001), 0.05) -- clamp to avoid 0/NaN
        local tweenInfo = TweenInfo.new(
            time,
            Enum.EasingStyle.Linear,
            Enum.EasingDirection.Out,
            0,
            false,
            0
        )

        -- keep current rotation while moving to new position
        local currentRot = hrp.CFrame - hrp.CFrame.Position
        local goal = { CFrame = CFrame.new(dest) * currentRot }

        local tween = TweenService:Create(hrp, tweenInfo, goal)
        tween:Play()
        tween.Completed:Wait()
        return tween
    end

    -- Use it:
    notif('Tweening to Nel...')
    tweenToPosition(nel.WorldPivot.Position, SPEED, Y_OFFSET)
    notif('Opening bank...')

    repeat
        hrp.CFrame =
            CFrame.new(nel.WorldPivot.Position + Vector3.new(0, Y_OFFSET, 0))
        fireclickdetector(nel.ClickDetector)
        task.wait()
    until player:FindFirstChild('Nel')
    
    spawn(function()
        while task.wait() do
            hrp.CFrame =
                CFrame.new(nel.WorldPivot.Position + Vector3.new(0, Y_OFFSET, 0))
        end
    end)
    task.wait(0.5)
    player:FindFirstChild('Nel'):FireServer('Yes')

    for i, v in pairs(getgenv().pingOnDrop) do
        local ohString1 = 'StoreItem'
        local ohString2 = v
        local ohNumber3 = 1

        game:GetService('ReplicatedStorage').Remotes.Bank.BankState
            :FireServer(ohString1, ohString2, ohNumber3)
        notif('Sent store request for '..v..' in bank')

        task.wait(1)
    end

    delfile("hasToBank")
    notif('Done banking! Going back')
    task.wait(2)
    TeleportService:Teleport(places.menu, game.Players.LocalPlayer)

else
    print("Need to be in main menu or matchmaking")
end
