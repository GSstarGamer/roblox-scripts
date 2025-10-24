getgenv().prefix = "."



local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local TextChatService = game:GetService("TextChatService")

local emoteMod = require(game:GetService("ReplicatedStorage").Emotes)

local emoteList = loadstring(game:HttpGet("https://raw.githubusercontent.com/GSstarGamer/roblox-scripts/refs/heads/main/tsbEmoteList.lua"))()

local function tp(cframe)
    if cframe then
        character:FindFirstChild("HumanoidRootPart").CFrame = cframe
    end
end

local function CurrentOwner()
    local plr = Players:FindFirstChild(getgenv().TaskOwner)
    if not plr then return nil end

    -- wait until character spawns
    if not plr.Character then
        plr.CharacterAdded:Wait()
    end

    -- wait until HRP exists
    local hrp = plr.Character:WaitForChild("HumanoidRootPart", 5) -- 5 second timeout
    if not hrp then return nil end

    return plr
end



local function playEmote()
    local emote = emoteList["Attack"]
    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://" .. emote.Animation
    local poseAnim = humanoid:LoadAnimation(anim)
    poseAnim.Looped = false
    poseAnim:Play()
    poseAnim.TimePosition = 1
    poseAnim:AdjustSpeed(0)
end

getgenv().CurrentTask = "wait"
getgenv().TaskOwner = nil

 
spawn(function()
    while task.wait() do
        if not (player.Character 
            and player.Character:FindFirstChild("HumanoidRootPart")) then
            continue
        end
        if getgenv().CurrentTask == "wait" then
            tp(CFrame.new(175, 390, -10))
        elseif getgenv().CurrentTask == "summon" then
            playEmote()
            tp(CurrentOwner().Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 5, 5))
        end
    end
end)

local function splitArgs(str)
    local args = {}
    for word in string.gmatch(str, "%S+") do
        table.insert(args, word)
    end
    return args
end



local function commandHandler(command, player)
    local args = splitArgs(command)
    local cmd = args[1] -- first word is the actual command

    if cmd == "!!" then
        getgenv().CurrentTask = "summon"
        getgenv().TaskOwner = player.Name

    elseif cmd == "bye" then
        getgenv().CurrentTask = "wait"
        getgenv().TaskOwner = nil

    elseif cmd == "set" then
        local user = args[2] -- grab first argument after "set"
        if user then
            getgenv().CurrentTask = "summon"
            getgenv().TaskOwner = user
        end
    end
end



TextChatService.OnIncomingMessage = function(message)
    local props = message.TextSource
    if props then
        local player = game.Players:GetPlayerByUserId(props.UserId)
        if player then
            if string.sub(message.Text, 1, 1) == getgenv().prefix then
                local command = string.sub(message.Text, 2)
                commandHandler(command, player)
            end
        end
    end
end





-- for i, v in pairs(emoteList) do
    
    -- local anim = Instance.new("Animation")
    -- anim.AnimationId = "rbxassetid://" .. v.Animation

    -- local track = humanoid:LoadAnimation(anim)
    -- track:Play()    

    -- local soundPlayer = Instance.new("Sound")
    -- if v.Sounds then
    --     for _, sound in pairs(v.Sounds) do
    --         print(sound.SoundId)
    --         soundPlayer.SoundId = sound.SoundId
    --         soundPlayer.Parent = player.Character.HumanoidRootPart
    --         soundPlayer.Name = "EmoteSFX"
    --         soundPlayer.RollOffMaxDistance = 100
    --         soundPlayer:SetAttribute("EmoteProperty", true)
    --         soundPlayer:Play()
    --     end
    -- end

    -- task.wait(1)

    -- track:Stop()
    -- soundPlayer:Destroy()


-- end