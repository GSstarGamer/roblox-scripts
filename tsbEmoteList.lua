return {
["Blink"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://118341941379862",
            ["Volume"] = 2
        },
        [0.5] = {
            ["SoundId"] = "rbxassetid://118100641167521",
            ["Volume"] = 2,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Animation"] = 0,
    ["Idle"] = 0,
    ["HideWeapon"] = true,
    ["Stun"] = "Slowed",
    ["Looped"] = true,
    ["StunAttribute"] = 0.65,
    ["Startup"] = function(u117, _, _, _, u118, u119) --[[Function name: Startup, line 673]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u116
        --]]
        if game.Players:GetPlayerFromCharacter(u105) then
            local v120 = {
                ["Name"] = "BlinkBind",
                ["Parent"] = u105
            }
            local v121 = shared.cfolder(v120)
            table.insert(u117, v121)
            local v122 = {
                ["Effect"] = "Blink Emote",
                ["bind"] = v121,
                ["char"] = u105
            }
            game.ReplicatedStorage.Replication:FireAllClients(v122)
            task.spawn(function() --[[Anonymous function at line 687]]
                --[[
                Upvalues:
                    [1] = u116
                    [2] = u117
                    [3] = u105
                    [4] = u118
                    [5] = u119
                --]]
                local v123 = u116(99643081415160)
                local v124 = u117
                table.insert(v124, v123)
                local v125 = u105.PrimaryPart
                local v126 = u105.Humanoid
                while task.wait() do
                    if u118.interrupted then
                        v123:Stop()
                        return
                    end
                    local v127 = v125.CFrame:Inverse() * (v125.Position + v125.Velocity)
                    local v128 = v127.X
                    local v129 = -v127.Z
                    local v130 = math.atan2(v128, v129)
                    local v131 = math.deg(v130) - 0.5
                    local v132 = math.ceil(v131)
                    local v133 = v126.MoveDirection ~= Vector3.new(0, 0, 0)
                    local v134
                    if math.abs(v132) >= 130 and math.abs(v132) <= 181 then
                        v134 = true
                        v133 = false
                    else
                        v134 = false
                    end
                    local v135 = v134 and 1 or 0.65
                    local v136 = u119:GetAttribute("Div")
                    u119:SetAttribute("Div", v135)
                    if v136 ~= v135 then
                        local v137 = {
                            ["Name"] = "a",
                            ["Parent"] = u105
                        }
                        shared.cfolder(v137, 0.1)
                    end
                    if v133 then
                        if not v123.IsPlaying then
                            v123:Play()
                        end
                    else
                        v123:Stop()
                    end
                end
            end)
        end
    end
},
["Aka Stance"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://81330852490415",
            ["Volume"] = 2
        }
    },
    ["Idle"] = 118383042869348,
    ["Animation"] = 131177495882827,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["Keyframes"] = {
        ["start"] = function(p138, _, _, _, _) --[[Anonymous function at line 738]]
            --[[
            Upvalues:
                [1] = u33
                [2] = u105
                [3] = u84
                [4] = u77
                [5] = u108
                [6] = u110
            --]]
            u33({ u105 }, 1)
            u84({
                ["SoundId"] = "rbxassetid://91565431637142",
                ["Parent"] = u105.Torso,
                ["Looped"] = true,
                ["Volume"] = 0.5
            }):Play()
            local v139 = u105["Right Arm"]
            for _ = 1, 2 do
                local v140 = script.cursedEnergy2:Clone()
                v140.Parent = u105
                v140:SetAttribute("EmoteProperty", true)
                table.insert(p138, v140)
                u77:AddTag(v140, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
                local v141 = Instance.new("Weld")
                v141.Part0 = v139
                v141.Part1 = v140
                v141.Parent = v140
                v141.C0 = CFrame.new(0, -1, 0)
                v139 = u105["Left Arm"]
            end
        end
    }
},
["Ao Stance"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://107531870259193",
            ["Volume"] = 2
        }
    },
    ["Idle"] = 113201609340793,
    ["Animation"] = 104243341468337,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["Keyframes"] = {
        ["start"] = function(p142, _, _, _, _) --[[Anonymous function at line 789]]
            --[[
            Upvalues:
                [1] = u33
                [2] = u105
                [3] = u84
                [4] = u77
                [5] = u108
                [6] = u110
            --]]
            u33({ u105 }, 1)
            u84({
                ["SoundId"] = "rbxassetid://91565431637142",
                ["Parent"] = u105.Torso,
                ["Looped"] = true,
                ["Volume"] = 0.5
            }):Play()
            local v143 = u105["Right Arm"]
            for _ = 1, 2 do
                local v144 = script.cursedEnergy:Clone()
                v144.Parent = u105
                v144:SetAttribute("EmoteProperty", true)
                table.insert(p142, v144)
                u77:AddTag(v144, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
                local v145 = Instance.new("Weld")
                v145.Part0 = v143
                v145.Part1 = v144
                v145.Parent = v144
                v145.C0 = CFrame.new(0, -1, 0)
                v143 = u105["Left Arm"]
            end
        end
    }
},
["Amplify"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://112089323132965",
            ["Volume"] = 2
        }
    },
    ["Animation"] = 106778226674700,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["MeleeEffects"] = true,
    ["Keyframes"] = {
        ["first"] = function(u146, _, _, _, _) --[[Anonymous function at line 842]]
            --[[
            Upvalues:
                [1] = u77
                [2] = u108
                [3] = u110
                [4] = u105
                [5] = u33
            --]]
            local u147 = script.AmplifyVfx
            local u148 = {}
            local u149 = {}
            local function v158(p150, p151) --[[Anonymous function at line 849]]
                --[[
                Upvalues:
                    [1] = u147
                    [2] = u146
                    [3] = u77
                    [4] = u108
                    [5] = u110
                    [6] = u105
                    [7] = u149
                    [8] = u148
                --]]
                local v152 = u147[p150]:Clone()
                v152.Parent = p151
                game.Debris:AddItem(v152, 5)
                v152:SetAttribute("EmoteProperty", true)
                local v153 = u146
                table.insert(v153, v152)
                u77:AddTag(v152, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
                local v154 = v152:FindFirstChildOfClass("Motor6D")
                if v154 then
                    v152.CanCollide = false
                    v152.Massless = true
                    v152.Anchored = false
                    v154.Part0 = p151
                    v154.Part1 = v152
                else
                    v152.CFrame = u105.PrimaryPart.CFrame * CFrame.new(0, 0, -2)
                end
                for _, v155 in pairs(v152:GetDescendants()) do
                    if v155:IsA("ParticleEmitter") then
                        v155:Emit(v155:GetAttribute("EmitCount"))
                        if v154 then
                            v155.Enabled = true
                            local v156 = u149
                            table.insert(v156, v155)
                        end
                        if tostring(p150) == "head" then
                            local v157 = u148
                            table.insert(v157, v155)
                        end
                    end
                end
            end
            u33({ u105 }, 1)
            v158("arm", u105["Right Arm"])
            v158("head", u105.Head)
            wait(1.1)
            for _, v159 in pairs(u148) do
                v159.Enabled = false
            end
            for _, v160 in pairs(u149) do
                v160.Enabled = false
                game.Debris:AddItem(v160, 1)
            end
        end,
        ["sec"] = function(u161, _, _, _, _) --[[Anonymous function at line 896]]
            --[[
            Upvalues:
                [1] = u77
                [2] = u108
                [3] = u110
                [4] = u105
                [5] = u33
            --]]
            local u162 = script.AmplifyVfx
            local function v169(p163, p164) --[[Anonymous function at line 899]]
                --[[
                Upvalues:
                    [1] = u162
                    [2] = u161
                    [3] = u77
                    [4] = u108
                    [5] = u110
                    [6] = u105
                --]]
                local v165 = u162[p163]:Clone()
                v165.Parent = p164
                game.Debris:AddItem(v165, 5)
                v165:SetAttribute("EmoteProperty", true)
                local v166 = u161
                table.insert(v166, v165)
                u77:AddTag(v165, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
                local v167 = v165:FindFirstChildOfClass("Motor6D")
                if v167 then
                    v165.CanCollide = false
                    v165.Massless = true
                    v165.Anchored = false
                    v167.Part0 = p164
                    v167.Part1 = v165
                else
                    v165.CFrame = u105.PrimaryPart.CFrame * CFrame.new(0, 0, -2)
                end
                for _, v168 in pairs(v165:GetDescendants()) do
                    if v168:IsA("ParticleEmitter") then
                        v168:Emit(v168:GetAttribute("EmitCount"))
                        if v167 then
                            v168.Enabled = true
                        end
                    end
                end
            end
            u33({ u105 }, 3)
            v169("arm2", u105["Left Arm"])
            v169("auraoff", u105["Left Arm"])
            local v170 = {
                ["Char"] = u105,
                ["Effect"] = "Amplify",
                ["time"] = 30
            }
            shared.MeleeEffects(v170)
        end
    }
},
["Celestial Banisher"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://125543979037675",
            ["Volume"] = 3
        }
    },
    ["Startup"] = function(p171, _, _) --[[Function name: Startup, line 948]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v172 = script.StrikeThing.StrikeAttachment:Clone()
        v172:SetAttribute("EmoteProperty", true)
        table.insert(p171, v172)
        u77:AddTag(v172, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        game.Debris:AddItem(v172, 15)
        game.Debris:AddItem(v172, 5)
        v172.Parent = u105["Right Arm"]
    end,
    ["Animation"] = 77002367518293,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true
},
["Lethal Beam"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://92080703823458",
            ["Volume"] = 2
        }
    },
    ["Animation"] = 116931318187769,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true
},
["Beneath Me"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://106138436425034",
            ["Volume"] = 2
        }
    },
    ["Animation"] = 134934729128196,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true
},
["STILL FUNNY?"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://106138436425034",
            ["Volume"] = 0
        }
    },
    ["Animation"] = 77586961719115,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true
},
["Time Shift"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://78909185953598",
            ["Volume"] = 3
        }
    },
    ["Animation"] = 114451374603244,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true
},
["Energy Release"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = ({ "rbxassetid://132683371495025", "rbxassetid://128900017804077" })[math.random(1, 2)],
            ["Volume"] = 2
        }
    },
    ["Animation"] = 120953105100764,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["Startup"] = function(p173, _, _, _, u174) --[[Function name: Startup, line 1059]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local u175 = script["PowerupT Hing"]:Clone()
        u175:SetAttribute("EmoteProperty", true)
        table.insert(p173, u175)
        u77:AddTag(u175, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        u175.Parent = u105
        local v176 = Instance.new("Weld")
        v176.Parent = u175
        v176.Part0 = u105.PrimaryPart
        v176.Part1 = u175
        wait(0.25)
        local function u179(p177) --[[Anonymous function at line 1072]]
            --[[
            Upvalues:
                [1] = u105
            --]]
            local v178 = game.Players:GetPlayerFromCharacter(u105)
            if v178 then
                game.ReplicatedStorage.Replication:FireClient(v178, {
                    ["Effect"] = "Camshake",
                    ["Intensity"] = p177
                })
            end
        end
        if not u174.interrupted then
            u179(1)
            u175.BurstAir.Burst:Emit(1)
            for _, v180 in pairs(u175.Floor:GetChildren()) do
                if tostring(v180) ~= "Crack" then
                    v180.Enabled = true
                end
            end
            task.delay(0.85, function() --[[Anonymous function at line 1094]]
                --[[
                Upvalues:
                    [1] = u174
                    [2] = u175
                    [3] = u179
                --]]
                if not u174.interrupted then
                    for v181 = 1, 3 do
                        if u174.interrupted then
                            return
                        end
                        for v182, v183 in pairs(u175.Lightning:GetChildren()) do
                            if v182 == 3 then
                                v183.Enabled = true
                            else
                                u179(1)
                                v183:Emit(math.random(2, 5))
                            end
                        end
                        wait(v181 == 2 and 1.75 or 1)
                    end
                end
            end)
            task.delay(4, function() --[[Anonymous function at line 1115]]
                --[[
                Upvalues:
                    [1] = u174
                    [2] = u179
                    [3] = u175
                --]]
                if not u174.interrupted then
                    u179(2)
                    u175.Floor.Crack:Emit(1)
                    for _, v184 in pairs(u175.Lightning:GetChildren()) do
                        v184.Enabled = false
                    end
                    for _, v185 in pairs(u175.BurstAir:GetChildren()) do
                        if tostring(v185) ~= "Burst" then
                            v185:Emit(v185:GetAttribute("EmitCount") * 1.2)
                        end
                    end
                    for _, v186 in pairs(u175.Floor:GetChildren()) do
                        if tostring(v186) ~= "Crack" then
                            v186.Enabled = false
                        end
                    end
                end
            end)
        end
    end
},
["Boxed Up"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://90314606305113",
            ["Volume"] = 2
        }
    },
    ["Animation"] = 111810635064735,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true,
    ["Startup"] = function(p187, _, p188) --[[Function name: Startup, line 1155]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v189 = script.Present:Clone()
        v189:SetAttribute("EmoteProperty", true)
        table.insert(p187, v189)
        p188.Handle = v189
        local v190 = v189.MasterM
        v190:SetAttribute("EmoteProperty", true)
        table.insert(p187, v190)
        p188.md = v190
        v190.Part0 = u105.PrimaryPart
        v190.Name = "Master"
        v190.Part1 = v189.Master
        v190.Parent = u105.PrimaryPart
        v189.Parent = u105.PrimaryPart
        u84({
            ["SoundId"] = "rbxassetid://113981806904179",
            ["Parent"] = v189.Master.Top,
            ["Volume"] = 2
        }):Play()
    end
},
["Ruthless"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://108336805340224",
            ["ParentTorso"] = true,
            ["Volume"] = 2
        }
    },
    ["Animation"] = 129295156336675,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true,
    ["Startup"] = function(p191, _, _) --[[Function name: Startup, line 1259]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v192 = script.Ruthless.Part
        local v193 = u105["Right Arm"]
        for _ = 1, 2 do
            local v194 = {}
            local v195 = nil
            for _, v196 in pairs(v192:GetChildren()) do
                local v197 = v196:Clone()
                v197:SetAttribute("EmoteProperty", true)
                table.insert(p191, v197)
                u77:AddTag(v197, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
                v197.Parent = v193
                if v197:FindFirstChildOfClass("Trail") then
                    v195 = v197
                end
                v194[tostring(v197):find("1") and 1 or 2] = v197
            end
            for _, v198 in pairs(v195:GetChildren()) do
                v198.Attachment0 = v194[1]
                v198.Attachment1 = v194[2]
            end
            v193 = u105["Left Arm"]
        end
    end
},
["Explosive Stomps"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://89576671264720",
            ["Volume"] = 1.85
        }
    },
    ["Animation"] = 83249039916902,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true
},
["Weak"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://128113260968190",
            ["Volume"] = 3
        }
    },
    ["Animation"] = 93125757361125,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true
},
["Energy Barrage"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://82169026724146",
            ["Volume"] = 2
        }
    },
    ["Animation"] = 101680746241828,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true
},
["Insect"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://95402001280762",
            ["Volume"] = 2
        }
    },
    ["Animation"] = 139229122563753,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true,
    ["Startup"] = function(p199, _, _) --[[Function name: Startup, line 1399]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Right", p199, u105)
    end
},
["Dragon Combo"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://131083520587944",
            ["ParentTorso"] = true,
            ["Volume"] = 2
        }
    },
    ["Animation"] = 136363608783208,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true
},
["Heart Strike"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://131308069692843",
            ["Volume"] = 2
        }
    },
    ["Animation"] = 77053316619185,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true,
    ["Startup"] = function(p200, _, p201) --[[Function name: Startup, line 1436]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p200, u105)
        u104("Right", p200, u105)
        local v202 = script.bookHeart:Clone()
        v202:SetAttribute("EmoteProperty", true)
        table.insert(p200, v202)
        local v203 = v202["Book BinderM"]
        v203:SetAttribute("EmoteProperty", true)
        table.insert(p200, v203)
        p201.md = v203
        v203.Part0 = u105["Left Arm"]
        v203.Part1 = v202["Book Binder"]
        v203.Parent = u105["Left Arm"]
        v202.Parent = u105
        v203.Name = "Book Binder"
    end
},
["Wipe"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://120656055302454",
            ["Volume"] = 2
        }
    },
    ["Startup"] = function(p204, _, _) --[[Function name: Startup, line 1462]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u77
            [3] = u108
            [4] = u110
        --]]
        local v205 = script.Wipe
        local v206 = v205.Glasses:Clone()
        v206.Parent = u105.Head
        local v207 = v206:FindFirstChildOfClass("Motor6D")
        v207.Part0 = u105.Head
        v207.Part1 = v206
        v207.Parent = u105.Head
        local v208 = v205["forget device"]:Clone()
        v208.Parent = u105
        local v209 = v208.Mm
        v209.Part0 = u105["Right Arm"]
        v209.Part1 = v208["memory stick"]
        v209.Parent = u105["Right Arm"]
        v209.Name = "memory stick"
        for _, v210 in pairs({
            v206,
            v207,
            v209,
            v208
        }) do
            v210:SetAttribute("EmoteProperty", true)
            table.insert(p204, v210)
            u77:AddTag(v210, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        end
    end,
    ["Animation"] = 101859186770986,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true
},
["Telekinesis"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://137599530392999",
            ["Volume"] = 3
        }
    },
    ["Startup"] = function(_, _, _) --[[Function name: Startup, line 1501]] end,
    ["Animation"] = 109608173870373,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true
},
["Fly High"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p211, _, _) --[[Function name: Startup, line 1518]]
        --[[
        Upvalues:
            [1] = u84
            [2] = u105
        --]]
        u84({
            ["SoundId"] = "rbxassetid://78462595468736",
            ["Parent"] = u105.Torso,
            ["Volume"] = 2
        }):Play()
        local v212 = u84({
            ["SoundId"] = "rbxassetid://93204259658665",
            ["CFrame"] = u105.PrimaryPart.CFrame * CFrame.new(-0.591, 1, 8.396),
            ["Volume"] = 2
        })
        v212:Play()
        table.insert(p211, v212)
    end,
    ["Animation"] = 80293430011221,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true
},
["Flower Bomb"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://114401044865713",
            ["Volume"] = 4.5
        }
    },
    ["Startup"] = function(p213, _, _) --[[Function name: Startup, line 1550]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v214 = script.Rose:Clone()
        v214:SetAttribute("EmoteProperty", true)
        table.insert(p213, v214)
        u77:AddTag(v214, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v215 = v214.SapplingE
        v215:SetAttribute("EmoteProperty", true)
        table.insert(p213, v215)
        u77:AddTag(v215, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v215.Part0 = u105.HumanoidRootPart
        v215.Part1 = v214.Sappling
        v215.Parent = u105.HumanoidRootPart
        v215.Name = "Sappling"
        v214.Parent = u105
    end,
    ["Animation"] = 77962117984938,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true
},
["Sure Hit"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p216, _, _) --[[Function name: Startup, line 1579]]
        --[[
        Upvalues:
            [1] = u84
            [2] = u105
        --]]
        local v217 = u84({
            ["SoundId"] = "rbxassetid://133870782945226",
            ["Volume"] = 2,
            ["Parent"] = u105["Right Arm"]
        })
        v217:Play()
        table.insert(p216, v217)
    end,
    ["Animation"] = 140145728452253,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true
},
["Embers"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://94529938730886",
            ["Volume"] = 3.45,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(u218, _, _) --[[Function name: Startup, line 1605]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local u219 = script.CinderAssets.Part
        local u220 = nil
        for _, v221 in pairs(u219:GetChildren()) do
            u220 = v221:Clone()
            u220:SetAttribute("EmoteProperty", true)
            table.insert(u218, u220)
            u77:AddTag(u220, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
            game.Debris:AddItem(u220, 15)
            u220.Parent = u105.Head
        end
        local function u235(p222, p223) --[[Anonymous function at line 1624]]
            --[[
            Upvalues:
                [1] = u218
                [2] = u77
                [3] = u108
                [4] = u110
                [5] = u105
            --]]
            local v224 = {}
            for _, v225 in ipairs(p222:GetChildren()) do
                if v225:IsA("Attachment") then
                    local v226 = v225:Clone()
                    v226:SetAttribute("EmoteProperty", true)
                    local v227 = u218
                    table.insert(v227, v226)
                    u77:AddTag(v226, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
                    game.Debris:AddItem(v226, 15)
                    v226:SetAttribute("canme", true)
                    v226.Parent = p223
                    v224[v225.Name] = v226
                end
            end
            for _, v228 in ipairs(p222:GetChildren()) do
                if v228:IsA("Trail") then
                    local v229 = v228:Clone()
                    v229:SetAttribute("EmoteProperty", true)
                    local v230 = u218
                    table.insert(v230, v229)
                    u77:AddTag(v229, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
                    game.Debris:AddItem(v229, 15)
                    v229.Attachment0 = v224[v228.Attachment0.Name]
                    v229.Attachment1 = v224[v228.Attachment1.Name]
                    v229.Parent = p223
                end
            end
            for _, v231 in ipairs(p223:GetChildren()) do
                if v231:IsA("Attachment") and v231:GetAttribute("canme") then
                    for _, v232 in ipairs(v231:GetChildren()) do
                        if v232:IsA("Beam") then
                            local v233 = p222:FindFirstChild(v232.Attachment0.Name)
                            local v234 = p222:FindFirstChild(v232.Attachment1.Name)
                            if v233 and v234 then
                                v232.Attachment0 = v224[v233.Name]
                                v232.Attachment1 = v224[v234.Name]
                            end
                        end
                    end
                end
            end
        end
        u235(u219.Parent.Head, u105.Head)
        task.delay(0.25, function() --[[Anonymous function at line 1665]]
            --[[
            Upvalues:
                [1] = u220
                [2] = u235
                [3] = u219
                [4] = u105
            --]]
            if u220 and u220.Parent then
                u235(u219.Parent["Right Arm"], u105["Right Arm"])
                u235(u219.Parent["Left Arm"], u105["Left Arm"])
            end
        end)
    end,
    ["Animation"] = 83905432418191,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true
},
["Ban Hammer"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://120472586857703",
            ["ParentTorso"] = true,
            ["Volume"] = 2
        }
    },
    ["Startup"] = function(p236, _, _) --[[Function name: Startup, line 1692]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v237 = script.BanHammer:Clone()
        v237:SetAttribute("EmoteProperty", true)
        table.insert(p236, v237)
        u77:AddTag(v237, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v238 = v237:FindFirstChildOfClass("Motor6D")
        v238:SetAttribute("EmoteProperty", true)
        table.insert(p236, v238)
        u77:AddTag(v238, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v239 = u105["Right Arm"]
        v238.Part0 = v239
        v238.Part1 = v237
        v238.Parent = v239
        v237.Parent = u105["Right Arm"]
        v238.Parent = u105["Right Arm"]
        v237.Name = "Handle"
    end,
    ["Animation"] = 71063727733290,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["KillEmote"] = true
},
["Death"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://125713401851477",
            ["Volume"] = 2,
            ["Looped"] = true
        }
    },
    ["Keyframes"] = {
        ["stop"] = function() --[[Anonymous function at line 1737]]
            --[[
            Upvalues:
                [1] = u105
                [2] = u41
            --]]
            for _, v240 in pairs(u105.PrimaryPart:GetChildren()) do
                if v240:GetAttribute("Wolf") then
                    u41(v240)
                end
            end
        end,
        ["clang"] = function() --[[Anonymous function at line 1745]]
            --[[
            Upvalues:
                [1] = u33
                [2] = u105
                [3] = u25
            --]]
            u33({ u105 }, 2, 0.5)
            local v241 = u105:FindFirstChild("Sparks2")
            if not v241 then
                v241 = script.BadWolf.Sparks2:Clone()
                v241.Parent = u105
                local v242 = v241:FindFirstChildOfClass("Motor6D")
                v242.Part0 = u105.PrimaryPart
                v242.Part1 = v241
                v242.Parent = u105.PrimaryPart
            end
            u25(v241, {
                ["Multiplier"] = 2
            })
        end,
        ["restart"] = function() --[[Anonymous function at line 1766]]
            --[[
            Upvalues:
                [1] = u105
                [2] = u41
            --]]
            for _, v243 in pairs(u105.PrimaryPart:GetChildren()) do
                if v243:GetAttribute("Wolf") then
                    u41(v243, true)
                end
            end
        end,
        ["spin"] = function(_, p244, _) --[[Anonymous function at line 1774]]
            --[[
            Upvalues:
                [1] = u77
                [2] = u108
                [3] = u110
                [4] = u105
                [5] = u41
            --]]
            for _, v245 in pairs(u105.PrimaryPart:GetChildren()) do
                if v245:GetAttribute("Wolf") then
                    u41(v245)
                end
            end
            if not (u105:FindFirstChild("SpinL") or u105:FindFirstChild("SpinR")) then
                local v246 = script.BadWolf
                for _, v247 in pairs({ v246.SpinL, v246.SpinR }) do
                    local v248 = v247:Clone()
                    v248:SetAttribute("EmoteProperty", true)
                    table.insert(p244, v248)
                    u77:AddTag(v248, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
                    v248.Parent = u105
                    local v249 = v248:FindFirstChildOfClass("Motor6D")
                    v249.Parent = tostring(v247) == "SpinL" and u105["Left Arm"] or u105["Right Arm"]
                    v249.Part0 = tostring(v247) == "SpinL" and u105["Left Arm"] or u105["Right Arm"]
                    v249.Part1 = v248
                end
            end
            local v250 = { u105:FindFirstChild("SpinL"), (u105:FindFirstChild("SpinR")) }
            local function v253(p251) --[[Anonymous function at line 1803]]
                for _, u252 in pairs(p251:GetDescendants()) do
                    if u252:IsA("ParticleEmitter") then
                        task.spawn(function() --[[Anonymous function at line 1806]]
                            --[[
                            Upvalues:
                                [1] = u252
                            --]]
                            u252.Enabled = true
                            task.wait(u252:GetAttribute("EmitDuration"))
                            if u252 and u252.Parent then
                                u252.Enabled = false
                            end
                        end)
                    end
                end
            end
            for _, v254 in pairs(v250) do
                v253(v254)
            end
        end
    },
    ["Startup"] = function(u255, _, _) --[[Function name: Startup, line 1825]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v256 = script.BadWolf
        local function v264(p257) --[[Anonymous function at line 1832]]
            --[[
            Upvalues:
                [1] = u255
                [2] = u77
                [3] = u108
                [4] = u110
                [5] = u105
            --]]
            for _, v258 in pairs(p257.things) do
                local v259 = v258:Clone()
                v259:SetAttribute("EmoteProperty", true)
                local v260 = u255
                table.insert(v260, v259)
                u77:AddTag(v259, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
                v259.Parent = u105
                local v261 = v259:FindFirstChildOfClass("Motor6D")
                v261:SetAttribute("EmoteProperty", true)
                local v262 = u255
                table.insert(v262, v261)
                u77:AddTag(v261, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
                local v263 = u105["Right Arm"]
                if v258.Name == p257.Left then
                    v263 = u105["Left Arm"]
                end
                if p257.Parent then
                    v263 = p257.Parent
                end
                v261.Part0 = v263
                v261.Part1 = v259
                v261.Parent = v263
                v259.Parent = p257.Parent or u105
                if p257.set then
                    v259:SetAttribute("Wolf", true)
                end
            end
        end
        v264({
            ["things"] = { v256.HandleL, v256.HandleR },
            ["Left"] = "HandleL"
        })
        v264({
            ["things"] = { v256.Left, v256.Right },
            ["Left"] = "Left",
            ["Parent"] = u105.PrimaryPart,
            ["set"] = true
        })
    end,
    ["Animation"] = 74441004296237,
    ["HideWeapon"] = true,
    ["Stun"] = "Slowed",
    ["Looped"] = true,
    ["Infinite"] = true,
    ["DontDisconnectMarkers"] = true
},
["Blades Of Jade"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://82078299414169",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Keyframes"] = {
        ["floorhit"] = function() --[[Anonymous function at line 1885]]
            --[[
            Upvalues:
                [1] = u105
            --]]
            local u265 = RaycastParams.new()
            u265.FilterType = Enum.RaycastFilterType.Exclude
            u265.FilterDescendantsInstances = { workspace.Thrown, workspace.Live }
            local function v269(p266) --[[Anonymous function at line 1893]]
                --[[
                Upvalues:
                    [1] = u105
                    [2] = u265
                --]]
                for _, v267 in pairs(p266:GetDescendants()) do
                    if v267:IsA("ParticleEmitter") then
                        local v268 = tostring(v267) == "smoke" and workspace:Raycast(u105.PrimaryPart.Position, u105.PrimaryPart.Position, u265)
                        if v268 then
                            v267.Color = ColorSequence.new(v268.Instance.Color)
                        end
                        v267:Emit(v267:GetAttribute("EmitCount"))
                    end
                end
            end
            for _, v270 in pairs(u105:GetDescendants()) do
                if (tostring(v270) == "JadeL" or tostring(v270) == "JadeR") and v270:IsA("Model") then
                    v269(v270)
                end
            end
        end,
        ["touchfloor"] = function() --[[Anonymous function at line 1917]]
            --[[
            Upvalues:
                [1] = u105
                [2] = u25
            --]]
            local v271 = u105.PrimaryPart:FindFirstChild("ClashVFX")
            if v271 then
                u25(v271)
            end
        end
    },
    ["Startup"] = function(p272, _, _) --[[Function name: Startup, line 1926]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v273 = script.BladesOfJade
        for _, v274 in pairs(v273.Attach:GetChildren()) do
            local v275 = v274:Clone()
            v275.Parent = u105.Head
            v275:SetAttribute("EmoteProperty", true)
            table.insert(p272, v275)
            u77:AddTag(v275, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        end
        for _, v276 in pairs({ v273.JadeL, v273.JadeR }) do
            local v277 = v276:Clone()
            v277:SetAttribute("EmoteProperty", true)
            table.insert(p272, v277)
            u77:AddTag(v277, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
            local v278 = v277:FindFirstChildOfClass("Motor6D")
            v278:SetAttribute("EmoteProperty", true)
            table.insert(p272, v278)
            u77:AddTag(v278, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
            local v279 = u105["Right Arm"]
            if v276.Name == "JadeL" then
                v279 = u105["Left Arm"]
            end
            v278.Part0 = v279
            v278.Part1 = v277.ChainPart1
            v278.Parent = v279
            v277.Parent = u105
            v278.Name = "ChainPart1"
        end
        local v280 = v273.Part.ClashVFX:Clone()
        v280.Parent = u105.PrimaryPart
        v280:SetAttribute("EmoteProperty", true)
        table.insert(p272, v280)
        u77:AddTag(v280, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
    end,
    ["Animation"] = 121440687354239,
    ["HideWeapon"] = true,
    ["Stun"] = "Slowed",
    ["Looped"] = true,
    ["Infinite"] = true,
    ["DontDisconnectMarkers"] = true
},
["Cymbal Walk"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://137380821099041",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p281, _, _) --[[Function name: Startup, line 1984]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        for _, v282 in pairs({ script.Circle1, script.Circle2 }) do
            local v283 = v282:Clone()
            v283:SetAttribute("EmoteProperty", true)
            table.insert(p281, v283)
            u77:AddTag(v283, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
            local v284 = v283:FindFirstChildOfClass("Motor6D")
            v284:SetAttribute("EmoteProperty", true)
            table.insert(p281, v284)
            u77:AddTag(v284, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
            local v285 = u105["Right Arm"]
            if v282.Name == "Circle2" then
                v285 = u105["Left Arm"]
            end
            v284.Part0 = v285
            v284.Part1 = v283
            v284.Parent = v285
            v283.Parent = u105
        end
    end,
    ["Animation"] = 81416134930511,
    ["HideWeapon"] = true,
    ["Stun"] = "Slowed",
    ["Looped"] = true
},
["Cymbals"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://120045687952609",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p286, _, _) --[[Function name: Startup, line 2021]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        for _, v287 in pairs({ script.Circle1, script.Circle2 }) do
            local v288 = v287:Clone()
            v288:SetAttribute("EmoteProperty", true)
            table.insert(p286, v288)
            u77:AddTag(v288, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
            local v289 = v288:FindFirstChildOfClass("Motor6D")
            v289:SetAttribute("EmoteProperty", true)
            table.insert(p286, v289)
            u77:AddTag(v289, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
            local v290 = u105["Right Arm"]
            if v287.Name == "Circle2" then
                v290 = u105["Left Arm"]
            end
            v289.Part0 = v290
            v289.Part1 = v288
            v289.Parent = v290
            v288.Parent = u105
        end
    end,
    ["Animation"] = 95156811398036,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze"
},
["Send Backup"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://117092445671019",
            ["Volume"] = 2,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p291, _, _) --[[Function name: Startup, line 2057]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v292 = script.WalkieTalkie:Clone()
        v292:SetAttribute("EmoteProperty", true)
        table.insert(p291, v292)
        u77:AddTag(v292, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v293 = v292.Motor6D
        v293:SetAttribute("EmoteProperty", true)
        table.insert(p291, v293)
        u77:AddTag(v293, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v292.Name = "Handle"
        v293.Part0 = u105["Left Arm"]
        v293.Part1 = v292
        v293.Parent = u105.PrimaryPart
        v292.Parent = u105.PrimaryPart
    end,
    ["Animation"] = 102938209711074,
    ["HideWeapon"] = true,
    ["Stun"] = "Slowed"
},
["Chalice Play"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://89041127733848",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p294, _, _) --[[Function name: Startup, line 2088]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v295 = script.chalice:Clone()
        v295:SetAttribute("EmoteProperty", true)
        table.insert(p294, v295)
        u77:AddTag(v295, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v296 = v295.Motor
        v296:SetAttribute("EmoteProperty", true)
        table.insert(p294, v296)
        u77:AddTag(v296, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v296.Part0 = u105["Left Arm"]
        v296.Part1 = v295.Handle
        v296.Parent = u105["Left Arm"]
        v296.Name = "Handle"
        v295.Parent = u105
    end,
    ["Idle"] = 108719443641457,
    ["Animation"] = 102159604911972,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["Looped"] = true
},
["By My Sword"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://114386873150174",
            ["Volume"] = 1
        }
    },
    ["Startup"] = function(p297, _, _) --[[Function name: Startup, line 2119]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v298 = script.Maniac.MeshPart:Clone()
        v298:SetAttribute("EmoteProperty", true)
        table.insert(p297, v298)
        u77:AddTag(v298, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v299 = v298.Motor
        v299:SetAttribute("EmoteProperty", true)
        table.insert(p297, v299)
        u77:AddTag(v299, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v299.Part0 = u105["Right Arm"]
        v299.Part1 = v298.Handle
        v299.Parent = u105["Right Arm"]
        v299.Name = "Handle"
        v298.Parent = u105
    end,
    ["Idle"] = 102174454129081,
    ["Animation"] = 110359958284400,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze"
},
["Begone!"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://84487824273978",
            ["Volume"] = 1.25,
            ["Looped"] = false
        }
    },
    ["Animation"] = 134823032473116,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true
},
["Flight"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://121935201003728",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Animation"] = 78547941116306,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 0.7,
    ["HideWeapon"] = true,
    ["Looped"] = true
},
["Doodle Dance"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://120837088679745",
            ["Volume"] = 0.65,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p300, _, _) --[[Function name: Startup, line 2186]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p300, u105)
        u104("Right", p300, u105)
    end,
    ["Animation"] = 133225663180459,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1,
    ["HideWeapon"] = true,
    ["Looped"] = true
},
["Foul Smell"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://87571878180836",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p301, _, _) --[[Function name: Startup, line 2209]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p301, u105)
        u104("Right", p301, u105)
    end,
    ["Animation"] = 139039401196042,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1,
    ["HideWeapon"] = true
},
["Be Quiet"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://116993830219499",
            ["Volume"] = 0.75,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p302, _, _) --[[Function name: Startup, line 2252]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
            [5] = u104
        --]]
        local v303 = script.PhoneBeQuiet:Clone()
        v303:SetAttribute("EmoteProperty", true)
        table.insert(p302, v303)
        u77:AddTag(v303, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v304 = v303.PlaneMotor
        v304:SetAttribute("EmoteProperty", true)
        table.insert(p302, v304)
        u77:AddTag(v304, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v304.Part0 = u105["Right Arm"]
        v304.Part1 = v303.Plane
        v304.Parent = u105["Right Arm"]
        v304.Name = "Plane"
        v303.Parent = u105
        u104("Left", p302, u105)
    end,
    ["Animation"] = 104651529417410,
    ["Stun"] = "Freeze",
    ["HideWeapon"] = true
},
["Not Human"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://93844955761839",
            ["Volume"] = 1.25,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p305, _, _) --[[Function name: Startup, line 2288]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p305, u105)
        u104("Right", p305, u105)
    end,
    ["Animation"] = 102201408849991,
    ["Stun"] = "Freeze",
    ["HideWeapon"] = true
},
["Torch"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://86669386299202",
            ["Volume"] = 0.35,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p306, _, _) --[[Function name: Startup, line 2307]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v307 = script.Torch:Clone()
        v307:SetAttribute("EmoteProperty", true)
        table.insert(p306, v307)
        u77:AddTag(v307, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v308 = v307.Handle
        v308:SetAttribute("EmoteProperty", true)
        table.insert(p306, v308)
        u77:AddTag(v308, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v308.Part0 = u105["Right Arm"]
        v308.Part1 = v307
        v308.Parent = u105["Right Arm"]
        v307.Parent = u105
    end,
    ["Animation"] = 94311488918867,
    ["HideWeapon"] = true,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1.5,
    ["Looped"] = true
},
["Pitchfork Protest!"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://72343803536395",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p309, _, _) --[[Function name: Startup, line 2337]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v310 = script.pitchfork:Clone()
        v310:SetAttribute("EmoteProperty", true)
        table.insert(p309, v310)
        u77:AddTag(v310, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v311 = v310.pitchfork
        v311:SetAttribute("EmoteProperty", true)
        table.insert(p309, v311)
        u77:AddTag(v311, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v311.Part0 = u105["Left Arm"]
        v311.Part1 = v310
        v311.Parent = u105["Left Arm"]
        v310.Parent = u105
    end,
    ["Animation"] = 84608123283347,
    ["HideWeapon"] = true,
    ["Stun"] = "Slowed",
    ["Looped"] = true
},
["Broomstick"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://138154662255338",
            ["Volume"] = 0.5,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p312, _, _) --[[Function name: Startup, line 2368]]
        --[[
        Upvalues:
            [1] = u56
            [2] = u105
        --]]
        u56({
            ["name"] = "Witch Flight",
            ["char"] = u105,
            ["cleanup"] = p312
        })
    end,
    ["Animation"] = 84303828924826,
    ["HideWeapon"] = true,
    ["Stun"] = "Slowed",
    ["Looped"] = true,
    ["StunAttribute"] = 0.9
},
["We want KJ!"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://103072512876625",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p313, _, _) --[[Function name: Startup, line 2392]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v314 = script.signkj:Clone()
        v314:SetAttribute("EmoteProperty", true)
        table.insert(p313, v314)
        u77:AddTag(v314, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v315 = v314.sign
        v315:SetAttribute("EmoteProperty", true)
        table.insert(p313, v315)
        u77:AddTag(v315, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v314.Name = "sign"
        v315.Part0 = u105["Right Arm"]
        v315.Part1 = v314
        v315.Parent = u105["Right Arm"]
        v314.Parent = u105
    end,
    ["Animation"] = 131920426725963,
    ["HideWeapon"] = true,
    ["Stun"] = "Slowed",
    ["Looped"] = true
},
["Disguise"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://80454452438876",
            ["Volume"] = 2,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p316, _, _) --[[Function name: Startup, line 2423]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v317 = script.Lamp:Clone()
        v317:SetAttribute("EmoteProperty", true)
        table.insert(p316, v317)
        u77:AddTag(v317, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v318 = v317.lampheadm
        v318:SetAttribute("EmoteProperty", true)
        table.insert(p316, v318)
        u77:AddTag(v318, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v317.Name = "sign"
        v318.Part0 = u105.Head
        v318.Part1 = v317.lamphead
        v318.Parent = u105.Head
        v318.Name = "lamphead"
        v317.Parent = u105
    end,
    ["Animation"] = 96185673945954,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["Looped"] = true
},
["Fly Pose"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://131682934847578",
            ["Volume"] = 0.7,
            ["Looped"] = true
        }
    },
    ["Animation"] = 121381453450722,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true,
    ["StunAttribute"] = 1.5,
    ["Looped"] = true
},
["Sleigh"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://74795975600529",
            ["Volume"] = 2
        }
    },
    ["Startup"] = function(u319, _, _, _, u320) --[[Function name: Startup, line 2471]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
            [5] = u84
        --]]
        local v321 = script.Sleigh:Clone()
        v321:SetAttribute("EmoteProperty", true)
        table.insert(u319, v321)
        u77:AddTag(v321, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v322 = v321:FindFirstChildOfClass("Motor6D")
        v322:SetAttribute("EmoteProperty", true)
        table.insert(u319, v322)
        u77:AddTag(v322, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v322.Part0 = u105.PrimaryPart
        v322.Part1 = v321.Main
        v322.Parent = u105.PrimaryPart
        v321.Parent = u105
        task.delay(0.65, function() --[[Anonymous function at line 2484]]
            --[[
            Upvalues:
                [1] = u320
                [2] = u84
                [3] = u105
                [4] = u319
            --]]
            if not u320.interrupted then
                local v323 = u84({
                    ["SoundId"] = "rbxassetid://103153234346526",
                    ["Volume"] = 2,
                    ["Looped"] = true,
                    ["Parent"] = u105.PrimaryPart
                })
                v323:Play()
                v323:SetAttribute("EmoteProperty", true)
                local v324 = u319
                table.insert(v324, v323)
            end
        end)
    end,
    ["Animation"] = 104031205817566,
    ["Idle"] = 119811670686735,
    ["HideWeapon"] = true,
    ["Stun"] = "Slowed"
},
["Hunter Pose"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://117253563855238",
            ["Volume"] = 2,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p325, _, _) --[[Function name: Startup, line 2515]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u77
            [3] = u108
            [4] = u110
        --]]
        local u326 = script.RockBig:Clone()
        u326.Parent = u105
        u326.Anchored = true
        u326:SetAttribute("EmoteProperty", true)
        table.insert(p325, u326)
        u77:AddTag(u326, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        spawn(function() --[[Anonymous function at line 2522]]
            --[[
            Upvalues:
                [1] = u326
                [2] = u105
            --]]
            local v327 = tick()
            while task.wait() and (tick() - v327 < 0.5 and u326) do
                if not u326.Parent then
                    return
                end
                u326.CFrame = u105.PrimaryPart.CFrame * CFrame.new(0, -1.5, 4)
            end
        end)
    end,
    ["Animation"] = 78615192673057,
    ["Idle"] = 123794818363362,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze",
    ["NoRotate"] = true
},
["No Food"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://111126885447675",
            ["Volume"] = 1.35
        }
    },
    ["Startup"] = function(u328, _, _) --[[Function name: Startup, line 2551]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local function v331(p329) --[[Anonymous function at line 2552]]
            --[[
            Upvalues:
                [1] = u328
                [2] = u77
                [3] = u108
                [4] = u110
                [5] = u105
            --]]
            game.Debris:AddItem(p329, 10)
            p329:SetAttribute("EmoteProperty", true)
            local v330 = u328
            table.insert(v330, p329)
            u77:AddTag(p329, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
            p329.Parent = workspace.Thrown
        end
        local u332 = script.Fridge:Clone()
        v331(u332)
        u332:SetPrimaryPartCFrame(u105.PrimaryPart.CFrame)
        shared.sfx({
            ["Parent"] = u332.PrimaryPart,
            ["SoundId"] = "rbxassetid://78599170612031",
            ["Volume"] = 1.5
        }):Play()
        local u333 = Instance.new("Weld")
        u333.Parent = u332
        u333.Part0 = u105.PrimaryPart
        u333.Part1 = u332.PrimaryPart
        u333.C0 = CFrame.new(-0.0510409996, -0.0289990902, -7.0736084, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        local v334 = Instance.new("Animation")
        v334.AnimationId = "rbxassetid://103093875701281"
        game.Debris:AddItem(v334, 5)
        u332.AnimationController:LoadAnimation(v334):Play()
        local v335 = task.delay(3, function() --[[Anonymous function at line 2584]]
            --[[
            Upvalues:
                [1] = u332
                [2] = u333
                [3] = u328
            --]]
            if u332 and u332.Parent then
                game.Debris:AddItem(u332, 1.15)
                if u333 and u333.Parent then
                    u333:Destroy("")
                end
                u332:SetAttribute("EmoteProperty", false)
                table.remove(u328, table.find(u328, u332))
            end
        end)
        table.insert(u328, v335)
    end,
    ["Animation"] = 78471208835198,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze"
},
["Vibin\'"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://124934820850788",
            ["Volume"] = 0.6,
            ["Looped"] = true
        }
    },
    ["Looped"] = true,
    ["Animation"] = 93316268189441,
    ["Stun"] = "Freeze",
    ["Startup"] = function(p336, _, _) --[[Function name: Startup, line 2617]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p336, u105)
        u104("Right", p336, u105)
    end
},
["Pro Artist"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://121117309929969",
            ["Volume"] = 2
        }
    },
    ["Startup"] = function(p337, _, _) --[[Function name: Startup, line 2631]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v338 = script.Pencil:Clone()
        v338:SetAttribute("EmoteProperty", true)
        table.insert(p337, v338)
        u77:AddTag(v338, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v339 = v338:FindFirstChildOfClass("Motor6D")
        v339:SetAttribute("EmoteProperty", true)
        table.insert(p337, v339)
        u77:AddTag(v339, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v339.Part0 = u105.PrimaryPart
        v339.Part1 = v338.Cylinder
        v339.Parent = u105.PrimaryPart
        v338.Parent = u105
        local v340 = script.Paper:Clone()
        v340:SetAttribute("EmoteProperty", true)
        table.insert(p337, v340)
        u77:AddTag(v340, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v341 = v340:FindFirstChildOfClass("Motor6D")
        local v342 = v340.Person
        v342.Texture = ""
        v342.Transparency = 1
        v341:SetAttribute("EmoteProperty", true)
        table.insert(p337, v341)
        u77:AddTag(v341, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v341.Part0 = u105.PrimaryPart
        v341.Part1 = v340
        v341.Parent = u105.PrimaryPart
        v340.Parent = u105
        local v343 = u105.PrimaryPart
        local v344 = 1000
        local v345 = nil
        for _, v346 in pairs(game.Players:GetPlayers()) do
            local v347 = v346.Character
            if v347 and (v347 ~= u105 and u105:FindFirstChild("HumanoidRootPart")) then
                local v348 = (v347.PrimaryPart.Position - v343.Position).Magnitude
                if v348 < v344 then
                    v345 = v346
                    v344 = v348
                end
            end
        end
        local v349 = v345 or game.Players:GetPlayerFromCharacter(u105)
        if v349 then
            v342.Texture = "rbxthumb://type=AvatarHeadShot&id=" .. v349.UserId .. "&w=420&h=420"
            game:GetService("TweenService"):Create(v342, TweenInfo.new(3), {
                ["Transparency"] = 0
            }):Play()
        end
    end,
    ["Animation"] = 108591985511918,
    ["Idle"] = 135563445002852,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze"
},
["Locked In"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://131221493098961",
            ["Volume"] = 2,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p350, _, _) --[[Function name: Startup, line 2709]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v351 = script.SumWater:Clone()
        v351:SetAttribute("EmoteProperty", true)
        table.insert(p350, v351)
        u77:AddTag(v351, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v352 = v351.SumWater
        v352:SetAttribute("EmoteProperty", true)
        table.insert(p350, v352)
        u77:AddTag(v352, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v352.Part0 = u105.Head
        v352.Part1 = v351
        v352.Parent = u105.Head
        v351.Parent = u105
        local v353 = script.AuraRen:Clone()
        v353:SetAttribute("EmoteProperty", true)
        table.insert(p350, v353)
        u77:AddTag(v353, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v354 = v353.Motor6D
        v354:SetAttribute("EmoteProperty", true)
        table.insert(p350, v354)
        u77:AddTag(v354, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v354.Part0 = u105.PrimaryPart
        v354.Part1 = v353
        v354.Parent = v353
        v353.Parent = u105
        local v355 = script.tounge:Clone()
        v355:SetAttribute("EmoteProperty", true)
        table.insert(p350, v355)
        u77:AddTag(v355, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v356 = v355.tounge
        v356:SetAttribute("EmoteProperty", true)
        table.insert(p350, v356)
        u77:AddTag(v356, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v356.Part0 = u105.Head
        v356.Part1 = v355
        v356.Parent = u105.Head
        v355.Parent = u105
    end,
    ["Animation"] = 132769857103497,
    ["Looped"] = true,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze"
},
["Perfect Concentration"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://124276204137474",
            ["Volume"] = 2
        }
    },
    ["Startup"] = function(u357, _, _, _, u358) --[[Function name: Startup, line 2761]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
            [5] = u33
            [6] = u25
        --]]
        local u359 = script.Concentration
        task.delay(0.35, function() --[[Anonymous function at line 2783]]
            --[[
            Upvalues:
                [1] = u358
                [2] = u33
                [3] = u105
                [4] = u359
                [5] = u357
                [6] = u77
                [7] = u108
                [8] = u110
                [9] = u25
            --]]
            if not u358.interrupted then
                u33({ u105 }, 2)
                local v360 = u359.Impact:Clone()
                v360.Parent = workspace.Thrown
                v360:SetAttribute("EmoteProperty", true)
                local v361 = u357
                table.insert(v361, v360)
                u77:AddTag(v360, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
                u25(v360)
                v360.CFrame = u105.PrimaryPart.CFrame * v360:GetAttribute("Offset")
                local v362 = Instance.new("WeldConstraint")
                v362.Part0 = u105.PrimaryPart
                v362.Part1 = v360
                v362.Parent = v360
                local u363 = Instance.new("Highlight")
                u363.Parent = u105
                u363:SetAttribute("EmoteProperty", true)
                local v364 = u357
                table.insert(v364, u363)
                u77:AddTag(u363, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
                u363.OutlineColor = Color3.fromRGB(84, 255, 113)
                u363.FillTransparency = 1
                u363.OutlineTransparency = 1
                u363.DepthMode = Enum.HighlightDepthMode.Occluded
                u363.FillTransparency = 1
                u363.FillColor = Color3.fromRGB(255, 255, 255)
                game:GetService("TweenService"):Create(u363, TweenInfo.new(0.125, Enum.EasingStyle.Quint), {
                    ["FillTransparency"] = 0.55,
                    ["OutlineTransparency"] = 0
                }):Play()
                task.delay(0.2, function() --[[Anonymous function at line 2818]]
                    --[[
                    Upvalues:
                        [1] = u363
                    --]]
                    if u363 and u363.Parent then
                        game:GetService("TweenService"):Create(u363, TweenInfo.new(0.35, Enum.EasingStyle.Quart), {
                            ["FillTransparency"] = 1,
                            ["OutlineTransparency"] = 1
                        }):Play()
                    end
                end)
            end
        end)
        task.delay(0.43, function() --[[Anonymous function at line 2829]]
            --[[
            Upvalues:
                [1] = u358
                [2] = u359
                [3] = u357
                [4] = u77
                [5] = u108
                [6] = u110
                [7] = u105
                [8] = u25
            --]]
            if not u358.interrupted then
                for _, v365 in pairs(u359.Puzzle:GetDescendants()) do
                    if v365:IsA("Part") then
                        local v366 = v365:Clone()
                        v366.Parent = workspace.Thrown
                        v366:SetAttribute("EmoteProperty", true)
                        local v367 = u357
                        table.insert(v367, v366)
                        u77:AddTag(v366, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
                        v366.CFrame = u105.PrimaryPart.CFrame * v366:GetAttribute("Offset")
                        u25(v366)
                        local v368 = Instance.new("WeldConstraint")
                        v368.Part0 = u105.PrimaryPart
                        v368.Part1 = v366
                        v368.Parent = v366
                    end
                end
            end
        end)
    end,
    ["Animation"] = 120577018823573,
    ["Idle"] = 102959457211902,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze"
},
["In Charge"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://132557895221925",
            ["Volume"] = 0.65,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p369, _, _) --[[Function name: Startup, line 2871]]
        --[[
        Upvalues:
            [1] = u84
            [2] = u105
            [3] = u110
            [4] = u5
        --]]
        local v370 = { "rbxassetid://120987205824015", "rbxassetid://119422029266465", "rbxassetid://107235614642450" }
        local v371 = u84({
            ["SoundId"] = v370[math.random(1, #v370)],
            ["Volume"] = 2,
            ["Looped"] = true,
            ["Parent"] = u105.PrimaryPart
        })
        table.insert(p369, v371)
        v371:Play()
        local v372 = {
            ["Name"] = "SBind",
            ["Parent"] = u105
        }
        local v373 = shared.cfolder(v372)
        v373:SetAttribute("EmoteProperty", true)
        table.insert(p369, v373)
        if u110 then
            tick()
            local v374 = {}
            local v375 = u110
            local v376
            if u5[v375] then
                v376 = u5[v375]
            else
                v376 = nil
            end
            local v377 = v376 or v374
            if #v377 == 0 then
                local u378 = game:GetService("Players"):GetFriendsAsync(u110.UserId)
                for v381, _ in coroutine.wrap(function() --[[Anonymous function at line 2906]]
                    --[[
                    Upvalues:
                        [1] = u378
                    --]]
                    local v379 = 1
                    while true do
                        for _, v380 in ipairs(u378:GetCurrentPage()) do
                            coroutine.yield(v380, v379)
                        end
                        if u378.IsFinished then
                            return
                        end
                        u378:AdvanceToNextPageAsync()
                        v379 = v379 + 1
                    end
                end) do
                    local v382 = v381.Id
                    table.insert(v377, v382)
                end
                if #v377 > 0 then
                    u5[u110] = v377
                end
            end
            local v383 = {}
            for _ = 1, 2 do
                if #v377 > 0 then
                    local v384 = math.random(#v377)
                    local v385 = v377[v384]
                    table.insert(v383, v385)
                    table.remove(v377, v384)
                end
            end
            local v386 = {
                ["Type"] = "EmoteFriends",
                ["Character"] = u105,
                ["InCharge"] = true,
                ["Friends"] = v383,
                ["AnimSent"] = 105328436798330,
                ["Bind"] = v373
            }
            game.ReplicatedStorage.Replication:FireAllClients(v386)
        end
    end,
    ["StunAttribute"] = 1.5,
    ["Animation"] = 132132848099103,
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Overtime"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://114806220109865",
            ["Volume"] = 2,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p387, _, _) --[[Function name: Startup, line 2967]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u77
            [3] = u108
            [4] = u110
        --]]
        for _, v388 in pairs({ script.ChairDD, script.gamersetup }) do
            local v389 = v388:Clone()
            if tostring(v389) == "ChairDD" then
                v389.Name = "Chair"
            end
            v389.Parent = u105
            v389:SetAttribute("EmoteProperty", true)
            table.insert(p387, v389)
            u77:AddTag(v389, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
            for _, v390 in pairs(v389:GetDescendants()) do
                if v390:IsA("Motor6D") and v390:GetAttribute("real") then
                    v390:SetAttribute("EmoteProperty", true)
                    table.insert(p387, v390)
                    u77:AddTag(v390, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
                    v390.Part0 = u105.PrimaryPart
                    v390.Part1 = v390.Parent
                    v390.Parent = u105.PrimaryPart
                end
            end
        end
    end,
    ["Animation"] = 74861323886379,
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Lumberjack"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://101458069909807",
            ["Volume"] = 2,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p391, _, _) --[[Function name: Startup, line 3009]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v392 = script["Meshes/axe"]:Clone()
        v392:SetAttribute("EmoteProperty", true)
        table.insert(p391, v392)
        u77:AddTag(v392, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v393 = v392:FindFirstChildOfClass("Motor6D")
        v393:SetAttribute("EmoteProperty", true)
        table.insert(p391, v393)
        u77:AddTag(v393, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v393.Part0 = u105["Right Arm"]
        v393.Part1 = v392
        v393.Parent = u105["Right Arm"]
        v392.Parent = u105
        local v394 = script["Wood Log"]:Clone()
        v394:SetAttribute("EmoteProperty", true)
        table.insert(p391, v394)
        u77:AddTag(v394, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v394.Parent = u105
        local v395 = Instance.new("Weld")
        v395.Part0 = u105.PrimaryPart
        v395.Part1 = v394
        v395.Parent = v394
        v395.C0 = CFrame.new(0, 1, -5) * CFrame.Angles(1.5707963267948966, 0, 0)
    end,
    ["Animation"] = 94964377173355,
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Butterfly Tricks"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://114786701726765",
            ["Volume"] = 2
        }
    },
    ["Startup"] = function(p396, _, _) --[[Function name: Startup, line 3048]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v397 = script.knife:Clone()
        v397:SetAttribute("EmoteProperty", true)
        table.insert(p396, v397)
        u77:AddTag(v397, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v398 = v397:FindFirstChildOfClass("Motor6D")
        v398:SetAttribute("EmoteProperty", true)
        table.insert(p396, v398)
        u77:AddTag(v398, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v398.Part0 = u105["Left Arm"]
        v398.Parent = u105["Left Arm"]
        v398.Part1 = v397.KnifeHandle2
        v397.Parent = u105["Left Arm"]
    end,
    ["Animation"] = 117808978646423,
    ["Idle"] = 127088655247683,
    ["HideWeapon"] = true,
    ["Stun"] = "Slowed"
},
["OUT!"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://81881477062696",
            ["Volume"] = 2
        }
    },
    ["Startup"] = function(p399, _, _) --[[Function name: Startup, line 3076]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v400 = script.EXIT:Clone()
        v400:SetAttribute("EmoteProperty", true)
        table.insert(p399, v400)
        u77:AddTag(v400, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v401 = v400.Motor6D:Clone()
        v401:SetAttribute("EmoteProperty", true)
        table.insert(p399, v401)
        u77:AddTag(v401, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v401.Part0 = u105["Left Arm"]
        v401.Part1 = v400.Cube
        v401.Parent = u105["Left Arm"]
        v400.Parent = u105["Left Arm"]
    end,
    ["Animation"] = 72015241487310,
    ["HideWeapon"] = true,
    ["Stun"] = "Slowed"
},
["OBJECTION!"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://118729435940431",
            ["Volume"] = 2,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p402, _, _) --[[Function name: Startup, line 3104]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v403 = script.objection:Clone()
        v403:SetAttribute("EmoteProperty", true)
        table.insert(p402, v403)
        u77:AddTag(v403, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v404 = v403.objection
        v404:SetAttribute("EmoteProperty", true)
        table.insert(p402, v404)
        u77:AddTag(v404, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v404.Part0 = u105.PrimaryPart
        v404.Part1 = v403
        v404.Parent = u105.PrimaryPart
        v403.Parent = u105
    end,
    ["Animation"] = 91110779676867,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze"
},
["Borgir"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://77582360503674",
            ["Volume"] = 2,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p405, _, _) --[[Function name: Startup, line 3133]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v406 = script.Borgir:Clone()
        v406:SetAttribute("EmoteProperty", true)
        table.insert(p405, v406)
        u77:AddTag(v406, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v407 = v406.Motor
        v407:SetAttribute("EmoteProperty", true)
        table.insert(p405, v407)
        u77:AddTag(v407, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v407.Part0 = u105["Right Arm"]
        v407.Part1 = v406
        v407.Parent = u105["Right Arm"]
        v407.Name = "Borgir"
        v406.Parent = u105
    end,
    ["Animation"] = 127304623515480,
    ["HideWeapon"] = true,
    ["Stun"] = "Slowed"
},
["Dance Party"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://130703142976519",
            ["Volume"] = 2,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p408, _, _) --[[Function name: Startup, line 3163]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v409 = script.Booth:Clone()
        v409:SetAttribute("EmoteProperty", true)
        table.insert(p408, v409)
        u77:AddTag(v409, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v410 = v409.Boothh
        v410:SetAttribute("EmoteProperty", true)
        table.insert(p408, v410)
        u77:AddTag(v410, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v410.Part0 = u105.HumanoidRootPart
        v410.Part1 = v409.PrimaryPart
        v410.Parent = u105.HumanoidRootPart
        v410.Name = "Booth"
        v409.Parent = u105.PrimaryPart
        for _, v411 in pairs(v409:GetDescendants()) do
            if v411:IsA("BasePart") and v411.Anchored then
                warn(v411)
            end
        end
    end,
    ["Animation"] = 101501716447658,
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Odd Apple"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://80723452180580",
            ["Volume"] = 2
        }
    },
    ["Startup"] = function(p412, _, _) --[[Function name: Startup, line 3195]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v413 = script.Apple:Clone()
        v413:SetAttribute("EmoteProperty", true)
        table.insert(p412, v413)
        u77:AddTag(v413, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v414 = v413.Apple
        v414:SetAttribute("EmoteProperty", true)
        table.insert(p412, v414)
        u77:AddTag(v414, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v414.Part0 = u105.PrimaryPart
        v414.Part1 = v413
        v414.Parent = u105.PrimaryPart
        v413.Parent = u105
    end,
    ["Animation"] = 137363237552306,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze"
},
["Assault"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1845843249",
            ["Volume"] = 0.3,
            ["Looped"] = true
        }
    },
    ["Infinite"] = true,
    ["Animation"] = 88354179157575,
    ["Looped"] = true,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1.5,
    ["HideWeapon"] = true,
    ["DontDisconnectMarkers"] = true,
    ["Keyframes"] = {
        ["clap"] = function(_, _, _) --[[Anonymous function at line 3232]]
            --[[
            Upvalues:
                [1] = u105
                [2] = u77
                [3] = u108
                [4] = u110
                [5] = u33
                [6] = u25
            --]]
            local v415 = u105["Right Arm"]
            local v416 = v415:FindFirstChild("ClashEmit")
            if not v416 then
                v416 = script.ClashEmit.ClashEmit:Clone()
                v416.Parent = v415
            end
            u33({ u105 }, math.random(1, 2))
            u25(v416)
        end
    },
    ["Startup"] = function(p417, _, _) --[[Function name: Startup, line 3256]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v418 = script.PowerfulFist:Clone()
        v418:SetAttribute("EmoteProperty", true)
        table.insert(p417, v418)
        u77:AddTag(v418, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v419 = v418.FistM
        v419:SetAttribute("EmoteProperty", true)
        table.insert(p417, v419)
        u77:AddTag(v419, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v419.Part0 = u105["Left Arm"]
        v419.Part1 = v418.Fist
        v419.Parent = u105["Left Arm"]
        v419.Name = "Fist"
        v418.Parent = u105
    end
},
["Speciality"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://125915996063620",
            ["Volume"] = 2
        },
        [1] = {
            ["SoundId"] = "rbxassetid://140297441659064",
            ["Volume"] = 2,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p420, _, _) --[[Function name: Startup, line 3286]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v421 = script.Food:Clone()
        v421:SetAttribute("EmoteProperty", true)
        table.insert(p420, v421)
        u77:AddTag(v421, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v422 = v421:FindFirstChildOfClass("Motor6D")
        v422:SetAttribute("EmoteProperty", true)
        table.insert(p420, v422)
        u77:AddTag(v422, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v422.Part0 = u105["Left Arm"]
        v422.Part1 = v421
        v422.Parent = u105["Left Arm"]
        v421.Parent = u105["Left Arm"]
    end,
    ["Animation"] = 90760942344050,
    ["Idle"] = 124162115547826,
    ["HideWeapon"] = true,
    ["Stun"] = "Slowed"
},
["Fine Drink"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://80723452180580",
            ["Volume"] = 0
        }
    },
    ["Startup"] = function(p423, _, _) --[[Function name: Startup, line 3315]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v424 = script.ArmChair:Clone()
        v424:SetAttribute("EmoteProperty", true)
        table.insert(p423, v424)
        u77:AddTag(v424, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v425 = v424:FindFirstChildOfClass("Motor6D")
        v425:SetAttribute("EmoteProperty", true)
        table.insert(p423, v425)
        u77:AddTag(v425, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v425.Part0 = u105.PrimaryPart
        v425.Part1 = v424.ArmChair
        v425.Parent = u105.PrimaryPart
        v425.Name = "ArmChairz"
        v424.Parent = u105
        local v426 = script.Glass:Clone()
        v426:SetAttribute("EmoteProperty", true)
        table.insert(p423, v426)
        u77:AddTag(v426, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v427 = v426:FindFirstChildOfClass("Motor6D")
        v427:SetAttribute("EmoteProperty", true)
        table.insert(p423, v427)
        u77:AddTag(v427, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v427.Parent = u105.PrimaryPart
        v427.Part0 = u105.PrimaryPart
        v427.Part1 = v426.Wine
        v426.Parent = u105
    end,
    ["Animation"] = 92219871615475,
    ["Idle"] = 114499085231058,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze"
},
["Magical Sword"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://80723452180580",
            ["Volume"] = 0
        }
    },
    ["Startup"] = function(p428, _, _) --[[Function name: Startup, line 3357]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v429 = script.SwordHandle:Clone()
        v429:SetAttribute("EmoteProperty", true)
        table.insert(p428, v429)
        u77:AddTag(v429, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v430 = v429.Handle
        v430:SetAttribute("EmoteProperty", true)
        table.insert(p428, v430)
        u77:AddTag(v430, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v430.Part0 = u105.PrimaryPart
        v430.Part1 = v429
        v430.Parent = u105.PrimaryPart
        v429.Parent = u105
        v429.Name = "Handle"
    end,
    ["Animation"] = 94975523583657,
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["EZ"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://75267063621706",
            ["Volume"] = 1
        }
    },
    ["Startup"] = function(p431, _, _) --[[Function name: Startup, line 3386]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v432 = script.PlacaSoPraAnimar:Clone()
        v432:SetAttribute("EmoteProperty", true)
        table.insert(p431, v432)
        u77:AddTag(v432, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v433 = v432.PlacaSoPraAnimar
        v433:SetAttribute("EmoteProperty", true)
        table.insert(p431, v433)
        u77:AddTag(v433, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v433.Part0 = u105["Right Arm"]
        v433.Part1 = v432
        v433.Parent = u105["Right Arm"]
        v432.Parent = u105
    end,
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p434) --[[Anonymous function at line 3401]]
            p434:AdjustSpeed(0)
        end
    },
    ["Animation"] = 92883107669654,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze"
},
["Maniac"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://73879474716638",
            ["Volume"] = 1.5,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p435, _, _) --[[Function name: Startup, line 3420]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v436 = script.Maniac.MeshPart:Clone()
        v436:SetAttribute("EmoteProperty", true)
        table.insert(p435, v436)
        u77:AddTag(v436, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v437 = v436.Motor
        v437:SetAttribute("EmoteProperty", true)
        table.insert(p435, v437)
        u77:AddTag(v437, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v437.Part0 = u105["Right Arm"]
        v437.Part1 = v436.Handle
        v437.Parent = u105["Right Arm"]
        v437.Name = "Handle"
        v436.Parent = u105
    end,
    ["Looped"] = true,
    ["Animation"] = 124337193780872,
    ["HideWeapon"] = true,
    ["Stun"] = "Slowed"
},
["League Oath"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://80178845592358",
            ["Volume"] = 1.5
        }
    },
    ["Startup"] = function(p438, _, _) --[[Function name: Startup, line 3450]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v439 = script.Maniac.MeshPart:Clone()
        v439:SetAttribute("EmoteProperty", true)
        table.insert(p438, v439)
        u77:AddTag(v439, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v440 = v439.Motor
        v440:SetAttribute("EmoteProperty", true)
        table.insert(p438, v440)
        u77:AddTag(v440, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v440.Part0 = u105["Right Arm"]
        v440.Part1 = v439.Handle
        v440.Parent = u105["Right Arm"]
        v440.Name = "Handle"
        v439.Parent = u105
    end,
    ["Animation"] = 78851551917642,
    ["Idle"] = 71163641460855,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze"
},
["Mid"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://126631832022361",
            ["Volume"] = 2
        }
    },
    ["Animation"] = 84359348423275,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1,
    ["HideWeapon"] = true,
    ["Startup"] = function(p441, _, _) --[[Function name: Startup, line 3487]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p441, u105)
        u104("Right", p441, u105)
    end
},
["Calculating"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://114224288259949",
            ["Volume"] = 2
        }
    },
    ["Animation"] = 104956990421479,
    ["Stun"] = "Freeze",
    ["HideWeapon"] = true,
    ["Startup"] = function(p442, _, _) --[[Function name: Startup, line 3505]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p442, u105)
        u104("Right", p442, u105)
    end
},
["All Me"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://137124741132218",
            ["Volume"] = 2
        }
    },
    ["Animation"] = 110694817344709,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1,
    ["HideWeapon"] = true,
    ["Startup"] = function(p443, _, _) --[[Function name: Startup, line 3525]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p443, u105)
        u104("Right", p443, u105)
    end
},
["Clean Fight"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://139711598002213",
            ["Volume"] = 2
        }
    },
    ["Animation"] = 133121061492478,
    ["Stun"] = "Freeze",
    ["HideWeapon"] = true,
    ["Startup"] = function(p444, _, _) --[[Function name: Startup, line 3543]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p444, u105)
        u104("Right", p444, u105)
    end
},
["Yapper"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://137138220384381",
            ["Volume"] = 2
        }
    },
    ["Animation"] = 85271812976018,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1,
    ["HideWeapon"] = true,
    ["Startup"] = function(p445, _, _) --[[Function name: Startup, line 3562]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p445, u105)
        u104("Right", p445, u105)
    end
},
["Self Hate"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://102327892747347",
            ["Volume"] = 2
        }
    },
    ["Animation"] = 98491634200850,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1
},
["War Cry"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://91755545882744",
            ["Volume"] = 2,
            ["Looped"] = true
        }
    },
    ["Animation"] = 127113883473285,
    ["Stun"] = "Freeze"
},
["Fire In Me"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://93396994882536",
            ["Volume"] = 2,
            ["Looped"] = true
        }
    },
    ["Animation"] = 92116312846822,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Delight"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://134481671165609",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Animation"] = 134228716476620,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Triumphant Delight"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://72674553555470",
            ["Volume"] = 2
        }
    },
    ["Animation"] = 124645358602106,
    ["Stun"] = "Freeze"
},
["Curl Up"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://86176537548647",
            ["Volume"] = 2
        }
    },
    ["Animation"] = 134273575464340,
    ["Idle"] = 85758455402628,
    ["Stun"] = "Freeze"
},
["Crashout"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://134407182653763",
            ["Volume"] = 1
        },
        [0.00001] = {
            ["SoundId"] = "rbxassetid://117722877981575",
            ["Volume"] = 1
        }
    },
    ["Animation"] = 106400765698758,
    ["Idle"] = 103362214977039,
    ["Stun"] = "Freeze",
    ["Keyframes"] = {
        ["vfx"] = function(u446, _, _, _, _) --[[Anonymous function at line 3669]]
            --[[
            Upvalues:
                [1] = u77
                [2] = u108
                [3] = u110
                [4] = u105
                [5] = u84
            --]]
            local u447 = script.BackgroundCrashoutVfx:Clone()
            table.insert(u446, u447)
            u447.Parent = u105
            u447.Anchored = true
            u447:SetAttribute("EmoteProperty", true)
            table.insert(u446, u447)
            u77:AddTag(u447, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
            u447.CFrame = u105.PrimaryPart.CFrame * CFrame.new(0, -0.5, 0)
            task.delay(0.1, function() --[[Anonymous function at line 3682]]
                --[[
                Upvalues:
                    [1] = u447
                    [2] = u84
                    [3] = u105
                    [4] = u446
                --]]
                if u447 and u447.Parent then
                    local v448 = u84({
                        ["SoundId"] = "rbxassetid://94069267034673",
                        ["Volume"] = 2,
                        ["Looped"] = true,
                        ["Parent"] = u105.PrimaryPart
                    })
                    local v449 = u84({
                        ["SoundId"] = "rbxassetid://85346361575494",
                        ["Volume"] = 2,
                        ["Looped"] = true,
                        ["Parent"] = u105.PrimaryPart
                    })
                    v449:Play()
                    v448:Play()
                    local v450 = u446
                    table.insert(v450, v449)
                    local v451 = u446
                    table.insert(v451, v448)
                end
            end)
            local v452 = Instance.new("ColorCorrectionEffect")
            v452.Enabled = true
            v452.Parent = game.Lighting
            v452:SetAttribute("EmoteProperty", true)
            table.insert(u446, v452)
            u77:AddTag(v452, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
            if shared.p(u105) then
                game.ReplicatedStorage.Replication:FireClient(game.Players:GetPlayerFromCharacter(u105), {
                    ["Type"] = "RageCcEmote",
                    ["Cc"] = v452
                })
            end
            for _, v453 in pairs({ u447.Eye, u447.Shade }) do
                v453.Parent = u105.Head
                v453:SetAttribute("EmoteProperty", true)
                table.insert(u446, v453)
                u77:AddTag(v453, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
            end
            tick()
            local function v456(p454) --[[Anonymous function at line 3724]]
                --[[
                Upvalues:
                    [1] = u105
                --]]
                local v455 = game.Players:GetPlayerFromCharacter(u105)
                if v455 then
                    game.ReplicatedStorage.Replication:FireClient(v455, {
                        ["Effect"] = "Camshake",
                        ["Intensity"] = p454
                    })
                end
            end
            v456(3)
            wait(0.1)
            while u447 do
                if not u447.Parent then
                    return
                end
                v456(1)
                task.wait(0.1)
            end
        end
    }
},
["The Shadow"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://140523806098392",
            ["Volume"] = 2
        },
        [1.25] = {
            ["SoundId"] = "rbxassetid://72724090837907",
            ["Volume"] = 2,
            ["Looped"] = true
        }
    },
    ["Animation"] = 100667788888119,
    ["Idle"] = 84711944358577,
    ["Stun"] = "Freeze",
    ["Startup"] = function(u457, _, _, _, u458) --[[Function name: Startup, line 3769]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u77
            [3] = u108
            [4] = u110
        --]]
        task.delay(0.65, function() --[[Anonymous function at line 3770]]
            --[[
            Upvalues:
                [1] = u458
                [2] = u105
                [3] = u457
                [4] = u77
                [5] = u108
                [6] = u110
            --]]
            if not u458.interrupted then
                local v459 = script.AllParticles.FaceShade:Clone()
                v459.Parent = u105.Head
                v459:SetAttribute("EmoteProperty", true)
                local v460 = u457
                table.insert(v460, v459)
                u77:AddTag(v459, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
                local v461 = script.AllParticles.Star:Clone()
                v461.Parent = u105.Torso
                v461:SetAttribute("EmoteProperty", true)
                local v462 = u457
                table.insert(v462, v461)
                u77:AddTag(v461, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
            end
        end)
    end
},
["Take Me On"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://77696812615768",
            ["Volume"] = 1
        }
    },
    ["Animation"] = 106128760138039,
    ["Idle"] = 128334295101396,
    ["Stun"] = "Freeze",
    ["End"] = {
        108557346368699,
        0.35,
        {}
    }
},
["Backwards"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1839850227",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17863082627,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Side To Side"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1845742329",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17861884104,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Celebration"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9048376021",
            ["Volume"] = 1,
            ["Looped"] = true,
            ["TimePosition"] = 23.5
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17863041811,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Hitting It"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1839850337",
            ["Volume"] = 1,
            ["Looped"] = true,
            ["TimePosition"] = 23.5
        }
    },
    ["Animation"] = 124040557048936,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Ohio Dance"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9047358509",
            ["Volume"] = 1,
            ["Looped"] = true,
            ["TimePosition"] = 60
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17861841334,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Laughable"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://18828378634",
            ["Volume"] = 1,
            ["Looped"] = false,
            ["ParentTorso"] = true
        },
        [1] = {
            ["SoundId"] = "rbxassetid://9116239157",
            ["Volume"] = 2,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Keyframes"] = {},
    ["Infinite"] = true,
    ["HideWeapon"] = true,
    ["Animation"] = 18897661505,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1.5
},
["You Hear This?"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18828322371",
            ["Volume"] = 1,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Keyframes"] = {},
    ["Infinite"] = true,
    ["HideWeapon"] = true,
    ["Animation"] = 18897631758,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1.5
},
["Dramatic Kick"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18829050749",
            ["Volume"] = 1,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Keyframes"] = {},
    ["Animation"] = 18897648446,
    ["Stun"] = "Freeze"
},
["Leg"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9040183974",
            ["Volume"] = 1,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Keyframes"] = {},
    ["Looped"] = true,
    ["Animation"] = 18897664299,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1.75
},
["Dodge"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18843747132",
            ["Volume"] = 1,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Keyframes"] = {},
    ["Animation"] = 18897560632,
    ["Stun"] = "Freeze"
},
["Emote"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18828144688",
            ["Volume"] = 2,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Keyframes"] = {},
    ["HideWeapon"] = true,
    ["Animation"] = 18897531388,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1.5
},
["Exercise 2"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18843268995",
            ["Volume"] = 1,
            ["TimePosition"] = 0.2,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Keyframes"] = {},
    ["HideWeapon"] = true,
    ["Animation"] = 18897643802,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Burpee"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18828186356",
            ["Volume"] = 1,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Keyframes"] = {},
    ["HideWeapon"] = true,
    ["Animation"] = 18897501714,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Forever"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18828925553",
            ["Volume"] = 1,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Keyframes"] = {},
    ["HideWeapon"] = true,
    ["Animation"] = 18897617695,
    ["Idle"] = 18897615186,
    ["Stun"] = "Freeze"
},
["Unimpressed"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18827957735",
            ["Volume"] = 1,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Keyframes"] = {},
    ["Infinite"] = true,
    ["HideWeapon"] = true,
    ["Animation"] = 18897731065,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Headbanger"] = {
    ["Sounds"] = {},
    ["Keyframes"] = {},
    ["Startup"] = function() --[[Function name: Startup, line 4107]]
        --[[
        Upvalues:
            [1] = u84
            [2] = u105
        --]]
        u84({
            ["SoundId"] = "rbxassetid://1836270048",
            ["Volume"] = 1,
            ["TimePosition"] = 0.25,
            ["Looped"] = true,
            ["Parent"] = u105.Head
        }):Resume()
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 18897492506,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Daydream"] = {
    ["Sounds"] = {},
    ["Keyframes"] = {},
    ["Startup"] = function() --[[Function name: Startup, line 4132]]
        --[[
        Upvalues:
            [1] = u84
            [2] = u105
        --]]
        u84({
            ["SoundId"] = "rbxassetid://1842247841",
            ["Volume"] = 1,
            ["TimePosition"] = 5,
            ["Parent"] = u105.Head
        }):Resume()
    end,
    ["Infinite"] = true,
    ["HideWeapon"] = true,
    ["Animation"] = 18897563773,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Clear My Head"] = {
    ["Sounds"] = {},
    ["Keyframes"] = {},
    ["Startup"] = function() --[[Function name: Startup, line 4156]]
        --[[
        Upvalues:
            [1] = u84
            [2] = u105
        --]]
        u84({
            ["SoundId"] = "rbxassetid://18827980294",
            ["Volume"] = 1,
            ["TimePosition"] = 0.1,
            ["Parent"] = u105.Head
        }):Resume()
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 18897628831,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Forwards"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1839850227",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Keyframes"] = {
        ["clap"] = function() --[[Anonymous function at line 4181]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://2704706975",
                ["Volume"] = 1,
                ["Parent"] = u105.Head
            }):Play()
        end
    },
    ["Infinite"] = true,
    ["HideWeapon"] = true,
    ["Animation"] = 17862100862,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Kicks"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1842418969",
            ["Volume"] = 1,
            ["Looped"] = true,
            ["TimePosition"] = 1
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17861870996,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Stepping Shuffle"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1839850402",
            ["Volume"] = 1,
            ["Looped"] = true,
            ["TimePosition"] = 1
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17861898789,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Speedy Legs"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9038895603",
            ["Volume"] = 1,
            ["Looped"] = true,
            ["TimePosition"] = 1
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17863047324,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Excited Shuffle"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1839850699",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17863091228,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Arm Sway"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1846564205",
            ["Volume"] = 0.4,
            ["Looped"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17861898147,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Low Snaps"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1837871067",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17861881962,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Blood Swipe"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://93497864837958",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Animation"] = 122647124825700,
    ["Stun"] = "Slowed"
},
["Great Escape"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1845843249",
            ["Volume"] = 0.3,
            ["Looped"] = true
        }
    },
    ["Infinite"] = true,
    ["Animation"] = 17861862787,
    ["Looped"] = true,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1.5
},
["Beatdown"] = {
    ["Keyframes"] = {
        ["clap"] = function() --[[Anonymous function at line 4328]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://18835607404",
                ["Parent"] = u105.Torso,
                ["Volume"] = 1,
                ["PlaybackSpeed"] = 1
            }):Play()
        end
    },
    ["Sounds"] = {},
    ["Startup"] = function(p463, _, p464) --[[Function name: Startup, line 4343]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v465 = script.Sunflower:Clone()
        v465:SetAttribute("EmoteProperty", true)
        table.insert(p463, v465)
        p464.Handle = v465
        local v466 = v465.Sunflower
        v466:SetAttribute("EmoteProperty", true)
        table.insert(p463, v466)
        p464.md = v466
        v466.Part0 = u105.PrimaryPart
        v466.Part1 = v465
        v466.Parent = u105.PrimaryPart
        if math.random(1, 2) == 1 then
            v465.Handle:Destroy()
        else
            v465.Handle2:Destroy()
        end
        v465.Parent = u105
    end,
    ["Infinite"] = true,
    ["HideWeapon"] = true,
    ["Animation"] = 18897695481,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Run"] = {
    ["Keyframes"] = {
        ["clap"] = function(p467) --[[Anonymous function at line 4366]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            if not p467.x then
                p467.x = 1
            end
            u84({
                ["SoundId"] = ({
                    "rbxassetid://18844121515",
                    "rbxassetid://18844121774",
                    "rbxassetid://18844122004",
                    "rbxassetid://18844122195"
                })[math.random(1, 4)],
                ["Parent"] = p467.x % 2 == 0 and u105["Left Leg"] or u105["Right Leg"],
                ["Volume"] = 0.3,
                ["PlaybackSpeed"] = 1
            }):Play()
            p467.x = p467.x + 1
        end
    },
    ["Sounds"] = {},
    ["Startup"] = function(_, _, _) --[[Function name: Startup, line 4384]] end,
    ["Infinite"] = true,
    ["Animation"] = 18897700236,
    ["Looped"] = true,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 0.825
},
["Watch"] = {
    ["Keyframes"] = {},
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9047820458",
            ["Volume"] = 1.35,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p468, _, p469) --[[Function name: Startup, line 4408]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v470 = script.clock:Clone()
        v470:SetAttribute("EmoteProperty", true)
        table.insert(p468, v470)
        p469.Handle = v470
        local v471 = v470["Rig.006"]
        v471:SetAttribute("EmoteProperty", true)
        table.insert(p468, v471)
        p469.md = v471
        v471.Part0 = u105["Left Arm"]
        v471.Part1 = v470
        v471.Parent = u105["Left Arm"]
        v470.Name = "Rig.006"
        v470.Parent = u105
    end,
    ["Animation"] = 18897733312,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["DJ"] = {
    ["Keyframes"] = {},
    ["Sounds"] = {},
    ["Startup"] = function(p472, _, p473) --[[Function name: Startup, line 4432]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local u474 = script.dj_Pad:Clone()
        u474:SetAttribute("EmoteProperty", true)
        table.insert(p472, u474)
        p473.Handle = u474
        local v475 = u474.Base.Base
        v475:SetAttribute("EmoteProperty", true)
        table.insert(p472, v475)
        p473.md = v475
        v475.Part0 = u105.PrimaryPart
        v475.Part1 = u474.Base
        v475.Parent = u105.PrimaryPart
        u474.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://18844058756",
            ["Parent"] = u474.Base,
            ["Volume"] = 1
        }):Play()
        task.delay(1.2, function() --[[Anonymous function at line 4446]]
            --[[
            Upvalues:
                [1] = u474
                [2] = u84
            --]]
            if u474.Parent then
                u84({
                    ["SoundId"] = "rbxassetid://1836681160",
                    ["Parent"] = u474.Base,
                    ["Volume"] = 1,
                    ["Looped"] = true
                }):Play()
            end
        end)
    end,
    ["Animation"] = 18897558226,
    ["Idle"] = 18897555962,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1.25
},
["Horn"] = {
    ["Keyframes"] = {},
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18844027402",
            ["ParentTorso"] = true,
            ["Volume"] = 1.85
        }
    },
    ["Startup"] = function(p476, _, p477) --[[Function name: Startup, line 4476]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v478 = script.horn:Clone()
        v478:SetAttribute("EmoteProperty", true)
        table.insert(p476, v478)
        p477.Handle = v478
        local v479 = v478.horn
        v479:SetAttribute("EmoteProperty", true)
        table.insert(p476, v479)
        p477.md = v479
        v479.Part0 = u105["Right Arm"]
        v479.Part1 = v478
        v479.Parent = u105["Right Arm"]
        v478.Parent = u105
    end,
    ["Animation"] = 18897636555,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1.5
},
["Big Shoe"] = {
    ["Keyframes"] = {},
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1843650812",
            ["ParentTorso"] = true,
            ["Volume"] = 1.85,
            ["TimePosition"] = 15,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p480, _, p481) --[[Function name: Startup, line 4505]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v482 = script["big shoe lol"]:Clone()
        v482:SetAttribute("EmoteProperty", true)
        table.insert(p480, v482)
        p481.Handle = v482
        local v483 = v482["big shoe lol"]
        v483:SetAttribute("EmoteProperty", true)
        table.insert(p480, v483)
        p481.md = v483
        v483.Part0 = u105["Right Leg"]
        v483.Part1 = v482
        v483.Parent = u105["Right Leg"]
        v482.Parent = u105["Right Leg"]
        u84({
            ["SoundId"] = "rbxassetid://18843835286",
            ["Parent"] = v482,
            ["Volume"] = 2,
            ["Looped"] = true
        }):Play()
    end,
    ["Animation"] = 18897707539,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Bhop"] = {
    ["Keyframes"] = {},
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18844493172",
            ["ParentTorso"] = true,
            ["Volume"] = 0.5,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p484, _, p485) --[[Function name: Startup, line 4540]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v486 = script.Plane:Clone()
        v486:SetAttribute("EmoteProperty", true)
        table.insert(p484, v486)
        p485.Handle = v486
        local v487 = v486.Plane
        v487:SetAttribute("EmoteProperty", true)
        table.insert(p484, v487)
        p485.md = v487
        v487.Part0 = u105["Right Arm"]
        v487.Part1 = v486
        v487.Parent = u105["Right Arm"]
        v486.Parent = u105
    end,
    ["Fix"] = true,
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Animation"] = 18897499721,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1
},
["Lollipop"] = {
    ["Keyframes"] = {},
    ["Sounds"] = {},
    ["Startup"] = function(p488, _, p489) --[[Function name: Startup, line 4566]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v490 = script.LeftHandlecand:Clone()
        v490:SetAttribute("EmoteProperty", true)
        table.insert(p488, v490)
        p489.Handle = v490
        v490.Name = "LeftHandle"
        local v491 = v490.LeftHandle
        v491:SetAttribute("EmoteProperty", true)
        table.insert(p488, v491)
        p489.md = v491
        v491.Part0 = u105["Left Arm"]
        v491.Part1 = v490
        v491.Parent = u105["Left Arm"]
        v490.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://18844183460",
            ["Parent"] = v490,
            ["Volume"] = 1
        }):Play()
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 18897505064,
    ["Idle"] = 18897508344,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1.5
},
["Treadmill"] = {
    ["Keyframes"] = {
        ["clap"] = function(p492) --[[Anonymous function at line 4591]]
            --[[
            Upvalues:
                [1] = u105
                [2] = u4
            --]]
            if not p492.x then
                p492.x = 1
            end
            shared.sfx({
                ["SoundId"] = ({ "rbxassetid://18844324520", "rbxassetid://18844324837", "rbxassetid://18844325082" })[math.random(1, 3)],
                ["Parent"] = p492.x % 2 == 0 and u105["Left Leg"] or u105["Right Leg"],
                ["Volume"] = 0.85,
                ["RollOffMaxDistance"] = u4,
                ["PlaybackSpeed"] = 1
            }):Play()
            p492.x = p492.x + 1
        end
    },
    ["Sounds"] = {},
    ["Startup"] = function(p493, _, p494) --[[Function name: Startup, line 4610]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
            [3] = u116
        --]]
        local u495 = script.Treadmill:Clone()
        u495:SetAttribute("EmoteProperty", true)
        table.insert(p493, u495)
        p494.Handle = u495
        local v496 = u495.Treadmill
        v496:SetAttribute("EmoteProperty", true)
        table.insert(p493, v496)
        p494.md = v496
        v496.Part0 = u105.PrimaryPart
        v496.Part1 = u495
        v496.Parent = u105.PrimaryPart
        u495.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://18844323927",
            ["Parent"] = u495,
            ["Volume"] = 1
        }):Play()
        u84({
            ["SoundId"] = "rbxassetid://18844324232",
            ["Parent"] = u495,
            ["Volume"] = 1,
            ["Looped"] = true
        }):Play()
        task.spawn(function() --[[Anonymous function at line 4631]]
            --[[
            Upvalues:
                [1] = u116
                [2] = u495
            --]]
            local v497 = u116(18897724289)
            local v498 = 1
            while true do
                task.wait()
                if v497.IsPlaying then
                    v498 = v498 + 1e-6
                    v497:AdjustSpeed((math.clamp(v498, 0, 10)))
                end
                if not u495.Parent then
                    return
                end
            end
        end)
    end,
    ["IdleKeyframes"] = true,
    ["Infinite"] = true,
    ["HideWeapon"] = true,
    ["Animation"] = 18897726542,
    ["Idle"] = 18897724289,
    ["Stun"] = "Freeze"
},
["Bear"] = {
    ["Keyframes"] = {
        ["clap"] = function(p499) --[[Anonymous function at line 4653]]
            --[[
            Upvalues:
                [1] = u84
            --]]
            if not p499.x then
                p499.x = 1
            end
            u84({
                ["SoundId"] = ({
                    "rbxassetid://18846632392",
                    "rbxassetid://18846632707",
                    "rbxassetid://18846633000",
                    "rbxassetid://18846633359"
                })[math.random(1, 4)],
                ["Parent"] = p499.x % 2 == 0 and p499.b["BRight Leg"] or p499.b["BLeft Leg"],
                ["Volume"] = 0.3,
                ["PlaybackSpeed"] = 1
            }):Play()
            p499.x = p499.x + 1
            if p499.x % 5 == 0 then
                u84({
                    ["SoundId"] = ({ "rbxassetid://18846691304", "rbxassetid://18846691736", "rbxassetid://18846692037" })[math.random(1, 3)],
                    ["Parent"] = p499.b.Head,
                    ["Volume"] = 1,
                    ["PlaybackSpeed"] = 1
                }):Play()
            end
        end
    },
    ["Sounds"] = {},
    ["Startup"] = function(p500, _, p501) --[[Function name: Startup, line 4679]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v502 = script.Bear:Clone()
        v502:SetAttribute("EmoteProperty", true)
        table.insert(p500, v502)
        p501.Handle = v502
        local v503 = v502.Body.Body
        v503:SetAttribute("EmoteProperty", true)
        table.insert(p500, v503)
        p501.md = v503
        v503.Part0 = u105.PrimaryPart
        v503.Part1 = v502.Body
        v503.Parent = u105.PrimaryPart
        v502.Parent = u105
        p501.b = v502
        u84({
            ["SoundId"] = ({ "rbxassetid://18846691304", "rbxassetid://18846691736", "rbxassetid://18846692037" })[math.random(1, 3)],
            ["Parent"] = p501.b.Head,
            ["Volume"] = 1,
            ["PlaybackSpeed"] = 1
        }):Play()
    end,
    ["Infinite"] = true,
    ["HideWeapon"] = true,
    ["Fix"] = true,
    ["Animation"] = 18897495704,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Cooked"] = {
    ["Keyframes"] = {},
    ["Sounds"] = {},
    ["Startup"] = function(p504, _, p505) --[[Function name: Startup, line 4713]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v506 = script.PanTwo:Clone()
        v506:SetAttribute("EmoteProperty", true)
        table.insert(p504, v506)
        p505.Handle = v506
        local v507 = v506.Pan
        v507:SetAttribute("EmoteProperty", true)
        table.insert(p504, v507)
        p505.md = v507
        v507.Part0 = u105["Right Arm"]
        v507.Part1 = v506
        v507.Parent = u105["Right Arm"]
        v506.Name = "Pan"
        v506.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://18829100753",
            ["Parent"] = v506,
            ["Volume"] = 1,
            ["Looped"] = true
        }):Play()
        local v508 = script.Pancake:Clone()
        v508:SetAttribute("EmoteProperty", true)
        table.insert(p504, v508)
        p505.Handle = v508
        local v509 = v506["Meshes/Pancake"]
        v509:SetAttribute("EmoteProperty", true)
        table.insert(p504, v509)
        p505.md = v509
        v509.Part0 = v506
        v509.Part1 = v508
        v509.Parent = v506
        v508.Parent = u105
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 18897548874,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["English or Spanish"] = {
    ["Keyframes"] = {},
    ["Sounds"] = {},
    ["Startup"] = function(p510, _, p511) --[[Function name: Startup, line 4752]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        for _, v512 in pairs({ "English", "Spanish", "TextHandle" }) do
            local v513 = script[v512]:Clone()
            v513:SetAttribute("EmoteProperty", true)
            table.insert(p510, v513)
            p511.Handle = v513
            local v514 = v513[v512]
            v514:SetAttribute("EmoteProperty", true)
            table.insert(p510, v514)
            p511.md = v514
            v514.Part0 = u105.PrimaryPart
            v514.Part1 = v513
            v514.Parent = u105.PrimaryPart
            v513.Parent = u105
        end
        u84({
            ["SoundId"] = "rbxassetid://18835721216",
            ["Parent"] = u105.PrimaryPart,
            ["Volume"] = 1
        }):Play()
        u84({
            ["SoundId"] = "rbxassetid://9045031823",
            ["Parent"] = u105.PrimaryPart,
            ["Looped"] = true,
            ["Volume"] = 0.3
        }):Play()
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 18897604359,
    ["Idle"] = 18897610765,
    ["Stun"] = "Freeze"
},
["Mad Skills"] = {
    ["Keyframes"] = {},
    ["Sounds"] = {},
    ["Startup"] = function(p515, _, p516) --[[Function name: Startup, line 4791]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v517 = script.boombox:Clone()
        v517:SetAttribute("EmoteProperty", true)
        table.insert(p515, v517)
        p516.Handle = v517
        local v518 = v517.m6d
        v518:SetAttribute("EmoteProperty", true)
        table.insert(p515, v518)
        p516.md = v518
        v518.Part0 = u105.PrimaryPart
        v518.Part1 = v517
        v518.Parent = u105.PrimaryPart
        v518.Name = "Motor6D"
        v517.Name = "Part"
        v517.Parent = u105.PrimaryPart
        u84({
            ["SoundId"] = "rbxassetid://1846329169",
            ["Parent"] = v517,
            ["Volume"] = 1,
            ["Looped"] = true
        }):Play()
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 18897639790,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Around My Way"] = {
    ["Keyframes"] = {},
    ["Sounds"] = {},
    ["Startup"] = function(_, _, _) --[[Function name: Startup, line 4824]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u77
            [3] = u108
            [4] = u110
            [5] = u84
            [6] = u116
        --]]
        local u519 = script.BoomBox:Clone()
        u519:SetAttribute("EmoteProperty", true)
        local v520 = u519.BoomBox
        v520:SetAttribute("EmoteProperty", true)
        v520.Part0 = u105.PrimaryPart
        v520.Part1 = u519
        v520.Parent = u105.PrimaryPart
        u519.Parent = u105
        u77:AddTag(u519, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        task.delay(0.25, function() --[[Anonymous function at line 4833]]
            --[[
            Upvalues:
                [1] = u519
                [2] = u84
            --]]
            if u519.Parent then
                u84({
                    ["SoundId"] = "rbxassetid://18843532846",
                    ["Parent"] = u519,
                    ["Volume"] = 1
                }):Play()
            end
        end)
        task.spawn(function() --[[Anonymous function at line 4843]]
            --[[
            Upvalues:
                [1] = u116
                [2] = u519
                [3] = u84
            --]]
            local v521 = u116(18897676267)
            repeat
                task.wait()
            until v521.IsPlaying or not u519.Parent
            if v521.IsPlaying then
                task.wait(2.51)
                if not u519.Parent then
                    return
                end
                u84({
                    ["SoundId"] = "rbxassetid://18843484198",
                    ["CFrame"] = u519.CFrame,
                    ["TimePosition"] = 2.51,
                    ["Volume"] = 1
                }):Resume()
            end
        end)
        u84({
            ["SoundId"] = "rbxassetid://1843676441",
            ["Parent"] = u519,
            ["Volume"] = 1,
            ["Looped"] = true
        }):Play()
    end,
    ["HideWeapon"] = true,
    ["End"] = {
        18897676267,
        3.217,
        {
            ["SoundId"] = "rbxassetid://18843483804",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Idle"] = 18897673759,
    ["Animation"] = 18897679922,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Bindle"] = {
    ["Keyframes"] = {
        ["clap"] = function() --[[Anonymous function at line 4885]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://17849634815",
                ["Parent"] = u105.HumanoidRootPart,
                ["Volume"] = 1,
                ["PlaybackSpeed"] = 1
            }):Play()
        end,
        ["claploop"] = function() --[[Anonymous function at line 4897]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://17849634537",
                ["Parent"] = u105.HumanoidRootPart,
                ["Volume"] = 1,
                ["PlaybackSpeed"] = 1
            }):Play()
        end
    },
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1838846993",
            ["Volume"] = 0.7,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p522, _, p523) --[[Function name: Startup, line 4917]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v524 = script.Stick:Clone()
        v524:SetAttribute("EmoteProperty", true)
        table.insert(p522, v524)
        p523.Handle = v524
        local v525 = v524.Stick
        v525:SetAttribute("EmoteProperty", true)
        table.insert(p522, v525)
        p523.md = v525
        v525.Part0 = u105["Right Arm"]
        v525.Part1 = v524
        v525.Parent = u105["Right Arm"]
        v524.Parent = u105
        local v526 = script.Bag:Clone()
        v526:SetAttribute("EmoteProperty", true)
        table.insert(p522, v526)
        p523.Handle = v526
        local v527 = v524.Bag
        v527:SetAttribute("EmoteProperty", true)
        table.insert(p522, v527)
        p523.md = v527
        v527.Part0 = v524
        v527.Part1 = v526
        v527.Parent = v524
        v526.Parent = u105["Right Arm"]
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 17861837529,
    ["Looped"] = true,
    ["Infinite"] = true,
    ["Stun"] = "Slowed"
},
["Demon"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17848180129",
            ["Volume"] = 1,
            ["Looped"] = false,
            ["TimePosition"] = 0.3
        }
    },
    ["Startup"] = function(p528, _, p529) --[[Function name: Startup, line 4955]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v530 = script.DemonParticles.RootAttachment:Clone()
        v530:SetAttribute("EmoteProperty", true)
        table.insert(p528, v530)
        table.insert(p529, v530)
        v530.Parent = u105.HumanoidRootPart
        game:GetService("Debris"):AddItem(v530, 2)
        for _, v531 in pairs(v530:GetChildren()) do
            v531:Emit(1)
        end
    end,
    ["Animation"] = 17861844708,
    ["Stun"] = "Freeze",
    ["HideWeapon"] = true
},
["Sacred Summoning"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17842803002",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["IdleSound"] = {
        ["SoundId"] = "rbxassetid://17842803226",
        ["Volume"] = 1,
        ["Looped"] = true
    },
    ["Startup"] = function(p532, _, _) --[[Function name: Startup, line 4991]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p532, u105)
        u104("Right", p532, u105)
    end,
    ["Idle"] = 17862993552,
    ["Animation"] = 17862992081,
    ["Stun"] = "Freeze",
    ["HideWeapon"] = true
},
["Frisbee"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17837903508",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p533, _, p534) --[[Function name: Startup, line 5013]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v535 = script.Frisbee:Clone()
        v535:SetAttribute("EmoteProperty", true)
        table.insert(p533, v535)
        p534.Frisbee = v535
        local v536 = v535.Frisbee
        v536:SetAttribute("EmoteProperty", true)
        table.insert(p533, v536)
        p534.md = v536
        v536.Part0 = u105["Right Arm"]
        v536.Part1 = v535
        v536.Parent = u105["Right Arm"]
        v535.Parent = u105
    end,
    ["Keyframes"] = {
        ["Toss"] = function(p537) --[[Anonymous function at line 5025]]
            --[[
            Upvalues:
                [1] = u77
                [2] = u105
                [3] = u110
                [4] = u84
            --]]
            p537.Frisbee.Transparency = 1
            local u538 = script.Frisbee:Clone()
            u77:AddTag(u538, "emotestuff" .. u105.Name)
            game:GetService("Debris"):AddItem(u538, 5)
            u538.CanCollide = true
            u538.CanTouch = true
            u538.CanQuery = false
            u538.Massless = false
            u538.CollisionGroup = "nocol"
            u538.CFrame = u105:GetPivot() * CFrame.new(0, 0, -2.5)
            u538.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1)
            u538.Parent = workspace.Thrown
            u538:SetNetworkOwner(u110)
            local u539 = 0
            u538.AssemblyAngularVelocity = Vector3.new(0, 480, 0)
            u538.AssemblyLinearVelocity = u105:GetPivot().LookVector * 120 + u105:GetPivot().UpVector * 40
            local u542 = u538.Touched:Connect(function(p540) --[[Anonymous function at line 5052]]
                --[[
                Upvalues:
                    [1] = u539
                    [2] = u538
                    [3] = u84
                --]]
                if p540:IsDescendantOf(workspace.Live) or tick() - u539 < 0.075 then
                    return
                else
                    local v541 = u538.Velocity.Y
                    if math.abs(v541) >= 4 then
                        u539 = tick()
                        u84({
                            ["SoundId"] = "rbxassetid://9114538213",
                            ["Parent"] = u538,
                            ["Volume"] = 1,
                            ["PlaybackSpeed"] = Random.new():NextNumber(0.99, 2)
                        }):Play()
                    end
                end
            end)
            task.delay(5, function() --[[Anonymous function at line 5068]]
                --[[
                Upvalues:
                    [1] = u542
                --]]
                u542:Disconnect()
            end)
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17862066234,
    ["Looped"] = false,
    ["Stun"] = "Slowed"
},
["Controller Rage"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17837716532",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p543, _, p544) --[[Function name: Startup, line 5090]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v545 = script.Controller:Clone()
        v545:SetAttribute("EmoteProperty", true)
        table.insert(p543, v545)
        p544.Handle = v545
        v545.Name = "Retopo_Cube.001"
        local v546 = v545["Retopo_Cube.001"]
        v546:SetAttribute("EmoteProperty", true)
        table.insert(p543, v546)
        p544.md = v546
        v546.Part0 = u105.HumanoidRootPart
        v546.Part1 = v545
        v546.Parent = u105.HumanoidRootPart
        v545.Parent = u105
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 17861843594,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Spare Change"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17862020768",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p547, _, p548) --[[Function name: Startup, line 5119]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v549 = script.SpareChangeCup:Clone()
        v549:SetAttribute("EmoteProperty", true)
        table.insert(p547, v549)
        p548.Handle = v549
        v549.Name = "Handle"
        local v550 = v549.Handle
        v550:SetAttribute("EmoteProperty", true)
        table.insert(p547, v550)
        p548.md = v550
        v550.Part0 = u105["Right Arm"]
        v550.Part1 = v549
        v550.Parent = u105["Right Arm"]
        v549.Parent = u105
        local v551 = script.Box:Clone()
        v551:SetAttribute("EmoteProperty", true)
        table.insert(p547, v551)
        p548.Handle = v551
        v551.Name = "RBX"
        local v552 = v551["Cube.002"]["Cube.002"]
        v552:SetAttribute("EmoteProperty", true)
        table.insert(p547, v552)
        p548.md = v552
        v552.Part0 = u105.HumanoidRootPart
        v552.Part1 = v551["Cube.002"]
        v552.Parent = u105.HumanoidRootPart
        v551.Parent = u105
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 17861773600,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Boo! Tomato"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17837284253",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p553, _, p554) --[[Function name: Startup, line 5155]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v555 = script.TSB_tomato:Clone()
        v555:SetAttribute("EmoteProperty", true)
        table.insert(p553, v555)
        p554.TSB_tomato = v555
        v555.Transparency = 1
        local v556 = v555.TSB_tomato
        v556:SetAttribute("EmoteProperty", true)
        table.insert(p553, v556)
        p554.md = v556
        v556.Part0 = u105.HumanoidRootPart
        v556.Part1 = v555
        v556.Parent = u105.HumanoidRootPart
        v555.Parent = u105
    end,
    ["Keyframes"] = {
        ["TomatoAppear"] = function(p557) --[[Anonymous function at line 5168]]
            p557.TSB_tomato.Transparency = 0
        end,
        ["Tomato"] = function(p558) --[[Anonymous function at line 5172]]
            --[[
            Upvalues:
                [1] = u77
                [2] = u105
                [3] = u110
                [4] = u84
            --]]
            p558.TSB_tomato.Transparency = 1
            local u559 = script.TSB_tomato:Clone()
            u77:AddTag(u559, "emotestuff" .. u105.Name)
            game:GetService("Debris"):AddItem(u559, 5)
            u559.CanCollide = true
            u559.CanTouch = true
            u559.CanQuery = false
            u559.Massless = false
            u559.CollisionGroup = "nocol"
            u559.CFrame = p558.TSB_tomato.CFrame
            u559.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1)
            u559.Parent = workspace.Thrown
            u559:SetNetworkOwner(u110)
            local v560 = u105.PrimaryPart.CFrame + u105.PrimaryPart.CFrame.lookVector * 40
            local v561 = -workspace.Gravity + 70
            local v562 = Vector3.new(0, v561, 0)
            local v563 = u105.PrimaryPart.CFrame * CFrame.new(0, 0, -2)
            local v564 = (v560.Position - v563.Position - 0.5 * v562 * 1 * 1) / 1
            local u565 = 0
            u559.Velocity = v564
            local u568 = u559.Touched:Connect(function(p566) --[[Anonymous function at line 5194]]
                --[[
                Upvalues:
                    [1] = u565
                    [2] = u559
                    [3] = u84
                --]]
                if p566:IsDescendantOf(workspace.Live) or tick() - u565 < 0.075 then
                    return
                else
                    local v567 = u559.Velocity.Y
                    if math.abs(v567) >= 4 then
                        u565 = tick()
                        u84({
                            ["SoundId"] = "rbxassetid://9120112840",
                            ["Parent"] = u559,
                            ["Volume"] = 3,
                            ["PlaybackSpeed"] = Random.new():NextNumber(1.5, 2)
                        }):Play()
                    end
                end
            end)
            task.delay(5, function() --[[Anonymous function at line 5211]]
                --[[
                Upvalues:
                    [1] = u568
                --]]
                if u568 then
                    u568:Disconnect()
                end
            end)
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17863116997,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Bottle Flip"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17837070780",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p569, _, p570) --[[Function name: Startup, line 5235]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v571 = script.TSB_waterbottle:Clone()
        v571:SetAttribute("EmoteProperty", true)
        table.insert(p569, v571)
        p570.WaterBottle = v571
        local v572 = v571.TSB_waterbottle
        v572:SetAttribute("EmoteProperty", true)
        table.insert(p569, v572)
        p570.md = v572
        v572.Part0 = u105.HumanoidRootPart
        v572.Part1 = v571
        v572.Parent = u105.HumanoidRootPart
        v571.Parent = u105
    end,
    ["Keyframes"] = {
        ["Flip"] = function(p573) --[[Anonymous function at line 5247]]
            --[[
            Upvalues:
                [1] = u77
                [2] = u105
                [3] = u110
                [4] = u84
            --]]
            p573.WaterBottle.Transparency = 1
            local u574 = script.TSB_waterbottle:Clone()
            u77:AddTag(u574, "emotestuff" .. u105.Name)
            game:GetService("Debris"):AddItem(u574, 5)
            u574.CanCollide = true
            u574.CanTouch = true
            u574.CanQuery = false
            u574.Massless = false
            u574.CollisionGroup = "nocol"
            u574.CFrame = p573.WaterBottle.CFrame
            u574.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1)
            u574.Parent = workspace.Thrown
            u574:SetNetworkOwner(u110)
            local v575 = u105.PrimaryPart.CFrame + u105.PrimaryPart.CFrame.lookVector * 20
            local v576 = -workspace.Gravity
            local v577 = Vector3.new(0, v576, 0)
            local v578 = u105.PrimaryPart.CFrame * Vector3.new(0, 0, -2)
            local v579 = (v575.Position - v578 - 0.5 * v577 * 1 * 1) / 1
            local u580 = 0
            u574.Velocity = v579
            u574.AssemblyAngularVelocity = Vector3.new(15, 0, 0)
            local u583 = u574.Touched:Connect(function(p581) --[[Anonymous function at line 5270]]
                --[[
                Upvalues:
                    [1] = u580
                    [2] = u574
                    [3] = u84
                --]]
                if p581:IsDescendantOf(workspace.Live) or tick() - u580 < 0.075 then
                    return
                else
                    local v582 = u574.Velocity.Y
                    if math.abs(v582) >= 4 then
                        u580 = tick()
                        u84({
                            ["SoundId"] = "rbxassetid://9125743366",
                            ["Parent"] = u574,
                            ["Volume"] = 3,
                            ["PlaybackSpeed"] = Random.new():NextNumber(1.5, 2)
                        }):Play()
                    end
                end
            end)
            task.delay(5, function() --[[Anonymous function at line 5286]]
                --[[
                Upvalues:
                    [1] = u583
                --]]
                u583:Disconnect()
            end)
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17863045150,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Golfing"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17835937472",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p584, _, p585) --[[Function name: Startup, line 5307]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v586 = script.golfball:Clone()
        v586:SetAttribute("EmoteProperty", true)
        table.insert(p584, v586)
        p585.GolfBall = v586
        local v587 = v586.golfball
        v587:SetAttribute("EmoteProperty", true)
        table.insert(p584, v587)
        p585.md = v587
        v587.Part0 = u105.HumanoidRootPart
        v587.Part1 = v586
        v587.Parent = u105.HumanoidRootPart
        v586.Parent = u105
        local v588 = script.golfclub:Clone()
        v588:SetAttribute("EmoteProperty", true)
        table.insert(p584, v588)
        p585.Handle = v588
        local v589 = v588.golfclub
        v589:SetAttribute("EmoteProperty", true)
        table.insert(p584, v589)
        p585.md = v589
        v589.Part0 = u105["Right Arm"]
        v589.Part1 = v588
        v589.Parent = u105["Right Arm"]
        v588.Parent = u105
    end,
    ["Keyframes"] = {
        ["GolfBall"] = function(p590) --[[Anonymous function at line 5326]]
            --[[
            Upvalues:
                [1] = u77
                [2] = u105
                [3] = u110
                [4] = u84
            --]]
            p590.GolfBall.Transparency = 1
            local u591 = script.golfball:Clone()
            u77:AddTag(u591, "emotestuff" .. u105.Name)
            game:GetService("Debris"):AddItem(u591, 5)
            u591.CanCollide = true
            u591.CanTouch = true
            u591.CanQuery = false
            u591.Massless = false
            u591.CollisionGroup = "nocol"
            u591.CFrame = p590.GolfBall.CFrame
            u591.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1)
            u591.Parent = workspace.Thrown
            u591:SetNetworkOwner(u110)
            local v592 = u105.PrimaryPart.CFrame + u105.PrimaryPart.CFrame.lookVector * 50
            local v593 = -workspace.Gravity
            local v594 = Vector3.new(0, v593, 0)
            local v595 = u105.PrimaryPart.CFrame * Vector3.new(0, 0, -2)
            local v596 = (v592.Position - v595 - 0.5 * v594 * 1 * 1) / 1
            local u597 = 0
            u591.Velocity = v596
            local u600 = u591.Touched:Connect(function(p598) --[[Anonymous function at line 5348]]
                --[[
                Upvalues:
                    [1] = u597
                    [2] = u591
                    [3] = u84
                --]]
                if p598:IsDescendantOf(workspace.Live) or tick() - u597 < 0.075 then
                    return
                else
                    local v599 = u591.Velocity.Y
                    if math.abs(v599) >= 4 then
                        u597 = tick()
                        u84({
                            ["SoundId"] = "rbxassetid://9114625926",
                            ["Parent"] = u591,
                            ["Volume"] = 3,
                            ["PlaybackSpeed"] = Random.new():NextNumber(0.9, 1.1)
                        }):Play()
                    end
                end
            end)
            task.delay(5, function() --[[Anonymous function at line 5364]]
                --[[
                Upvalues:
                    [1] = u600
                --]]
                u600:Disconnect()
            end)
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17863077772,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Random Dance"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1844612112",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17861893708,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Left n\' Right"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9044565954",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17861844224,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["I WILL FEINT"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17830548577",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p601, _, p602) --[[Function name: Startup, line 5426]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v603 = script.KickChair:Clone()
        v603.Name = "Chair"
        v603:SetAttribute("EmoteProperty", true)
        table.insert(p601, v603)
        p602.Handle = v603
        local v604 = v603.Chair
        v604:SetAttribute("EmoteProperty", true)
        table.insert(p601, v604)
        p602.md = v604
        v604.Part0 = u105.HumanoidRootPart
        v604.Part1 = v603
        v604.Parent = u105.HumanoidRootPart
        v603.Parent = u105
    end,
    ["Animation"] = 17861869602,
    ["HideWeapon"] = true,
    ["Looped"] = false,
    ["Stun"] = "Freeze",
    ["Fix"] = true
},
["Cat Dancey"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1841610903",
            ["Volume"] = 1,
            ["Looped"] = false,
            ["TimePosition"] = 5
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17861842039,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Fresh"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1843071445",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17863085690,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Cute Spin"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1835969978",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17861849696,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Leapin\'"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1837768352",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17863299880,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Clubbin\'"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1847692872",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17861870429,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Puzzled"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17824312884",
            ["Volume"] = 1.5,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p605, _, p606) --[[Function name: Startup, line 5530]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v607 = script.LeftEyebrow:Clone()
        v607:SetAttribute("EmoteProperty", true)
        table.insert(p605, v607)
        p606.Handle = v607
        local v608 = v607.LeftEyebrow
        v608:SetAttribute("EmoteProperty", true)
        table.insert(p605, v608)
        p606.md = v608
        v608.Part0 = u105.Head
        v608.Part1 = v607
        v608.Parent = u105.Head
        v607.Parent = u105.Head
        local v609 = script.RightEyebrow:Clone()
        v609:SetAttribute("EmoteProperty", true)
        table.insert(p605, v609)
        p606.Handle = v609
        local v610 = v609.RightEyebrow
        v610:SetAttribute("EmoteProperty", true)
        table.insert(p605, v610)
        p606.md = v610
        v610.Part0 = u105.Head
        v610.Part1 = v609
        v610.Parent = u105.Head
        v609.Parent = u105.Head
        local v611 = script.shades:Clone()
        v611:SetAttribute("EmoteProperty", true)
        table.insert(p605, v611)
        p606.Handle = v611
        local v612 = v611.shades
        v612:SetAttribute("EmoteProperty", true)
        table.insert(p605, v612)
        p606.md = v612
        v612.Part0 = u105.Head
        v612.Part1 = v611
        v612.Parent = u105.Head
        v611.Parent = u105
        local v613 = script.mic:Clone()
        v613:SetAttribute("EmoteProperty", true)
        table.insert(p605, v613)
        p606.Handle = v613
        local v614 = v613.mic
        v614:SetAttribute("EmoteProperty", true)
        table.insert(p605, v614)
        p606.md = v614
        v614.Part0 = u105["Left Arm"]
        v614.Part1 = v613
        v614.Parent = u105["Left Arm"]
        v613.Parent = u105
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 17862419034,
    ["Looped"] = false,
    ["Stun"] = "Slowed"
},
["Hair Dryer"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17824222206",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p615, _, p616) --[[Function name: Startup, line 5578]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v617 = u105.Head:FindFirstChild("afro") and true or false
        local v618 = script.afro:Clone()
        if v617 then
            v618:SetAttribute("EmoteProperty", true)
            table.insert(p615, v618)
            p616.Handle = v618
        end
        local v619 = v618.afro
        if v617 then
            v619:SetAttribute("EmoteProperty", true)
            table.insert(p615, v619)
            p616.md = v619
        end
        v619.Part0 = u105.Head
        v619.Part1 = v618
        v619.Parent = u105.Head
        v618.Parent = u105.Head
        local v620 = script.HairDryer:Clone()
        v620:SetAttribute("EmoteProperty", true)
        table.insert(p615, v620)
        p616.Handle = v620
        local v621 = v620.HairDryer
        v621:SetAttribute("EmoteProperty", true)
        table.insert(p615, v621)
        p616.md = v621
        v621.Part0 = u105["Left Arm"]
        v621.Part1 = v620
        v621.Parent = u105["Left Arm"]
        v620.Parent = u105
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 17862799431,
    ["Looped"] = false,
    ["Stun"] = "Slowed"
},
["Club Dance"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9042719219",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17861842605,
    ["Stun"] = "Freeze",
    ["Looped"] = true
},
["Signature Shuffle"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://78643048115190",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Animation"] = 17877281437,
    ["Stun"] = "Slowed"
},
["Shoo!"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://95918662439189",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 120410055632356,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1,
    ["Looped"] = true
},
["Sharp Shooter"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17824113419",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17861840167,
    ["Stun"] = "Freeze"
},
["Tornado"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1845194026",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Animation"] = 18459285150,
    ["Stun"] = "Slowed",
    ["Looped"] = true
},
["Weakling"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18459323373",
            ["Volume"] = 2,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Animation"] = 18459317750,
    ["Stun"] = "Freeze",
    ["Looped"] = true
},
["Kitchen"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18459227961",
            ["Volume"] = 4.5
        }
    },
    ["Startup"] = function(p622, _, _) --[[Function name: Startup, line 5707]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p622, u105)
        u104("Right", p622, u105)
    end,
    ["IdleSound"] = {
        ["SoundId"] = "rbxassetid://18459227438",
        ["Volume"] = 0.5,
        ["Looped"] = true
    },
    ["Idle"] = 18459220516,
    ["Animation"] = 18459215845,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true
},
["Shadow"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18835841306",
            ["Volume"] = 2
        }
    },
    ["Startup"] = function(p623, _, _) --[[Function name: Startup, line 5732]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p623, u105)
        u104("Right", p623, u105)
    end,
    ["Idle"] = 18897705219,
    ["Animation"] = 18897703230,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true
},
["Luck"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://18843324948",
            ["Volume"] = 1.5
        },
        [0.5] = {
            ["SoundId"] = "rbxassetid://18843324678",
            ["Volume"] = 0.95,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p624, _, _) --[[Function name: Startup, line 5757]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p624, u105)
        u104("Right", p624, u105)
    end,
    ["Idle"] = 18897669629,
    ["Animation"] = 18897667042,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true
},
["Void"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18459160241",
            ["Volume"] = 4.5
        }
    },
    ["Startup"] = function(p625, _, _) --[[Function name: Startup, line 5776]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Right", p625, u105)
    end,
    ["IdleSound"] = {
        ["SoundId"] = "rbxassetid://18459159579",
        ["Volume"] = 0.5,
        ["Looped"] = true
    },
    ["Idle"] = 18459183268,
    ["Animation"] = 18459178353,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true
},
["Four"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18835391294",
            ["Volume"] = 1.25,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p626, _, _) --[[Function name: Startup, line 5802]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Right", p626, u105)
    end,
    ["Animation"] = 18897621181,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1.5,
    ["HideWeapon"] = true
},
["Heart Hands"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18844562542",
            ["Volume"] = 1.25,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p627, _, _) --[[Function name: Startup, line 5821]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p627, u105)
        u104("Right", p627, u105)
    end,
    ["Animation"] = 18897634229,
    ["Stun"] = "Freeze",
    ["HideWeapon"] = true
},
["Cheese"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18828832074",
            ["Volume"] = 1.25
        }
    },
    ["Startup"] = function(p628, _, _) --[[Function name: Startup, line 5839]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p628, u105)
        u104("Right", p628, u105)
    end,
    ["Animation"] = 18897523693,
    ["Stun"] = "Freeze",
    ["HideWeapon"] = true
},
["I love TSB"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18450377533",
            ["Volume"] = 1.25
        }
    },
    ["Startup"] = function(p629, _, _) --[[Function name: Startup, line 5857]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p629, u105)
        u104("Right", p629, u105)
    end,
    ["Animation"] = 18450373829,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true
},
["Thinking"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17862530320",
            ["Volume"] = 0.98,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p630, _, _) --[[Function name: Startup, line 5876]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p630, u105)
        u104("Right", p630, u105)
        for v631 = 1, 3 do
            local v632 = script.HmmDot:Clone()
            v632.Name = v631
            v632.Parent = u105
            local v633 = Instance.new("Motor6D")
            v633.C0 = CFrame.new(-1.493, 1.17, -0.086) * CFrame.Angles(0, 3.141592653589793, 0)
            v633.Name = v631
            v633.Part0 = u105.Torso
            v633.Part1 = v632
            v633.Parent = u105.Torso
            v632:SetAttribute("EmoteProperty", true)
            v633:SetAttribute("EmoteProperty", true)
            table.insert(p630, v632)
            table.insert(p630, v633)
        end
    end,
    ["Animation"] = 17862470017,
    ["Looped"] = true,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true
},
["Stroll"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9048435290",
            ["Volume"] = 0.75,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p634, _, p635) --[[Function name: Startup, line 5920]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v636 = script.yoyorig:Clone()
        v636:SetAttribute("EmoteProperty", true)
        table.insert(p634, v636)
        p635.Handle = v636
        local v637 = v636.m6d
        v637:SetAttribute("EmoteProperty", true)
        table.insert(p634, v637)
        p635.md = v637
        v637.Part0 = u105.HumanoidRootPart
        v637.Part1 = v636.main
        v637.Name = "main"
        v637.Parent = u105.HumanoidRootPart
        local v638 = v636.m6d2
        v638:SetAttribute("EmoteProperty", true)
        table.insert(p634, v638)
        p635.md = v638
        v638.Part0 = u105.HumanoidRootPart
        v638.Part1 = v636.yoyostring
        v638.Name = "yoyostring"
        v638.Parent = u105.HumanoidRootPart
        v636.Parent = u105
    end,
    ["Animation"] = 18459518606,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true,
    ["Looped"] = true
},
["Guided"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p639, _, p640) --[[Function name: Startup, line 5946]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v641 = script.BlindGlasses:Clone()
        v641:SetAttribute("EmoteProperty", true)
        table.insert(p639, v641)
        p640.Handle = v641
        local v642 = v641.BlindGlasses
        v642.Part0 = u105.Head
        v642.Part1 = v641
        v641.Parent = u105
        local v643 = script.BlindWalkerThing:Clone()
        v643:SetAttribute("EmoteProperty", true)
        table.insert(p639, v643)
        p640.Handle = v643
        local v644 = v643.BlindWalkerThing
        v644:SetAttribute("EmoteProperty", true)
        table.insert(p639, v644)
        p640.md = v644
        v644.Part0 = u105["Right Arm"]
        v644.Part1 = v643
        v644.Parent = u105["Right Arm"]
        v643.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://18459664775",
            ["Volume"] = 1,
            ["Looped"] = true,
            ["Parent"] = v643
        }):Play()
    end,
    ["Keyframes"] = {
        ["clap"] = function(_, _, _) --[[Anonymous function at line 5969]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
                [3] = u4
            --]]
            u84({
                ["SoundId"] = "rbxassetid://" .. ({ 7455224144, 7455246815, 7455224490 })[math.random(1, 3)],
                ["Parent"] = u105["Left Leg"],
                ["PlaybackSpeed"] = 1,
                ["Volume"] = 0.8,
                ["RollOffMaxDistance"] = u4
            }):Play()
        end
    },
    ["Looped"] = true,
    ["Animation"] = 18459646696,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true
},
["Jello"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18459375906",
            ["Volume"] = 1,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p645, _, p646) --[[Function name: Startup, line 5996]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v647 = script.catjello:Clone()
        v647:SetAttribute("EmoteProperty", true)
        table.insert(p645, v647)
        p646.Handle = v647
        local v648 = v647.m6d
        v648:SetAttribute("EmoteProperty", true)
        table.insert(p645, v648)
        p646.md = v648
        v648.Part0 = u105.HumanoidRootPart
        v648.Part1 = v647.main
        v648.Parent = u105.HumanoidRootPart
        v647.Parent = u105
    end,
    ["Animation"] = 18459402335,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true
},
["Knife Trick"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17862349589",
            ["Volume"] = 0.98,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p649, _, p650) --[[Function name: Startup, line 6020]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v651 = script.Knife:Clone()
        v651:SetAttribute("EmoteProperty", true)
        table.insert(p649, v651)
        p650.Handle = v651
        local v652 = v651.Knife
        v652:SetAttribute("EmoteProperty", true)
        table.insert(p649, v652)
        p650.md = v652
        v652.Part0 = u105.HumanoidRootPart
        v652.Part1 = v651
        v652.Parent = u105.HumanoidRootPart
        v651.Parent = u105
    end,
    ["Animation"] = 17862340094,
    ["Looped"] = true,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true
},
["Awe"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17822653772",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p653, _, p654) --[[Function name: Startup, line 6045]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v655 = script.Cube:Clone()
        v655:SetAttribute("EmoteProperty", true)
        table.insert(p653, v655)
        p654.Handle = v655
        local v656 = v655.Cube
        v656:SetAttribute("EmoteProperty", true)
        table.insert(p653, v656)
        p654.md = v656
        v655.Name = "Cube"
        v656.Part0 = u105["Right Arm"]
        v656.Part1 = v655
        v656.Parent = u105["Right Arm"]
        v655.Parent = u105
    end,
    ["Animation"] = 17863040703,
    ["Looped"] = false,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true
},
["Rough Snack"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17862187721",
            ["Volume"] = 0.98,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p657, _, p658) --[[Function name: Startup, line 6071]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v659 = script.Brick:Clone()
        v659:SetAttribute("EmoteProperty", true)
        table.insert(p657, v659)
        p658.Handle = v659
        local v660 = v659.Handle
        v660:SetAttribute("EmoteProperty", true)
        table.insert(p657, v660)
        p658.md = v660
        v659.Name = "Brick"
        v660.Part0 = u105["Right Arm"]
        v660.Part1 = v659
        v660.Parent = u105["Right Arm"]
        v659.Parent = u105
    end,
    ["Animation"] = 17862170658,
    ["Looped"] = true,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true
},
["Eureka!"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17822481294",
            ["Volume"] = 0.76,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p661, _, p662) --[[Function name: Startup, line 6098]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v663 = script.Lightbulb:Clone()
        v663:SetAttribute("EmoteProperty", true)
        table.insert(p661, v663)
        p662.Handle = v663
        local v664 = v663.Handle
        v664:SetAttribute("EmoteProperty", true)
        table.insert(p661, v664)
        p662.md = v664
        v663.Name = "Lightbulb"
        v664.Part0 = u105.HumanoidRootPart
        v664.Part1 = v663
        v664.Parent = u105.HumanoidRootPart
        v663.Parent = u105
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 17861846501,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Road Trip"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17837049421",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["IdleSound"] = {
        ["SoundId"] = "rbxassetid://17862032072",
        ["Volume"] = 0.35,
        ["Looped"] = true
    },
    ["Startup"] = function(p665, _, p666) --[[Function name: Startup, line 6129]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v667 = script.Car:Clone()
        v667:SetAttribute("EmoteProperty", true)
        table.insert(p665, v667)
        p666.Handle = v667
        local v668 = v667.Handle
        v668:SetAttribute("EmoteProperty", true)
        table.insert(p665, v668)
        p666.md = v668
        v667.Name = "Car"
        v668.Part0 = u105.HumanoidRootPart
        v668.Part1 = v667
        v667.Parent = u105
    end,
    ["Idle"] = 17863104140,
    ["Animation"] = 17861887753,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1,
    ["HideWeapon"] = true
},
["Point Shuffle"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1840434670",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17861883497,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Watermelon Spin"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17863074688",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p669, _, p670) --[[Function name: Startup, line 6173]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v671 = script.WatermelonSpin:Clone()
        v671.Name = "WaterMelon"
        v671:SetAttribute("EmoteProperty", true)
        table.insert(p669, v671)
        p670.Handle = v671
        local v672 = v671.Handle
        v672:SetAttribute("EmoteProperty", true)
        table.insert(p669, v672)
        p670.md = v672
        v671.Name = "Watermelon"
        v672.Part0 = u105["Right Arm"]
        v672.Part1 = v671
        v672.Parent = u105["Right Arm"]
        v671.Parent = u105
    end,
    ["Animation"] = 17863063827,
    ["Stun"] = "Slowed",
    ["Looped"] = true,
    ["HideWeapon"] = true
},
["Livin"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1837768517",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17861873461,
    ["Stun"] = "Freeze",
    ["Looped"] = true,
    ["HideWeapon"] = true
},
["Sassy"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://17849425726",
            ["Volume"] = 0.8,
            ["Looped"] = true
        },
        [0] = {
            ["SoundId"] = "rbxassetid://1841726277",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p673, _, _) --[[Function name: Startup, line 6222]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v674 = script.Purse:Clone()
        v674:SetAttribute("EmoteProperty", true)
        u77:AddTag(v674, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v675 = Instance.new("Motor6D")
        v675:SetAttribute("EmoteProperty", true)
        u77:AddTag(v675, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v675.C0 = CFrame.new(0.011, -0.531, 0)
        v675.Part0 = u105["Left Arm"]
        v675.Part1 = v674.PrimaryPart
        v675.Parent = u105["Left Arm"]
        v674.Parent = u105
        table.insert(p673, v674)
        table.insert(p673, v675)
    end,
    ["Animation"] = 17861893094,
    ["Looped"] = true,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true
},
["Drum Major"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1846943603",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p676, _, _) --[[Function name: Startup, line 6253]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v677 = script.Rbx:Clone()
        v677:SetAttribute("EmoteProperty", true)
        u77:AddTag(v677, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v677.Parent = u105
        local v678 = Instance.new("Motor6D")
        v678:SetAttribute("EmoteProperty", true)
        u77:AddTag(v678, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v678.C0 = CFrame.new(-0.325, -0.891, -0.064)
        v678.C1 = CFrame.new(0, 0, 0.604)
        v678.Part0 = u105["Right Arm"]
        v678.Part1 = v677.PrimaryPart
        v678.Parent = u105["Right Arm"]
        table.insert(p676, v677)
        table.insert(p676, v678)
    end,
    ["Animation"] = 18418313278,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true,
    ["Looped"] = true
},
["Helicopter"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9114024539",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["IdleSound"] = {
        ["SoundId"] = "rbxassetid://9100684862",
        ["Volume"] = 0.25,
        ["Looped"] = true
    },
    ["Idle"] = 17862998594,
    ["Animation"] = 17862997402,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true
},
["Club Shuffle"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1839270703",
            ["Volume"] = 0.6,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17861834531,
    ["Looped"] = true,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true
},
["Head Tap"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1845508064",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17863050431,
    ["Looped"] = true,
    ["Stun"] = "Freeze",
    ["HideWeapon"] = true
},
["Listen"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9047324264",
            ["Volume"] = 0.85,
            ["Looped"] = true,
            ["TimePosition"] = 10,
            ["ParentTorso"] = true
        }
    },
    ["Looped"] = true,
    ["Animation"] = 17861894459,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true
},
["Can\'t See Me"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17813330585",
            ["Volume"] = 1,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Startup"] = function(p679, _, _) --[[Function name: Startup, line 6355]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p679, u105)
        u104("Right", p679, u105)
    end,
    ["Animation"] = 17862366649,
    ["Stun"] = "Slowed"
},
["Rest"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15443862609",
            ["Volume"] = 1,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["End"] = {
        15443689801,
        3.7,
        {
            ["SoundId"] = "rbxassetid://15443922202",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Idle"] = 15443688094,
    ["Animation"] = 15443682006,
    ["Stun"] = "Freeze"
},
["Show \'Em"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://140238630247057",
            ["Volume"] = 0.4,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Looped"] = true,
    ["Animation"] = 137797933797894,
    ["Stun"] = "Slowed"
},
["Groove"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1842772099",
            ["Volume"] = 0.85,
            ["TimePosition"] = 12,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Looped"] = true,
    ["Animation"] = 16525536622,
    ["Stun"] = "Slowed"
},
["Party Lover"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1840463359",
            ["Volume"] = 0.6,
            ["TimePosition"] = 2.75,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Looped"] = true,
    ["Animation"] = 16528092313,
    ["Stun"] = "Freeze"
},
["Giant"] = {
    ["Sounds"] = {},
    ["Keyframes"] = {
        ["clap"] = function(_) --[[Anonymous function at line 6436]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://16526736324",
                ["Volume"] = 0.8,
                ["Parent"] = u105.Torso
            }):Play()
        end
    },
    ["Infinite"] = true,
    ["Looped"] = true,
    ["Animation"] = 16526624122,
    ["Stun"] = "Slowed"
},
["Phonk"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://14145620056",
            ["Volume"] = 0.85,
            ["Looped"] = true,
            ["TimePosition"] = 5,
            ["ParentTorso"] = true
        }
    },
    ["Keyframes"] = {
        ["clap"] = function(p680) --[[Anonymous function at line 6463]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://2704706975",
                ["Volume"] = p680.first and 0.65 or 1,
                ["Parent"] = u105.Head
            }):Play()
            if not p680.first then
                p680.first = true
            end
        end
    },
    ["Infinite"] = true,
    ["Looped"] = true,
    ["Animation"] = 16526164064,
    ["Stun"] = "Freeze"
},
["Angel"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://0",
            ["Volume"] = 0.5,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(_, _, _) --[[Function name: Startup, line 6491]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v681 = script.untitled:Clone()
        v681:SetAttribute("EmoteProperty", true)
        u77:AddTag(v681, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v682 = v681.m6d
        v682:SetAttribute("EmoteProperty", true)
        u77:AddTag(v682, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v682.Name = "Cube.007"
        v682.Part1 = v681["Cube.007"]
        v682.Part0 = u105.Torso
        v682.Parent = u105.Torso
        v681.Parent = u105
    end,
    ["Keyframes"] = {
        ["clap"] = function() --[[Anonymous function at line 6502]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = ({ "rbxassetid://137024005187459", "rbxassetid://76278400824030", "rbxassetid://94509235587766" })[math.random(1, 3)],
                ["Volume"] = 0.4,
                ["PlaybackSpeed"] = 1.15,
                ["Parent"] = u105.Torso
            }):Play()
        end
    },
    ["Animation"] = 136571320124330,
    ["Looped"] = true,
    ["Infinite"] = true,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1
},
["Soccer"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1845023041",
            ["Volume"] = 0.5,
            ["Looped"] = true,
            ["TimePosition"] = 0.5
        }
    },
    ["Startup"] = function(_, _, _) --[[Function name: Startup, line 6529]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
            [5] = u4
        --]]
        local v683 = script.soccer:Clone()
        v683:SetAttribute("EmoteProperty", true)
        u77:AddTag(v683, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v684 = v683.Handle.Ball
        v684:SetAttribute("EmoteProperty", true)
        u77:AddTag(v684, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v684.Name = "Ball"
        v684.Part0 = v683.Handle
        v684.Part1 = v683.Ball
        local v685 = v683.m6d
        v685:SetAttribute("EmoteProperty", true)
        u77:AddTag(v685, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v685.Name = "Handle"
        v685.Part0 = u105.Torso
        v685.Part1 = v683.Handle
        v685.Parent = u105.Torso
        v683.Parent = u105
        shared.sfx({
            ["SoundId"] = "rbxassetid://16592084595",
            ["Parent"] = v683.Ball,
            ["RollOffMaxDistance"] = u4,
            ["Volume"] = 1,
            ["Looped"] = true
        }):Play()
    end,
    ["Animation"] = 16592100518,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Red Card"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16591667187",
            ["Volume"] = 0,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(_, _, p686) --[[Function name: Startup, line 6567]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v687 = script.whistlecard:Clone()
        v687:SetAttribute("EmoteProperty", true)
        u77:AddTag(v687, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v688 = v687.m6d
        v688:SetAttribute("EmoteProperty", true)
        u77:AddTag(v688, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v688.Name = "Handle"
        v688.Part0 = u105["Left Arm"]
        v688.Part1 = v687.Handle
        v688.Parent = u105["Left Arm"]
        v687.Parent = u105["Left Arm"]
        p686.whistle = v687.whistle
        p686.card = v687.redcard
    end,
    ["Keyframes"] = {
        ["whistle"] = function(p689, _, _) --[[Anonymous function at line 6580]]
            --[[
            Upvalues:
                [1] = u78
            --]]
            u78:Create(p689.whistle, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                ["Size"] = Vector3.new()
            }):Play()
        end,
        ["card"] = function(p690, _, _) --[[Anonymous function at line 6586]]
            --[[
            Upvalues:
                [1] = u78
            --]]
            u78:Create(p690.card, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                ["Size"] = Vector3.new()
            }):Play()
        end
    },
    ["Animation"] = 16591707771,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze"
},
["Your Grave"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16599031707",
            ["Volume"] = 1,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p691, _, _) --[[Function name: Startup, line 6608]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v692 = script.Dig.Handle:Clone()
        v692:SetAttribute("EmoteProperty", true)
        table.insert(p691, v692)
        u77:AddTag(v692, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v693 = v692.m6d
        v693:SetAttribute("EmoteProperty", true)
        table.insert(p691, v693)
        u77:AddTag(v693, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v693.Name = "Handle"
        v693.Part0 = u105["Right Arm"]
        v693.Part1 = v692
        v693.Parent = u105["Right Arm"]
        v692.Parent = u105
        local v694 = script.Dig.Grave:Clone()
        v694:SetAttribute("EmoteProperty", true)
        table.insert(p691, v694)
        local v695 = Instance.new("Weld")
        v695:SetAttribute("EmoteProperty", true)
        table.insert(p691, v695)
        v695.Part0 = u105.PrimaryPart
        v695.Part1 = v694.Headstone
        v695.Parent = v694
        v695.C0 = CFrame.new(1.59004211, -1.53838396, -5.02381897, -0.999934554, -0.0114461109, 0, -0.0114019588, 0.996077538, -0.0877478421, 0.00100437133, -0.0877420902, -0.996142864)
        v694.Parent = u105
    end,
    ["Looped"] = true,
    ["Animation"] = 16598916589,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze"
},
["Slingshot"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16598662412",
            ["Volume"] = 1,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p696, _, p697) --[[Function name: Startup, line 6642]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v698 = script.slingshot:Clone()
        v698:SetAttribute("EmoteProperty", true)
        v698:SetAttribute("EmoteProperty", true)
        table.insert(p696, v698)
        u77:AddTag(v698, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v699 = v698.m6d
        v699:SetAttribute("EmoteProperty", true)
        v699:SetAttribute("EmoteProperty", true)
        table.insert(p696, v699)
        u77:AddTag(v699, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v699.Name = "Handle"
        v699.Part0 = u105["Right Arm"]
        v699.Part1 = v698.Handle
        v699.Parent = u105["Right Arm"]
        v698.Parent = u105["Right Arm"]
        p697.rock = v698.rock
        p697.rock.Trail.Enabled = false
    end,
    ["Keyframes"] = {
        ["go"] = function(p700, _, _) --[[Anonymous function at line 6655]]
            --[[
            Upvalues:
                [1] = u77
                [2] = u105
                [3] = u110
            --]]
            local v701 = p700.rock:Clone()
            u77:AddTag(v701, "emotestuff" .. u105.Name)
            game:GetService("Debris"):AddItem(v701, 5)
            v701.CanCollide = false
            v701.CanTouch = true
            v701.CanQuery = false
            v701.Massless = false
            v701.CollisionGroup = "nocol"
            v701.CFrame = p700.rock.CFrame
            v701.Trail.Enabled = true
            p700.rock:Destroy()
            v701.Parent = workspace.Thrown
            shared.sfx({
                ["SoundId"] = "rbxassetid://9120435415",
                ["Parent"] = v701,
                ["Volume"] = 2
            }):Play()
            local v702 = Instance.new("Attachment", v701)
            v702.Position = Vector3.new(0, 0, 0)
            local v703 = Instance.new("LinearVelocity", v702)
            v703.MaxForce = 40000
            v703.VectorVelocity = u105.PrimaryPart.CFrame.lookVector * 200 + Vector3.new(0, 20, 0)
            v703.Attachment0 = v702
            game:GetService("Debris"):AddItem(v703, 0.15)
            v701:SetNetworkOwner(u110)
        end
    },
    ["Animation"] = 16598695404,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze"
},
["Paddleball"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://16523730144",
            ["Volume"] = 1,
            ["Looped"] = false,
            ["ParentTorso"] = true
        },
        [0.45] = {
            ["SoundId"] = "rbxassetid://16523118734",
            ["Volume"] = 1,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(_, _, _) --[[Function name: Startup, line 6706]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v704 = script.paddle:Clone()
        v704:SetAttribute("EmoteProperty", true)
        u77:AddTag(v704, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v705 = v704.m6d
        v705:SetAttribute("EmoteProperty", true)
        u77:AddTag(v705, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v705.Name = "Wood"
        v705.Part0 = u105["Right Arm"]
        v705.Part1 = v704.Wood
        v705.Parent = u105["Right Arm"]
        v704.Parent = u105["Right Arm"]
    end,
    ["End"] = {
        16523235955,
        1.583,
        {
            ["SoundId"] = "rbxassetid://16523118347",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Idle"] = 16523084292,
    ["Animation"] = 16523080348,
    ["HideWeapon"] = true,
    ["Stun"] = "Slowed"
},
["Show Me"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16038705978",
            ["Volume"] = 0.75,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Fix"] = true,
    ["Animation"] = 16039093008,
    ["Stun"] = "Freeze"
},
["Sneak"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16746897032",
            ["Volume"] = 0.75,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Looped"] = true,
    ["Animation"] = 16746892678,
    ["Stun"] = "Slowed"
},
["What\'d You Say"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9042800221",
            ["Volume"] = 0.75,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Looped"] = true,
    ["Animation"] = 17266193826,
    ["Stun"] = "Freeze"
},
["Robot"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://17086745893",
            ["Volume"] = 0.75,
            ["Looped"] = true,
            ["ParentTorso"] = true
        },
        [0.01] = {
            ["SoundId"] = "rbxassetid://1841609664",
            ["Volume"] = 0.45,
            ["Looped"] = true
        }
    },
    ["Looped"] = true,
    ["Animation"] = 17086754292,
    ["Stun"] = "Slowed"
},
["Bye Bye"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1835831314",
            ["Volume"] = 0.65,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p706, _, _) --[[Function name: Startup, line 6803]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p706, u105)
        u104("Right", p706, u105)
    end,
    ["Keyframes"] = {
        ["slow"] = function(_, _, p707) --[[Anonymous function at line 6809]]
            p707:AdjustSpeed(0.135)
        end,
        ["back"] = function(_, _, p708) --[[Anonymous function at line 6813]]
            p708:AdjustSpeed(1)
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 16047480326,
    ["Stun"] = "Slowed"
},
["Fidget"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16524816499",
            ["Volume"] = 0.15,
            ["Looped"] = true,
            ["TimePosition"] = 0.033,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p709, _, _) --[[Function name: Startup, line 6834]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p709, u105)
        u104("Right", p709, u105)
    end,
    ["Looped"] = true,
    ["HideWeapon"] = true,
    ["Animation"] = 16524848169,
    ["Stun"] = "Slowed"
},
["Thumbs Up"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16524556850",
            ["Volume"] = 1.5,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p710, _, _) --[[Function name: Startup, line 6855]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p710, u105)
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 16524522673,
    ["Stun"] = "Freeze"
},
["Nah, I\'d win."] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16746854243",
            ["Volume"] = 1.5,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p711, _, p712) --[[Function name: Startup, line 6874]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v713 = script.dialogue:Clone()
        table.insert(p711, v713)
        v713:SetAttribute("EmoteProperty", true)
        p712.rock = v713
        v713.Name = "Handle"
        table.insert(p711, v713)
        local v714 = v713.m6d
        table.insert(p711, v714)
        v714:SetAttribute("EmoteProperty", true)
        v714.Name = "Handle"
        v714.Part0 = u105.HumanoidRootPart
        v714.Part1 = v713
        v714.Parent = u105.HumanoidRootPart
        for _, v715 in pairs(v713:GetDescendants()) do
            if v715:IsA("BasePart") then
                v715.Transparency = 1
            end
        end
        v713.Parent = u105
    end,
    ["Keyframes"] = {
        ["visible"] = function(p716, _, _) --[[Anonymous function at line 6892]]
            if p716.rock then
                for _, v717 in pairs(p716.rock:GetDescendants()) do
                    if v717:IsA("BasePart") then
                        v717.Transparency = 0
                    end
                end
            end
        end
    },
    ["Animation"] = 16746843881,
    ["Stun"] = "Freeze"
},
["Bang"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16746816646",
            ["Volume"] = 1.5,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p718, _, _) --[[Function name: Startup, line 6917]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Right", p718, u105)
        u104("Left", p718, u105)
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 16746824621,
    ["Stun"] = "Slowed"
},
["Thumbs Down"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16524473840",
            ["Volume"] = 1.5,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p719, _, _) --[[Function name: Startup, line 6937]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Right", p719, u105)
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 16524478599,
    ["Stun"] = "Freeze"
},
["Nuh uh"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16054202674",
            ["Volume"] = 1,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p720, _, _) --[[Function name: Startup, line 6956]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p720, u105)
        u104("Right", p720, u105)
    end,
    ["Animation"] = 16054192884,
    ["Stun"] = "Slowed"
},
["Found You"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://111853897255351",
            ["Volume"] = 1,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p721, _, _) --[[Function name: Startup, line 6975]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p721, u105)
        u104("Right", p721, u105)
    end,
    ["HideWeapon"] = true,
    ["Idle"] = 124365816989281,
    ["Animation"] = 136211118072154,
    ["Stun"] = "Freeze"
},
["I\'ll Win"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16039057960",
            ["Volume"] = 1,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p722, _, p723) --[[Function name: Startup, line 6996]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p722, u105)
        local v724 = u104("Right", p722, u105):FindFirstChild("RThumb2", true)
        if v724 then
            local v725 = script.QuickStar:Clone()
            v725.Parent = v724
            p723.p = v725
        end
    end,
    ["Keyframes"] = {
        ["star"] = function(p726, _, _) --[[Anonymous function at line 7009]]
            --[[
            Upvalues:
                [1] = u84
            --]]
            if p726.p then
                p726.p:Emit(1)
                u84({
                    ["SoundId"] = "rbxassetid://16039062716",
                    ["Parent"] = p726.p.Parent,
                    ["Volume"] = 0.75
                }):Play()
            end
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 16039070113,
    ["Stun"] = "Freeze"
},
["Am Dead"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16002440477",
            ["Volume"] = 2,
            ["TimePosition"] = 0.125,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(_, _, _) --[[Function name: Startup, line 7037]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v727 = script.Coffin:Clone()
        u77:AddTag(v727, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v728 = v727.Coffin
        u77:AddTag(v728, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v728.Part0 = u105.PrimaryPart
        v728.Part1 = v727
        v728.Parent = u105.PrimaryPart
        v727.Parent = u105
    end,
    ["End"] = {
        16002450289,
        1.767,
        {
            ["SoundId"] = "rbxassetid://16002440403",
            ["Volume"] = 2,
            ["Looped"] = false
        }
    },
    ["HideWeapon"] = true,
    ["Idle"] = 16002449836,
    ["Animation"] = 16002448046,
    ["FixRotation"] = true,
    ["Stun"] = "Freeze"
},
["Footwork"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://16599237654",
            ["Volume"] = 2,
            ["Looped"] = false,
            ["ParentTorso"] = true
        },
        [0.01] = {
            ["SoundId"] = "rbxassetid://1846142716",
            ["Volume"] = 0.9,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p729, _, _) --[[Function name: Startup, line 7076]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v730 = script.hat:Clone()
        table.insert(p729, v730)
        v730:SetAttribute("EmoteProperty", true)
        v730.Name = "Handle"
        u77:AddTag(v730, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v731 = v730.Handle
        table.insert(p729, v731)
        v731:SetAttribute("EmoteProperty", true)
        v731.Part0 = u105["Left Arm"]
        v731.Part1 = v730
        v731.Parent = u105["Left Arm"]
        v730.Parent = u105
    end,
    ["Idle"] = 16599253604,
    ["Animation"] = 16599248351,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 2
},
["Footrest"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15968669383",
            ["Volume"] = 1,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(_, _, _) --[[Function name: Startup, line 7103]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
        --]]
        local v732 = script.RockMesh:Clone()
        u77:AddTag(v732, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v732.Rock.Part0 = u105.PrimaryPart
        v732.Rock.Part1 = v732
        v732.Parent = u105
    end,
    ["End"] = {
        15968735423,
        1.767,
        {
            ["SoundId"] = "rbxassetid://15968669594",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Idle"] = 15968655778,
    ["Animation"] = 15968649951,
    ["FixRotation"] = true,
    ["Stun"] = "Freeze"
},
["Sit 4"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17122085420",
            ["Volume"] = 1,
            ["ParentTorso"] = true
        }
    },
    ["End"] = {
        17121885697,
        2.217,
        {
            ["SoundId"] = "rbxassetid://17122185340",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Idle"] = 17121883892,
    ["Animation"] = 17121881258,
    ["FixRotation"] = true,
    ["Stun"] = "Freeze"
},
["Sit 3"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15443950040",
            ["Volume"] = 1,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["End"] = {
        15443958574,
        3.7,
        {
            ["SoundId"] = "rbxassetid://15443949954",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Idle"] = 15443956544,
    ["Animation"] = 15443954093,
    ["FixRotation"] = true,
    ["Stun"] = "Freeze"
},
["Chosen"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://18843153605",
            ["Volume"] = 1.2,
            ["Looped"] = false,
            ["ParentTorso"] = true
        },
        [0.5] = {
            ["SoundId"] = "rbxassetid://1838611838",
            ["Volume"] = 0.5,
            ["Looped"] = true,
            ["TimePosition"] = 33,
            ["Smooth"] = true
        }
    },
    ["Startup"] = function(p733) --[[Function name: Startup, line 7181]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u77
            [3] = u108
            [4] = u110
            [5] = u78
        --]]
        local u734 = shared.cfolder({
            ["Name"] = "Freeze"
        }, 2.067)
        table.insert(p733, u734)
        u734:SetAttribute("DontInterrupt", true)
        u734:SetAttribute("NoStop", true)
        u734:SetAttribute("EmoteProperty", true)
        task.delay(0, function() --[[Anonymous function at line 7189]]
            --[[
            Upvalues:
                [1] = u734
                [2] = u105
            --]]
            u734.Parent = u105
        end)
        local v735 = script.chosenparticles:Clone()
        v735:SetAttribute("EmoteProperty", true)
        u77:AddTag(v735, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local u736 = {}
        for _, v737 in pairs(v735:GetChildren()) do
            if v737:IsA("Beam") and v737.Enabled then
                local v738 = { v737, v737.Width1 }
                table.insert(u736, v738)
                v737.Enabled = false
                v737.Width1 = 0
            end
        end
        local v739 = Instance.new("Weld")
        v739.Part0 = u105.PrimaryPart
        v739.Part1 = v735
        v739.C0 = CFrame.new(-1.32054138, 4.14816093, 1.88685989, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872)
        v739.Parent = v735
        v735.Parent = u105
        task.delay(2, function() --[[Anonymous function at line 7212]]
            --[[
            Upvalues:
                [1] = u736
                [2] = u78
            --]]
            for _, v740 in pairs(u736) do
                local v741 = v740[1]
                v741.Enabled = true
                u78:Create(v741, TweenInfo.new(1 + math.random(), Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                    ["Width1"] = v740[2]
                }):Play()
            end
        end)
    end,
    ["Idle"] = 18897538537,
    ["Animation"] = 18897534746,
    ["FixAnimations"] = { 18897538537, 18897534746, 18897540724 },
    ["End"] = {
        18897540724,
        2.133,
        {
            ["SoundId"] = "rbxassetid://15443922202",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Fix"] = true,
    ["Stun"] = "Slowed"
},
["Attack"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18843637571",
            ["Volume"] = 1.2,
            ["Looped"] = false,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(_) --[[Function name: Startup, line 7245]] end,
    ["Idle"] = 18897713456,
    ["Animation"] = 18897711135,
    ["Stun"] = "Freeze"
},
["Honored"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://15503052959",
            ["Volume"] = 1.2,
            ["Looped"] = false,
            ["ParentTorso"] = true
        },
        [0.1] = {
            ["SoundId"] = "rbxassetid://1839209784",
            ["Volume"] = 0.5,
            ["Looped"] = false,
            ["ParentTorso"] = true
        },
        [4.627] = {
            ["SoundId"] = "rbxassetid://1836640331",
            ["Volume"] = 0.5,
            ["Looped"] = true,
            ["TimePosition"] = 33,
            ["Smooth"] = true
        }
    },
    ["Startup"] = function(p742) --[[Function name: Startup, line 7279]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local u743 = shared.cfolder({
            ["Name"] = "Freeze"
        }, 3.922)
        table.insert(p742, u743)
        u743:SetAttribute("DontInterrupt", true)
        u743:SetAttribute("NoStop", true)
        u743:SetAttribute("EmoteProperty", true)
        task.delay(0, function() --[[Anonymous function at line 7287]]
            --[[
            Upvalues:
                [1] = u743
                [2] = u105
            --]]
            u743.Parent = u105
        end)
    end,
    ["Idle"] = 15503060948,
    ["Animation"] = 15503060232,
    ["Fix"] = true,
    ["Stun"] = "Slowed"
},
["Disgraced"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15503840444",
            ["Volume"] = 1.2,
            ["Looped"] = false,
            ["ParentTorso"] = true
        },
        {
            ["SoundId"] = "rbxassetid://1836253240",
            ["Volume"] = 0.35,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p744) --[[Function name: Startup, line 7315]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local u745 = shared.cfolder({
            ["Name"] = "Freeze"
        }, 1.856)
        table.insert(p744, u745)
        u745:SetAttribute("DontInterrupt", true)
        u745:SetAttribute("NoStop", true)
        u745:SetAttribute("EmoteProperty", true)
        task.delay(0, function() --[[Anonymous function at line 7323]]
            --[[
            Upvalues:
                [1] = u745
                [2] = u105
            --]]
            u745.Parent = u105
        end)
    end,
    ["Idle"] = 15507138928,
    ["Animation"] = 15507137974,
    ["Fix"] = true,
    ["Stun"] = "Slowed"
},
["360"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16002725651",
            ["Volume"] = 0.75,
            ["ParentTorso"] = true,
            ["Looped"] = false
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 16002726844,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Jumping Jacks"] = {
    ["Sounds"] = {},
    ["Keyframes"] = {
        ["clap"] = function(_, _, _) --[[Anonymous function at line 7356]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://16002741222",
                ["Parent"] = u105.Torso,
                ["Volume"] = 1
            }):Play()
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 16002745906,
    ["Looped"] = true,
    ["Stun"] = "Freeze",
    ["Infinite"] = true
},
["Calculated"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16002706827",
            ["Volume"] = 1,
            ["ParentTorso"] = true,
            ["Looped"] = false
        }
    },
    ["Keyframes"] = {
        ["start"] = function(_, p746, _) --[[Anonymous function at line 7383]]
            --[[
            Upvalues:
                [1] = u105
                [2] = u84
            --]]
            local v747 = Instance.new("Attachment")
            v747:SetAttribute("EmoteProperty", true)
            table.insert(p746, v747)
            v747.Parent = u105.PrimaryPart
            v747.Position = Vector3.new(0.554, 3.069, -0.744)
            local v748 = script.Iq:Clone()
            v748.Parent = v747
            v748:Emit(1)
            u84({
                ["SoundId"] = "rbxassetid://16002767572",
                ["Volume"] = 0.25,
                ["Parent"] = v747,
                ["Looped"] = false
            }):Play()
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 16002681909,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Huh?"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16524017206",
            ["Volume"] = 0.75,
            ["ParentTorso"] = true,
            ["Looped"] = false
        }
    },
    ["Keyframes"] = {
        ["question"] = function(_, p749, _) --[[Anonymous function at line 7417]]
            --[[
            Upvalues:
                [1] = u105
                [2] = u84
            --]]
            local v750 = Instance.new("Attachment")
            v750:SetAttribute("EmoteProperty", true)
            table.insert(p749, v750)
            v750.Parent = u105.PrimaryPart
            v750.CFrame = CFrame.new(0.635131836, 1.59469604, -1.50006104, 0.873728812, 0.4864133, -0, -0.4864133, 0.873728812, 0, 0, 0, 0.99999994)
            local v751 = script.Question:Clone()
            v751.Parent = v750
            v751:Emit(1)
            u84({
                ["SoundId"] = "rbxassetid://16524026100",
                ["Volume"] = 0.75,
                ["Parent"] = v750,
                ["Looped"] = false
            }):Play()
        end
    },
    ["Startup"] = function(p752, _, p753) --[[Function name: Startup, line 7434]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v754 = script.teacup:Clone()
        v754:SetAttribute("EmoteProperty", true)
        table.insert(p752, v754)
        p753.Handle = v754
        local v755 = v754.LeftHandle:Clone()
        v755:SetAttribute("EmoteProperty", true)
        table.insert(p752, v755)
        v755["Meshes/teacup_Circle"].Part0 = v755
        v755["Meshes/teacup_Circle"].Part1 = v754["Meshes/teacup_Circle"]
        v755.Parent = u105
        local v756 = v754.m6d
        v756:SetAttribute("EmoteProperty", true)
        table.insert(p752, v756)
        p753.md = v756
        v756.Part0 = u105["Left Arm"]
        v756.Name = "LeftHandle"
        v756.Part1 = v755
        v756.Parent = u105["Left Arm"]
        v754.Parent = u105
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 16523856701,
    ["Looped"] = false,
    ["Stun"] = "Slowed"
},
["8 Bit"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1839918500",
            ["Volume"] = 0.75,
            ["TimePosition"] = 1,
            ["ParentTorso"] = true,
            ["Looped"] = false
        }
    },
    ["Keyframes"] = {
        ["shoot"] = function(_, p757, _) --[[Anonymous function at line 7468]]
            --[[
            Upvalues:
                [1] = u105
                [2] = u84
            --]]
            local v758 = Instance.new("Attachment")
            v758:SetAttribute("EmoteProperty", true)
            table.insert(p757, v758)
            v758.Parent = u105.PrimaryPart
            v758.Position = Vector3.new(1.75, 0.25, -3.75)
            local v759 = script.Shoot:Clone()
            v759.Parent = v758
            v759:Emit(1)
            u84({
                ["SoundId"] = "rbxassetid://15684595588",
                ["Volume"] = 1.85,
                ["Parent"] = u105["Right Arm"],
                ["Looped"] = false
            }):Play()
        end,
        ["heart"] = function(_, p760, _) --[[Anonymous function at line 7484]]
            --[[
            Upvalues:
                [1] = u105
                [2] = u84
            --]]
            local v761 = Instance.new("Attachment")
            v761:SetAttribute("EmoteProperty", true)
            table.insert(p760, v761)
            v761.Parent = u105.PrimaryPart
            v761.Position = Vector3.new(1.75, 0, -1.75)
            local v762 = script.Heart:Clone()
            v762.Parent = v761
            v762:Emit(1)
            u84({
                ["SoundId"] = "rbxassetid://15684812583",
                ["Volume"] = 0.75,
                ["Parent"] = v761,
                ["Looped"] = false
            }):Play()
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 15684759074,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Car"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15684912289",
            ["Volume"] = 1,
            ["Looped"] = false
        },
        {
            ["SoundId"] = "rbxassetid://15684912898",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p763) --[[Function name: Startup, line 7522]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local u764 = shared.cfolder({
            ["Name"] = "Freeze"
        }, 3.5)
        table.insert(p763, u764)
        u764:SetAttribute("DontInterrupt", true)
        u764:SetAttribute("NoStop", true)
        u764:SetAttribute("EmoteProperty", true)
        task.delay(0, function() --[[Anonymous function at line 7530]]
            --[[
            Upvalues:
                [1] = u764
                [2] = u105
            --]]
            u764.Parent = u105
        end)
    end,
    ["Animation"] = 15684890301,
    ["Idle"] = 15684902941,
    ["IdleSound"] = {
        ["SoundId"] = "rbxassetid://15684953841",
        ["Volume"] = 1,
        ["Looped"] = true
    },
    ["Stun"] = "Slowed"
},
["March"] = {
    ["Keyframes"] = {
        ["clap"] = function(p765) --[[Anonymous function at line 7547]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
                [3] = u4
            --]]
            if not p765.turn then
                p765.turn = 0
            end
            p765.turn = p765.turn + 1
            u84({
                ["SoundId"] = ({ "rbxassetid://15962454798", "rbxassetid://15962454626", "rbxassetid://15962454516" })[math.random(1, 3)],
                ["Parent"] = p765.turn % 2 == 0 and u105["Left Leg"] or u105["Right Leg"],
                ["PlaybackSpeed"] = 1,
                ["Volume"] = 0.5,
                ["RollOffMaxDistance"] = u4
            }):Play()
            game.ReplicatedStorage.Replication:FireAllClients({
                ["Effect"] = "Ninja Sprint Step",
                ["Emote"] = true,
                ["Type"] = p765.turn % 2 == 0 and "Left" or "Right",
                ["Char"] = u105,
                ["Root"] = root
            })
        end
    },
    ["Infinite"] = true,
    ["Animation"] = 15962443652,
    ["Looped"] = true,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 2
},
["Hunter"] = {
    ["Keyframes"] = {
        ["clap"] = function(p766) --[[Anonymous function at line 7583]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
                [3] = u4
            --]]
            if not p766.turn then
                p766.turn = 0
            end
            p766.turn = p766.turn + 1
            u84({
                ["SoundId"] = ({
                    "rbxassetid://15962163599",
                    "rbxassetid://15962163752",
                    "rbxassetid://15962163891",
                    "rbxassetid://15962164060"
                })[math.random(1, 4)],
                ["Parent"] = p766.turn % 2 == 0 and u105["Left Leg"] or u105["Right Leg"],
                ["PlaybackSpeed"] = 1,
                ["Volume"] = 0.5,
                ["RollOffMaxDistance"] = u4
            }):Play()
        end
    },
    ["Infinite"] = true,
    ["Animation"] = 15962326593,
    ["Looped"] = true,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 2
},
["Hunted"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15958273667",
            ["Volume"] = 1,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Animation"] = 15958281277,
    ["Looped"] = true,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 2
},
["Cmere"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16746777651",
            ["Volume"] = 3,
            ["Looped"] = false
        }
    },
    ["Animation"] = 16746746641,
    ["Looped"] = false,
    ["Stun"] = "Slowed"
},
["Come"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15958230853",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Animation"] = 15958227342,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Fall"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17107935019",
            ["Volume"] = 1.5,
            ["ParentTorso"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17107937300,
    ["Stun"] = "Freeze"
},
["Surge"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17120757989",
            ["Volume"] = 0.85,
            ["ParentTorso"] = true,
            ["TimePosition"] = 0.1
        }
    },
    ["Animation"] = 17120750680,
    ["Stun"] = "Freeze"
},
["Celebrate"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17122167872",
            ["Volume"] = 2,
            ["ParentTorso"] = true
        }
    },
    ["Animation"] = 17122171961,
    ["Stun"] = "Freeze"
},
["Joy"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17120725506",
            ["Volume"] = 0.85,
            ["ParentTorso"] = true
        }
    },
    ["Animation"] = 17120709682,
    ["Stun"] = "Freeze"
},
["Dab"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17121232992",
            ["Volume"] = 0.85,
            ["ParentTorso"] = true
        }
    },
    ["Animation"] = 17121243447,
    ["Stun"] = "Freeze"
},
["Infinite Dabs"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://17121285783",
            ["Volume"] = 1,
            ["Looped"] = true
        },
        [0.01] = {
            ["SoundId"] = "rbxassetid://9043916958",
            ["Volume"] = 0.4,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17121290432,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Spin"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17120739791",
            ["Volume"] = 0.6,
            ["ParentTorso"] = true
        }
    },
    ["Animation"] = 17120734491,
    ["Stun"] = "Freeze"
},
["Rock n\' Roll"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1846187476",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Animation"] = 15992808444,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Party Is Life"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1836308391",
            ["Volume"] = 0.9,
            ["TimePosition"] = 0.3,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17121045260,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Cat Dance"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1847362131",
            ["Volume"] = 0.45,
            ["TimePosition"] = 0.15,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17121145590,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Hood Jam"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1839120667",
            ["Volume"] = 0.45,
            ["TimePosition"] = 0.6,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17096456977,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Wave"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15684014240",
            ["Volume"] = 0.0875,
            ["Looped"] = true
        }
    },
    ["Animation"] = 15684011459,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Gun Shot"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1836402463",
            ["Volume"] = 1,
            ["TimePosition"] = 19,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p767) --[[Function name: Startup, line 7838]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v768 = script.Microphone:Clone()
        local v769 = v768.Microphone
        v769:SetAttribute("EmoteProperty", true)
        v768:SetAttribute("EmoteProperty", true)
        table.insert(p767, v768)
        table.insert(p767, v769)
        v769.Part0 = u105["Left Arm"]
        v769.Part1 = v768
        v769.Parent = u105["Left Arm"]
        v768.Parent = u105
    end,
    ["Keyframes"] = {
        ["clap"] = function(p770) --[[Anonymous function at line 7853]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
                [3] = u4
            --]]
            if not p770.turn then
                p770.turn = 0
            end
            p770.turn = p770.turn + 1
            u84({
                ["SoundId"] = "rbxassetid://" .. ({ 7455224144, 7455246815, 7455224490 })[math.random(1, 3)],
                ["Parent"] = p770.turn % 2 == 0 and u105["Left Leg"] or u105["Right Leg"],
                ["PlaybackSpeed"] = 1,
                ["Volume"] = 0.5,
                ["RollOffMaxDistance"] = u4
            }):Play()
        end
    },
    ["Infinite"] = true,
    ["Animation"] = 15956876217,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Flex"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15673780114",
            ["Volume"] = 2
        }
    },
    ["Animation"] = 15673779407,
    ["Stun"] = "Freeze"
},
["Robotic"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17097791389",
            ["Volume"] = 1.5,
            ["Looped"] = true
        }
    },
    ["Looped"] = true,
    ["Animation"] = 17097794422,
    ["Stun"] = "Freeze"
},
["Hurricane"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1837711983",
            ["Volume"] = 0.8,
            ["Looped"] = true
        }
    },
    ["Keyframes"] = {
        ["clap"] = function() --[[Anonymous function at line 7910]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://17097894260",
                ["Volume"] = 1.2,
                ["Parent"] = u105.Torso
            }):Play()
        end
    },
    ["Infinite"] = true,
    ["Looped"] = true,
    ["Animation"] = 17097909230,
    ["Stun"] = "Slowed"
},
["All Around"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1846628364",
            ["Volume"] = 1,
            ["TimePosition"] = 0.3,
            ["Looped"] = true
        }
    },
    ["Looped"] = true,
    ["HideWeapon"] = true,
    ["Animation"] = 17097820306,
    ["Stun"] = "Freeze"
},
["Snow Angel"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://75313492388562",
            ["Volume"] = 1,
            ["TimePosition"] = 0,
            ["Looped"] = true
        }
    },
    ["Looped"] = true,
    ["HideWeapon"] = true,
    ["Animation"] = 91705970671914,
    ["Stun"] = "Freeze"
},
["Go Go Go"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://86895841616707",
            ["Volume"] = 1,
            ["TimePosition"] = 0,
            ["Looped"] = true
        }
    },
    ["Looped"] = true,
    ["HideWeapon"] = true,
    ["Animation"] = 118364371117769,
    ["Stun"] = "Freeze"
},
["Think!"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17097709271",
            ["Volume"] = 1
        }
    },
    ["Animation"] = 17097712387,
    ["Stun"] = "Freeze"
},
["Knocked Out"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17097750060",
            ["Volume"] = 1,
            ["ParentTorso"] = true,
            ["TimePosition"] = 0.25
        }
    },
    ["Animation"] = 17097745294,
    ["Stun"] = "Freeze"
},
["Respect"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17106854447",
            ["Volume"] = 1,
            ["ParentTorso"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17106858586,
    ["Stun"] = "Freeze"
},
["Hunter Salute"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://15673640988",
            ["Volume"] = 1.5
        },
        [0.1] = {
            ["SoundId"] = math.random(1, 3) == 1 and "rbxassetid://9114013375" or "rbxassetid://9120974708",
            ["Volume"] = 0.75
        }
    },
    ["Animation"] = 15673641958,
    ["Stun"] = "Freeze"
},
["Bow of Respect"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://15673682013",
            ["Volume"] = 1.5
        },
        [0.25] = {
            ["SoundId"] = "rbxassetid://9120973886",
            ["Volume"] = 1
        }
    },
    ["Animation"] = 15673683215,
    ["Stun"] = "Freeze"
},
["Yay"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://15673586398",
            ["Volume"] = 1
        },
        [0.01] = {
            ["SoundId"] = "rbxassetid://1841573938",
            ["Volume"] = 1,
            ["TimePosition"] = 0.5
        }
    },
    ["Animation"] = 15673595096,
    ["Stun"] = "Freeze"
},
["Expendable"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1845732793",
            ["Volume"] = 0.5,
            ["TimePosition"] = 0.35,
            ["Looped"] = true
        }
    },
    ["Animation"] = 15488510937,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Griddy"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9040601928",
            ["Volume"] = 0.874,
            ["Looped"] = true
        }
    },
    ["Animation"] = 13715326691,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Levitate"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1837911163",
            ["Volume"] = 0.1,
            ["Looped"] = true
        }
    },
    ["Fix"] = true,
    ["Animation"] = 15099756132,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Stay Down"] = {
    ["Sounds"] = {},
    ["Startup"] = function() --[[Function name: Startup, line 8114]]
        --[[
        Upvalues:
            [1] = u84
            [2] = u105
        --]]
        u84({
            ["SoundId"] = "rbxassetid://15290124285",
            ["Volume"] = 0.7,
            ["Parent"] = u105["Right Arm"],
            ["Looped"] = false
        }):Play()
    end,
    ["Animation"] = 15290114868,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Energized"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1847840594",
            ["Volume"] = 0.4,
            ["TimePosition"] = 0.15,
            ["Looped"] = true
        }
    },
    ["Animation"] = 15099686953,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Warmup"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://14611894554",
            ["Volume"] = 4,
            ["Looped"] = false
        }
    },
    ["Animation"] = 14611879113,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Gravity"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17106165427",
            ["Volume"] = 1
        }
    },
    ["Animation"] = 17106169665,
    ["Stun"] = "Freeze"
},
["Groovy Swing"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1835906503",
            ["Volume"] = 0.5,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17096779665,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Crawl"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17106185985",
            ["Volume"] = 0.25,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17106188784,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Get Down"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1840374054",
            ["Volume"] = 0.7,
            ["TimePosition"] = 0.25,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17266358630,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Tweak"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1836256328",
            ["Volume"] = 0.4,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17266410350,
    ["Looped"] = true,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1
},
["Eyes On Me"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1842976958",
            ["Volume"] = 0.4,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17266385960,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Sigh."] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9043114637",
            ["Volume"] = 0.3,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17266265770,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Get It"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1847479242",
            ["Volume"] = 0.45,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17266330796,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Sway"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1847180622",
            ["Volume"] = 0.45,
            ["ParentTorso"] = true,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17268390209,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Wild"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://14145625078",
            ["Volume"] = 0.45,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17266311371,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Cross Step"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1840019043",
            ["Volume"] = 0.5,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17096590136,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["One Hand Pushup"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17086681497",
            ["Volume"] = 0.5,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17086698204,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Two Hand Pushup"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17086681649",
            ["Volume"] = 0.5,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17086696468,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Brush"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://14611940867",
            ["Volume"] = 1.75,
            ["Looped"] = false
        }
    },
    ["Animation"] = 14611931363,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Mad"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://17086521999",
            ["Volume"] = 1,
            ["TimePosition"] = 0.033
        },
        [0.083] = {
            ["SoundId"] = "rbxassetid://9113987614",
            ["TimePosition"] = 0.7,
            ["Volume"] = 2
        }
    },
    ["Animation"] = 17086333563,
    ["Stun"] = "Freeze"
},
["Jumpscared"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://17086303118",
            ["Volume"] = 0.5
        },
        [0.01] = {
            ["SoundId"] = "rbxassetid://9125652432",
            ["Volume"] = 0.9
        }
    },
    ["Animation"] = 17086298638,
    ["Stun"] = "Freeze"
},
["Disconnect"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17086432258",
            ["Volume"] = 0.4
        }
    },
    ["Animation"] = 17086423985,
    ["Stun"] = "Freeze"
},
["Snap"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17097072874",
            ["Volume"] = 0.4
        }
    },
    ["Animation"] = 17097068597,
    ["Stun"] = "Slowed"
},
["Freaky"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17086541392",
            ["Volume"] = 0.4
        }
    },
    ["Animation"] = 17086544068,
    ["Stun"] = "Freeze"
},
["Shrug"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17108871591",
            ["Volume"] = 1.24
        }
    },
    ["Animation"] = 17108883110,
    ["Stun"] = "Slowed"
},
["Gun Flex"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17108676936",
            ["Volume"] = 1.24
        }
    },
    ["Animation"] = 17108683768,
    ["HideWeapon"] = true,
    ["Stun"] = "Freeze"
},
["Point Forward"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17097152088",
            ["Volume"] = 0.9
        },
        {
            ["SoundId"] = "rbxassetid://7455246815",
            ["Volume"] = 0.25
        }
    },
    ["Animation"] = 17097146599,
    ["Stun"] = "Freeze"
},
["Shiver"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://17097111258",
            ["Volume"] = 0.4
        },
        [6.4] = {
            ["SoundId"] = "rbxassetid://7455246815",
            ["Volume"] = 0.25
        }
    },
    ["Animation"] = 17097114800,
    ["Stun"] = "Freeze"
},
["Shuffle Steps"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17086664493",
            ["Volume"] = 0.8,
            ["Looped"] = true
        }
    },
    ["Keyframes"] = {
        ["clap"] = function() --[[Anonymous function at line 8497]] end
    },
    ["Infinite"] = true,
    ["Looped"] = true,
    ["Animation"] = 17086507535,
    ["Stun"] = "Slowed"
},
["Smooth Vibe"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9044565954",
            ["Volume"] = 0.3,
            ["Looped"] = true
        }
    },
    ["Looped"] = true,
    ["Animation"] = 17097177356,
    ["Stun"] = "Freeze"
},
["Trap Dance"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1842892976",
            ["Volume"] = 0.45,
            ["Looped"] = true
        }
    },
    ["Looped"] = true,
    ["Animation"] = 17097225104,
    ["Stun"] = "Slowed"
},
["Breakdown"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1837682925",
            ["Volume"] = 0.45,
            ["Looped"] = true
        }
    },
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Animation"] = 17097275344,
    ["Stun"] = "Slowed"
},
["Worm"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1835443210",
            ["Volume"] = 0.45,
            ["Looped"] = true,
            ["TimePosition"] = 10
        }
    },
    ["Looped"] = true,
    ["Animation"] = 17097313490,
    ["Stun"] = "Slowed"
},
["Frenzy"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1847412527",
            ["Volume"] = 0.75,
            ["Looped"] = true,
            ["TimePosition"] = 2
        }
    },
    ["Keyframes"] = {
        ["clap"] = function() --[[Anonymous function at line 8580]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://2704706975",
                ["Volume"] = 0.5,
                ["Parent"] = u105.Head
            }):Play()
        end
    },
    ["Infinite"] = true,
    ["Looped"] = true,
    ["Animation"] = 17097370518,
    ["Stun"] = "Slowed"
},
["Down Low"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17097078338",
            ["Volume"] = 0.3,
            ["Looped"] = true
        }
    },
    ["Looped"] = true,
    ["Animation"] = 17096931722,
    ["Stun"] = "Freeze"
},
["Shake A Leg"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9046189833",
            ["Volume"] = 0.3,
            ["Looped"] = true
        }
    },
    ["Looped"] = true,
    ["Animation"] = 17106937938,
    ["Stun"] = "Slowed"
},
["Crouch"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17097032574",
            ["Volume"] = 0.15,
            ["Looped"] = true
        }
    },
    ["Looped"] = true,
    ["Animation"] = 17097035602,
    ["Stun"] = "Slowed"
},
["Idk"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9042785151",
            ["Volume"] = 0.4,
            ["Looped"] = true
        }
    },
    ["Looped"] = true,
    ["Animation"] = 17086440627,
    ["Stun"] = "Slowed"
},
["Vibe"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9048378262",
            ["Volume"] = 0.4,
            ["Looped"] = true
        }
    },
    ["Looped"] = true,
    ["Animation"] = 17086321064,
    ["Stun"] = "Freeze"
},
["Happy"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1837528258",
            ["Volume"] = 0.6,
            ["TimePosition"] = 0.4,
            ["Looped"] = true
        }
    },
    ["Animation"] = 14496508275,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Cheery"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9043851073",
            ["Volume"] = 0.6,
            ["Looped"] = true
        }
    },
    ["Animation"] = 17097940507,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Victory Dance"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1841647421",
            ["Volume"] = 1,
            ["TimePosition"] = 19,
            ["Looped"] = true
        }
    },
    ["Fix"] = true,
    ["Animation"] = 15089788940,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Backflip"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15089505622",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["HideWeapon"] = true,
    ["Fix"] = true,
    ["Animation"] = 15089520783,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Boxing"] = {
    ["HideWeapon"] = true,
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15090130621",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Animation"] = 15090141089,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Comical"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1836440339",
            ["Volume"] = 0.75,
            ["TimePosition"] = 0.35,
            ["Looped"] = true
        }
    },
    ["Animation"] = 15090301130,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Jiggy"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1845593645",
            ["Volume"] = 0.75,
            ["Looped"] = true
        }
    },
    ["Animation"] = 18450480375,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
[":D"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://18450602521",
            ["Volume"] = 0.75,
            ["Looped"] = true
        },
        [0.01] = {
            ["SoundId"] = "rbxassetid://1842122622",
            ["Volume"] = 0.75,
            ["TimePosition"] = 0,
            ["Looped"] = true
        }
    },
    ["Animation"] = 18450597765,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Free Flow"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1841361703",
            ["Volume"] = 0.75,
            ["Looped"] = true
        }
    },
    ["Animation"] = 18450531343,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Let\'s Go"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9045588592",
            ["Volume"] = 0.75,
            ["Looped"] = true
        }
    },
    ["Keyframes"] = {
        ["clap"] = function() --[[Anonymous function at line 8815]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://2704706975",
                ["Volume"] = 1,
                ["Parent"] = u105.Head
            }):Play()
        end
    },
    ["Infinite"] = true,
    ["Animation"] = 18450770138,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Silly Dance"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1842922954",
            ["Volume"] = 0.75,
            ["Looped"] = true
        }
    },
    ["Animation"] = 18450448457,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Throne"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://18450718148",
            ["Volume"] = 1,
            ["ParentTorso"] = true
        },
        [0.65] = {
            ["SoundId"] = "rbxassetid://18450718643",
            ["Volume"] = 0.4,
            ["ParentTorso"] = true,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p771, _, _) --[[Function name: Startup, line 8860]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v772 = script.Throne:Clone()
        v772:SetAttribute("EmoteProperty", true)
        table.insert(p771, v772)
        local v773 = v772.m6d
        v773:SetAttribute("EmoteProperty", true)
        table.insert(p771, v773)
        v773.Name = "Throne"
        v773.Part0 = u105.HumanoidRootPart
        v773.Part1 = v772
        v773.Parent = u105.HumanoidRootPart
        v772.Parent = u105
    end,
    ["Keyframes"] = {},
    ["HideWeapon"] = true,
    ["Fix"] = true,
    ["Idle"] = 18450698238,
    ["Animation"] = 18450697195,
    ["Stun"] = "Freeze"
},
["WHAT"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18450667599",
            ["Volume"] = 1,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p774, _, _) --[[Function name: Startup, line 8890]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v775 = script["bad to the bone"]:Clone()
        v775:SetAttribute("EmoteProperty", true)
        table.insert(p774, v775)
        local v776 = v775.m6d
        v776:SetAttribute("EmoteProperty", true)
        table.insert(p774, v776)
        v776.Name = "Top"
        v776.Part0 = u105.HumanoidRootPart
        v776.Part1 = v775.Top
        v776.Parent = u105.HumanoidRootPart
        v775.Parent = u105
    end,
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p777) --[[Anonymous function at line 8901]]
            p777:AdjustSpeed(0)
        end
    },
    ["Animation"] = 18450685221,
    ["Stun"] = "Freeze"
},
["Stay Back"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18828870694",
            ["Volume"] = 1,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p778, _, _) --[[Function name: Startup, line 8919]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v779 = script.Sword:Clone()
        v779:SetAttribute("EmoteProperty", true)
        table.insert(p778, v779)
        local v780 = v779.m6d
        v780:SetAttribute("EmoteProperty", true)
        table.insert(p778, v780)
        v780.Name = "Handle"
        v780.Part0 = u105["Right Arm"]
        v780.Part1 = v779.Handle
        v780.Parent = u105["Right Arm"]
        v779.Parent = u105
    end,
    ["Animation"] = 18897715873,
    ["Stun"] = "Slowed"
},
["All Yours"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18450418495",
            ["Volume"] = 1,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p781, _, _) --[[Function name: Startup, line 8942]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v782 = script.Sword:Clone()
        v782:SetAttribute("EmoteProperty", true)
        table.insert(p781, v782)
        local v783 = v782.m6d
        v783:SetAttribute("EmoteProperty", true)
        table.insert(p781, v783)
        v783.Name = "Handle"
        v783.Part0 = u105["Right Arm"]
        v783.Part1 = v782.Handle
        v783.Parent = u105["Right Arm"]
        v782.Parent = u105
    end,
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p784) --[[Anonymous function at line 8953]]
            p784:AdjustSpeed(0)
        end
    },
    ["Animation"] = 18450406917,
    ["Stun"] = "Freeze"
},
["Do A Flip"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17292863583",
            ["Volume"] = 1,
            ["TimePosition"] = 0.15,
            ["ParentTorso"] = true
        }
    },
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p785) --[[Anonymous function at line 8973]]
            p785:AdjustSpeed(0)
        end
    },
    ["Fix"] = true,
    ["FixRotation"] = true,
    ["Animation"] = 17292855624,
    ["Stun"] = "Freeze"
},
["Slick Back"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16746806682",
            ["Volume"] = 1.25,
            ["ParentTorso"] = true
        }
    },
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p786) --[[Anonymous function at line 8994]]
            p786:AdjustSpeed(0)
        end
    },
    ["Animation"] = 16746808371,
    ["Stun"] = "Slowed"
},
["Power Up"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17292499081",
            ["Volume"] = 1.25,
            ["ParentTorso"] = true
        }
    },
    ["Keyframes"] = {
        ["start"] = function(p787, p788, _) --[[Anonymous function at line 9013]]
            --[[
            Upvalues:
                [1] = u110
                [2] = u113
                [3] = u105
            --]]
            local v789 = script.powerupaura.Attachment:Clone()
            v789:SetAttribute("EmoteProperty", true)
            table.insert(p788, v789)
            p787.att = v789
            local v790 = u113:GetColor() or Color3.new(math.random(), math.random(), math.random())
            if u105.Name == "Weakest Dummy" then
                v790 = ({
                    BrickColor.new("Bright red").Color,
                    BrickColor.new("Bright yellow").Color,
                    BrickColor.new("Electric blue").Color,
                    BrickColor.new("White").Color
                })[math.random(1, 4)]
            end
            for _, v791 in pairs(v789:GetChildren()) do
                v791.Color = ColorSequence.new(v790)
            end
            v789.Parent = u105.PrimaryPart
            v789.big:Emit(5)
            v789.ParticleEmitter.Enabled = true
        end,
        ["end"] = function(p792, _, _) --[[Anonymous function at line 9036]]
            p792.att.ParticleEmitter.Enabled = false
        end
    },
    ["CanColor"] = true,
    ["Animation"] = 17292505729,
    ["Stun"] = "Freeze"
},
["Flop"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16522115283",
            ["Volume"] = 1.25,
            ["ParentTorso"] = true
        }
    },
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p793) --[[Anonymous function at line 9056]]
            p793:AdjustSpeed(0)
        end
    },
    ["FixRotation"] = true,
    ["Animation"] = 16522110024,
    ["Stun"] = "Freeze"
},
["Shy"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1837934932",
            ["Volume"] = 0.5,
            ["Looped"] = true
        }
    },
    ["Animation"] = 83257080238678,
    ["Stun"] = "Freeze",
    ["Looped"] = true
},
["Scary Crawl"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://78377770965429",
            ["Volume"] = 0.25,
            ["TimePosition"] = 0.3,
            ["Looped"] = true
        }
    },
    ["Animation"] = 129232331588541,
    ["Stun"] = "Slowed",
    ["Looped"] = true,
    ["StunAttribute"] = 2
},
["Relaxed"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15684856602",
            ["Volume"] = 1.25
        }
    },
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p794) --[[Anonymous function at line 9105]]
            p794:AdjustSpeed(0)
        end
    },
    ["Animation"] = 15684849948,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1.5
},
["Salute"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15674156835",
            ["Volume"] = 0.65
        }
    },
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p795) --[[Anonymous function at line 9124]]
            p795:AdjustSpeed(0)
        end
    },
    ["Animation"] = 15674141176,
    ["Stun"] = "Freeze"
},
["Angel Sit"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1842179370",
            ["Volume"] = 0.65,
            ["Looped"] = true
        }
    },
    ["FixRotation"] = true,
    ["Animation"] = 99277885325374,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Pie"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p796, _, p797) --[[Function name: Startup, line 9153]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v798 = script.Pie:Clone()
        v798:SetAttribute("EmoteProperty", true)
        table.insert(p796, v798)
        p797.Handle = v798
        local v799 = v798.Pie
        v799:SetAttribute("EmoteProperty", true)
        table.insert(p796, v799)
        p797.md = v799
        v799.Part0 = u105.PrimaryPart
        v799.Part1 = v798
        v799.Parent = v799.Part0
        v798.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://102809211589234",
            ["Parent"] = v798,
            ["Volume"] = 2
        }):Play()
    end,
    ["Keyframes"] = {
        ["show"] = function(p800, _, _) --[[Anonymous function at line 9168]]
            local v801 = p800.Handle
            for _, v802 in pairs({ v801, v801["Meshes/pie_Circle"] }) do
                v802.Transparency = 0
            end
        end,
        ["end"] = function(p803, _, _) --[[Anonymous function at line 9175]]
            p803.Handle:Destroy()
        end
    },
    ["Animation"] = 100120756694061,
    ["Stun"] = "Slowed"
},
["ROFL"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://72680012098533",
            ["Volume"] = 0.8,
            ["ParentTorso"] = true,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(_, _, _) --[[Function name: Startup, line 9194]] end,
    ["Animation"] = 92009592408067,
    ["Stun"] = "Freeze"
},
["Eggceleration"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://127734089249377",
            ["Volume"] = 0.4,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p804, _, p805) --[[Function name: Startup, line 9216]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v806 = script["Hard Boiled Roadster"]:Clone()
        v806:SetAttribute("EmoteProperty", true)
        table.insert(p804, v806)
        p805.Handle = v806
        for _, v807 in pairs({
            "1Wheel",
            "2Wheel",
            "3Wheel",
            "4Wheel",
            "Base"
        }) do
            local v808 = v806:FindFirstChild(v807):FindFirstChild(v807)
            if v808 then
                v808:SetAttribute("EmoteProperty", true)
                table.insert(p804, v808)
                p805.md = v808
                v808.Parent = u105.PrimaryPart
                v808.Part0 = u105.PrimaryPart
                v808.Part1 = v806:FindFirstChild(v807)
            end
        end
        v806.Parent = u105
    end,
    ["Animation"] = 136339706043215,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1
},
["Far Lands"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://130102260263347",
            ["Volume"] = 0.75,
            ["Looped"] = false
        },
        [0.01] = {
            ["SoundId"] = "rbxassetid://9112871516",
            ["Volume"] = 0.1,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p809, _, p810) --[[Function name: Startup, line 9250]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v811 = script.Telescope:Clone()
        v811:SetAttribute("EmoteProperty", true)
        table.insert(p809, v811)
        p810.Handle = v811
        local v812 = v811.Telescope
        v812:SetAttribute("EmoteProperty", true)
        table.insert(p809, v812)
        p810.md = v812
        v812.Part0 = u105["Left Arm"]
        v812.Part1 = v811
        v812.Parent = v812.Part0
        v811.Parent = u105
        local v813 = script.RockModel:Clone()
        v813:SetAttribute("EmoteProperty", true)
        table.insert(p809, v813)
        p810.Handle = v813
        local v814 = Instance.new("Motor6D")
        v814:SetAttribute("EmoteProperty", true)
        table.insert(p809, v814)
        p810.md = v814
        v814.Part0 = u105.PrimaryPart
        v814.Part1 = v813.Rock
        v814.C0 = CFrame.new(0.518783569, -2.77656937, -1.6493988, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        v814.Parent = v814.Part0
        v813.Parent = u105
    end,
    ["Animation"] = 95188093937721,
    ["Idle"] = 123472525620412,
    ["Stun"] = "Freeze"
},
["Brick Wall"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://82109086143085",
            ["Volume"] = 0.8,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p815, _, p816) --[[Function name: Startup, line 9281]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v817 = Instance.new("Part")
        v817:SetAttribute("EmoteProperty", true)
        table.insert(p815, v817)
        p816.Handle = v817
        v817.Color = Color3.fromRGB(165, 91, 91)
        v817.Material = Enum.Material.Brick
        v817.CanCollide = false
        v817.CanTouch = false
        v817.CanQuery = false
        v817.Massless = true
        v817.Size = Vector3.new(14, 10, 2)
        local v818 = Instance.new("Weld")
        v818.Part0 = u105.PrimaryPart
        v818.Part1 = v817
        v818.C0 = CFrame.new(-0.0000152587891, 1.99996948, -5.00027466, 1.00000024, -5.55111512e-17, 0.0000116825104, -5.55111645e-17, 1, -6.485096e-22, -0.0000116825104, 0, 1.00000024)
        v818.Parent = v817
        v817.Parent = u105
    end,
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Animation"] = 82845057792209,
    ["Stun"] = "Freeze"
},
["Poet"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://73094641303819",
            ["Volume"] = 0.5,
            ["Looped"] = false
        },
        [2.25] = {
            ["SoundId"] = "rbxassetid://80725552338935",
            ["Volume"] = 0.2,
            ["Looped"] = true
        },
        [1] = {
            ["SoundId"] = "rbxassetid://1838577168",
            ["Volume"] = 0.8,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p819, _, p820) --[[Function name: Startup, line 9325]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v821 = script.poet.Book:Clone()
        v821:SetAttribute("EmoteProperty", true)
        table.insert(p819, v821)
        p820.Handle = v821
        local v822 = v821.Handle.Handle
        v822:SetAttribute("EmoteProperty", true)
        table.insert(p819, v822)
        p820.md = v822
        v822.Part0 = u105["Left Arm"]
        v822.Part1 = v821.Handle
        v822.Parent = v822.Part0
        v821.Parent = u105
        local v823 = script.poet.feather:Clone()
        v823:SetAttribute("EmoteProperty", true)
        table.insert(p819, v823)
        p820.Handle = v823
        local v824 = v823.Handle.Handle
        v824:SetAttribute("EmoteProperty", true)
        table.insert(p819, v824)
        p820.md = v824
        v824.Part0 = u105["Right Arm"]
        v824.Part1 = v823.Handle
        v824.Parent = v824.Part0
        v823.Parent = u105
        local v825 = script.poet["studious chair"]:Clone()
        v825:SetAttribute("EmoteProperty", true)
        table.insert(p819, v825)
        p820.Handle = v825
        local v826 = Instance.new("Motor6D")
        v826:SetAttribute("EmoteProperty", true)
        table.insert(p819, v826)
        p820.md = v826
        v826.Part0 = u105.PrimaryPart
        v826.Part1 = v825.mainpiece
        v826.C0 = CFrame.new(-1.39691925, 1.01877403, 1.46870232, 0.707105875, 0, -0.707105875, 0, 1, 0, 0.707105875, 0, 0.707105875)
        v826.Parent = v826.Part0
        v825.Parent = u105
    end,
    ["Animation"] = 91228869240203,
    ["Idle"] = 83196818755529,
    ["Stun"] = "Freeze"
},
["Virtual Reality"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://122501421229323",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p827, _, p828) --[[Function name: Startup, line 9363]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v829 = script.vr:Clone()
        v829:SetAttribute("EmoteProperty", true)
        table.insert(p827, v829)
        p828.Handle = v829
        local v830 = v829.Handle
        v830:SetAttribute("EmoteProperty", true)
        table.insert(p827, v830)
        p828.md = v830
        v830.Part0 = u105.Head
        v830.Part1 = v829
        v830.Parent = u105.Head
        v829.Name = "Handle"
        v829.Parent = u105.Head
    end,
    ["Animation"] = 84734676175472,
    ["Looped"] = false,
    ["Stun"] = "Slowed"
},
["Candy"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1837571829",
            ["Volume"] = 0.5,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p831, _, p832) --[[Function name: Startup, line 9387]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v833 = script.Lollipop:Clone()
        v833:SetAttribute("EmoteProperty", true)
        table.insert(p831, v833)
        p832.Handle = v833
        local v834 = v833.Lollipop
        v834:SetAttribute("EmoteProperty", true)
        table.insert(p831, v834)
        p832.md = v834
        v834.Part0 = u105["Left Arm"]
        v834.Part1 = v833
        v834.Parent = u105["Left Arm"]
        v833.Parent = u105
    end,
    ["Animation"] = 136634205715198,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Kicking My Feet"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://121331882801594",
            ["Volume"] = 1,
            ["ParentTorso"] = true
        },
        [1.167] = {
            ["SoundId"] = "rbxassetid://95578909033022",
            ["Volume"] = 0.3,
            ["Looped"] = true,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p835, _, p836) --[[Function name: Startup, line 9417]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v837 = script.Laptop:Clone()
        v837:SetAttribute("EmoteProperty", true)
        table.insert(p835, v837)
        p836.Handle = v837
        local v838 = v837.m6d
        v838:SetAttribute("EmoteProperty", true)
        table.insert(p835, v838)
        p836.md = v838
        v838.Part0 = u105.PrimaryPart
        v838.Name = "MainLaptop"
        v838.Part1 = v837.MainLaptop
        v838.Parent = u105.PrimaryPart
        v837.Parent = u105
    end,
    ["Animation"] = 122143558846408,
    ["Idle"] = 135379415562839,
    ["Looped"] = false,
    ["FixRotation"] = true,
    ["Stun"] = "Freeze"
},
["Dancey Dance"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1839444520",
            ["Volume"] = 0.5,
            ["Looped"] = true
        }
    },
    ["Animation"] = 126505536768184,
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Transform"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://94428920940989",
            ["Volume"] = 1,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p839, _, p840) --[[Function name: Startup, line 9458]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v841 = script.Watch:Clone()
        v841:SetAttribute("EmoteProperty", true)
        table.insert(p839, v841)
        p840.Handle = v841
        local v842 = v841.Watch
        v842:SetAttribute("EmoteProperty", true)
        table.insert(p839, v842)
        p840.md = v842
        v842.Part0 = u105["Left Arm"]
        v842.Part1 = v841
        v842.Parent = u105["Left Arm"]
        v841.Parent = u105
    end,
    ["Keyframes"] = {
        ["disguise"] = function(_, _, _) --[[Anonymous function at line 9468]]
            --[[
            Upvalues:
                [1] = u105
            --]]
            local v843 = script.CloneGlow:Clone()
            v843.Parent = u105.PrimaryPart
            v843:Emit(10)
            local v844 = {
                ["Name"] = "randomdisguise#",
                ["Parent"] = u105
            }
            shared.cfolder(v844, 0.2)
        end
    },
    ["Cooldown"] = 5,
    ["Animation"] = 95977571599797,
    ["HideWeapon"] = true,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1.25
},
["Hypnotize"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p845, _, p846) --[[Function name: Startup, line 9490]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v847 = script["hypnotize coin"]:Clone()
        v847:SetAttribute("EmoteProperty", true)
        table.insert(p845, v847)
        p846.Handle = v847
        local v848 = v847.rotate
        v848:SetAttribute("EmoteProperty", true)
        table.insert(p845, v848)
        local v849 = v848.rotate
        v849:SetAttribute("EmoteProperty", true)
        table.insert(p845, v849)
        p846.md = v849
        v849.Part0 = u105["Right Arm"]
        v849.Part1 = v848
        v849.Parent = u105["Right Arm"]
        v848.Parent = u105["Right Arm"]
        v848["hypnotize coin"].Part0 = v848
        v848["hypnotize coin"].Part1 = v847
        v847.Beam.Attachment0 = v848.a
        v847.Beam.Attachment1 = v847.b
        v847.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://128826289918429",
            ["Parent"] = v847,
            ["Volume"] = 1
        }):Play()
        u84({
            ["SoundId"] = "rbxassetid://96767567204088",
            ["Parent"] = v847,
            ["Looped"] = true,
            ["Volume"] = 0.5
        }):Play()
        u84({
            ["SoundId"] = "rbxassetid://84603081336467",
            ["Parent"] = v847,
            ["Looped"] = true,
            ["Volume"] = 1
        }):Play()
    end,
    ["Animation"] = 83122498060756,
    ["Looped"] = true,
    ["HideWeapon"] = true,
    ["Fix"] = true,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1.25
},
["Anteater"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://85846521324149",
            ["Volume"] = 0.6
        }
    },
    ["Startup"] = function(p850, _, p851) --[[Function name: Startup, line 9540]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v852 = script.TongueThree:Clone()
        v852:SetAttribute("EmoteProperty", true)
        table.insert(p850, v852)
        p851.Handle = v852
        v852.Name = "Tongue"
        local v853 = v852.Tongue
        v853:SetAttribute("EmoteProperty", true)
        table.insert(p850, v853)
        p851.md = v853
        v853.Part0 = u105.Head
        v853.Part1 = v852
        v853.Parent = u105.Head
        v852.Parent = u105
    end,
    ["Animation"] = 126729542613743,
    ["Looped"] = false,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1
},
["Dolphin Laugh"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://84584488257531",
            ["Volume"] = 0.6
        },
        [0.01] = {
            ["SoundId"] = "rbxassetid://107717554139419",
            ["Volume"] = 1
        }
    },
    ["Startup"] = function(p854, _, p855) --[[Function name: Startup, line 9569]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v856 = script.Tongue:Clone()
        v856:SetAttribute("EmoteProperty", true)
        table.insert(p854, v856)
        p855.Handle = v856
        local v857 = v856.Tongue
        v857:SetAttribute("EmoteProperty", true)
        table.insert(p854, v857)
        p855.md = v857
        v857.Part0 = u105.Head
        v857.Part1 = v856
        v857.Parent = u105.Head
        v856.Parent = u105
    end,
    ["Animation"] = 90429111193022,
    ["Looped"] = false,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1
},
["Tactical Roll"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://136421083782203",
            ["Volume"] = 0.75,
            ["ParentTorso"] = true
        },
        [0.667] = {
            ["SoundId"] = "rbxassetid://109487141252928",
            ["Volume"] = 0.25,
            ["ParentTorso"] = true,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p858, _, _) --[[Function name: Startup, line 9600]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local u859 = shared.cfolder({
            ["Name"] = "Freeze"
        }, 0.6)
        table.insert(p858, u859)
        u859:SetAttribute("DontInterrupt", true)
        u859:SetAttribute("NoStop", true)
        u859:SetAttribute("EmoteProperty", true)
        task.delay(0, function() --[[Anonymous function at line 9608]]
            --[[
            Upvalues:
                [1] = u859
                [2] = u105
            --]]
            u859.Parent = u105
        end)
    end,
    ["Keyframes"] = {},
    ["Infinite"] = true,
    ["Animation"] = 95582164547526,
    ["Idle"] = 129959128025296,
    ["End"] = {
        97763083185838,
        1.167,
        {
            ["SoundId"] = "rbxassetid://101300402631347",
            ["Volume"] = 1
        }
    },
    ["Looped"] = false,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1
},
["Snowball"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://123492905764821",
            ["ParentTorso"] = true,
            ["Volume"] = 1
        }
    },
    ["Startup"] = function(p860, _, p861) --[[Function name: Startup, line 9644]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v862 = script.Snowball:Clone()
        v862:SetAttribute("EmoteProperty", true)
        table.insert(p860, v862)
        p861.Handle = v862
        local v863 = v862.Snowball
        v863:SetAttribute("EmoteProperty", true)
        table.insert(p860, v863)
        p861.md = v863
        v863.Part0 = u105.PrimaryPart
        v863.Part1 = v862
        v863.Parent = u105.PrimaryPart
        v862.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://127749554517948",
            ["Parent"] = v862,
            ["Volume"] = 2
        }):Play()
        u84({
            ["SoundId"] = "rbxassetid://84849690170635",
            ["Parent"] = v862,
            ["Looped"] = true,
            ["Volume"] = 0.65
        }):Play()
        local u864 = shared.cfolder({
            ["Name"] = "Freeze"
        }, 0.567)
        table.insert(p860, u864)
        u864:SetAttribute("DontInterrupt", true)
        u864:SetAttribute("NoStop", true)
        u864:SetAttribute("EmoteProperty", true)
        task.delay(0, function() --[[Anonymous function at line 9672]]
            --[[
            Upvalues:
                [1] = u864
                [2] = u105
            --]]
            u864.Parent = u105
        end)
    end,
    ["Keyframes"] = {},
    ["Infinite"] = true,
    ["Animation"] = 93094222682042,
    ["Idle"] = 108144977825967,
    ["Looped"] = false,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1
},
["Pull Ups"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p865, _, p866) --[[Function name: Startup, line 9693]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v867 = script.bar:Clone()
        v867:SetAttribute("EmoteProperty", true)
        table.insert(p865, v867)
        p866.Handle = v867
        local v868 = v867.bar
        v868:SetAttribute("EmoteProperty", true)
        table.insert(p865, v868)
        p866.md = v868
        v868.Part0 = u105.PrimaryPart
        v868.Part1 = v867
        v868.Parent = u105.PrimaryPart
        v867.Parent = u105
    end,
    ["Keyframes"] = {
        ["clap"] = function(_, _, _) --[[Anonymous function at line 9703]]
            --[[
            Upvalues:
                [1] = u105
                [2] = u4
            --]]
            shared.sfx({
                ["SoundId"] = "rbxassetid://77085840183045",
                ["Parent"] = u105.Torso,
                ["RollOffMaxDistance"] = u4,
                ["Volume"] = 0.2
            }):Play()
        end
    },
    ["Infinite"] = true,
    ["Animation"] = 75393073390365,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Come At Me"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://116197705597433",
            ["Volume"] = 2,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p869, _, _) --[[Function name: Startup, line 9728]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p869, u105)
        u104("Right", p869, u105)
    end,
    ["Animation"] = 74414832949656,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Crush His Skull"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://98776091220732",
            ["Volume"] = 2,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p870, _, _) --[[Function name: Startup, line 9747]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p870, u105)
        u104("Right", p870, u105)
    end,
    ["Animation"] = 78773506399466,
    ["Looped"] = false,
    ["Stun"] = "Slowed"
},
["Tear To My Eye"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://82594146296970",
            ["Volume"] = 0.65,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p871, _, _) --[[Function name: Startup, line 9766]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p871, u105)
    end,
    ["Animation"] = 134468557091532,
    ["Looped"] = false,
    ["Stun"] = "Slowed"
},
["Iconic Salute"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://104425695752871",
            ["Volume"] = 0.65,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p872, _, _) --[[Function name: Startup, line 9784]]
        --[[
        Upvalues:
            [1] = u104
            [2] = u105
        --]]
        u104("Left", p872, u105)
    end,
    ["Animation"] = 80518687127249,
    ["Looped"] = false,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1
},
["Happy Run"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://76952189090658",
            ["Volume"] = 0.3,
            ["Looped"] = true
        },
        [0.1] = {
            ["SoundId"] = "rbxassetid://1846637439",
            ["Volume"] = 0.8,
            ["Looped"] = true
        }
    },
    ["Animation"] = 137202650654919,
    ["Looped"] = true,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1.25
},
["I HATE THIS"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://119365921426629",
            ["Volume"] = 1,
            ["ParentTorso"] = true
        }
    },
    ["Animation"] = 112380819900693,
    ["Stun"] = "Freeze"
},
["Closer Look"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://109152804297772",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p873, _, p874) --[[Function name: Startup, line 9851]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v875 = script.mag:Clone()
        v875:SetAttribute("EmoteProperty", true)
        table.insert(p873, v875)
        p874.Handle = v875
        local v876 = v875["Meshes/magnifying glass_Magnifying glass"].Motor6D
        v876:SetAttribute("EmoteProperty", true)
        table.insert(p873, v876)
        p874.md = v876
        v876.Part0 = u105["Right Arm"]
        v876.Part1 = v875["Meshes/magnifying glass_Magnifying glass"]
        v876.Parent = u105["Right Arm"]
        v875.Parent = u105
    end,
    ["Animation"] = 110165153895915,
    ["Stun"] = "Slowed"
},
["Wait what?"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://78427074444157",
            ["Volume"] = 0.8
        }
    },
    ["Startup"] = function(p877, _, p878) --[[Function name: Startup, line 9872]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v879 = script.burger:Clone()
        v879:SetAttribute("EmoteProperty", true)
        table.insert(p877, v879)
        p878.Handle = v879
        local v880 = v879.burger
        v880:SetAttribute("EmoteProperty", true)
        table.insert(p877, v880)
        p878.md = v880
        v880.Part0 = u105["Right Arm"]
        v880.Part1 = v879
        v880.Parent = u105["Right Arm"]
        v879.Parent = u105
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 118344836569256,
    ["Stun"] = "Slowed"
},
["Spider"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://98010853317105",
            ["ParentTorso"] = true,
            ["Volume"] = 1
        },
        [1.25] = {
            ["SoundId"] = "rbxassetid://96737293385093",
            ["ParentTorso"] = true,
            ["Volume"] = 0.75,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p881, _, p882) --[[Function name: Startup, line 9902]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local u883 = shared.cfolder({
            ["Name"] = "Freeze"
        }, 1.25)
        table.insert(p881, u883)
        u883:SetAttribute("DontInterrupt", true)
        u883:SetAttribute("NoStop", true)
        u883:SetAttribute("EmoteProperty", true)
        task.delay(0, function() --[[Anonymous function at line 9910]]
            --[[
            Upvalues:
                [1] = u883
                [2] = u105
            --]]
            u883.Parent = u105
        end)
        local v884 = script["Left Arm2"]:Clone()
        v884:SetAttribute("EmoteProperty", true)
        table.insert(p881, v884)
        p882.Handle = v884
        local v885 = v884:FindFirstChildOfClass("Motor6D")
        v885:SetAttribute("EmoteProperty", true)
        table.insert(p881, v885)
        p882.md = v885
        v885.Part0 = u105.Torso
        v885.Part1 = v884
        v885.Parent = u105.Torso
        v884.Parent = u105
        local v886 = script["Right Arm2"]:Clone()
        v886:SetAttribute("EmoteProperty", true)
        table.insert(p881, v886)
        p882.Handle = v886
        local v887 = v886:FindFirstChildOfClass("Motor6D")
        v887:SetAttribute("EmoteProperty", true)
        table.insert(p881, v887)
        p882.md = v887
        v887.Part0 = u105.Torso
        v887.Part1 = v886
        v887.Parent = u105.Torso
        v886.Parent = u105
        for _, v888 in pairs({ v884, v886 }) do
            local v889 = Instance.new("Model")
            v889:SetAttribute("EmoteProperty", true)
            table.insert(p881, v889)
            Instance.new("Humanoid").Parent = v889
            local v890 = u105
            local v891 = v888.Name
            local v892 = #v888.Name - 1
            local v893 = v890:FindFirstChild((string.sub(v891, 0, v892)))
            if v893 then
                local v894 = v893:Clone()
                v894:ClearAllChildren()
                v894.Parent = v889
                local v895 = Instance.new("Weld")
                v895.Part0 = v888
                v895.Part1 = v894
                v895.Parent = v894
            end
            for _, v896 in pairs(u105:GetChildren()) do
                if v896:IsA("BodyColors") or (v896:IsA("Shirt") or v896:IsA("CharacterMesh")) then
                    v896:Clone().Parent = v889
                end
            end
            v888.Transparency = 1
            v889.Parent = u105
        end
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 84352551694194,
    ["Idle"] = 116556793266735,
    ["End"] = {
        128242451039706,
        3.417,
        {
            ["SoundId"] = "rbxassetid://136022219424831",
            ["Volume"] = 1
        }
    },
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1
},
["Gun Safety"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://130627465104635",
            ["Volume"] = 0.8
        }
    },
    ["Startup"] = function(p897, _, p898) --[[Function name: Startup, line 9974]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v899 = script.gun1:Clone()
        v899:SetAttribute("EmoteProperty", true)
        table.insert(p897, v899)
        p898.Handle = v899
        local v900 = v899.Motor6D
        v900:SetAttribute("EmoteProperty", true)
        table.insert(p897, v900)
        p898.md = v900
        v900.Part0 = u105["Right Arm"]
        v900.Part1 = v899
        v900.Parent = u105["Right Arm"]
        v899.Parent = u105
        local v901 = script.gun2:Clone()
        v901:SetAttribute("EmoteProperty", true)
        table.insert(p897, v901)
        p898.Handle = v901
        local v902 = v901.Motor6D
        v902:SetAttribute("EmoteProperty", true)
        table.insert(p897, v902)
        p898.md = v902
        v902.Part0 = u105.PrimaryPart
        v902.Part1 = v901
        v902.Parent = u105.PrimaryPart
        v901.Parent = u105
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 129722512665420,
    ["Stun"] = "Freeze"
},
["Our Hill"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://76078643902403",
            ["Volume"] = 1
        }
    },
    ["Startup"] = function(p903, _, p904) --[[Function name: Startup, line 10003]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u105
        --]]
        local v905 = script.Flag:Clone()
        v905:SetAttribute("EmoteProperty", true)
        table.insert(p903, v905)
        p904.Handle = v905
        local v906 = v905.Flag.Flag
        v906:SetAttribute("EmoteProperty", true)
        u77:AddTag(v906, "emotestuff" .. u105.Name)
        game:GetService("Debris"):AddItem(v906, 7.5)
        p904.md = v906
        v906.Part0 = u105.PrimaryPart
        v906.Part1 = v905.Flag
        v906.Parent = u105.PrimaryPart
        v905.Parent = u105
    end,
    ["Keyframes"] = {
        ["show"] = function(p907, _, _) --[[Anonymous function at line 10013]]
            local v908 = p907.Handle
            for _, v909 in pairs(v908:GetChildren()) do
                v909.Transparency = 0
            end
        end,
        ["place"] = function(p910, p911, _) --[[Anonymous function at line 10020]]
            --[[
            Upvalues:
                [1] = u77
                [2] = u105
            --]]
            table.remove(p911, table.find(p911, p910.Handle))
            local v912 = p910.Handle
            u77:AddTag(v912, "emotestuff" .. u105.Name)
            game:GetService("Debris"):AddItem(v912, 10)
            p910.md:Destroy()
            for _, v913 in pairs(v912:GetChildren()) do
                v913.Anchored = true
            end
            v912.Parent = workspace.Thrown
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 73523771913372,
    ["Stun"] = "Freeze"
},
["Cleaning The Dirt"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://127817333862539",
            ["Volume"] = 0.4,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p914, _, p915) --[[Function name: Startup, line 10046]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v916 = script.Brush:Clone()
        v916:SetAttribute("EmoteProperty", true)
        table.insert(p914, v916)
        p915.Handle = v916
        local v917 = v916.Brush
        v917:SetAttribute("EmoteProperty", true)
        table.insert(p914, v917)
        p915.md = v917
        v917.Part0 = u105["Right Arm"]
        v917.Part1 = v916
        v917.Parent = u105["Right Arm"]
        v916.Parent = u105
    end,
    ["Animation"] = 115179620616154,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Greed"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://80873338449533",
            ["Volume"] = 0.25,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p918, _, p919) --[[Function name: Startup, line 10069]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v920 = script.Chest:Clone()
        v920:SetAttribute("EmoteProperty", true)
        table.insert(p918, v920)
        p919.Handle = v920
        local v921 = v920.Motor6D
        v921:SetAttribute("EmoteProperty", true)
        table.insert(p918, v921)
        p919.md = v921
        v921.Part0 = u105.PrimaryPart
        v921.Part1 = v920
        v921.Parent = u105.PrimaryPart
        v920.Parent = u105
    end,
    ["Animation"] = 122887697782216,
    ["Looped"] = true,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1.6
},
["Map"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://90191250272746",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p922, _, p923) --[[Function name: Startup, line 10093]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v924 = script.Map:Clone()
        v924:SetAttribute("EmoteProperty", true)
        table.insert(p922, v924)
        p923.Handle = v924
        local v925 = v924.Map
        v925:SetAttribute("EmoteProperty", true)
        table.insert(p922, v925)
        p923.md = v925
        v925.Part0 = u105["Left Arm"]
        v925.Part1 = v924
        v925.Parent = u105["Left Arm"]
        v924.Parent = u105
    end,
    ["Animation"] = 107071225742389,
    ["Stun"] = "Slowed"
},
["Compass"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://136499300928500",
            ["Volume"] = 1.5,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p926, _, p927) --[[Function name: Startup, line 10115]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v928 = script.compass:Clone()
        v928:SetAttribute("EmoteProperty", true)
        table.insert(p926, v928)
        p927.Handle = v928
        local v929 = v928.compass
        v929:SetAttribute("EmoteProperty", true)
        table.insert(p926, v929)
        p927.md = v929
        v929.Name = "compass"
        v929.Part0 = u105["Left Arm"]
        v929.Part1 = v928
        v929.Parent = u105["Left Arm"]
        v928.Parent = u105
    end,
    ["Animation"] = 80768814436661,
    ["Stun"] = "Freeze"
},
["Gamer"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://84400761601453",
            ["Volume"] = 1.5,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p930, _, p931) --[[Function name: Startup, line 10138]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v932 = script.gameboi:Clone()
        v932:SetAttribute("EmoteProperty", true)
        table.insert(p930, v932)
        p931.Handle = v932
        local v933 = v932.gameboi
        v933:SetAttribute("EmoteProperty", true)
        table.insert(p930, v933)
        p931.md = v933
        v933.Part0 = u105["Left Arm"]
        v933.Part1 = v932
        v933.Parent = u105["Left Arm"]
        v932.Parent = u105
    end,
    ["Animation"] = 135067453512312,
    ["Stun"] = "Slowed",
    ["Looped"] = true
},
["Fancy Spin"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1845480621",
            ["Volume"] = 1.5,
            ["Looped"] = true
        }
    },
    ["FixRotation"] = true,
    ["Animation"] = 80454258581844,
    ["Idle"] = 75040627398852,
    ["Stun"] = "Slowed"
},
["Those Who Know"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://106095843660280",
            ["Volume"] = 1,
            ["Looped"] = false
        },
        [0.35] = {
            ["SoundId"] = "rbxassetid://129084829698643",
            ["Volume"] = 0.75,
            ["Looped"] = true
        }
    },
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p934) --[[Anonymous function at line 10183]]
            p934:AdjustSpeed(0)
        end
    },
    ["FixRotation"] = true,
    ["Animation"] = 78259177692699,
    ["Idle"] = 120789866363939,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Sit"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15090067278",
            ["Volume"] = 0.65,
            ["TimePosition"] = 0.125,
            ["Looped"] = false
        }
    },
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p935) --[[Anonymous function at line 10206]]
            p935:AdjustSpeed(0)
        end
    },
    ["FixRotation"] = true,
    ["Animation"] = 15090101157,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["WHY?"] = {
    ["Sounds"] = {},
    ["Startup"] = function() --[[Function name: Startup, line 10222]]
        --[[
        Upvalues:
            [1] = u84
            [2] = u105
        --]]
        u84({
            ["SoundId"] = "rbxassetid://15285526846",
            ["Volume"] = 0.65,
            ["Parent"] = u105["Right Arm"],
            ["Looped"] = false
        }):Play()
        u84({
            ["SoundId"] = "rbxassetid://1840489462",
            ["Volume"] = 0.4,
            ["Parent"] = u105.Torso,
            ["TimePosition"] = 0.5,
            ["Looped"] = true
        }):Resume()
    end,
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p936) --[[Anonymous function at line 10240]]
            p936:AdjustSpeed(0)
        end
    },
    ["Fix"] = true,
    ["Animation"] = 15285521399,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Sit 2"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15099895974",
            ["Volume"] = 0.785,
            ["TimePosition"] = 0,
            ["Looped"] = false
        }
    },
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p937) --[[Anonymous function at line 10262]]
            p937:AdjustSpeed(0)
        end
    },
    ["Animation"] = 15099893403,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["T"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15503011741",
            ["Volume"] = 0.4,
            ["TimePosition"] = 0,
            ["Looped"] = false
        }
    },
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p938) --[[Anonymous function at line 10283]]
            p938:AdjustSpeed(0)
        end
    },
    ["Animation"] = 15503004900,
    ["Looped"] = false,
    ["Stun"] = "Slowed"
},
["Point Down"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15453955288",
            ["Volume"] = 0.785,
            ["TimePosition"] = 0,
            ["Looped"] = false
        }
    },
    ["Animation"] = 15446959450,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Head Spin"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15089965760",
            ["Volume"] = 0.65,
            ["Looped"] = false
        }
    },
    ["Keyframes"] = {
        ["start"] = function() --[[Anonymous function at line 10318]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://1846628770",
                ["Volume"] = 0.65,
                ["TimePosition"] = 25.55,
                ["Looped"] = false,
                ["Parent"] = u105.PrimaryPart
            }):Resume()
        end
    },
    ["Animation"] = 15090032390,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Hologram"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15090888419",
            ["Volume"] = 2.5,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p939, _, _) --[[Function name: Startup, line 10343]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u105
        --]]
        for _, v940 in pairs(script.Hologram:GetChildren()) do
            if v940:IsA("Model") then
                local v941 = v940:Clone()
                table.insert(p939, v941)
                u77:AddTag(v941, "emotestuff" .. u105.Name)
                for _, v942 in pairs(v941:GetChildren()) do
                    v942:SetAttribute("EmoteProperty", true)
                    table.insert(p939, v942)
                    u77:AddTag(v942, "emotestuff" .. u105.Name)
                    local v943 = script.Hologram:FindFirstChild(v942.Name)
                    v942.Material = Enum.Material.Glass
                    v942:SetAttribute("Exempt", true)
                    v942.Transparency = 0.25
                    v942.Size = Vector3.new(1.2, 1.15, 0)
                    v942.Parent = workspace.Thrown
                    if v943 then
                        local v944 = v943:Clone()
                        table.insert(p939, v944)
                        v944:SetAttribute("EmoteProperty", true)
                        v944.Part0 = u105.PrimaryPart
                        v944.Part1 = v942
                        v944.Parent = u105.PrimaryPart
                        local v945 = {
                            15090670461,
                            15090671388,
                            15090674168,
                            15090675904,
                            15090677327,
                            15090678837,
                            15090680066,
                            15090681663
                        }
                        local v946 = v945[math.random(#v945)]
                        for v947 = 1, 2 do
                            local v948 = Instance.new("Decal")
                            v948.Color3 = Color3.fromRGB(450, 450, 450)
                            v948.Transparency = 0.35
                            v948.Texture = "https://www.roblox.com/asset-thumbnail/image?assetId=" .. v946 .. "&width=420&height=420&format=png"
                            v948.Face = v947 == 1 and Enum.NormalId.Front or Enum.NormalId.Back
                            v948.Parent = v942
                        end
                    end
                end
                v941:SetAttribute("EmoteProperty", true)
                v941.Parent = u105
            end
        end
    end,
    ["Animation"] = 15090734317,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Ramen"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://15503358454",
            ["Volume"] = 2,
            ["Looped"] = false
        },
        [0.01] = {
            ["SoundId"] = "rbxassetid://1842247132",
            ["Volume"] = 0.15,
            ["Looped"] = true
        }
    },
    ["Keyframes"] = {
        ["clap"] = function(u949, _, u950) --[[Anonymous function at line 10415]]
            --[[
            Upvalues:
                [1] = u78
                [2] = u84
                [3] = u105
            --]]
            task.delay(0.2, function() --[[Anonymous function at line 10416]]
                --[[
                Upvalues:
                    [1] = u950
                    [2] = u949
                --]]
                if u950.IsPlaying then
                    for _, v951 in pairs({ u949.stickRight, u949.stickLeft }) do
                        if v951:GetAttribute("OG4") then
                            v951.Attachment1.Position = v951:GetAttribute("OG")
                            v951.Attachment0.Position = v951:GetAttribute("OG4")
                        end
                    end
                    u949.stickRight.Enabled = true
                    u949.stickLeft.Enabled = true
                end
            end)
            task.delay(1.15, function() --[[Anonymous function at line 10431]]
                --[[
                Upvalues:
                    [1] = u950
                    [2] = u949
                    [3] = u78
                --]]
                if u950.IsPlaying then
                    for _, v952 in pairs({ u949.stickRight, u949.stickLeft }) do
                        if not v952:GetAttribute("OG") then
                            v952:SetAttribute("OG", v952.Attachment1.Position)
                        end
                        if not v952:GetAttribute("OG4") then
                            v952:SetAttribute("OG4", v952.Attachment0.Position)
                        end
                        v952.Attachment1.Position = v952:GetAttribute("OG")
                        v952.Attachment0.Position = v952:GetAttribute("OG4")
                        v952.Enabled = true
                        u78:Create(v952.Attachment1, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            ["WorldPosition"] = v952.Attachment0.WorldPosition
                        }):Play()
                        if not v952:GetAttribute("OG2") then
                            v952:SetAttribute("OG2", v952.Width1)
                        end
                        if not v952:GetAttribute("OG3") then
                            v952:SetAttribute("OG3", v952.Width0)
                        end
                        u78:Create(v952, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            ["Width1"] = 0,
                            ["Width0"] = 0
                        }):Play()
                    end
                end
            end)
            u84({
                ["SoundId"] = "rbxassetid://15503358374",
                ["Parent"] = u105.PrimaryPart,
                ["Volume"] = 2
            }):Play()
        end,
        ["claploop"] = function(u953, _, u954) --[[Anonymous function at line 10471]]
            --[[
            Upvalues:
                [1] = u78
                [2] = u84
                [3] = u105
            --]]
            task.delay(0.4, function() --[[Anonymous function at line 10472]]
                --[[
                Upvalues:
                    [1] = u954
                    [2] = u953
                    [3] = u78
                    [4] = u84
                --]]
                if u954.IsPlaying then
                    for _, v955 in pairs({ u953.stickRight, u953.stickLeft }) do
                        u78:Create(v955.Attachment1, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            ["Position"] = v955:GetAttribute("OG")
                        }):Play()
                        u78:Create(v955, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            ["Width1"] = v955:GetAttribute("OG2"),
                            ["Width0"] = v955:GetAttribute("OG3")
                        }):Play()
                    end
                    task.delay(2.89, function() --[[Anonymous function at line 10488]]
                        --[[
                        Upvalues:
                            [1] = u954
                            [2] = u953
                            [3] = u78
                            [4] = u84
                        --]]
                        if u954.IsPlaying then
                            for _, u956 in pairs({ u953.stickRight, u953.stickLeft }) do
                                u78:Create(u956.Attachment0, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    ["WorldPosition"] = u956.Attachment1.WorldPosition
                                }):Play()
                                u84({
                                    ["SoundId"] = "rbxassetid://344167846",
                                    ["Parent"] = u953.Handle,
                                    ["Volume"] = 0.08
                                }):Play()
                                task.delay(0.5, function() --[[Anonymous function at line 10504]]
                                    --[[
                                    Upvalues:
                                        [1] = u954
                                        [2] = u956
                                    --]]
                                    if u954.IsPlaying then
                                        u956.Enabled = false
                                    end
                                end)
                            end
                        end
                    end)
                end
            end)
            u953.stickRight.Enabled = true
            u953.stickLeft.Enabled = true
            u84({
                ["SoundId"] = "rbxassetid://15503358531",
                ["Parent"] = u105.PrimaryPart,
                ["Volume"] = 2
            }):Play()
        end
    },
    ["Startup"] = function(p957, _, p958) --[[Function name: Startup, line 10526]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v959 = script.Ramen.Handle:Clone()
        v959:SetAttribute("EmoteProperty", true)
        table.insert(p957, v959)
        p958.Handle = v959
        local v960 = v959.Handle
        v960:SetAttribute("EmoteProperty", true)
        table.insert(p957, v960)
        p958.md = v960
        v960.Part0 = u105["Left Arm"]
        v960.Part1 = v959
        v960.Parent = u105["Left Arm"]
        v959.Parent = u105
        for _, v961 in pairs({ "stickLeft", "stickRight" }) do
            local v962 = script.Ramen[v961]:Clone()
            v962:SetAttribute("EmoteProperty", true)
            table.insert(p957, v962)
            v962.Parent = u105["Right Arm"]
            local v963 = v962[v961]
            v963:SetAttribute("EmoteProperty", true)
            table.insert(p957, v963)
            v963.Part0 = u105["Right Arm"]
            v963.Part1 = v962
            v963.Parent = u105["Right Arm"]
            v962.Beam.Attachment0 = v962.Attachment
            v962.Beam.Attachment1 = v959.Bowl.Noodles[string.gsub(v962.Name, "stick", "")]
            v962.Beam.Enabled = false
            p958[v961] = v962.Beam
        end
    end,
    ["HideWeapon"] = true,
    ["Infinite"] = true,
    ["IdleKeyframes"] = true,
    ["Idle"] = 15503362953,
    ["Animation"] = 15503201875,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Wallet Check"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16592761699",
            ["Volume"] = 2,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p964, _, p965) --[[Function name: Startup, line 10568]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v966 = script.wollet:Clone()
        v966:SetAttribute("EmoteProperty", true)
        table.insert(p964, v966)
        p965.Handle = v966
        local v967 = v966.LeftHandle:Clone()
        v967:SetAttribute("EmoteProperty", true)
        table.insert(p964, v967)
        v967.Cube.Part0 = v967
        v967.Cube.Part1 = v966.Cube
        local v968 = v966.m6d
        v968:SetAttribute("EmoteProperty", true)
        table.insert(p964, v968)
        p965.md = v968
        v968.Part0 = u105["Left Arm"]
        v968.Part1 = v967
        v968.Name = "LeftHandle"
        v967.Parent = u105
        v966.Parent = u105
        v968.Parent = u105["Left Arm"]
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 16592787958,
    ["Stun"] = "Slowed"
},
["Nerf This"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15502973035",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p969, _, p970) --[[Function name: Startup, line 10598]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v971 = script.Clipboard.LeftHandle:Clone()
        v971:SetAttribute("EmoteProperty", true)
        table.insert(p969, v971)
        p970.Handle = v971
        local v972 = v971.LeftHandle
        v972:SetAttribute("EmoteProperty", true)
        table.insert(p969, v972)
        p970.md = v972
        v972.Part0 = u105["Left Arm"]
        v972.Part1 = v971
        v972.Parent = u105["Left Arm"]
        v971:FindFirstChild("Decal", true).Texture = "rbxassetid://" .. ({
            15114667107,
            15124465439,
            15143528856,
            15114672498,
            15143529209,
            15143528539,
            16136325038
        })[math.random(1, 7)]
        v971.Parent = u105
        local v973 = script.Clipboard.RightHandle:Clone()
        v973:SetAttribute("EmoteProperty", true)
        table.insert(p969, v973)
        p970.Handle = v973
        local v974 = v973.RightHandle
        v974:SetAttribute("EmoteProperty", true)
        table.insert(p969, v974)
        p970.md = v974
        v974.Part0 = u105["Right Arm"]
        v974.Part1 = v973
        v974.Parent = u105["Right Arm"]
        v973.Parent = u105
    end,
    ["HideWeapon"] = true,
    ["Idle"] = 15502977193,
    ["Animation"] = 15502978256,
    ["Looped"] = false,
    ["Stun"] = "Slowed"
},
["Party Blower"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://12332077418",
            ["Volume"] = 1
        }
    },
    ["Startup"] = function(p975, _, p976) --[[Function name: Startup, line 10632]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v977 = script.blower:Clone()
        v977:SetAttribute("EmoteProperty", true)
        table.insert(p975, v977)
        p976.Handle = v977
        local v978 = v977.Cylinder.Cylinder
        v978:SetAttribute("EmoteProperty", true)
        table.insert(p975, v978)
        p976.md = v978
        v978.Part0 = u105.Head
        v978.Part1 = v977.Cylinder
        v978.Name = "Cylinder"
        v978.Parent = u105.Head
        v977.Parent = u105
    end,
    ["Keyframes"] = {
        ["clap"] = function() --[[Anonymous function at line 10643]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://16599449151",
                ["Parent"] = u105.Head,
                ["Volume"] = 1.5
            }):Play()
        end
    },
    ["IdleKeyframes"] = true,
    ["Infinite"] = true,
    ["Idle"] = 16599398107,
    ["Animation"] = 16599412902,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1
},
["Eye Pop"] = {
    ["HideWeapon"] = true,
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17097414525",
            ["Volume"] = 1,
            ["ParentTorso"] = true,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p979, _, p980) --[[Function name: Startup, line 10671]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v981 = script.Leye1:Clone()
        v981:SetAttribute("EmoteProperty", true)
        table.insert(p979, v981)
        p980.Handle = v981
        local v982 = v981.m6d
        v982:SetAttribute("EmoteProperty", true)
        table.insert(p979, v982)
        p980.md = v982
        v982.Part0 = u105.Head
        v982.Part1 = v981
        v982.Name = "Leye1"
        v982.Parent = u105.Head
        v981.Parent = u105
        local v983 = script.Reye1:Clone()
        v983:SetAttribute("EmoteProperty", true)
        table.insert(p979, v983)
        p980.Handle = v983
        local v984 = v983.m6d
        v984:SetAttribute("EmoteProperty", true)
        table.insert(p979, v984)
        p980.md = v984
        v984.Part0 = u105.Head
        v984.Part1 = v983
        v984.Name = "Reye1"
        v984.Parent = u105.Head
        v983.Parent = u105
    end,
    ["Fix"] = true,
    ["Animation"] = 17097409396,
    ["Stun"] = "Freeze"
},
["Brooming"] = {
    ["HideWeapon"] = true,
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15297645043",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p985, _, p986) --[[Function name: Startup, line 10704]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v987 = script.Broom:Clone()
        v987:SetAttribute("EmoteProperty", true)
        table.insert(p985, v987)
        p986.Handle = v987
        local v988 = v987.m6d
        v988:SetAttribute("EmoteProperty", true)
        table.insert(p985, v988)
        p986.md = v988
        v987.Name = "Part"
        v988.Part0 = u105["Left Arm"]
        v988.Part1 = v987
        v988.Name = "Part"
        v988.Parent = u105["Left Arm"]
        v987.Parent = u105
    end,
    ["Infinite"] = true,
    ["Animation"] = 15297647499,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Kitty Cat"] = {
    ["HideWeapon"] = true,
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15099918372",
            ["Volume"] = 0.35,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p989, _, p990) --[[Function name: Startup, line 10731]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v991 = script.Maxwell:Clone()
        v991:SetAttribute("EmoteProperty", true)
        table.insert(p989, v991)
        p990.Handle = v991
        local v992 = v991.m6d
        v992:SetAttribute("EmoteProperty", true)
        table.insert(p989, v992)
        p990.md = v992
        v992.Part0 = u105["Left Arm"]
        v992.Part1 = v991.maxwell
        v992.Name = "maxwell"
        v992.Parent = u105["Left Arm"]
        v991.Parent = u105
    end,
    ["Keyframes"] = {
        ["clap"] = function() --[[Function name: clap, line 10742]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            if math.random(1, 3) == 1 then
                u84({
                    ["SoundId"] = ({ "rbxassetid://15099947619", "rbxassetid://15099947876", "rbxassetid://15099948214" })[math.random(1, 3)],
                    ["Parent"] = u105.PrimaryPart,
                    ["Volume"] = 0.4
                }):Play()
            end
        end
    },
    ["Infinite"] = true,
    ["Animation"] = 15099900787,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["The Strongest Rocks"] = {
    ["HideWeapon"] = true,
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15438805005",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p993, _, p994) --[[Function name: Startup, line 10769]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v995 = script.Guitar:Clone()
        v995:SetAttribute("EmoteProperty", true)
        table.insert(p993, v995)
        p994.Handle = v995
        local v996 = v995.Handle
        v996:SetAttribute("EmoteProperty", true)
        table.insert(p993, v996)
        p994.md = v996
        v995.Name = "Handle"
        v996.Part0 = u105["Left Arm"]
        v996.Part1 = v995
        v996.Parent = u105["Left Arm"]
        v995.Parent = u105
    end,
    ["Keyframes"] = {
        ["end"] = function(p997) --[[Anonymous function at line 10780]]
            p997.Handle:Destroy()
        end
    },
    ["Infinite"] = true,
    ["Animation"] = 15438891684,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Party"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15100051516",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p998, _, p999) --[[Function name: Startup, line 10800]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1000 = script.Popper:Clone()
        v1000:SetAttribute("EmoteProperty", true)
        table.insert(p998, v1000)
        p999.Handle = v1000
        local v1001 = v1000.Handle
        v1001:SetAttribute("EmoteProperty", true)
        table.insert(p998, v1001)
        p999.md = v1001
        v1000.Name = "Handle"
        v1001.Part0 = u105["Left Arm"]
        v1001.Part1 = v1000
        v1001.Parent = u105["Left Arm"]
        v1000.Parent = u105
    end,
    ["Keyframes"] = {
        ["pop"] = function(p1002, p1003, _) --[[Anonymous function at line 10811]]
            --[[
            Upvalues:
                [1] = u105
            --]]
            local v1004 = p1002.Handle.Attachment
            v1004:SetAttribute("EmoteProperty", true)
            v1004.Parent = u105.PrimaryPart
            table.insert(p1003, v1004)
            for _, v1005 in pairs(v1004:GetChildren()) do
                shared.resizeparticle(v1005, 1.25)
                v1005:Emit(25 / #v1004:GetChildren())
            end
        end,
        ["end"] = function(p1006) --[[Anonymous function at line 10822]]
            p1006.Handle:Destroy()
        end
    },
    ["Animation"] = 15100081900,
    ["Looped"] = false,
    ["Stun"] = "Slowed"
},
["Skull"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15271585302",
            ["Volume"] = 0.4,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p1007, _, p1008) --[[Function name: Startup, line 10841]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1009 = script.Skull:Clone()
        v1009:SetAttribute("EmoteProperty", true)
        table.insert(p1007, v1009)
        p1008.Handle = v1009
        local v1010 = v1009.Handle
        v1010:SetAttribute("EmoteProperty", true)
        table.insert(p1007, v1010)
        p1008.md = v1010
        v1009.Name = "Handle"
        v1010.Part0 = u105["Left Arm"]
        v1010.Part1 = v1009
        v1010.Parent = u105["Left Arm"]
        v1009.Parent = u105
    end,
    ["Keyframes"] = {
        ["end"] = function(p1011) --[[Anonymous function at line 10852]]
            p1011.Handle:Destroy()
        end
    },
    ["Animation"] = 15271569844,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Cross"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://16524227044",
            ["Volume"] = 2,
            ["Looped"] = false
        }
    },
    ["HideWeapon"] = true,
    ["Idle"] = 16524243757,
    ["Animation"] = 16524237104,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Cross 2"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://18828346536",
            ["Volume"] = 1.25,
            ["Looped"] = false
        }
    },
    ["HideWeapon"] = true,
    ["Idle"] = 18897553669,
    ["Animation"] = 18897551628,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Situp"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15673857335",
            ["Volume"] = 2,
            ["Looped"] = false
        }
    },
    ["HideWeapon"] = true,
    ["Infinite"] = true,
    ["Idle"] = 15674164857,
    ["IdleSound"] = {
        ["SoundId"] = "rbxassetid://15674129833",
        ["Volume"] = 1,
        ["Looped"] = true
    },
    ["Animation"] = 15674077481,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Superhero"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://9042798921",
            ["TimePosition"] = 1,
            ["Volume"] = 1
        },
        [0.01] = {
            ["SoundId"] = "rbxassetid://17109047369",
            ["Volume"] = 1
        }
    },
    ["End"] = {
        17109013631,
        0.933,
        {
            ["SoundId"] = "rbxassetid://17109047546",
            ["Volume"] = 1
        }
    },
    ["IdleSound"] = {
        ["SoundId"] = "rbxassetid://9114663740",
        ["Volume"] = 0.25,
        ["Looped"] = true
    },
    ["HideWeapon"] = true,
    ["Idle"] = 17109012516,
    ["Animation"] = 17109009771,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Sleep"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17108967672",
            ["Volume"] = 1
        }
    },
    ["HideWeapon"] = true,
    ["End"] = {
        17108974875,
        2.533,
        {
            ["SoundId"] = "rbxassetid://17108967908",
            ["Volume"] = 1
        }
    },
    ["IdleSound"] = {
        ["SoundId"] = "rbxassetid://9114663740",
        ["Volume"] = 0.25,
        ["Looped"] = true
    },
    ["FixRotation"] = true,
    ["Idle"] = 17108973561,
    ["Animation"] = 17108971736,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Stylish Flip"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17086578816",
            ["Volume"] = 1,
            ["TimePosition"] = 0.1,
            ["Looped"] = false
        }
    },
    ["HideWeapon"] = true,
    ["End"] = {
        17086594393,
        1.183,
        {
            ["SoundId"] = "rbxassetid://17086578943",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Idle"] = 17086601693,
    ["Animation"] = 17086569715,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Sincere Apology"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://76131937398399",
            ["Volume"] = 1,
            ["ParentTorso"] = true,
            ["Looped"] = false
        }
    },
    ["HideWeapon"] = true,
    ["Idle"] = 131394881582474,
    ["Animation"] = 118382652729061,
    ["Stun"] = "Freeze"
},
["Pushup"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15673857335",
            ["Volume"] = 2,
            ["Looped"] = false
        }
    },
    ["HideWeapon"] = true,
    ["Infinite"] = true,
    ["Idle"] = 15673865087,
    ["IdleSound"] = {
        ["SoundId"] = "rbxassetid://15673857667",
        ["Volume"] = 1,
        ["Looped"] = true
    },
    ["Animation"] = 15673860575,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Gang"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1012, _, _) --[[Function name: Startup, line 11043]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
            [3] = u110
            [4] = u5
        --]]
        local v1013 = {
            ["Name"] = "SBind",
            ["Parent"] = u105
        }
        local v1014 = shared.cfolder(v1013)
        v1014:SetAttribute("EmoteProperty", true)
        table.insert(p1012, v1014)
        local v1015, v1016 = u84({
            ["SoundId"] = "rbxassetid://83080858871410",
            ["Volume"] = 1,
            ["Parent"] = u105.Torso,
            ["Looped"] = false
        })
        v1015:Play()
        if u110 then
            tick()
            local v1017 = {}
            local v1018 = u110
            local v1019
            if u5[v1018] then
                v1019 = u5[v1018]
            else
                v1019 = nil
            end
            local v1020 = v1019 or v1017
            if #v1020 == 0 then
                local u1021 = game:GetService("Players"):GetFriendsAsync(u110.UserId)
                for v1024, _ in coroutine.wrap(function() --[[Anonymous function at line 11072]]
                    --[[
                    Upvalues:
                        [1] = u1021
                    --]]
                    local v1022 = 1
                    while true do
                        for _, v1023 in ipairs(u1021:GetCurrentPage()) do
                            coroutine.yield(v1023, v1022)
                        end
                        if u1021.IsFinished then
                            return
                        end
                        u1021:AdvanceToNextPageAsync()
                        v1022 = v1022 + 1
                    end
                end) do
                    local v1025 = v1024.Id
                    table.insert(v1020, v1025)
                end
                if #v1020 > 0 then
                    u5[u110] = v1020
                end
            end
            local v1026 = {}
            for _ = 1, 4 do
                if #v1020 > 0 then
                    local v1027 = math.random(#v1020)
                    local v1028 = v1020[v1027]
                    table.insert(v1026, v1028)
                    table.remove(v1020, v1027)
                end
            end
            local v1029 = {
                ["Effect"] = "GANG",
                ["Character"] = u105,
                ["Friends"] = v1026,
                ["Bind"] = v1014,
                ["Music"] = v1016
            }
            game.ReplicatedStorage.Replication:FireAllClients(v1029)
        end
    end,
    ["Cooldown"] = 5,
    ["HideWeapon"] = true,
    ["Infinite"] = true,
    ["Idle"] = 112138009997034,
    ["Animation"] = 119293848229043,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Best Friends"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1030, _, _) --[[Function name: Startup, line 11130]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
            [3] = u110
            [4] = u5
        --]]
        local v1031 = {
            ["Name"] = "SBind",
            ["Parent"] = u105
        }
        local v1032 = shared.cfolder(v1031)
        v1032:SetAttribute("EmoteProperty", true)
        table.insert(p1030, v1032)
        local v1033, _ = u84({
            ["SoundId"] = "rbxassetid://83119347007476",
            ["Volume"] = 0.5,
            ["Parent"] = u105.PrimaryPart,
            ["Looped"] = true
        })
        local v1034 = Instance.new("Attachment")
        v1034.Parent = u105.PrimaryPart
        v1034.Position = Vector3.new(-2.443, 0, 0)
        v1033.Parent = v1034
        table.insert(p1030, v1033)
        v1033:Play()
        if u110 then
            tick()
            local v1035 = {}
            local v1036 = u110
            local v1037
            if u5[v1036] then
                v1037 = u5[v1036]
            else
                v1037 = nil
            end
            local v1038 = v1037 or v1035
            if #v1038 == 0 then
                local u1039 = game:GetService("Players"):GetFriendsAsync(u110.UserId)
                for v1042, _ in coroutine.wrap(function() --[[Anonymous function at line 11164]]
                    --[[
                    Upvalues:
                        [1] = u1039
                    --]]
                    local v1040 = 1
                    while true do
                        for _, v1041 in ipairs(u1039:GetCurrentPage()) do
                            coroutine.yield(v1041, v1040)
                        end
                        if u1039.IsFinished then
                            return
                        end
                        u1039:AdvanceToNextPageAsync()
                        v1040 = v1040 + 1
                    end
                end) do
                    local v1043 = v1042.Id
                    table.insert(v1038, v1043)
                end
                if #v1038 > 0 then
                    u5[u110] = v1038
                end
            end
            local v1044 = {}
            for _ = 1, 3 do
                if #v1038 > 0 then
                    local v1045 = math.random(#v1038)
                    local v1046 = v1038[v1045]
                    table.insert(v1044, v1046)
                    table.remove(v1038, v1045)
                end
            end
            local v1047 = {
                ["Effect"] = "BFFS",
                ["Character"] = u105,
                ["Friends"] = v1044,
                ["Bind"] = v1032,
                ["Music"] = v1034
            }
            game.ReplicatedStorage.Replication:FireAllClients(v1047)
        end
    end,
    ["Cooldown"] = 5,
    ["HideWeapon"] = true,
    ["Infinite"] = true,
    ["Animation"] = 105494624349321,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["First Rule"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15503520699",
            ["Volume"] = 1.85,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p1048, _, p1049) --[[Function name: Startup, line 11225]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
            [3] = u110
        --]]
        local v1050 = {
            ["Name"] = "SBind",
            ["Parent"] = u105
        }
        local v1051 = shared.cfolder(v1050)
        v1051:SetAttribute("EmoteProperty", true)
        table.insert(p1048, v1051)
        local v1052, _ = u84({
            ["SoundId"] = "rbxassetid://1837904676",
            ["Volume"] = 0.25,
            ["Parent"] = root,
            ["Looped"] = true
        })
        local v1053 = Instance.new("Attachment")
        v1053.Parent = u105.PrimaryPart
        v1052.Parent = v1053
        table.insert(p1048, v1052)
        v1052:Play()
        local v1054 = script.ColaFight:Clone()
        v1054:SetAttribute("EmoteProperty", true)
        table.insert(p1048, v1054)
        p1049.Handle = v1054
        local v1055 = v1054.Handle
        v1055:SetAttribute("EmoteProperty", true)
        table.insert(p1048, v1055)
        p1049.md = v1055
        v1054.Name = "Handle"
        v1055.Part0 = u105["Right Arm"]
        v1055.Part1 = v1054
        v1055.Parent = u105["Right Arm"]
        v1054.Parent = u105
        if u110 then
            local v1056 = {
                ["Effect"] = "FightC",
                ["Character"] = u105,
                ["Bind"] = v1051,
                ["Music"] = v1053
            }
            game.ReplicatedStorage.Replication:FireClient(u110, v1056)
        end
    end,
    ["Keyframes"] = {
        ["claploop"] = function() --[[Anonymous function at line 11265]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://15503520430",
                ["Parent"] = u105.PrimaryPart,
                ["Volume"] = 1.5
            }):Play()
        end
    },
    ["HideWeapon"] = true,
    ["Infinite"] = true,
    ["Idle"] = 15503546989,
    ["IdleKeyframes"] = true,
    ["Animation"] = 15503532950,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Countdown"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://15283152008",
            ["Volume"] = 1.85,
            ["Looped"] = false
        },
        [4.033] = {
            ["SoundId"] = "rbxassetid://15283155687",
            ["Volume"] = 5,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p1057, _, p1058) --[[Function name: Startup, line 11298]]
        --[[
        Upvalues:
            [1] = u84
            [2] = u105
        --]]
        local v1059 = u84({
            ["SoundId"] = "rbxassetid://1842188426",
            ["Volume"] = 0.4,
            ["Parent"] = u105.PrimaryPart
        })
        v1059:Play()
        p1058.ok = v1059
        for _, v1060 in pairs(script.Revolvers:GetChildren()) do
            if v1060.Name == "Handle" then
                local v1061 = v1060:Clone()
                v1061:SetAttribute("EmoteProperty", true)
                table.insert(p1057, v1061)
                p1058[v1061.Name] = v1061
                local v1062 = v1061.Handle
                v1062:SetAttribute("EmoteProperty", true)
                table.insert(p1057, v1062)
                p1058.md = v1062
                v1061.Name = "Handle"
                v1062.Part0 = u105["Left Arm"]
                v1062.Part1 = v1061
                v1062.Parent = u105["Left Arm"]
                v1061.Parent = u105
            end
        end
    end,
    ["Keyframes"] = {
        ["shoot"] = function(p1063) --[[Anonymous function at line 11322]]
            --[[
            Upvalues:
                [1] = u110
                [2] = u78
            --]]
            if u110 then
                game.ReplicatedStorage.Replication:FireClient(u110, {
                    ["Effect"] = "Camshake",
                    ["Intensity"] = 8
                })
            end
            u78:Create(p1063.ok, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                ["Volume"] = 0
            }):Play()
            p1063.Handle.Gun.Attachment.ParticleEmitter:Emit(2)
        end,
        ["end"] = function(p1064) --[[Anonymous function at line 11337]]
            p1064.Handle:Destroy()
        end
    },
    ["Animation"] = 15284324734,
    ["Looped"] = false,
    ["Stun"] = "Slowed"
},
["New Sheriff"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://15311093430",
            ["Volume"] = 1.5,
            ["Looped"] = false
        },
        [0.1] = {
            ["SoundId"] = "rbxassetid://1842190166",
            ["Volume"] = 0.3,
            ["Looped"] = false
        },
        [4.2] = {
            ["SoundId"] = "rbxassetid://9114701864",
            ["Volume"] = 0.5,
            ["Looped"] = false
        },
        [2.49] = {
            ["SoundId"] = "rbxassetid://9113593647",
            ["Volume"] = 3.6
        }
    },
    ["Startup"] = function(p1065, _, p1066) --[[Function name: Startup, line 11373]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1067 = script.Revolver:Clone()
        v1067:SetAttribute("EmoteProperty", true)
        table.insert(p1065, v1067)
        p1066[v1067.Name] = v1067
        local v1068 = v1067.Handle
        v1068:SetAttribute("EmoteProperty", true)
        table.insert(p1065, v1068)
        p1066.md = v1068
        v1067.Name = "Handle"
        v1068.Part0 = u105["Right Arm"]
        v1068.Part1 = v1067
        v1068.Parent = u105["Right Arm"]
        v1067.Parent = u105
    end,
    ["Keyframes"] = {
        ["shoot"] = function(u1069) --[[Anonymous function at line 11385]]
            --[[
            Upvalues:
                [1] = u110
                [2] = u84
                [3] = u105
            --]]
            if u110 then
                game.ReplicatedStorage.Replication:FireClient(u110, {
                    ["Effect"] = "Camshake",
                    ["Intensity"] = 8
                })
            end
            u84({
                ["SoundId"] = "rbxassetid://15310981185",
                ["Parent"] = u105.PrimaryPart,
                ["TimePosition"] = 0.11,
                ["Volume"] = 2.5
            }):Resume()
            for _, v1070 in pairs(u1069.Revolver.Shoot:GetChildren()) do
                v1070.Enabled = true
            end
            task.delay(0.05, function() --[[Anonymous function at line 11403]]
                --[[
                Upvalues:
                    [1] = u1069
                --]]
                u1069.Revolver.Shoot:Destroy()
            end)
            if not hitbox then
                hitbox = require(game.ServerStorage.Hitbox)
            end
            if not force then
                force = require(game.ServerStorage.Force)
            end
            local v1071 = hitbox:GetHit(u110 or true, 7, {
                ["side"] = 5
            }, false, -3)
            local v1072 = 2000000000
            local v1073 = nil
            for _, v1074 in pairs(v1071) do
                local v1075 = (v1074.PrimaryPart.Position - u105.PrimaryPart.Position).magnitude
                if v1075 < v1072 and v1074.Humanoid.Health <= 0 then
                    v1073 = v1074
                    v1072 = v1075
                end
            end
            local u1076 = { v1073 }
            task.delay(0.045, function() --[[Anonymous function at line 11426]]
                --[[
                Upvalues:
                    [1] = u1076
                    [2] = u105
                --]]
                for _, v1077 in pairs(u1076) do
                    local v1078 = {
                        ["char"] = u105,
                        ["hit"] = v1077,
                        ["pushback"] = 0,
                        ["up"] = Vector3.new(0, 1.75, 0)
                    }
                    force:CreateForce(v1078)
                    shared.sfx({
                        ["SoundId"] = "rbxassetid://15311018533",
                        ["Parent"] = v1077.PrimaryPart,
                        ["Volume"] = 3
                    }):Play()
                end
            end)
        end,
        ["end"] = function(p1079) --[[Anonymous function at line 11444]]
            p1079.Revolver:Destroy()
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 15310973900,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Fool"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://15283205480",
            ["Volume"] = 1.85,
            ["Looped"] = false
        },
        [0.01] = {
            ["SoundId"] = "rbxassetid://1842188443",
            ["Volume"] = 0.6,
            ["Looped"] = false
        },
        [6.62] = {
            ["SoundId"] = "rbxassetid://15283205587",
            ["Volume"] = 1.85,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p1080, _, p1081) --[[Function name: Startup, line 11476]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        for _, v1082 in pairs(script.Revolvers:GetChildren()) do
            if v1082.Name == "Handle2" then
                local v1083 = v1082:Clone()
                v1083:SetAttribute("EmoteProperty", true)
                table.insert(p1080, v1083)
                p1081[v1083.Name] = v1083
                local v1084 = v1083.Handle
                v1084:SetAttribute("EmoteProperty", true)
                table.insert(p1080, v1084)
                p1081.md = v1084
                v1084.C0 = CFrame.new(-0.0250015259, -0.999999762, 0.00322246552, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                v1084.C1 = CFrame.new(-0.0500030518, -0.0202150345, 0.0032453537, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                v1083.Name = "Handle"
                v1084.Part0 = u105["Right Arm"]
                v1084.Part1 = v1083
                v1084.Parent = u105["Right Arm"]
                v1083.Parent = u105
            end
        end
    end,
    ["Keyframes"] = {
        ["end"] = function(p1085) --[[Anonymous function at line 11494]]
            p1085.Handle2:Destroy()
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 15283197429,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Snake"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://15271610757",
            ["Volume"] = 1.85,
            ["Looped"] = false
        },
        [0.01] = {
            ["SoundId"] = "rbxassetid://1842190005",
            ["Volume"] = 0.6,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p1086, _, p1087) --[[Function name: Startup, line 11520]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        for _, v1088 in pairs(script.Revolvers:GetChildren()) do
            local v1089 = v1088.Name == "Handle2" and "Right Arm" or "Left Arm"
            local v1090 = v1088:Clone()
            v1090:SetAttribute("EmoteProperty", true)
            table.insert(p1086, v1090)
            p1087[v1090.Name] = v1090
            local v1091 = v1090.Handle
            v1091:SetAttribute("EmoteProperty", true)
            table.insert(p1086, v1091)
            p1087.md = v1091
            v1090.Name = "Handle"
            v1091.Part0 = u105[v1089]
            v1091.Part1 = v1090
            v1091.Parent = u105[v1089]
            v1090.Parent = u105
        end
    end,
    ["Keyframes"] = {
        ["end"] = function(p1092) --[[Anonymous function at line 11537]]
            p1092.Handle:Destroy()
            p1092.Handle2:Destroy()
        end,
        ["slow"] = function(_, _, p1093) --[[Anonymous function at line 11542]]
            p1093:AdjustSpeed(0.4)
        end,
        ["away"] = function(_, _, p1094) --[[Anonymous function at line 11546]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            p1094:AdjustSpeed(1)
            u84({
                ["SoundId"] = "rbxassetid://15271610473",
                ["Volume"] = 1.85,
                ["Looped"] = false,
                ["Parent"] = u105.PrimaryPart
            }):Play()
        end
    },
    ["Animation"] = 15271677861,
    ["Looped"] = false,
    ["Stun"] = "Slowed",
    ["HideWeapon"] = true
},
["Lean Back"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1095, _, p1096) --[[Function name: Startup, line 11568]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v1097 = script.CHAIR:Clone()
        v1097:SetAttribute("EmoteProperty", true)
        table.insert(p1095, v1097)
        p1096.Handle = v1097
        local v1098 = v1097.Handle
        v1098:SetAttribute("EmoteProperty", true)
        table.insert(p1095, v1098)
        p1096.md = v1098
        v1097.Name = "CHAIR"
        v1098.Part0 = u105.Torso
        v1098.Part1 = v1097
        v1098.Parent = u105.Torso
        v1097.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://17106914725",
            ["Parent"] = u105.Torso,
            ["Volume"] = 1
        }):Play()
    end,
    ["Fix"] = true,
    ["Animation"] = 17106924052,
    ["Stun"] = "Freeze"
},
["Taco Time"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1846971107",
            ["Volume"] = 0.4,
            ["Looped"] = true,
            ["TimePosition"] = 0.1,
            ["ParentTorso"] = true
        }
    },
    ["Startup"] = function(p1099, _, p1100) --[[Function name: Startup, line 11600]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1101 = script.TACO1:Clone()
        v1101:SetAttribute("EmoteProperty", true)
        table.insert(p1099, v1101)
        p1100.Handle = v1101
        local v1102 = v1101.TACO1
        v1102:SetAttribute("EmoteProperty", true)
        table.insert(p1099, v1102)
        p1100.md = v1102
        v1102.Part0 = u105["Right Arm"]
        v1102.Part1 = v1101
        v1102.Parent = u105["Right Arm"]
        v1101.Parent = u105
        local v1103 = script.TACO2:Clone()
        v1103:SetAttribute("EmoteProperty", true)
        table.insert(p1099, v1103)
        p1100.Handle = v1103
        local v1104 = v1103.TACO2
        v1104:SetAttribute("EmoteProperty", true)
        table.insert(p1099, v1104)
        p1100.md = v1104
        v1104.Part0 = u105["Left Arm"]
        v1104.Part1 = v1103
        v1104.Parent = u105["Left Arm"]
        v1103.Parent = u105
    end,
    ["Looped"] = true,
    ["HideWeapon"] = true,
    ["Animation"] = 17107076756,
    ["Stun"] = "Freeze"
},
["Card"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1105, _, p1106) --[[Function name: Startup, line 11627]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v1107 = script["Meshes/cARD"]:Clone()
        v1107:SetAttribute("EmoteProperty", true)
        table.insert(p1105, v1107)
        p1106.Handle = v1107
        local v1108 = v1107["Meshes/cARD"]
        v1108:SetAttribute("EmoteProperty", true)
        table.insert(p1105, v1108)
        p1106.md = v1108
        v1108.Part0 = u105["Right Arm"]
        v1108.Part1 = v1107
        v1108.Parent = u105["Right Arm"]
        v1107.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://17120974824",
            ["Parent"] = v1107,
            ["Volume"] = 1
        }):Play()
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 17120966975,
    ["Stun"] = "Freeze"
},
["Plank"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1109, _, p1110) --[[Function name: Startup, line 11652]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v1111 = script.Plank:Clone()
        v1111:SetAttribute("EmoteProperty", true)
        table.insert(p1109, v1111)
        p1110.Handle = v1111
        v1111.Name = "Handle"
        local v1112 = v1111.Handle
        v1112:SetAttribute("EmoteProperty", true)
        table.insert(p1109, v1112)
        p1110.md = v1112
        v1111.Name = "Handle"
        v1112.Part0 = u105["Right Arm"]
        v1112.Part1 = v1111
        v1112.Parent = u105["Right Arm"]
        v1111.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://17107178506",
            ["Parent"] = v1111,
            ["Volume"] = 1
        }):Play()
    end,
    ["Idle"] = 17107199838,
    ["IdleSound"] = {
        ["SoundId"] = "rbxassetid://17107178615",
        ["Volume"] = 1,
        ["Looped"] = true
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17107197570,
    ["Stun"] = "Slowed"
},
["Cola"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1113, _, p1114) --[[Function name: Startup, line 11686]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v1115 = script.ColaTwo:Clone()
        v1115:SetAttribute("EmoteProperty", true)
        table.insert(p1113, v1115)
        p1114.Handle = v1115
        local v1116 = v1115.Handle
        v1116:SetAttribute("EmoteProperty", true)
        table.insert(p1113, v1116)
        p1114.md = v1116
        v1115.Name = "Handle"
        v1116.Part0 = u105["Right Arm"]
        v1116.Part1 = v1115
        v1116.Parent = u105["Right Arm"]
        v1115.Parent = u105
        p1114.mesh = v1115.Mesh
        u84({
            ["SoundId"] = "rbxassetid://17120785426",
            ["Parent"] = v1115,
            ["Volume"] = 1
        }):Play()
    end,
    ["Keyframes"] = {
        ["end"] = function(p1117, _) --[[Anonymous function at line 11704]]
            --[[
            Upvalues:
                [1] = u78
            --]]
            u78:Create(p1117.mesh, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                ["Scale"] = Vector3.new()
            }):Play()
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17120842242,
    ["Stun"] = "Slowed"
},
["Bread"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1118, _, p1119) --[[Function name: Startup, line 11721]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        p1119.breads = {}
        local v1120 = {
            ["Bread1"] = CFrame.new(-0.9290413856506348, -0.3216838836669922, -0.9804582595825195, -1, 0, 0, 0, 1, 0, 0, 0, -1),
            ["Bread2"] = CFrame.new(-0.9290413856506348, -0.41446352005004883, -0.9804582595825195, -1, 0, 0, 0, 1, 0, 0, 0, -1),
            ["Bread3"] = CFrame.new(-0.9290413856506348, -0.5068368911743164, -0.9804582595825195, -1, 0, 0, 0, 1, 0, 0, 0, -1),
            ["Bread4"] = CFrame.new(-0.9290413856506348, -0.599616527557373, -0.9804582595825195, -1, 0, 0, 0, 1, 0, 0, 0, -1)
        }
        for v1121, v1122 in pairs(v1120) do
            local v1123 = script.Bread1:Clone()
            v1123:SetAttribute("EmoteProperty", true)
            table.insert(p1118, v1123)
            p1119.Handle = v1123
            v1123.Name = v1121
            local v1124 = Instance.new("Motor6D")
            v1124:SetAttribute("EmoteProperty", true)
            table.insert(p1118, v1124)
            p1119.md = v1124
            v1123.Name = v1121
            v1124.Part0 = u105.Torso
            v1124.Part1 = v1123
            v1124.Parent = u105.Torso
            v1124.C0 = v1122
            v1123.Parent = u105
            local v1125 = p1119.breads
            table.insert(v1125, v1123)
        end
        u84({
            ["SoundId"] = "rbxassetid://17121814784",
            ["Parent"] = u105["Right Arm"],
            ["Volume"] = 1
        }):Play()
    end,
    ["Keyframes"] = {
        ["end"] = function(p1126, _) --[[Anonymous function at line 11749]]
            --[[
            Upvalues:
                [1] = u78
            --]]
            for _, v1127 in pairs(p1126.breads) do
                for _, v1128 in pairs({ v1127, v1127.Crust }) do
                    u78:Create(v1128, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        ["Size"] = Vector3.new()
                    }):Play()
                end
            end
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17121769642,
    ["Stun"] = "Slowed"
},
["Flashlight"] = {
    ["Sounds"] = {},
    ["Startup"] = function(_, _, p1129) --[[Function name: Startup, line 11770]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u108
            [3] = u110
            [4] = u105
            [5] = u84
        --]]
        local v1130 = script.Flashlight:Clone()
        u77:AddTag(v1130, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        local v1131 = v1130.Handle
        u77:AddTag(v1131, "emoteendstuff" .. (u108 or (u110 or u105)).Name)
        v1130.Name = "Handle"
        v1131.Part0 = u105["Right Arm"]
        v1131.Part1 = v1130
        v1131.Parent = u105["Right Arm"]
        v1130.Parent = u105
        p1129.mesh = v1130.SurfaceLight
        u84({
            ["SoundId"] = "rbxassetid://17120880738",
            ["Parent"] = v1130,
            ["Volume"] = 1
        }):Play()
    end,
    ["Keyframes"] = {
        ["start"] = function(p1132, _) --[[Anonymous function at line 11788]]
            p1132.mesh.Enabled = true
        end
    },
    ["HideWeapon"] = true,
    ["Idle"] = 17120870445,
    ["End"] = {
        17120873919,
        0.983,
        {
            ["SoundId"] = "rbxassetid://12981981352",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Animation"] = 17120866178,
    ["Stun"] = "Slowed"
},
["Rainy"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1133, _, p1134) --[[Function name: Startup, line 11809]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v1135 = script.Cloud:Clone()
        v1135:SetAttribute("EmoteProperty", true)
        table.insert(p1133, v1135)
        p1134.Handle = v1135
        local v1136 = Instance.new("Weld")
        v1136.Part0 = u105.PrimaryPart
        v1136.Part1 = v1135
        v1136.C0 = CFrame.new(0, 6.6855607, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        v1136.Parent = v1135
        v1135.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://17121715447",
            ["Parent"] = v1135,
            ["Volume"] = 1,
            ["Looped"] = true
        }):Play()
    end,
    ["Looped"] = true,
    ["HideWeapon"] = true,
    ["Animation"] = 17121695329,
    ["Stun"] = "Freeze"
},
["Box"] = {
    ["Sounds"] = {},
    ["Startup"] = function(u1137, _, p1138, _, u1139) --[[Function name: Startup, line 11837]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
            [3] = u116
        --]]
        local u1140 = script.Carboard:Clone()
        u1140:SetAttribute("EmoteProperty", true)
        table.insert(u1137, u1140)
        p1138.Handle = u1140
        local v1141 = u1140.Handle
        v1141:SetAttribute("EmoteProperty", true)
        table.insert(u1137, v1141)
        p1138.md = v1141
        u1140.Name = "Base"
        v1141.Part0 = u105.PrimaryPart
        v1141.Part1 = u1140.Base
        v1141.Parent = u105.PrimaryPart
        u1140.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://17122337086",
            ["Parent"] = u1140.Base,
            ["Volume"] = 1,
            ["TimePosition"] = 0.25
        }):Resume()
        task.spawn(function() --[[Anonymous function at line 11853]]
            --[[
            Upvalues:
                [1] = u116
                [2] = u1137
                [3] = u84
                [4] = u1140
                [5] = u1139
                [6] = u105
            --]]
            local v1142 = u116(17122265672)
            v1142:AdjustWeight(35)
            local v1143 = u1137
            table.insert(v1143, v1142)
            local v1144 = u84({
                ["SoundId"] = "rbxassetid://17122337244",
                ["Parent"] = u1140.Base,
                ["Volume"] = 0.15,
                ["Looped"] = true
            })
            while task.wait() and not u1139.interrupted do
                if u1139.interrupted or not u105.Parent then
                    v1142:Stop()
                    break
                end
                if u105.Humanoid.MoveDirection == Vector3.new() then
                    if v1142.IsPlaying then
                        v1142:Stop(0.3)
                    end
                    v1144:Stop()
                else
                    v1144:Resume()
                    if not v1142.IsPlaying then
                        v1142:Play(0.3)
                    end
                end
            end
            v1142:AdjustWeight(0.01)
            v1142:Stop()
        end)
    end,
    ["HideWeapon"] = true,
    ["Idle"] = 17122254184,
    ["Animation"] = 17122214043,
    ["Stun"] = "Slowed"
},
["Air Horn"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17292689498",
            ["ParentTorso"] = true,
            ["Volume"] = 1
        }
    },
    ["Startup"] = function(p1145, _, p1146) --[[Function name: Startup, line 11904]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1147 = script.Airhorn:Clone()
        v1147:SetAttribute("EmoteProperty", true)
        table.insert(p1145, v1147)
        p1146.Handle = v1147
        local v1148 = v1147.handle
        v1148:SetAttribute("EmoteProperty", true)
        table.insert(p1145, v1148)
        p1146.md = v1148
        v1148.Name = "Airhorn"
        v1148.Part0 = u105["Right Arm"]
        v1148.Part1 = v1147.Airhorn
        v1148.Parent = u105["Right Arm"]
        v1147.Parent = u105
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 17292579443,
    ["Stun"] = "Slowed"
},
["Owl"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17292555531",
            ["ParentTorso"] = true,
            ["Volume"] = 1
        }
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17292549897,
    ["Stun"] = "Freeze"
},
["Mic Drop"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1149, _, p1150) --[[Function name: Startup, line 11938]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v1151 = script.MIC:Clone()
        v1151:SetAttribute("EmoteProperty", true)
        table.insert(p1149, v1151)
        p1150.Handle = v1151
        local v1152 = v1151.Handle
        v1152:SetAttribute("EmoteProperty", true)
        table.insert(p1149, v1152)
        p1150.md = v1152
        v1151.Name = "MIC"
        v1152.Part0 = u105.PrimaryPart
        v1152.Part1 = v1151
        v1152.Parent = u105.PrimaryPart
        v1151.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://17106346778",
            ["Parent"] = v1151,
            ["Volume"] = 1
        }):Play()
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 17106365733,
    ["Stun"] = "Freeze"
},
["Luv This Game"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1153, _, p1154) --[[Function name: Startup, line 11964]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v1155 = script.HeartTSB:Clone()
        v1155:SetAttribute("EmoteProperty", true)
        table.insert(p1153, v1155)
        p1154.Handle = v1155
        local v1156 = v1155.Main2
        v1156:SetAttribute("EmoteProperty", true)
        table.insert(p1153, v1156)
        p1154.md = v1156
        v1156.Name = "Main"
        v1156.Part0 = u105.PrimaryPart
        v1156.Part1 = v1155.Main
        v1156.Parent = u105.PrimaryPart
        v1155.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://17269138016",
            ["Parent"] = u105.PrimaryPart,
            ["Volume"] = 1
        }):Play()
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 17269134625,
    ["Stun"] = "Slowed"
},
["Mango"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1157, _, p1158) --[[Function name: Startup, line 11990]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v1159 = script.MangoFork:Clone()
        v1159:SetAttribute("EmoteProperty", true)
        table.insert(p1157, v1159)
        p1158.Handle = v1159
        local v1160 = v1159.Fork2
        v1160:SetAttribute("EmoteProperty", true)
        table.insert(p1157, v1160)
        p1158.md = v1160
        v1160.Name = "Fork"
        v1160.Part0 = u105["Right Arm"]
        v1160.Part1 = v1159.Fork
        v1160.Parent = u105["Right Arm"]
        v1159.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://17269071380",
            ["Parent"] = v1159.Fork,
            ["Volume"] = 1
        }):Play()
    end,
    ["Keyframes"] = {
        ["dead"] = function(p1161, _, _) --[[Anonymous function at line 12007]]
            p1161.Handle.Mango:Destroy()
            p1161.Handle.mangopart:Destroy()
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17269079177,
    ["Stun"] = "Slowed"
},
["Action"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1162, _, p1163) --[[Function name: Startup, line 12023]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v1164 = script.Clapboard:Clone()
        v1164:SetAttribute("EmoteProperty", true)
        table.insert(p1162, v1164)
        p1163.Handle = v1164
        local v1165 = v1164.Handle
        v1165:SetAttribute("EmoteProperty", true)
        table.insert(p1162, v1165)
        p1163.md = v1165
        v1165.Name = "Bottom"
        v1165.Part0 = u105["Left Arm"]
        v1165.Part1 = v1164.Bottom
        v1165.Parent = u105["Left Arm"]
        v1164.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://17268545081",
            ["Parent"] = v1164.Bottom,
            ["Volume"] = 1
        }):Play()
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 17268549637,
    ["Stun"] = "Slowed"
},
["Sad Times"] = {
    ["Sounds"] = {
        [2.5] = {
            ["SoundId"] = "rbxassetid://1836112668",
            ["ParentTorso"] = true,
            ["Volume"] = 0.175
        }
    },
    ["Startup"] = function(p1166, _, p1167) --[[Function name: Startup, line 12053]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v1168 = script.Phone2:Clone()
        v1168:SetAttribute("EmoteProperty", true)
        table.insert(p1166, v1168)
        p1167.Handle = v1168
        local v1169 = v1168.Phone2
        v1169:SetAttribute("EmoteProperty", true)
        table.insert(p1166, v1169)
        p1167.md = v1169
        v1169.Name = "Phone"
        v1168.Name = "Phone"
        v1169.Part0 = u105["Right Arm"]
        v1169.Part1 = v1168.Phone
        v1169.Parent = u105["Right Arm"]
        v1168.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://17268986804",
            ["Parent"] = v1168.Phone,
            ["Volume"] = 1
        }):Play()
    end,
    ["Keyframes"] = {
        ["clap"] = function() --[[Anonymous function at line 12071]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
                [3] = u4
            --]]
            u84({
                ["SoundId"] = "rbxassetid://" .. ({ 7455224144, 7455246815, 7455224490 })[math.random(1, 3)],
                ["Parent"] = u105["Left Leg"],
                ["PlaybackSpeed"] = 1,
                ["Volume"] = 0.2,
                ["RollOffMaxDistance"] = u4
            }):Play()
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17268991944,
    ["Idle"] = 17269023470,
    ["IdleKeyframes"] = true,
    ["Stun"] = "Slowed"
},
["Me Reading The Book That"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1170, _, p1171) --[[Function name: Startup, line 12094]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v1172 = script.Bookk:Clone()
        v1172:SetAttribute("EmoteProperty", true)
        table.insert(p1170, v1172)
        p1171.Handle = v1172
        local v1173 = v1172.Bookk
        v1173:SetAttribute("EmoteProperty", true)
        table.insert(p1170, v1173)
        p1171.md = v1173
        v1172.Name = "Book"
        v1173.Name = "Base"
        v1173.Part0 = u105.PrimaryPart
        v1173.Part1 = v1172.Base
        v1173.Parent = u105.PrimaryPart
        v1172.Parent = u105
        p1171.handle = v1172
        u84({
            ["SoundId"] = "rbxassetid://17268616635",
            ["Parent"] = v1172.Base,
            ["Volume"] = 1
        }):Play()
        shared.s = u84({
            ["SoundId"] = "rbxassetid://9043379206",
            ["Parent"] = u105.Torso,
            ["Volume"] = 1
        })
        shared.s:Play()
    end,
    ["Keyframes"] = {
        ["stop"] = function(_, _, _) --[[Anonymous function at line 12120]]
            shared.s:Stop()
        end,
        ["freeze"] = function(_, _, p1174) --[[Anonymous function at line 12124]]
            p1174:AdjustSpeed(0)
        end
    },
    ["Fix"] = true,
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Animation"] = 17268619636,
    ["Stun"] = "Freeze"
},
["UFO"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1835904215",
            ["Volume"] = 0.5,
            ["ParentTorso"] = true,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p1175, _, p1176) --[[Function name: Startup, line 12146]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1177 = script.UFO:Clone()
        v1177:SetAttribute("EmoteProperty", true)
        table.insert(p1175, v1177)
        p1176.Handle = v1177
        local v1178 = v1177.UFO
        v1178:SetAttribute("EmoteProperty", true)
        table.insert(p1175, v1178)
        p1176.md = v1178
        v1178.Part0 = u105.PrimaryPart
        v1178.Part1 = v1177
        v1178.Parent = u105.PrimaryPart
        v1177.Parent = u105
        p1176.handle = v1177
    end,
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Animation"] = 17268633540,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1
},
["Pizza Delivery"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://122292723",
            ["Volume"] = 0.5,
            ["ParentTorso"] = true,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p1179, _, p1180) --[[Function name: Startup, line 12173]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1181 = script.Pizza:Clone()
        v1181:SetAttribute("EmoteProperty", true)
        table.insert(p1179, v1181)
        p1180.Handle = v1181
        local v1182 = v1181.Pizza
        v1182:SetAttribute("EmoteProperty", true)
        table.insert(p1179, v1182)
        p1180.md = v1182
        v1182.Part0 = u105.PrimaryPart
        v1182.Name = "Base"
        v1182.Part1 = v1181.Base
        v1182.Parent = u105.PrimaryPart
        v1181.Parent = u105
        p1180.handle = v1181
    end,
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Animation"] = 17268742277,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1
},
["Angry Riff"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1836019934",
            ["Volume"] = 1,
            ["ParentTorso"] = true,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p1183, _, p1184) --[[Function name: Startup, line 12201]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1185 = script.Guitar2:Clone()
        v1185:SetAttribute("EmoteProperty", true)
        table.insert(p1183, v1185)
        p1184.Handle = v1185
        local v1186 = v1185.Guitar
        v1186:SetAttribute("EmoteProperty", true)
        table.insert(p1183, v1186)
        p1184.md = v1186
        v1186.Part0 = u105["Right Arm"]
        v1186.Part1 = v1185
        v1185.Name = "Guitar"
        v1186.Parent = u105["Right Arm"]
        v1185.Parent = u105
        p1184.handle = v1185
    end,
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Animation"] = 17268926242,
    ["Stun"] = "Slowed"
},
["Flute"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1838868548",
            ["Volume"] = 1,
            ["ParentTorso"] = true,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p1187, _, p1188) --[[Function name: Startup, line 12228]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1189 = script.flute:Clone()
        v1189:SetAttribute("EmoteProperty", true)
        table.insert(p1187, v1189)
        p1188.Handle = v1189
        local v1190 = v1189.Handle
        v1190:SetAttribute("EmoteProperty", true)
        table.insert(p1187, v1190)
        p1188.md = v1190
        v1190.Part0 = u105["Right Arm"]
        v1190.Part1 = v1189
        v1189.Name = "Handle"
        v1190.Parent = u105["Right Arm"]
        v1189.Parent = u105
        p1188.handle = v1189
    end,
    ["Keyframes"] = {
        ["clap"] = function() --[[Anonymous function at line 12240]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
                [3] = u4
            --]]
            u84({
                ["SoundId"] = "rbxassetid://" .. ({ 7455224144, 7455246815, 7455224490 })[math.random(1, 3)],
                ["Parent"] = u105["Left Leg"],
                ["PlaybackSpeed"] = 1,
                ["Volume"] = 0.15,
                ["RollOffMaxDistance"] = u4
            }):Play()
        end
    },
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Animation"] = 17268859608,
    ["Stun"] = "Slowed"
},
["Magic Carpet"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1837365487",
            ["Volume"] = 0.5,
            ["TimePosition"] = 0.5,
            ["ParentTorso"] = true,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p1191, _, p1192) --[[Function name: Startup, line 12268]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1193 = script.carpet:Clone()
        v1193:SetAttribute("EmoteProperty", true)
        table.insert(p1191, v1193)
        p1192.Handle = v1193
        local v1194 = v1193.carpet
        v1194:SetAttribute("EmoteProperty", true)
        table.insert(p1191, v1194)
        p1192.md = v1194
        v1194.Part0 = u105.PrimaryPart
        v1194.Part1 = v1193
        v1194.Parent = u105.PrimaryPart
        v1193.Parent = u105
        p1192.handle = v1193
    end,
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Animation"] = 17268716692,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1
},
["Dribble"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1195, _, p1196) --[[Function name: Startup, line 12290]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1197 = script.basklektball:Clone()
        v1197:SetAttribute("EmoteProperty", true)
        table.insert(p1195, v1197)
        p1196.Handle = v1197
        local v1198 = v1197.basklektball
        v1198:SetAttribute("EmoteProperty", true)
        table.insert(p1195, v1198)
        p1196.md = v1198
        v1198.Part0 = u105.PrimaryPart
        v1198.Part1 = v1197
        v1198.Parent = u105.PrimaryPart
        v1197.Parent = u105
        p1196.handle = v1197
    end,
    ["Keyframes"] = {
        ["clap"] = function(p1199, _, _) --[[Anonymous function at line 12301]]
            --[[
            Upvalues:
                [1] = u4
            --]]
            shared.sfx({
                ["SoundId"] = "rbxassetid://14404844095",
                ["PlaybackSpeed"] = Random.new():NextNumber(0.9, 1.1),
                ["Parent"] = p1199.handle,
                ["RollOffMaxDistance"] = u4,
                ["Volume"] = 1
            }):Play()
        end
    },
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Infinite"] = true,
    ["Animation"] = 17268369862,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1
},
["Yummy Watermelon"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1200, _, p1201) --[[Function name: Startup, line 12326]]
        --[[
        Upvalues:
            [1] = u84
            [2] = u105
        --]]
        u84({
            ["SoundId"] = "rbxassetid://17268447339",
            ["Parent"] = u105.Head,
            ["Volume"] = 1,
            ["Looped"] = true
        }):Play()
        local v1202 = script.watermelon:Clone()
        v1202:SetAttribute("EmoteProperty", true)
        table.insert(p1200, v1202)
        p1201.Handle = v1202
        local v1203 = v1202.Watermelon
        v1203:SetAttribute("EmoteProperty", true)
        table.insert(p1200, v1203)
        p1201.md = v1203
        v1203.Part0 = u105["Right Arm"]
        v1202.Name = "Watermelon"
        v1203.Part1 = v1202
        v1203.Parent = u105["Right Arm"]
        v1202.Parent = u105
        p1201.handle = v1202
    end,
    ["HideWeapon"] = true,
    ["Looped"] = true,
    ["Infinite"] = true,
    ["Animation"] = 17268468485,
    ["Stun"] = "Freeze"
},
["Dry Lips"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9120086770",
            ["Volume"] = 0.25
        },
        {
            ["SoundId"] = "rbxassetid://9120087000",
            ["Volume"] = 0.25
        }
    },
    ["Startup"] = function(p1204, _, p1205) --[[Function name: Startup, line 12364]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1206 = script.tang:Clone()
        v1206:SetAttribute("EmoteProperty", true)
        table.insert(p1204, v1206)
        p1205.Handle = v1206
        local v1207 = v1206.Part
        v1207:SetAttribute("EmoteProperty", true)
        table.insert(p1204, v1207)
        p1205.md = v1207
        v1206.Name = "Part"
        v1207.Part0 = u105.Head
        v1207.Part1 = v1206
        v1207.Parent = u105.Head
        v1206.Parent = u105
    end,
    ["Animation"] = 104081288316829,
    ["StunAttribute"] = 1.5,
    ["Stun"] = "Slowed"
},
["Surrender"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17106985996",
            ["Volume"] = 0.85
        }
    },
    ["Startup"] = function(p1208, _, p1209) --[[Function name: Startup, line 12388]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1210 = script.surrender_Flag:Clone()
        v1210:SetAttribute("EmoteProperty", true)
        table.insert(p1208, v1210)
        p1209.Handle = v1210
        local v1211 = v1210.Handle
        v1211:SetAttribute("EmoteProperty", true)
        table.insert(p1208, v1211)
        p1209.md = v1211
        v1211.Name = "Pole"
        v1211.Part0 = u105["Right Arm"]
        v1211.Part1 = v1210.Pole
        v1211.Parent = u105["Right Arm"]
        v1210.Parent = u105
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 17107015056,
    ["Idle"] = 17107016598,
    ["IdleSound"] = {
        ["SoundId"] = "rbxassetid://17106985885",
        ["Volume"] = 0.35,
        ["Looped"] = true
    },
    ["Stun"] = "Slowed"
},
["Watermelon"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://17105975829",
            ["Volume"] = 0.065,
            ["Looped"] = true
        },
        [0.01] = {
            ["SoundId"] = "rbxassetid://1841061037",
            ["Volume"] = 0.3,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p1212, _, p1213) --[[Function name: Startup, line 12425]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1214 = script.Watermelon:Clone()
        v1214:SetAttribute("EmoteProperty", true)
        table.insert(p1212, v1214)
        p1213.Handle = v1214
        local v1215 = v1214.Handle
        v1215:SetAttribute("EmoteProperty", true)
        table.insert(p1212, v1215)
        p1213.md = v1215
        v1214.Name = "Watermelon"
        v1215.Part0 = u105["Right Arm"]
        v1215.Part1 = v1214
        v1215.Parent = u105["Right Arm"]
        v1214.Parent = u105
    end,
    ["HideWeapon"] = true,
    ["Animation"] = 17105983229,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["WATERMELON "] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://9045473815",
            ["Volume"] = 0.4,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p1216, _, p1217) --[[Function name: Startup, line 12450]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1218 = script.Watermelon2:Clone()
        v1218:SetAttribute("EmoteProperty", true)
        table.insert(p1216, v1218)
        p1217.Handle = v1218
        local v1219 = v1218.Handle
        v1219:SetAttribute("EmoteProperty", true)
        table.insert(p1216, v1219)
        p1217.md = v1219
        v1218.Name = "Watermelon"
        v1219.Part0 = u105.HumanoidRootPart
        v1219.Part1 = v1218
        v1219.Parent = u105.HumanoidRootPart
        v1218.Parent = u105
    end,
    ["Animation"] = 17137575195,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Log"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1220, _, p1221) --[[Function name: Startup, line 12469]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v1222 = script.Log:Clone()
        v1222:SetAttribute("EmoteProperty", true)
        table.insert(p1220, v1222)
        p1221.Handle = v1222
        local v1223 = v1222.Handle
        v1223:SetAttribute("EmoteProperty", true)
        table.insert(p1220, v1223)
        p1221.md = v1223
        v1222.Name = "Handle"
        v1223.Part0 = u105["Right Arm"]
        v1223.Part1 = v1222
        v1223.Parent = u105["Right Arm"]
        v1222.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://9120937669",
            ["Parent"] = u105.PrimaryPart,
            ["Volume"] = 0.5
        }):Play()
        u84({
            ["SoundId"] = "rbxassetid://9120823421",
            ["Parent"] = u105.PrimaryPart,
            ["Volume"] = 0.075,
            ["Looped"] = true
        }):Play()
    end,
    ["Keyframes"] = {
        ["clap"] = function() --[[Function name: clap, line 12493]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://15090365735",
                ["Parent"] = u105.PrimaryPart,
                ["Volume"] = 0.75
            }):Play()
        end
    },
    ["Infinite"] = true,
    ["Animation"] = 15090459593,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Rolling"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1224, _, p1225) --[[Function name: Startup, line 12512]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v1226 = script.Film:Clone()
        v1226:SetAttribute("EmoteProperty", true)
        table.insert(p1224, v1226)
        p1225.Handle = v1226
        local v1227 = v1226.Handle
        v1227:SetAttribute("EmoteProperty", true)
        table.insert(p1224, v1227)
        p1225.md = v1227
        v1226.Name = "Handle"
        v1227.Part0 = u105["Right Arm"]
        v1227.Part1 = v1226
        v1227.Parent = u105["Right Arm"]
        v1226.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://15310783637",
            ["Parent"] = v1226,
            ["Volume"] = 0.5,
            ["Looped"] = true
        }):Play()
    end,
    ["Keyframes"] = {
        ["claploop"] = function() --[[Function name: claploop, line 12530]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://15310800059",
                ["Parent"] = u105.PrimaryPart,
                ["Volume"] = 1.5
            }):Play()
        end
    },
    ["HideWeapon"] = true,
    ["Infinite"] = true,
    ["Animation"] = 15310866392,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Cook"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1228, _, p1229) --[[Function name: Startup, line 12550]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v1230 = script.Pan:Clone()
        v1230:SetAttribute("EmoteProperty", true)
        table.insert(p1228, v1230)
        p1229.Handle = v1230
        local v1231 = v1230.Handle
        v1231:SetAttribute("EmoteProperty", true)
        table.insert(p1228, v1231)
        p1229.md = v1231
        v1230.Name = "Handle"
        v1231.Part0 = u105["Left Arm"]
        v1231.Part1 = v1230
        v1231.Parent = u105["Left Arm"]
        v1230.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://15283317649",
            ["Parent"] = v1230,
            ["Looped"] = true
        }):Play()
        u84({
            ["SoundId"] = "rbxassetid://160247625",
            ["Parent"] = u105.PrimaryPart,
            ["Volume"] = 0.5
        }):Play()
    end,
    ["Keyframes"] = {
        ["clap"] = function() --[[Function name: clap, line 12573]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://15283317709",
                ["Parent"] = u105.PrimaryPart,
                ["Volume"] = 2
            }):Play()
        end
    },
    ["Infinite"] = true,
    ["Animation"] = 15283329867,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Coffee"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1232, _, p1233) --[[Function name: Startup, line 12592]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1234 = script.Coffee:Clone()
        v1234:SetAttribute("EmoteProperty", true)
        table.insert(p1232, v1234)
        p1233.Handle = v1234
        local v1235 = v1234.m6d
        v1235:SetAttribute("EmoteProperty", true)
        table.insert(p1232, v1235)
        p1233.md = v1235
        v1234.Name = "Handle"
        v1235.Part0 = u105["Left Arm"]
        v1235.Part1 = v1234
        v1235.Parent = u105["Left Arm"]
        v1234.Parent = u105
    end,
    ["Keyframes"] = {
        ["claploop"] = function() --[[Function name: claploop, line 12603]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://15487197007",
                ["Parent"] = u105.PrimaryPart,
                ["Volume"] = 1
            }):Play()
        end
    },
    ["Infinite"] = true,
    ["Animation"] = 15487200157,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Scooter"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17292925358",
            ["Volume"] = 0.1,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p1236, _, p1237) --[[Function name: Startup, line 12627]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1238 = script.Scooter:Clone()
        v1238:SetAttribute("EmoteProperty", true)
        table.insert(p1236, v1238)
        p1237.Handle = v1238
        local v1239 = v1238.Motor6D
        v1239:SetAttribute("EmoteProperty", true)
        table.insert(p1236, v1239)
        p1237.md = v1239
        v1239.Part0 = u105.PrimaryPart
        v1239.Part1 = v1238.Base
        v1239.Parent = u105.PrimaryPart
        v1238.Parent = u105
        local v1240 = u105:FindFirstChildOfClass("ForceField")
        local v1241 = (workspace:GetAttribute("GameStarted") or not workspace:GetAttribute("RankedOnes")) and true or false
        if v1240 and v1240:GetAttribute("Emote") then
            v1241 = false
        end
        if v1241 then
            local v1242 = Instance.new("BodyVelocity")
            v1242:SetAttribute("EmoteProperty", true)
            table.insert(p1236, v1242)
            p1237.BV = v1242
            v1242.Name = "moveme"
            v1242.MaxForce = Vector3.new(10000, 0, 10000)
            v1242:SetAttribute("Speed", 12)
            v1242:SetAttribute("Goto", 12)
            v1242:SetAttribute("RayCheck", true)
            v1242:SetAttribute("End", 1)
            v1242:SetAttribute("Fallout", 0.991)
            v1242.Parent = u105.PrimaryPart
        end
    end,
    ["Keyframes"] = {
        ["clap"] = function(u1243) --[[Function name: clap, line 12658]]
            --[[
            Upvalues:
                [1] = u92
                [2] = u84
                [3] = u105
            --]]
            task.delay(0.417, function() --[[Anonymous function at line 12659]]
                --[[
                Upvalues:
                    [1] = u1243
                    [2] = u92
                --]]
                if u1243.BV and u1243.BV.Parent then
                    local v1244 = u1243.BV
                    local v1245 = "Speed"
                    local v1246 = 45
                    local v1247 = -0.01
                    local v1248 = 0.01
                    local v1249
                    if v1248 or not v1247 then
                        v1249 = v1247
                        v1247 = v1248
                    else
                        v1249 = 1
                    end
                    if not (v1247 or v1249) then
                        v1249 = 0
                        v1247 = 1
                    end
                    v1244:SetAttribute(v1245, v1246 + u92:NextNumber(v1249, v1247))
                end
            end)
            u84({
                ["SoundId"] = "rbxassetid://17292932603",
                ["Parent"] = u105.PrimaryPart,
                ["Volume"] = 0.3
            }):Play()
        end
    },
    ["Infinite"] = true,
    ["Animation"] = 17292934579,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Skateboard"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15090263539",
            ["Volume"] = 0.825,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p1250, _, p1251) --[[Function name: Startup, line 12688]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1252 = script.Skateboard:Clone()
        v1252:SetAttribute("EmoteProperty", true)
        table.insert(p1250, v1252)
        p1251.Handle = v1252
        local v1253 = v1252.m6d
        v1253:SetAttribute("EmoteProperty", true)
        table.insert(p1250, v1253)
        p1251.md = v1253
        v1253.Name = "Handle"
        v1253.Part0 = u105.PrimaryPart
        v1253.Part1 = v1252.Handle
        v1253.Parent = u105.PrimaryPart
        v1252.Parent = u105
        local v1254 = u105:FindFirstChildOfClass("ForceField")
        local v1255 = (workspace:GetAttribute("GameStarted") or not workspace:GetAttribute("RankedOnes")) and true or false
        if v1254 and v1254:GetAttribute("Emote") then
            v1255 = false
        end
        if v1255 then
            local v1256 = Instance.new("BodyVelocity")
            v1256:SetAttribute("EmoteProperty", true)
            table.insert(p1250, v1256)
            p1251.BV = v1256
            v1256.Name = "moveme"
            v1256.MaxForce = Vector3.new(10000, 0, 10000)
            v1256:SetAttribute("Speed", 12)
            v1256:SetAttribute("Goto", 12)
            v1256:SetAttribute("RayCheck", true)
            v1256:SetAttribute("End", 1)
            v1256:SetAttribute("Fallout", 0.991)
            v1256.Parent = u105.PrimaryPart
        end
    end,
    ["Keyframes"] = {
        ["clap"] = function(u1257) --[[Function name: clap, line 12720]]
            --[[
            Upvalues:
                [1] = u92
                [2] = u84
                [3] = u105
            --]]
            task.delay(2.184, function() --[[Anonymous function at line 12721]]
                --[[
                Upvalues:
                    [1] = u1257
                    [2] = u92
                --]]
                if u1257.BV and u1257.BV.Parent then
                    local v1258 = u1257.BV
                    local v1259 = "Speed"
                    local v1260 = 45
                    local v1261 = -0.01
                    local v1262 = 0.01
                    local v1263
                    if v1262 or not v1261 then
                        v1263 = v1261
                        v1261 = v1262
                    else
                        v1263 = 1
                    end
                    if not (v1261 or v1263) then
                        v1263 = 0
                        v1261 = 1
                    end
                    v1258:SetAttribute(v1259, v1260 + u92:NextNumber(v1263, v1261))
                end
            end)
            u84({
                ["SoundId"] = "rbxassetid://15090244072",
                ["Parent"] = u105.PrimaryPart,
                ["Volume"] = 0.75
            }):Play()
        end
    },
    ["Infinite"] = true,
    ["Animation"] = 15090273850,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Pls"] = {
    ["Sounds"] = {},
    ["Startup"] = function(p1264, _, p1265) --[[Function name: Startup, line 12745]]
        --[[
        Upvalues:
            [1] = u105
            [2] = u84
        --]]
        local v1266 = script.Sign:Clone()
        v1266:SetAttribute("EmoteProperty", true)
        table.insert(p1264, v1266)
        p1265.Handle = v1266
        local v1267 = v1266.Handle
        v1267:SetAttribute("EmoteProperty", true)
        table.insert(p1264, v1267)
        p1265.md = v1267
        v1266.Name = "Handle"
        v1267.Part0 = u105["Left Arm"]
        v1267.Part1 = v1266
        v1267.Parent = u105["Left Arm"]
        v1266.Parent = u105
        u84({
            ["SoundId"] = "rbxassetid://9126280354",
            ["Parent"] = u105.PrimaryPart,
            ["Volume"] = 0.5
        }):Play()
    end,
    ["Keyframes"] = {
        ["clap"] = function() --[[Anonymous function at line 12762]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://15092688139",
                ["Parent"] = u105.PrimaryPart,
                ["Volume"] = 0.1
            }):Play()
        end,
        ["claploop"] = function() --[[Anonymous function at line 12770]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://15092688069",
                ["Parent"] = u105.PrimaryPart,
                ["Volume"] = 0.1
            }):Play()
        end,
        ["snap"] = function() --[[Anonymous function at line 12778]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://15092714389",
                ["Parent"] = u105.PrimaryPart,
                ["Volume"] = 0.1
            }):Play()
        end
    },
    ["Infinite"] = true,
    ["Animation"] = 15092699174,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Square Up"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://72334795012520",
            ["Volume"] = 1,
            ["Looped"] = false
        }
    },
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p1268) --[[Anonymous function at line 12803]]
            p1268:AdjustSpeed(0)
        end,
        ["armsinvis"] = function() --[[Anonymous function at line 12807]]
            --[[
            Upvalues:
                [1] = u105
            --]]
            for _, v1269 in pairs({ "Left Arm", "Right Arm" }) do
                local v1270 = u105:FindFirstChild(v1269)
                if v1270 then
                    v1270.Transparency = 1
                end
            end
        end,
        ["legsinvis"] = function() --[[Anonymous function at line 12816]]
            --[[
            Upvalues:
                [1] = u105
            --]]
            for _, v1271 in pairs({ "Left Leg", "Right Leg" }) do
                local v1272 = u105:FindFirstChild(v1271)
                if v1272 then
                    v1272.Transparency = 1
                end
            end
        end
    },
    ["Startup"] = function(p1273, _, _, _, _, p1274) --[[Function name: Startup, line 12826]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local u1275 = shared.cfolder({
            ["Name"] = "Freeze"
        }, 1.75)
        table.insert(p1273, u1275)
        u1275:SetAttribute("DontInterrupt", true)
        u1275:SetAttribute("NoStop", true)
        u1275:SetAttribute("EmoteProperty", true)
        if p1274 then
            p1274:GetPropertyChangedSignal("Parent"):Connect(function() --[[Anonymous function at line 12835]]
                --[[
                Upvalues:
                    [1] = u105
                --]]
                local v1276 = {
                    ["Name"] = "RestoreVisibility",
                    ["Parent"] = u105
                }
                shared.cfolder(v1276, 0.25)
            end)
        end
        task.delay(0, function() --[[Anonymous function at line 12842]]
            --[[
            Upvalues:
                [1] = u1275
                [2] = u105
            --]]
            u1275.Parent = u105
        end)
    end,
    ["Fix"] = true,
    ["HideWeapon"] = true,
    ["Animation"] = 95561134536060,
    ["Stun"] = "Slowed"
},
["Heartful Salute"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17097492489",
            ["Volume"] = 1,
            ["TimePosition"] = 0.1,
            ["Looped"] = false
        }
    },
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p1277) --[[Anonymous function at line 12864]]
            p1277:AdjustSpeed(0)
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17097486020,
    ["Stun"] = "Freeze"
},
["Juggler"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://121999038626924",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p1278, _, p1279) --[[Function name: Startup, line 12884]]
        --[[
        Upvalues:
            [1] = u65
            [2] = u105
        --]]
        for _, v1280 in pairs(script.Juggling:GetChildren()) do
            u65({
                ["cleanup"] = p1278,
                ["char"] = u105,
                ["object"] = v1280,
                ["part0"] = u105.Torso,
                ["part1"] = tostring(v1280),
                ["mind"] = p1279,
                ["parent"] = u105.Torso
            })
        end
    end,
    ["Animation"] = 119367166308066,
    ["Looped"] = true,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1
},
["Thinker"] = {
    ["Sounds"] = {
        [0] = {
            ["SoundId"] = "rbxassetid://15090345405",
            ["Volume"] = 1,
            ["Looped"] = false
        },
        [0.01] = {
            ["SoundId"] = "rbxassetid://1841319934",
            ["Volume"] = 0.65,
            ["Looped"] = true
        }
    },
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p1281) --[[Anonymous function at line 12921]]
            p1281:AdjustSpeed(0)
        end
    },
    ["Startup"] = function(p1282, _, p1283) --[[Function name: Startup, line 12926]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1284 = script.ThinkerRock:Clone()
        v1284:SetAttribute("EmoteProperty", true)
        table.insert(p1282, v1284)
        p1283.Handle = v1284
        local v1285 = v1284.Handle
        v1285:SetAttribute("EmoteProperty", true)
        table.insert(p1282, v1285)
        p1283.md = v1285
        v1284.Name = "Handle"
        v1285.Part0 = u105.PrimaryPart
        v1285.Part1 = v1284
        v1285.Parent = u105.PrimaryPart
        v1284.Parent = u105
    end,
    ["Animation"] = 15089930092,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Look!"] = {
    ["Sounds"] = {},
    ["Keyframes"] = {
        ["clap"] = function(_) --[[Anonymous function at line 12946]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u4
                [3] = u105
            --]]
            u84({
                ["SoundId"] = "rbxassetid://17086269758",
                ["RollOffMaxDistance"] = u4,
                ["Parent"] = u105.Head,
                ["Volume"] = 0.85
            }):Play()
        end
    },
    ["Infinite"] = true,
    ["Animation"] = 17086291067,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Munch"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15018666363",
            ["Volume"] = 1.5,
            ["Looped"] = false
        }
    },
    ["Startup"] = function(p1286, _, p1287) --[[Function name: Startup, line 12971]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1288 = script.Steak:Clone()
        v1288:SetAttribute("EmoteProperty", true)
        table.insert(p1286, v1288)
        p1287.Handle = v1288
        local v1289 = v1288.Handle
        v1289:SetAttribute("EmoteProperty", true)
        table.insert(p1286, v1289)
        p1287.md = v1289
        v1288.Name = "Handle"
        v1289.Name = "Handle"
        v1289.Part0 = u105["Left Arm"]
        v1289.Part1 = v1288
        v1289.Parent = u105["Left Arm"]
        local v1290 = v1288.Attachment
        v1290:SetAttribute("EmoteProperty", true)
        table.insert(p1286, v1290)
        p1287.att = v1290
        v1288.Parent = u105
    end,
    ["Keyframes"] = {
        ["end"] = function(p1291) --[[Anonymous function at line 12985]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u105
            --]]
            p1291.Handle["Meshes/steak2_Cube"].Transparency = 1
            p1291.att.Popcorn.Enabled = false
            task.delay(0.3, function() --[[Anonymous function at line 12989]]
                --[[
                Upvalues:
                    [1] = u84
                    [2] = u105
                --]]
                u84({
                    ["SoundId"] = "rbxassetid://9113414870",
                    ["Parent"] = u105.Head,
                    ["Volume"] = 1
                }):Play()
            end)
        end,
        ["start"] = function(p1292) --[[Anonymous function at line 12998]]
            p1292.att.Popcorn.Enabled = true
        end
    },
    ["Animation"] = 15018688063,
    ["Looped"] = false,
    ["Stun"] = "Slowed"
},
["Salt"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17086202883",
            ["Volume"] = 0.85,
            ["TimePosition"] = 0.2,
            ["Looped"] = false
        },
        {
            ["SoundId"] = "rbxassetid://14065053293",
            ["Volume"] = 0.4
        }
    },
    ["Startup"] = function(p1293, _, p1294) --[[Function name: Startup, line 13023]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1295 = Instance.new("Attachment")
        table.insert(p1293, v1295)
        v1295:SetAttribute("EmoteProperty", true)
        v1295.Parent = u105["Right Arm"]
        v1295.Position = Vector3.new(-0.407, -0.9, 0)
        local v1296 = script.Salt:Clone()
        v1296.Enabled = false
        v1296.Parent = v1295
        p1294.salt = v1296
    end,
    ["Keyframes"] = {
        ["end"] = function(p1297) --[[Anonymous function at line 13035]]
            p1297.salt.Enabled = false
        end,
        ["start"] = function(p1298) --[[Anonymous function at line 13039]]
            p1298.salt.Enabled = true
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 17086225519,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Smile"] = {
    ["Sounds"] = {
        [2] = {
            ["SoundId"] = "rbxassetid://15310427179",
            ["Volume"] = 1.5,
            ["Looped"] = false
        },
        [0.8] = {
            ["SoundId"] = "rbxassetid://12981981352",
            ["Volume"] = 0.35
        },
        [0] = {
            ["SoundId"] = "rbxassetid://12982203916",
            ["Volume"] = 0.5
        }
    },
    ["Startup"] = function(p1299, _, p1300) --[[Function name: Startup, line 13069]]
        --[[
        Upvalues:
            [1] = u84
            [2] = u105
        --]]
        u84({
            ["SoundId"] = "rbxassetid://7244593699",
            ["Parent"] = u105.PrimaryPart,
            ["Volume"] = 0.75
        }):Play()
        u84({
            ["SoundId"] = "rbxassetid://13726870246",
            ["Parent"] = u105.PrimaryPart,
            ["Volume"] = 0.75
        }):Play()
        local v1301 = script.Camera.Handle:Clone()
        v1301:SetAttribute("EmoteProperty", true)
        table.insert(p1299, v1301)
        p1300.camera = v1301
        local v1302 = v1301.Handle
        v1302:SetAttribute("EmoteProperty", true)
        table.insert(p1299, v1302)
        p1300.md = v1302
        v1301.Name = "Handle"
        v1302.Name = "Handle"
        v1302.Part0 = u105["Left Arm"]
        v1302.Part1 = v1301
        v1302.Parent = u105["Left Arm"]
        v1301.Parent = u105
        local v1303 = script.Camera.SmallHandle:Clone()
        v1303:SetAttribute("EmoteProperty", true)
        table.insert(p1299, v1303)
        p1300.picture = v1303
        local v1304 = v1303.SmallHandle
        v1304:SetAttribute("EmoteProperty", true)
        table.insert(p1299, v1304)
        p1300.md = v1304
        v1304.Part0 = u105["Right Arm"]
        v1304.Part1 = v1303
        v1304.Parent = u105["Right Arm"]
        v1303.Parent = u105
        for _, v1305 in pairs(p1300.picture.Photo:GetDescendants()) do
            if v1305:IsA("BasePart") or v1305:IsA("Decal") then
                v1305.Transparency = 1
            end
        end
    end,
    ["Keyframes"] = {
        ["flash"] = function(p1306) --[[Anonymous function at line 13106]]
            --[[
            Upvalues:
                [1] = u77
                [2] = u105
                [3] = u97
                [4] = u92
            --]]
            local v1307 = Instance.new("Attachment")
            u77:AddTag(v1307, "emotestuff" .. u105.Name)
            v1307.Parent = p1306.camera.Camera["Camera Low"].Lends
            game:GetService("Debris"):AddItem(v1307, 5)
            local v1308 = script.ImpactGlow:Clone()
            v1308.Parent = v1307
            shared.resizeparticle(v1308, u97(1, 1.2))
            v1308:Emit(1)
            local v1309 = shared.createlight
            local v1310 = {
                ["Position"] = v1307.WorldPosition,
                ["Color"] = Color3.new(1, 1, 1)
            }
            local v1311 = 7
            local v1312 = 10
            local v1313
            if v1312 or not v1311 then
                v1313 = v1311
                v1311 = v1312
            else
                v1313 = 1
            end
            if not (v1311 or v1313) then
                v1313 = 0
                v1311 = 1
            end
            v1310.Brightness = u92:NextNumber(v1313, v1311)
            local v1314 = 0.3
            local v1315 = 0.5
            local v1316
            if v1315 or not v1314 then
                v1316 = v1314
                v1314 = v1315
            else
                v1316 = 1
            end
            if not (v1314 or v1316) then
                v1316 = 0
                v1314 = 1
            end
            v1310.Fade = u92:NextNumber(v1316, v1314)
            local v1317 = 10
            local v1318 = 12
            local v1319
            if v1318 or not v1317 then
                v1319 = v1317
                v1317 = v1318
            else
                v1319 = 1
            end
            if not (v1317 or v1319) then
                v1319 = 0
                v1317 = 1
            end
            v1310.Range = u92:NextNumber(v1319, v1317)
            v1309(v1310)
        end,
        ["visible"] = function(p1320) --[[Anonymous function at line 13125]]
            for _, v1321 in pairs(p1320.picture.Photo:GetDescendants()) do
                if v1321:IsA("BasePart") or v1321:IsA("Decal") then
                    v1321.Transparency = 0
                end
            end
        end,
        ["end1"] = function(p1322) --[[Anonymous function at line 13133]]
            p1322.camera:Destroy()
        end,
        ["end2"] = function(p1323) --[[Anonymous function at line 13137]]
            p1323.picture:Destroy()
        end
    },
    ["HideWeapon"] = true,
    ["Animation"] = 15310466614,
    ["Looped"] = false,
    ["Stun"] = "Slowed"
},
["Score"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://14678100852",
            ["Volume"] = 1.25,
            ["Looped"] = false
        }
    },
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p1324) --[[Anonymous function at line 13158]]
            p1324:AdjustSpeed(0)
        end,
        ["score"] = function(p1325, _, _) --[[Anonymous function at line 13162]]
            --[[
            Upvalues:
                [1] = u77
            --]]
            local v1326 = nil
            for _, v1327 in pairs(u77:GetTagged("notepad")) do
                if v1327 ~= p1325.Handle and (v1327.pages.Position - p1325.Handle.pages.Position).magnitude <= 25 then
                    local v1328 = v1327:FindFirstChildWhichIsA("TextLabel", true)
                    if v1328 then
                        v1326 = v1328.Text
                    end
                end
            end
            local v1329 = p1325.Handle.pages.SurfaceGui
            v1329.TextLabel.Text = v1326 or math.random(-1, 10)
            v1329.Enabled = true
        end
    },
    ["Startup"] = function(p1330, _, p1331) --[[Function name: Startup, line 13178]]
        --[[
        Upvalues:
            [1] = u77
            [2] = u105
        --]]
        local v1332 = script.Notepad.Model:Clone()
        v1332:SetAttribute("EmoteProperty", true)
        table.insert(p1330, v1332)
        p1331.Handle = v1332
        u77:AddTag(v1332, "notepad")
        for _, v1333 in pairs(script.Notepad:GetChildren()) do
            if v1333:IsA("Motor6D") then
                local v1334 = v1333:Clone()
                v1334:SetAttribute("EmoteProperty", true)
                table.insert(p1330, v1334)
                p1331.md = v1334
                v1334.Part0 = u105["Left Arm"]
                v1334.Part1 = v1332[v1333.Name]
                v1334.Parent = u105["Left Arm"]
            end
        end
        v1332.Parent = u105
    end,
    ["Animation"] = 14678167232,
    ["Looped"] = false,
    ["Stun"] = "Slowed"
},
["Crowbar"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://14697227297",
            ["Volume"] = 1.5,
            ["TimePosition"] = 0,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p1335, _, p1336) --[[Function name: Startup, line 13209]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1337 = script.crowbar:Clone()
        v1337:SetAttribute("EmoteProperty", true)
        table.insert(p1335, v1337)
        p1336.Handle = v1337
        local v1338 = v1337.M6D
        v1338:SetAttribute("EmoteProperty", true)
        table.insert(p1335, v1338)
        p1336.md = v1338
        v1338.Name = "Handle"
        v1338.Part0 = u105["Left Arm"]
        v1338.Part1 = v1337.Handle
        v1338.Parent = u105["Left Arm"]
        v1337.Parent = u105
    end,
    ["Animation"] = 14697228259,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Popcorn"] = {
    ["HideWeapon"] = true,
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://15018377297",
            ["Volume"] = 3,
            ["TimePosition"] = 0,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p1339, _, p1340) --[[Function name: Startup, line 13235]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1341 = script.Popcorn:Clone()
        v1341:SetAttribute("EmoteProperty", true)
        table.insert(p1339, v1341)
        p1340.Handle = v1341
        local v1342 = v1341.Handle
        v1342:SetAttribute("EmoteProperty", true)
        table.insert(p1339, v1342)
        p1340.md = v1342
        v1341.Name = "Handle"
        v1342.Name = "Handle"
        v1342.Part0 = u105["Left Arm"]
        v1342.Part1 = v1341
        v1342.Parent = u105["Left Arm"]
        local v1343 = v1341.Attachment
        v1343.Popcorn.Enabled = true
        v1343:SetAttribute("EmoteProperty", true)
        table.insert(p1339, v1343)
        p1340.att = v1343
        v1343.Parent = u105["Right Arm"]
        v1341.Parent = u105
    end,
    ["Animation"] = 15018466007,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Mop"] = {
    ["HideWeapon"] = true,
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://14520228185",
            ["Volume"] = 0.9,
            ["TimePosition"] = 0,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p1344, _, p1345) --[[Function name: Startup, line 13266]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1346 = script.Mop.Handle:Clone()
        v1346:SetAttribute("EmoteProperty", true)
        table.insert(p1344, v1346)
        p1345.Handle = v1346
        local v1347 = script.Mop.M6D:Clone()
        v1347:SetAttribute("EmoteProperty", true)
        table.insert(p1344, v1347)
        p1345.md = v1347
        v1347.Name = "Handle"
        v1347.Part0 = u105["Left Arm"]
        v1347.Part1 = v1346
        v1347.Parent = u105["Left Arm"]
        v1346.Parent = u105
    end,
    ["Animation"] = 14520410356,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Bouncy"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://14659137741",
            ["Volume"] = 0.9,
            ["TimePosition"] = 0,
            ["Looped"] = true
        }
    },
    ["Startup"] = function(p1348, _, p1349) --[[Function name: Startup, line 13291]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1350 = script.Bounce.Sphere:Clone()
        v1350:SetAttribute("EmoteProperty", true)
        table.insert(p1348, v1350)
        p1349.Handle = v1350
        v1350.BrickColor = BrickColor.Random()
        local v1351 = v1350:FindFirstChildOfClass("Motor6D")
        v1351:SetAttribute("EmoteProperty", true)
        table.insert(p1348, v1351)
        p1349.md = v1351
        v1351.Name = "Sphere"
        v1351.Part0 = u105.PrimaryPart
        v1351.Part1 = v1350
        v1351.Parent = u105.PrimaryPart
        v1350.Parent = u105
    end,
    ["Fix"] = true,
    ["Animation"] = 14659143045,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Wiggle"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://1835606556",
            ["Volume"] = 0.3,
            ["TimePosition"] = 0.25,
            ["Looped"] = true
        }
    },
    ["Animation"] = 14495337027,
    ["Looped"] = true,
    ["Stun"] = "Slowed"
},
["Gleeful Jumping"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://109463610060222",
            ["Volume"] = 1,
            ["Looped"] = true
        }
    },
    ["Animation"] = 136460538117500,
    ["Looped"] = true,
    ["Stun"] = "Slowed",
    ["StunAttribute"] = 1.15
},
["Crazy"] = {
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://14492925439",
            ["Volume"] = 2.75,
            ["Looped"] = false
        }
    },
    ["Keyframes"] = {
        ["start"] = function(p1352, p1353) --[[Anonymous function at line 13351]]
            --[[
            Upvalues:
                [1] = u105
            --]]
            local v1354 = script.Confused:Clone()
            local v1355 = Instance.new("Weld")
            p1352.crazy = v1354
            p1352.particle = v1354.Attachment.Swirl
            for _, v1356 in pairs({ v1354, v1355 }) do
                v1356:SetAttribute("EmoteProperty", true)
                table.insert(p1353, v1356)
            end
            v1355.Parent = v1354
            v1355.Part0 = u105.PrimaryPart
            v1355.Part1 = v1354
            v1355.C0 = CFrame.new(0, 2.75, 0)
            v1354.Transparency = 1
            v1354.Parent = workspace.Thrown
            game.ReplicatedStorage.Replication:FireAllClients({
                ["Effect"] = "Rotate",
                ["Weld"] = v1355,
                ["Crazy"] = v1354
            })
        end,
        ["end"] = function(p1357, _) --[[Anonymous function at line 13376]]
            --[[
            Upvalues:
                [1] = u78
            --]]
            local v1358 = p1357.crazy
            local u1359 = p1357.particle
            v1358.Transparency = 0
            u78:Create(v1358, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                ["Transparency"] = 1
            }):Play()
            task.spawn(function() --[[Anonymous function at line 13385]]
                --[[
                Upvalues:
                    [1] = u1359
                --]]
                for _ = 1, 25 do
                    if not u1359.Parent then
                        break
                    end
                    local v1360 = {}
                    for _, v1361 in pairs(u1359.Transparency.Keypoints) do
                        local v1362 = NumberSequenceKeypoint.new
                        local v1363 = v1361.Time
                        local v1364 = v1361.Value * 1.1
                        local v1365 = v1361.Envelope
                        table.insert(v1360, v1362(v1363, v1364, v1365))
                    end
                    u1359.Transparency = NumberSequence.new(v1360)
                    task.wait()
                end
            end)
        end
    },
    ["Animation"] = 14494902453,
    ["Looped"] = false,
    ["Stun"] = "Slowed"
},
["Traditional Duel"] = {
    ["Keyframes"] = {
        ["ready"] = function(_, p1366) --[[Anonymous function at line 13407]]
            --[[
            Upvalues:
                [1] = u84
                [2] = u92
                [3] = u105
                [4] = u78
            --]]
            local v1367 = u84
            local v1368 = {
                ["SoundId"] = "rbxassetid://15502708435"
            }
            local v1369 = 1.9
            local v1370 = 2.1
            local v1371
            if v1370 or not v1369 then
                v1371 = v1369
                v1369 = v1370
            else
                v1371 = 1
            end
            if not (v1369 or v1371) then
                v1371 = 0
                v1369 = 1
            end
            v1368.Volume = u92:NextNumber(v1371, v1369)
            v1368.Parent = u105.Torso
            v1367(v1368):Play()
            for _, v1372 in pairs(p1366) do
                if typeof(v1372) == "Instance" and (v1372:IsA("Sound") and v1372.SoundId == "rbxassetid://1843699308") then
                    u78:Create(v1372, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                        ["Volume"] = 0
                    }):Play()
                end
            end
        end,
        ["shoot"] = function(u1373) --[[Anonymous function at line 13422]]
            for _, v1374 in pairs(u1373.Revolver.Shoot:GetChildren()) do
                v1374.Enabled = true
            end
            task.delay(0.05, function() --[[Anonymous function at line 13426]]
                --[[
                Upvalues:
                    [1] = u1373
                --]]
                u1373.Revolver.Shoot:Destroy()
            end)
        end,
        ["away"] = function(p1375) --[[Anonymous function at line 13431]]
            --[[
            Upvalues:
                [1] = u78
            --]]
            u78:Create(p1375.Revolver.Gun.Mesh, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                ["Scale"] = Vector3.new()
            }):Play()
        end
    },
    ["Startup"] = function(p1376, _, p1377) --[[Function name: Startup, line 13438]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1378 = script.Revolver:Clone()
        v1378:SetAttribute("EmoteProperty", true)
        table.insert(p1376, v1378)
        p1377[v1378.Name] = v1378
        local v1379 = v1378.Handle
        v1379:SetAttribute("EmoteProperty", true)
        table.insert(p1376, v1379)
        p1377.md = v1379
        v1378.Name = "Handle"
        v1379.Part0 = u105["Right Arm"]
        v1379.Part1 = v1378
        v1379.C0 = CFrame.new(0, -1, -0.01)
        v1379.C1 = CFrame.new(0, 0, 0)
        v1378:FindFirstChildOfClass("Weld").C0 = CFrame.new(-0.245002747, -0.67500329, 0.100135803, 1, 0, -0, 0, 0, 1, 0, -1, 0)
        v1379.Parent = u105["Right Arm"]
        v1378.Parent = u105
    end,
    ["Dual"] = {
        ["DoBoth"] = false,
        ["Dist"] = 16,
        ["NoRotate"] = 10.3,
        ["Callback"] = function(p1380, p1381, p1382, p1383) --[[Function name: Callback, line 13456]]
            --[[
            Upvalues:
                [1] = u84
            --]]
            local _, _ = u84({
                ["SoundId"] = "rbxassetid://15502708235",
                ["Parent"] = p1380.Torso,
                ["Volume"] = 1
            }):Play()
            local _, _ = u84({
                ["SoundId"] = "rbxassetid://15502708235",
                ["Parent"] = p1381.Torso,
                ["Volume"] = 1
            }):Play()
            local v1384, v1385 = u84({
                ["SoundId"] = "rbxassetid://1843699308",
                ["CFrame"] = CFrame.new(),
                ["Volume"] = 1
            })
            table.insert(p1382, v1384)
            v1384:Play()
            v1385.Parent = p1380.PrimaryPart
            v1385.WorldPosition = (p1380.PrimaryPart.CFrame * CFrame.new(0, 0, -p1383 / 2)).Position
            u84({
                ["SoundId"] = "rbxassetid://1842188393",
                ["Parent"] = v1385,
                ["Volume"] = 1
            }):Play()
        end
    },
    ["HideWeapon"] = true,
    ["FixRotation"] = true,
    ["Fix"] = true,
    ["Tag"] = "duelgun",
    ["Animation"] = 15502751480,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Clap Clap"] = {
    ["Keyframes"] = {
        ["clap"] = function(p1386, _, p1387) --[[Anonymous function at line 13499]]
            --[[
            Upvalues:
                [1] = u105
                [2] = u4
            --]]
            if not p1386.speed then
                p1386.speed = 1
            end
            local v1388 = p1386.speed
            p1387:AdjustSpeed((math.clamp(v1388, 1, 10)))
            p1386.speed = p1386.speed + 0.025
            shared.sfx({
                ["SoundId"] = "rbxassetid://9099667351",
                ["Parent"] = u105.PrimaryPart,
                ["RollOffMaxDistance"] = u4,
                ["Volume"] = 0.2
            }):Play()
        end,
        ["claploop"] = function() --[[Anonymous function at line 13515]]
            --[[
            Upvalues:
                [1] = u105
                [2] = u4
            --]]
            shared.sfx({
                ["SoundId"] = "rbxassetid://16038515606",
                ["Parent"] = u105.PrimaryPart,
                ["RollOffMaxDistance"] = u4,
                ["Volume"] = 0.2
            }):Play()
        end,
        ["snap"] = function() --[[Anonymous function at line 13524]]
            --[[
            Upvalues:
                [1] = u105
                [2] = u4
            --]]
            shared.sfx({
                ["SoundId"] = "rbxassetid://9099667351",
                ["Parent"] = u105.PrimaryPart,
                ["Volume"] = 0.2,
                ["RollOffMaxDistance"] = u4
            }):Play()
        end
    },
    ["Startup"] = function() --[[Function name: Startup, line 13534]] end,
    ["Dual"] = {
        ["DoBoth"] = false,
        ["Dist"] = 3.5,
        ["Callback"] = function(p1389, _, _, p1390) --[[Function name: Callback, line 13541]]
            --[[
            Upvalues:
                [1] = u84
            --]]
            local _, v1391 = u84({
                ["SoundId"] = "rbxassetid://14519690317",
                ["CFrame"] = CFrame.new(),
                ["Volume"] = 1.5
            })
            v1391.Parent = p1389.PrimaryPart
            v1391.WorldPosition = (p1389.PrimaryPart.CFrame * CFrame.new(0, 0, -p1390 / 2)).Position
        end
    },
    ["HideWeapon"] = true,
    ["Infinite"] = true,
    ["Tag"] = "ptycake",
    ["Animation"] = 16038562573,
    ["Looped"] = true,
    ["Stun"] = "Freeze"
},
["Rock Paper Scissor"] = {
    ["Keyframes"] = {
        ["show"] = function(_, p1392) --[[Anonymous function at line 13563]]
            --[[
            Upvalues:
                [1] = u105
                [2] = u78
            --]]
            local u1393 = script.RPS:Clone()
            u1393:SetAttribute("EmoteProperty", true)
            table.insert(p1392, u1393)
            u1393.ImageLabel.Image = ({ "rbxassetid://14519869178", "rbxassetid://14519869488", "rbxassetid://14519869787" })[math.random(1, 3)]
            u1393.Parent = u105["Left Arm"]
            u1393.Enabled = true
            task.delay(1, function() --[[Anonymous function at line 13575]]
                --[[
                Upvalues:
                    [1] = u78
                    [2] = u1393
                --]]
                u78:Create(u1393.ImageLabel, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                    ["Size"] = UDim2.new(0, 0, 0, 0)
                }):Play()
            end)
        end
    },
    ["Startup"] = function() --[[Function name: Startup, line 13583]] end,
    ["Dual"] = {
        ["DoBoth"] = false,
        ["Dist"] = 7.2,
        ["Callback"] = function(p1394, _, _, p1395) --[[Function name: Callback, line 13590]]
            --[[
            Upvalues:
                [1] = u84
            --]]
            local u1396, v1397 = u84({
                ["SoundId"] = "rbxassetid://14519690317",
                ["CFrame"] = CFrame.new(),
                ["Volume"] = 1.5
            })
            task.delay(0.15, function() --[[Anonymous function at line 13597]]
                --[[
                Upvalues:
                    [1] = u1396
                --]]
                if u1396.Parent then
                    u1396:Play()
                end
            end)
            v1397.Parent = p1394.PrimaryPart
            v1397.WorldPosition = (p1394.PrimaryPart.CFrame * CFrame.new(0, 0, -p1395 / 2)).Position
        end
    },
    ["Tag"] = "rps",
    ["Animation"] = 14519894954,
    ["Looped"] = false,
    ["Stun"] = "Freeze"
},
["Steel"] = {
    ["Dual"] = {
        ["DoBoth"] = false,
        ["Dist"] = 8,
        ["NoRotate"] = 18.3,
        ["Callback"] = function(u1398, _, p1399, _) --[[Function name: Callback, line 13619]]
            --[[
            Upvalues:
                [1] = u84
            --]]
            if not p1399.done then
                p1399.done = true
                local u1400 = require(u1398.CharacterHandler:WaitForChild("AnimationPlayer"))
                local v1402 = (function(p1401) --[[Anonymous function at line 13629]]
                    --[[
                    Upvalues:
                        [1] = u1400
                        [2] = u1398
                    --]]
                    return u1400.playAnimation(u1398:FindFirstChild("Humanoid"), p1401)
                end)(15963617746)
                v1402.Priority = Enum.AnimationPriority.Action4
                v1402:AdjustWeight(1)
                v1402:Play()
                table.insert(p1399, v1402)
                local v1403, v1404 = u84({
                    ["SoundId"] = "rbxassetid://15963599920",
                    ["CFrame"] = CFrame.new(),
                    ["Volume"] = 1
                })
                table.insert(p1399, v1403)
                v1403:Play()
                v1404.Parent = u1398["Left Arm"]
            end
        end
    },
    ["Startup"] = function() --[[Function name: Startup, line 13652]] end,
    ["Fix"] = true,
    ["HideWeapon"] = true,
    ["Tag"] = "steel",
    ["Animation"] = 15963602367,
    ["AnimationTwo"] = 15963617746,
    ["Stun"] = "Freeze"
},
["Friendly Hug"] = {
    ["Startup"] = function(_, _, _, _) --[[Function name: Startup, line 13665]]
        --[[
        Upvalues:
            [1] = u108
        --]]
        if not u108 then
        end
    end,
    ["Sounds"] = {
        {
            ["SoundId"] = "rbxassetid://17097669113",
            ["Volume"] = 1
        }
    },
    ["Dual"] = {
        ["DoBoth"] = false,
        ["NoRotate"] = 0,
        ["Freeze"] = false,
        ["Attach"] = true,
        ["RotateCheck"] = true,
        ["Callback"] = function(u1405, u1406, p1407, _) --[[Function name: Callback, line 13684]]
            --[[
            Upvalues:
                [1] = u77
                [2] = u108
                [3] = u110
                [4] = u84
            --]]
            if not p1407.done then
                p1407.done = true
                local u1408 = shared.cfolder({
                    ["Name"] = "RootAnchor"
                })
                u1408.Parent = u1405
                table.insert(p1407, u1408)
                u77:AddTag(u1408, "RemoveOnLeave" .. (u108 or (u110 or u1405)).Name)
                local u1409 = {}
                local u1410 = {}
                for _, v1411 in pairs({ u1405 }) do
                    local v1412 = v1411.DescendantAdded
                    table.insert(u1409, v1412:connect(function(p1413) --[[Anonymous function at line 13702]]
                        --[[
                        Upvalues:
                            [1] = u1410
                        --]]
                        if p1413:IsA("BasePart") then
                            p1413.CollisionGroup = "nocol"
                            local v1414 = u1410
                            table.insert(v1414, p1413)
                        end
                    end))
                    for _, u1415 in pairs(v1411:GetDescendants()) do
                        if u1415:IsA("BasePart") then
                            u1415.CollisionGroup = "nocol"
                            local u1416 = u1415:GetPropertyChangedSignal("CollisionGroup"):Connect(function() --[[Anonymous function at line 13713]]
                                --[[
                                Upvalues:
                                    [1] = u1415
                                --]]
                                if u1415.CollisionGroup ~= "nocol" then
                                    u1415.CollisionGroup = "nocol"
                                end
                            end)
                            local v1417 = u1416
                            table.insert(u1409, v1417)
                            task.delay(2, function() --[[Anonymous function at line 13720]]
                                --[[
                                Upvalues:
                                    [1] = u1416
                                --]]
                                if u1416 then
                                    return u1416:Disconnect()
                                end
                            end)
                            table.insert(u1410, u1415)
                        end
                    end
                end
                u1408:GetPropertyChangedSignal("Parent"):Connect(function() --[[Anonymous function at line 13731]]
                    --[[
                    Upvalues:
                        [1] = u1408
                        [2] = u1409
                        [3] = u1410
                    --]]
                    if not u1408.Parent then
                        for _, v1418 in pairs(u1409) do
                            v1418:Disconnect()
                        end
                        for _, v1419 in pairs(u1410) do
                            v1419.CollisionGroup = "playercol"
                        end
                    end
                end)
                u77:AddTag(u1408, u1406.Name .. "carry")
                local u1420 = require(u1405.CharacterHandler:WaitForChild("AnimationPlayer"))
                local u1421 = require(u1406.CharacterHandler:WaitForChild("AnimationPlayer"))
                local function u1423(p1422) --[[Anonymous function at line 13755]]
                    --[[
                    Upvalues:
                        [1] = u1421
                        [2] = u1406
                    --]]
                    return u1421.playAnimation(u1406:FindFirstChild("Humanoid"), p1422)
                end
                local v1424 = u1423(17097648428)
                v1424.Priority = Enum.AnimationPriority.Action4
                v1424:AdjustWeight(1)
                v1424:Play()
                table.insert(p1407, v1424)
                u1423(17096821069):AdjustWeight(0.01)
                local v1425 = v1424.Stopped
                table.insert(p1407, v1425:Once(function() --[[Anonymous function at line 13766]]
                    --[[
                    Upvalues:
                        [1] = u1423
                    --]]
                    u1423(17097627771):Stop()
                end))
                local v1427 = (function(p1426) --[[Anonymous function at line 13746]]
                    --[[
                    Upvalues:
                        [1] = u1420
                        [2] = u1405
                    --]]
                    return u1420.playAnimation(u1405:FindFirstChild("Humanoid"), p1426)
                end)(17097651485)
                v1427.Priority = Enum.AnimationPriority.Action4
                v1427:AdjustWeight(1)
                v1427:Play()
                table.insert(p1407, v1427)
                u84({
                    ["SoundId"] = "rbxassetid://17097669243",
                    ["Parent"] = u1406.Torso,
                    ["Volume"] = 1
                }):Play()
                game.ReplicatedStorage.Replication:FireAllClients({
                    ["Effect"] = "Smooth Grab",
                    ["CanBypass"] = true,
                    ["Hit"] = u1405,
                    ["StartOffset"] = u1405.PrimaryPart.CFrame,
                    ["From"] = u1406.PrimaryPart,
                    ["Offset"] = CFrame.new(0, 0, -3),
                    ["Anchor"] = u1408
                })
            end
        end
    },
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p1428) --[[Anonymous function at line 13795]]
            p1428:AdjustSpeed(0)
        end
    },
    ["HideWeapon"] = true,
    ["Fix"] = true,
    ["Looped"] = true,
    ["Tag"] = "hug1",
    ["Animation"] = 17097627771,
    ["AnimationTwo"] = 17097651485,
    ["Stun"] = "Freeze"
},
["Fresh Cut"] = {
    ["Startup"] = function(p1429, _, p1430, _) --[[Function name: Startup, line 13810]]
        --[[
        Upvalues:
            [1] = u108
            [2] = u84
            [3] = u105
        --]]
        if not u108 then
            u84({
                ["SoundId"] = "rbxassetid://17106578615",
                ["Parent"] = u105.PrimaryPart,
                ["Volume"] = 1
            }):Play()
            local v1431 = script.CHAIRBASE:Clone()
            v1431:SetAttribute("EmoteProperty", true)
            table.insert(p1429, v1431)
            p1430.Handle = v1431
            local v1432 = v1431.Handle
            v1432:SetAttribute("EmoteProperty", true)
            table.insert(p1429, v1432)
            p1430.md = v1432
            v1431.Name = "CHAIRBASE"
            v1432.Part0 = u105.PrimaryPart
            v1432.Part1 = v1431
            v1432.Parent = u105.PrimaryPart
            v1431.Parent = u105
            local v1433 = script.Clipper:Clone()
            v1433:SetAttribute("EmoteProperty", true)
            table.insert(p1429, v1433)
            p1430.Handle = v1433
            local v1434 = v1433.Handle
            v1434:SetAttribute("EmoteProperty", true)
            table.insert(p1429, v1434)
            p1430.md = v1434
            v1433.Name = "Clipper"
            v1434.Part0 = u105["Right Arm"]
            v1434.Part1 = v1433
            v1434.Parent = u105["Right Arm"]
            v1433.Parent = u105
        end
    end,
    ["Dual"] = {
        ["DoBoth"] = false,
        ["NoRotate"] = 0,
        ["Freeze"] = false,
        ["Attach"] = true,
        ["RotateCheck"] = true,
        ["Callback"] = function(u1435, u1436, p1437, _) --[[Function name: Callback, line 13844]]
            --[[
            Upvalues:
                [1] = u77
                [2] = u108
                [3] = u110
                [4] = u84
            --]]
            if not p1437.done then
                p1437.done = true
                local u1438 = shared.cfolder({
                    ["Name"] = "RootAnchor"
                })
                u1438.Parent = u1435
                table.insert(p1437, u1438)
                u77:AddTag(u1438, "RemoveOnLeave" .. (u108 or (u110 or u1435)).Name)
                local u1439 = {}
                local u1440 = {}
                for _, v1441 in pairs({ u1435 }) do
                    local v1442 = v1441.DescendantAdded
                    table.insert(u1439, v1442:connect(function(p1443) --[[Anonymous function at line 13861]]
                        --[[
                        Upvalues:
                            [1] = u1440
                        --]]
                        if p1443:IsA("BasePart") then
                            p1443.CollisionGroup = "nocol"
                            local v1444 = u1440
                            table.insert(v1444, p1443)
                        end
                    end))
                    for _, v1445 in pairs(v1441:GetDescendants()) do
                        if v1445:IsA("BasePart") then
                            v1445.CollisionGroup = "nocol"
                            table.insert(u1440, v1445)
                        end
                    end
                end
                u1438:GetPropertyChangedSignal("Parent"):Connect(function() --[[Anonymous function at line 13876]]
                    --[[
                    Upvalues:
                        [1] = u1438
                        [2] = u1439
                        [3] = u1440
                    --]]
                    if not u1438.Parent then
                        for _, v1446 in pairs(u1439) do
                            v1446:Disconnect()
                        end
                        for _, v1447 in pairs(u1440) do
                            v1447.CollisionGroup = "playercol"
                        end
                    end
                end)
                u77:AddTag(u1438, u1436.Name .. "barber")
                u84({
                    ["SoundId"] = "rbxassetid://17106662871",
                    ["Parent"] = u1435.Head,
                    ["TimePosition"] = 0.15,
                    ["Volume"] = 0.5
                }):Resume()
                local u1448 = require(u1435.CharacterHandler:WaitForChild("AnimationPlayer"))
                local function u1450(p1449) --[[Anonymous function at line 13898]]
                    --[[
                    Upvalues:
                        [1] = u1448
                        [2] = u1435
                    --]]
                    return u1448.playAnimation(u1435:FindFirstChild("Humanoid"), p1449)
                end
                local u1451 = require(u1436.CharacterHandler:WaitForChild("AnimationPlayer"))
                local function u1453(p1452) --[[Anonymous function at line 13906]]
                    --[[
                    Upvalues:
                        [1] = u1451
                        [2] = u1436
                    --]]
                    return u1451.playAnimation(u1436:FindFirstChild("Humanoid"), p1452)
                end
                local u1454 = u1453(17106475377)
                u1454.Priority = Enum.AnimationPriority.Action4
                u1454:AdjustWeight(1)
                u1454:Play(0)
                table.insert(p1437, u1454)
                u1453(17106466215):AdjustWeight(0.001)
                u1450(17106466215):AdjustWeight(0.001)
                local u1455 = false
                local v1456 = u1454.Stopped
                local function v1457() --[[Anonymous function at line 13920]]
                    --[[
                    Upvalues:
                        [1] = u1453
                        [2] = u1450
                        [3] = u1455
                    --]]
                    u1453(17106466215):Stop(0)
                    u1450(17106466215):Stop(0)
                    u1455 = true
                end
                table.insert(p1437, v1456:Once(v1457))
                task.delay(9.3, function() --[[Anonymous function at line 13926]]
                    --[[
                    Upvalues:
                        [1] = u1455
                        [2] = u1454
                        [3] = u1435
                    --]]
                    if not u1455 and u1454.IsPlaying then
                        for _, v1458 in pairs(u1435:GetDescendants()) do
                            if v1458:IsA("Accessory") and v1458:FindFirstChild("HairAttachment", true) then
                                v1458:Destroy()
                            end
                        end
                        local v1459 = game.ReplicatedStorage.Emotes.Hairs:GetChildren()
                        local v1460 = v1459[math.random(#v1459)]:Clone()
                        u1435.Humanoid:AddAccessory(v1460)
                    end
                end)
                local v1461 = u1450(17106484670)
                v1461.Priority = Enum.AnimationPriority.Action4
                v1461:AdjustWeight(1)
                v1461:Play(0)
                table.insert(p1437, v1461)
                game.ReplicatedStorage.Replication:FireAllClients({
                    ["Effect"] = "Smooth Grab",
                    ["CanBypass"] = true,
                    ["Hit"] = u1435,
                    ["StartOffset"] = u1435.PrimaryPart.CFrame,
                    ["From"] = u1436.PrimaryPart,
                    ["NoLook"] = true,
                    ["Offset"] = CFrame.new(-3, 0, 0),
                    ["Anchor"] = u1438
                })
            end
        end
    },
    ["Keyframes"] = {
        ["freeze"] = function(_, _, p1462) --[[Anonymous function at line 13959]]
            p1462:AdjustSpeed(0)
        end
    },
    ["HideWeapon"] = true,
    ["Fix"] = true,
    ["Looped"] = true,
    ["Tag"] = "barber1",
    ["Animation"] = 17106466215,
    ["AnimationTwo"] = 17106475377,
    ["Stun"] = "Freeze"
},
["Ping Pong"] = {
    ["Startup"] = function(p1463, _, p1464, _) --[[Function name: Startup, line 13974]]
        --[[
        Upvalues:
            [1] = u105
        --]]
        local v1465 = script.Racket:Clone()
        v1465:SetAttribute("EmoteProperty", true)
        table.insert(p1463, v1465)
        p1464.Handle = v1465
        local v1466 = v1465.m6d
        v1466:SetAttribute("EmoteProperty", true)
        table.insert(p1463, v1466)
        p1464.md = v1466
        v1466.Name = "Handle"
        v1466.Part0 = u105["Right Arm"]
        v1466.Part1 = v1465.Handle
        v1466.Parent = u105["Right Arm"]
        v1465.Parent = u105
    end,
    ["Dual"] = {
        ["DoBoth"] = false,
        ["NoRotate"] = 0,
        ["Attach"] = true,
        ["RotateCheck"] = true,
        ["Callback"] = function(u1467, u1468, p1469, _, p1470) --[[Function name: Callback, line 13989]]
            --[[
            Upvalues:
                [1] = u77
                [2] = u108
                [3] = u110
                [4] = u84
                [5] = u4
            --]]
            if not p1469.done then
                p1469.done = true
                local u1471 = shared.cfolder({
                    ["Name"] = "RootAnchor"
                })
                u1471.Parent = u1467
                table.insert(p1469, u1471)
                u77:AddTag(u1471, "RemoveOnLeave" .. (u108 or (u110 or u1467)).Name)
                local v1472 = script.TablePP:Clone()
                v1472:SetAttribute("EmoteProperty", true)
                table.insert(p1469, v1472)
                p1470.Handle = v1472
                v1472.Name = "Table"
                u77:AddTag(v1472, "RemoveOnLeave" .. u1468.Name)
                local v1473 = v1472.Table
                v1473:SetAttribute("EmoteProperty", true)
                table.insert(p1469, v1473)
                p1470.md = v1473
                v1473.Part0 = u1468.PrimaryPart
                v1473.Part1 = v1472
                v1473.Parent = u1468.PrimaryPart
                u77:AddTag(v1473, "RemoveOnLeave" .. u1468.Name)
                v1472.Parent = u1468
                u84({
                    ["SoundId"] = "rbxassetid://1837226630",
                    ["Parent"] = v1472,
                    ["Volume"] = 0.5
                }):Play()
                local u1474 = script.Ball:Clone()
                u1474:SetAttribute("EmoteProperty", true)
                table.insert(p1469, u1474)
                p1470.Handle = u1474
                u77:AddTag(u1474, "RemoveOnLeave" .. u1468.Name)
                local v1475 = u1474.Ball
                v1475:SetAttribute("EmoteProperty", true)
                table.insert(p1469, v1475)
                p1470.md = v1475
                v1475.Part0 = u1468.PrimaryPart
                v1475.Part1 = u1474
                v1475.Parent = u1468.PrimaryPart
                u77:AddTag(v1475, "RemoveOnLeave" .. u1468.Name)
                u1474.Parent = u1468
                local u1476 = {}
                local u1477 = {}
                for _, v1478 in pairs({ u1467 }) do
                    local v1479 = v1478.DescendantAdded
                    table.insert(u1476, v1479:connect(function(p1480) --[[Anonymous function at line 14031]]
                        --[[
                        Upvalues:
                            [1] = u1477
                        --]]
                        if p1480:IsA("BasePart") then
                            p1480.CollisionGroup = "nocol"
                            local v1481 = u1477
                            table.insert(v1481, p1480)
                        end
                    end))
                    for _, v1482 in pairs(v1478:GetDescendants()) do
                        if v1482:IsA("BasePart") then
                            v1482.CollisionGroup = "nocol"
                            table.insert(u1477, v1482)
                        end
                    end
                end
                u1471:GetPropertyChangedSignal("Parent"):Connect(function() --[[Anonymous function at line 14046]]
                    --[[
                    Upvalues:
                        [1] = u1471
                        [2] = u1476
                        [3] = u1477
                    --]]
                    if not u1471.Parent then
                        for _, v1483 in pairs(u1476) do
                            v1483:Disconnect()
                        end
                        for _, v1484 in pairs(u1477) do
                            v1484.CollisionGroup = "playercol"
                        end
                    end
                end)
                u77:AddTag(u1471, u1468.Name .. "barber")
                local u1485 = require(u1467.CharacterHandler:WaitForChild("AnimationPlayer"))
                local function u1487(p1486) --[[Anonymous function at line 14061]]
                    --[[
                    Upvalues:
                        [1] = u1485
                        [2] = u1467
                    --]]
                    return u1485.playAnimation(u1467:FindFirstChild("Humanoid"), p1486)
                end
                local u1488 = require(u1468.CharacterHandler:WaitForChild("AnimationPlayer"))
                local function u1490(p1489) --[[Anonymous function at line 14069]]
                    --[[
                    Upvalues:
                        [1] = u1488
                        [2] = u1468
                    --]]
                    return u1488.playAnimation(u1468:FindFirstChild("Humanoid"), p1489)
                end
                local v1491 = u1490(17108522793)
                local u1492 = 1
                local v1493 = v1491:GetMarkerReachedSignal("clap")
                local function v1495() --[[Anonymous function at line 14076]]
                    --[[
                    Upvalues:
                        [1] = u1474
                        [2] = u4
                        [3] = u1492
                        [4] = u1490
                        [5] = u1487
                    --]]
                    shared.sfx({
                        ["SoundId"] = ({ "rbxassetid://17108510911", "rbxassetid://17108511010", "rbxassetid://17108511153" })[math.random(1, 3)],
                        ["Volume"] = 0.75,
                        ["Parent"] = u1474,
                        ["RollOffMaxDistance"] = u4
                    }):Play()
                    local v1494 = u1492 + 0.005
                    u1492 = math.clamp(v1494, 1, 10)
                    u1490(17108522793):AdjustSpeed(u1492)
                    u1487(17108399691):AdjustSpeed(u1492)
                end
                table.insert(p1469, v1493:Connect(v1495))
                v1491.Priority = Enum.AnimationPriority.Action4
                v1491:AdjustWeight(1)
                v1491:Play(0)
                table.insert(p1469, v1491)
                u1490(17108345170):AdjustWeight(0.001)
                u1487(17108345170):AdjustWeight(0.001)
                local v1496 = u1487(17108399691)
                v1496.Priority = Enum.AnimationPriority.Action4
                v1496:AdjustWeight(1)
                v1496:Play(0)
                table.insert(p1469, v1496)
                game.ReplicatedStorage.Replication:FireAllClients({
                    ["Effect"] = "Smooth Grab",
                    ["CanBypass"] = true,
                    ["Hit"] = u1467,
                    ["StartOffset"] = u1467.PrimaryPart.CFrame,
                    ["From"] = u1468.PrimaryPart,
                    ["Offset"] = CFrame.new(0, 0, -11.304),
                    ["Anchor"] = u1471
                })
            end
        end
    },
    ["HideWeapon"] = true,
    ["Fix"] = true,
    ["Looped"] = true,
    ["Tag"] = "pingpong1",
    ["Animation"] = 17108345170,
    ["AnimationTwo"] = 17108399691,
    ["Stun"] = "Freeze"
}
}
