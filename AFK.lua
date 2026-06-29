local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local VirtualUser = game:GetService("VirtualUser")

-- 1. TỰ ĐỘNG KÍCH HOẠT ANTI-AFK (Chống bị văng game sau 20 phút)
Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

-- 2. TẠO GIAO DIỆN MÀN HÌNH ĐEN TRƯỢT TREO MÁY
local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "HiruzNightGrindingHub"
ScreenGui.IgnoreGuiInset = true -- Phủ kín cả thanh công cụ trên cùng của Roblox

-- Khung nền đen bao phủ 100% màn hình
local BlackFrame = Instance.new("Frame", ScreenGui)
BlackFrame.Size = UDim2.new(1, 0, 1, 0)
BlackFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BlackFrame.BackgroundTransparency = 1 -- Ban đầu để trong suốt để người dùng bấm nút kích hoạt
BlackFrame.Active = false

-- Nút bấm để BẬT/TẮT chế độ treo màn hình đen
local ToggleButton = Instance.new("TextButton", ScreenGui)
ToggleButton.Size = UDim2.new(0, 150, 0, 40)
ToggleButton.Position = UDim2.new(0.5, -75, 0.05, 0) -- Nằm ở chính giữa phía trên màn hình
ToggleButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.Font = Enum.Font.GothamBold
ToggleButton.TextSize = 14
ToggleButton.Text = "BẬT TREO MÀN ĐEN"

local UICorner = Instance.new("UICorner", ToggleButton)
UICorner.CornerRadius = UDim.new(0, 6)

-- 3. LOGIC XỬ LÝ BẬT/TẮT
local isBlackedOut = false

ToggleButton.MouseButton1Click:Connect(function()
    isBlackedOut = not isBlackedOut
    
    if isBlackedOut then
        -- Khi bật: Phủ đen toàn bộ, đẩy nút lên trên cùng để không bị che mất
        BlackFrame.BackgroundTransparency = 0
        BlackFrame.Active = true
        ToggleButton.Text = "TẮT MÀN ĐEN"
        ToggleButton.ZIndex = 10 -- Đảm bảo nút vẫn bấm được khi màn hình đen
    else
        -- Khi tắt: Trả lại màn hình game bình thường
        BlackFrame.BackgroundTransparency = 1
        BlackFrame.Active = false
        ToggleButton.Text = "BẬT TREO MÀN ĐEN"
    end
end)
