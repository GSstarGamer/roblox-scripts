local RunService = game:GetService("RunService")
local camera = workspace.CurrentCamera
local stuff = workspace.InnerWorldPlots.slender242666InnerWorld.Spawns

for _, v in pairs(stuff:GetChildren()) do 
    local mask = v:FindFirstChild("Mask")
    if mask then
        local eyes = mask:FindFirstChild("Eyes")
        if eyes and eyes:IsA("BasePart") then
            if eyes.BrickColor == BrickColor.new("Pastel light blue") then
                -- Create a drawing circle
                local dot = Drawing.new("Circle")
                dot.Color = Color3.fromRGB(100, 200, 255)
                dot.Radius = 6
                dot.Filled = true
                dot.Thickness = 2
                dot.Visible = true

                -- Update every frame
                RunService.RenderStepped:Connect(function()
                    if v and v:IsDescendantOf(workspace) then
                        local worldPos = v.WorldPivot.Position
                        local screenPos, onScreen = camera:WorldToViewportPoint(worldPos)
                        dot.Visible = onScreen
                        if onScreen then
                            dot.Position = Vector2.new(screenPos.X, screenPos.Y)
                        end
                    else
                        dot.Visible = false
                    end
                end)
            end
        end
    end
end
