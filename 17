--// hiruZ 🌴 Auto Chest V4
--// Hidden Chest Fix + Anti AFK + Anti Kick

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local VirtualUser = game:GetService("VirtualUser")

local plr = Players.LocalPlayer

getgenv().AutoChest = false
getgenv().Collected = {}

--// Anti AFK 💤
plr.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

--// Anti Kick 🚫
local mt = getrawmetatable(game)
local old = mt.__namecall

setreadonly(mt,false)

mt.__namecall = newcclosure(function(self,...)

    local method = getnamecallmethod()
    local args = {...}

    if tostring(method) == "Kick" then
        return nil
    end

    return old(self,...)
end)

setreadonly(mt,true)

--// Character
local function HRP()
    local char = plr.Character or plr.CharacterAdded:Wait()
    return char:WaitForChild("HumanoidRootPart")
end

--// UI
local gui = Instance.new("ScreenGui")
pcall(function()
    gui.Parent = game.CoreGui
end)

gui.Name = "hiruZ"
gui.ResetOnSpawn = false

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0,205,0,92)
main.Position = UDim2.new(0.72,0,0.2,0)
main.BackgroundColor3 = Color3.fromRGB(10,10,10)
main.BorderSizePixel = 0

Instance.new("UICorner", main).CornerRadius = UDim.new(0,14)

local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1,0,0,26)
title.BackgroundTransparency = 1
title.Text = "hiruZ"
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.TextColor3 = Color3.fromRGB(255,255,255)

local toggle = Instance.new("TextButton", main)
toggle.Size = UDim2.new(0,165,0,30)
toggle.Position = UDim2.new(0.1,0,0.38,0)
toggle.BackgroundColor3 = Color3.fromRGB(30,30,30)
toggle.Text = "Auto Chest : OFF"
toggle.Font = Enum.Font.GothamBold
toggle.TextSize = 13
toggle.TextColor3 = Color3.fromRGB(255,255,255)

Instance.new("UICorner", toggle).CornerRadius = UDim.new(0,9)

local hop = Instance.new("TextButton", main)
hop.Size = UDim2.new(0,165,0,24)
hop.Position = UDim2.new(0.1,0,0.73,0)
hop.BackgroundColor3 = Color3.fromRGB(22,22,22)
hop.Text = "Hop Server"
hop.Font = Enum.Font.GothamBold
hop.TextSize = 12
hop.TextColor3 = Color3.fromRGB(255,255,255)

Instance.new("UICorner", hop).CornerRadius = UDim.new(0,9)

--// Drag
local UIS = game:GetService("UserInputService")

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart

    main.Position = UDim2.new(
        startPos.X.Scale,
        startPos.X.Offset + delta.X,
        startPos.Y.Scale,
        startPos.Y.Offset + delta.Y
    )
end

main.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then

        dragging = true
        dragStart = input.Position
        startPos = main.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

main.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

UIS.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

--// Hidden chest finder 👀
local function GetChest()

    local nearest = nil
    local dist = math.huge

    for _,v in pairs(workspace:GetDescendants()) do

        if string.find(v.Name:lower(),"chest") then

            local pos

            -- part chest
            if v:IsA("BasePart") then
                pos = v.Position
            end

            -- model chest
            if v:IsA("Model") then

                if v.PrimaryPart then
                    pos = v.PrimaryPart.Position
                else
                    local part = v:FindFirstChildWhichIsA("BasePart",true)

                    if part then
                        pos = part.Position
                    end
                end
            end

            if pos and not getgenv().Collected[v] then

                local mag = (HRP().Position - pos).Magnitude

                if mag < dist then
                    dist = mag

                    nearest = {
                        obj = v,
                        pos = pos
                    }
                end
            end
        end
    end

    return nearest
end

--// Instant TP ⚡
local function TP(pos)

    local hrp = HRP()

    hrp.CFrame = CFrame.new(pos)

    hrp.AssemblyLinearVelocity = Vector3.zero
    hrp.AssemblyAngularVelocity = Vector3.zero
end

--// Toggle
toggle.MouseButton1Click:Connect(function()

    getgenv().AutoChest = not getgenv().AutoChest

    if getgenv().AutoChest then

        toggle.Text = "Auto Chest : ON"
        toggle.BackgroundColor3 = Color3.fromRGB(0,170,255)

    else

        toggle.Text = "Auto Chest : OFF"
        toggle.BackgroundColor3 = Color3.fromRGB(30,30,30)
    end
end)

--// Hop
hop.MouseButton1Click:Connect(function()
    TeleportService:Teleport(game.PlaceId, plr)
end)

--// Auto Chest Loop 💰
task.spawn(function()

    while task.wait(0.05) do

        pcall(function()

            if getgenv().AutoChest then

                local chest = GetChest()

                if chest then

                    TP(chest.pos + Vector3.new(0,2,0))

                    task.wait(0.12)

                    getgenv().Collected[chest.obj] = true

                else
                    table.clear(getgenv().Collected)
                end
            end
        end)
    end
end)
