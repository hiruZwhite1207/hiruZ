game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "APPLE HUB SYSTEM",
	Text = "Wait Loading...",
	Icon = "rbxassetid://15707987574",
})
local Players        = game:GetService("Players")
local TweenService   = game:GetService("TweenService")
local CoreGui        = game:GetService("CoreGui")
local ContentProvider = game:GetService("ContentProvider")

repeat task.wait() until game:IsLoaded() and Players.LocalPlayer

local plr = Players.LocalPlayer

local CONFIG = {
    Background  = "rbxassetid://16073585738",
    Logo        = "rbxassetid://133655530591187",
    IntroText   = "Preparing your HUB for an amazing experience.",
    LoadColor   = Color3.fromRGB(255, 51, 51),
}

local PreloadID = {
    "rbxassetid://4560909609",
    "rbxassetid://12187376174",
}

local INFO_DOT25_QUAD = TweenInfo.new(0.25, Enum.EasingStyle.Quad)

local function CoreGuiAdd(gui)
    repeat task.wait() until pcall(function()
        gui.Parent = CoreGui
    end)
end

local ScreenGui      = Instance.new("ScreenGui")
local INTRO          = Instance.new("CanvasGroup")
local Wallpaper      = Instance.new("ImageLabel")
local TextHolder     = Instance.new("Frame")
local Status         = Instance.new("TextLabel")
local SizeConstraint = Instance.new("UITextSizeConstraint")
local Gradient       = Instance.new("Frame")
local UIGradient     = Instance.new("UIGradient")
local Pattern        = Instance.new("ImageLabel")
local LogoHolder     = Instance.new("ImageLabel")
local LogoMain       = Instance.new("ImageLabel")
local AspectIntro    = Instance.new("UIAspectRatioConstraint")
local CornerIntro    = Instance.new("UICorner")
local Loader         = Instance.new("Frame")
local Content        = Instance.new("Frame")
local ContentStroke  = Instance.new("UIStroke")
local GlowImage      = Instance.new("ImageLabel")
local GlowAspect     = Instance.new("UIAspectRatioConstraint")

ScreenGui.IgnoreGuiInset   = true
ScreenGui.ResetOnSpawn     = false
ScreenGui.Name             = "LoadingUI"
ScreenGui.ScreenInsets     = Enum.ScreenInsets.DeviceSafeInsets
ScreenGui.ZIndexBehavior   = Enum.ZIndexBehavior.Sibling
CoreGuiAdd(ScreenGui)
ScreenGui.Enabled = true

INTRO.BorderSizePixel  = 0
INTRO.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
INTRO.AnchorPoint      = Vector2.new(0.5, 0.5)
INTRO.Size             = UDim2.new(0.455271, 0, 0.46186, 0)
INTRO.ZIndex           = 990
INTRO.Name             = "INTRO"
INTRO.Position         = UDim2.new(0.5, 0, 0.5, 0)
INTRO.GroupTransparency = 1
INTRO.Parent           = ScreenGui

Wallpaper.BorderSizePixel    = 0
Wallpaper.ScaleType          = Enum.ScaleType.Fit
Wallpaper.BackgroundColor3   = Color3.fromRGB(255, 255, 255)
Wallpaper.BackgroundTransparency = 1
Wallpaper.Position           = UDim2.new(-0.0361702, 0, -0.158876, 0)
Wallpaper.Name               = "Wallpaper"
Wallpaper.Image              = CONFIG.Background
Wallpaper.Size               = UDim2.new(1.11064, 0, 1.59989, 0)
Wallpaper.Parent             = INTRO

TextHolder.BorderSizePixel  = 0
TextHolder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextHolder.Size             = UDim2.new(1, 0, 0.284847, 0)
TextHolder.Position         = UDim2.new(0, 0, 0.753631, 0)
TextHolder.Name             = "TextHolder"
TextHolder.Parent           = INTRO

Status.TextWrapped      = true
Status.BorderSizePixel  = 0
Status.TextScaled       = true
Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status.BackgroundTransparency = 1
Status.FontFace         = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Italic)
Status.Position         = UDim2.new(0.120042, 0, 0.254529, 0)
Status.Name             = "Status"
Status.Size             = UDim2.new(0.79993, 0, 0.464041, 0)
Status.ZIndex           = 2
Status.TextColor3       = Color3.fromRGB(255, 255, 255)
Status.Text             = CONFIG.IntroText
Status.Parent           = TextHolder

SizeConstraint.MaxTextSize = 20
SizeConstraint.Parent      = Status

Gradient.BorderSizePixel    = 0
Gradient.BackgroundColor3   = Color3.fromRGB(255, 255, 255)
Gradient.Size               = UDim2.new(1, 0, 1, 0)
Gradient.Position           = UDim2.new(0, 0, 0, 0)
Gradient.Name               = "Gradient"
Gradient.Parent             = TextHolder

UIGradient.Transparency = NumberSequence.new{
    NumberSequenceKeypoint.new(0, 0.9),
    NumberSequenceKeypoint.new(1, 0.9)
}
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0,        Color3.fromRGB(157, 2,  31)),
    ColorSequenceKeypoint.new(0.466321, Color3.fromRGB(140, 6,  31)),
    ColorSequenceKeypoint.new(0.797927, Color3.fromRGB(47,  28, 31)),
    ColorSequenceKeypoint.new(1,        Color3.fromRGB(30,  30, 30))
}
UIGradient.Rotation = -90
UIGradient.Parent   = Gradient

Pattern.SliceCenter        = Rect.new(0, 256, 0, 256)
Pattern.ScaleType          = Enum.ScaleType.Tile
Pattern.BackgroundColor3   = Color3.fromRGB(255, 255, 255)
Pattern.BackgroundTransparency = 1
Pattern.ImageTransparency  = 0.6
Pattern.Position           = UDim2.new(0, 0, 0, 0)
Pattern.Name               = "Pattern"
Pattern.Image              = "rbxassetid://2151741365"
Pattern.TileSize           = UDim2.new(0, 250, 0, 250)
Pattern.Size               = UDim2.new(1, 0, 1, 0)
Pattern.ZIndex             = 0
Pattern.Parent             = Gradient

LogoHolder.BorderSizePixel     = 0
LogoHolder.ScaleType           = Enum.ScaleType.Fit
LogoHolder.BackgroundColor3    = Color3.fromRGB(255, 255, 255)
LogoHolder.BackgroundTransparency = 1
LogoHolder.ImageTransparency   = 0.5
LogoHolder.Position            = UDim2.new(0.271609, 0, 0.122057, 0)
LogoHolder.Name                = "Logo"
LogoHolder.Image               = CONFIG.Logo
LogoHolder.Size                = UDim2.new(0.453191, 0, 0.550704, 0)
LogoHolder.ZIndex              = 2
LogoHolder.Parent              = INTRO

LogoMain.BorderSizePixel     = 0
LogoMain.ScaleType           = Enum.ScaleType.Fit
LogoMain.BackgroundColor3    = Color3.fromRGB(255, 255, 255)
LogoMain.BackgroundTransparency = 1
LogoMain.Position            = UDim2.new(0.5, 0, 0.5, 0)
LogoMain.AnchorPoint         = Vector2.new(0.5, 0.5)
LogoMain.Name                = "Main"
LogoMain.Image               = CONFIG.Logo
LogoMain.Size                = UDim2.new(0.95, 0, 0.95, 0)
LogoMain.Parent              = LogoHolder

AspectIntro.AspectRatio = 2.08357
AspectIntro.Parent      = INTRO

CornerIntro.CornerRadius = UDim.new(0, 30)
CornerIntro.Parent       = INTRO

Loader.BorderSizePixel  = 0
Loader.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
Loader.Size             = UDim2.new(0.999948, 0, 0.0285966, 0)
Loader.Position         = UDim2.new(0, 0, 0.751682, 0)
Loader.Name             = "Loader"
Loader.ZIndex           = 2
Loader.Parent           = INTRO

Content.BorderSizePixel  = 0
Content.BackgroundColor3 = CONFIG.LoadColor
Content.Size             = UDim2.new(0, 0, 1, 0)
Content.Name             = "Content"
Content.Parent           = Loader

ContentStroke.Transparency = 0.5
ContentStroke.Parent       = Content

GlowImage.ImageColor3        = Color3.fromRGB(255, 46, 46)
GlowImage.BorderSizePixel    = 0
GlowImage.BackgroundColor3   = Color3.fromRGB(255, 255, 255)
GlowImage.BackgroundTransparency = 1
GlowImage.Position           = UDim2.new(1, 0, 0.5, 0)
GlowImage.AnchorPoint        = Vector2.new(0.5, 0.5)
GlowImage.Image              = "rbxassetid://16073652319"
GlowImage.Size               = UDim2.new(0.671884, 0, 15.1201, 0)
GlowImage.Parent             = Content

GlowAspect.AspectRatio = 1.49814
GlowAspect.Parent      = GlowImage

local function SetStatus(text)
    Status.Text = text
end

local function PlayIntro(onFinished)
    local preload_content = {}
    for _, v in pairs(ScreenGui:GetDescendants()) do
        table.insert(preload_content, v)
    end
    for _, v in pairs(PreloadID) do
        table.insert(preload_content, v)
    end

    ContentProvider:PreloadAsync(preload_content)

    TweenService:Create(INTRO, INFO_DOT25_QUAD, {GroupTransparency = 0}):Play()
    task.wait(0.3)

    local steps = {
        {text = "Wait Loading Function...",  progress = 0.2,  delay = 0.8},
        {text = "Check Game Support...",     progress = 0.55, delay = 0.8},
        {text = "Nguyen Minh Nhat Love Khanh Thyy <3", progress = 1.0, delay = 0.8},
    }

    for _, step in ipairs(steps) do
        SetStatus(step.text)
        TweenService:Create(
            Content,
            TweenInfo.new(0.6, Enum.EasingStyle.Quad),
            {Size = UDim2.new(step.progress, 0, 1, 0)}
        ):Play()
        task.wait(step.delay)
    end

    task.wait(0.3)
    TweenService:Create(INTRO, INFO_DOT25_QUAD, {GroupTransparency = 1}):Play()
    task.wait(0.4)

    ScreenGui:Destroy()

    if onFinished then
        onFinished()
    end
end

local function ShouldShowIntro()
    local CACHE_FILE = "LoadingIntroAP.txt"
    if isfile(CACHE_FILE) then
        local saved = tonumber(readfile(CACHE_FILE))
        if saved and (tick() - saved) < 86400 then
            return false
        end
    end
    writefile(CACHE_FILE, tostring(tick()))
    return true
end

local function MainScript()

    -- Notif System
    local Notif = {}
    local TS = game:GetService("TweenService")
    local HIDEUI = get_hidden_gui or gethui
    if syn and typeof(syn) == "table" and RenderWindow then syn.protect_gui = gethui end

    local function Hide_UI(gui)
        if HIDEUI then
            gui["Parent"] = HIDEUI()
        elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
            syn.protect_gui(gui)
            gui["Parent"] = CoreGui
        elseif CoreGui:FindFirstChild('RobloxGui') then
            gui["Parent"] = CoreGui.RobloxGui
        else
            gui["Parent"] = CoreGui
        end
    end

    local screen_gui = Instance.new("ScreenGui")
    Hide_UI(screen_gui)

    local frame = Instance.new("Frame")
    frame.AnchorPoint = Vector2.new(0.5, 0.949999988079071)
    frame.BackgroundColor3 = Color3.new(1, 1, 1)
    frame.BackgroundTransparency = 1
    frame.BorderColor3 = Color3.new(0, 0, 0)
    frame.BorderSizePixel = 0
    frame.Position = UDim2.new(0.5, 0, 0.954999983, 0)
    frame.Size = UDim2.new(0, 100, 0, 100)
    frame.Visible = true
    frame.Parent = screen_gui

    local uilist_layout = Instance.new("UIListLayout")
    uilist_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    uilist_layout.SortOrder = Enum.SortOrder.LayoutOrder
    uilist_layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    uilist_layout.Parent = frame

    function Notif.New(text, timee)
        local frame_2 = Instance.new("Frame")
        frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
        frame_2.BorderColor3 = Color3.new(0, 0, 0)
        frame_2.BorderSizePixel = 0
        frame_2.BackgroundTransparency = 1
        frame_2.Size = UDim2.new(0, 100, 0, 0)
        frame_2.Visible = true
        frame_2.Parent = frame

        local frame_3 = Instance.new("Frame")
        frame_3.AnchorPoint = Vector2.new(0.5, 1)
        frame_3.AutomaticSize = Enum.AutomaticSize.X
        frame_3.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
        frame_3.BackgroundTransparency = 0.20000000298023224
        frame_3.BorderColor3 = Color3.new(0, 0, 0)
        frame_3.Position = UDim2.new(0.5, 0, 1, 60)
        frame_3.Size = UDim2.new(0, 0, 0, 30)
        frame_3.Visible = true
        frame_3.Parent = frame_2

        local uicorner = Instance.new("UICorner")
        uicorner.CornerRadius = UDim.new(0, 6)
        uicorner.Parent = frame_3

        local uipadding = Instance.new("UIPadding")
        uipadding.PaddingBottom = UDim.new(0, 3)
        uipadding.PaddingLeft = UDim.new(0, 3)
        uipadding.PaddingRight = UDim.new(0, 3)
        uipadding.PaddingTop = UDim.new(0, 3)
        uipadding.Parent = frame_3

        local uistroke = Instance.new("UIStroke")
        uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        uistroke.Color = Color3.new(0.0313726, 0.0313726, 0.0313726)
        uistroke.Parent = frame_3

        local text_label = Instance.new("TextLabel")
        text_label.Font = Enum.Font.Gotham
        text_label.Text = text
        text_label.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
        text_label.TextSize = 14
        text_label.AutomaticSize = Enum.AutomaticSize.X
        text_label.BackgroundColor3 = Color3.new(1, 1, 1)
        text_label.BackgroundTransparency = 1
        text_label.BorderColor3 = Color3.new(0, 0, 0)
        text_label.BorderSizePixel = 0
        text_label.Size = UDim2.new(0, 0, 0, 24)
        text_label.Visible = true
        text_label.Parent = frame_3

        local uipadding_2 = Instance.new("UIPadding")
        uipadding_2.PaddingLeft = UDim.new(0, 5)
        uipadding_2.PaddingRight = UDim.new(0, 30)
        uipadding_2.Parent = text_label

        local text_button = Instance.new("TextButton")
        text_button.Font = Enum.Font.SourceSans
        text_button.Text = ""
        text_button.TextColor3 = Color3.new(0, 0, 0)
        text_button.TextSize = 14
        text_button.AnchorPoint = Vector2.new(1, 0.5)
        text_button.BackgroundColor3 = Color3.new(0, 0, 0)
        text_button.BackgroundTransparency = 1
        text_button.BorderColor3 = Color3.new(0, 0, 0)
        text_button.BorderSizePixel = 0
        text_button.Position = UDim2.new(1, 0, 0.5, 0)
        text_button.Size = UDim2.new(0, 24, 0, 24)
        text_button.Visible = true
        text_button.Parent = frame_3

        local uicorner_2 = Instance.new("UICorner")
        uicorner_2.CornerRadius = UDim.new(0, 5)
        uicorner_2.Parent = text_button

        local image_button = Instance.new("ImageButton")
        image_button.Image = "rbxassetid://3926305904"
        image_button.ImageColor3 = Color3.new(0.784314, 0.784314, 0.784314)
        image_button.ImageRectOffset = Vector2.new(924, 724)
        image_button.ImageRectSize = Vector2.new(36, 36)
        image_button.AnchorPoint = Vector2.new(0.5, 0.5)
        image_button.BackgroundTransparency = 1
        image_button.LayoutOrder = 3
        image_button.Position = UDim2.new(0.5, 0, 0.5, 0)
        image_button.Size = UDim2.new(0, 18, 0, 18)
        image_button.Visible = true
        image_button.ZIndex = 2
        image_button.Parent = text_button

        TS:Create(frame_3, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Position = UDim2.new(0.5, 0, 1, 0) }):Play()
        TS:Create(frame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 100, 0, 35) }):Play()

        local function close_notif()
            TS:Create(image_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { ImageTransparency = 1 }):Play()
            TS:Create(text_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
            TS:Create(text_label, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { TextTransparency = 1 }):Play()
            task.wait(.17)
            TS:Create(frame_3, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
            TS:Create(uistroke, TweenInfo.new(0.24, Enum.EasingStyle.Quint), { Transparency = 1 }):Play()
            task.wait(.05)
            TS:Create(frame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 100, 0, 0) }):Play()
            task.wait(.2)
            frame_2:Destroy()
        end

        text_button.MouseEnter:Connect(function()
            TS:Create(text_button, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 0.8 }):Play()
            TS:Create(image_button, TweenInfo.new(0.3, Enum.EasingStyle.Quint), { ImageColor3 = Color3.new(0.890196, 0.054902, 0.054902) }):Play()
        end)
        text_button.MouseLeave:Connect(function()
            TS:Create(text_button, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
            TS:Create(image_button, TweenInfo.new(0.3, Enum.EasingStyle.Quint), { ImageColor3 = Color3.new(0.784314, 0.784314, 0.784314) }):Play()
        end)
        text_button.MouseButton1Click:Connect(function()
            TS:Create(image_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { ImageTransparency = 1 }):Play()
            TS:Create(text_button, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
            TS:Create(text_label, TweenInfo.new(0.15, Enum.EasingStyle.Quint), { TextTransparency = 1 }):Play()
            task.wait(.17)
            TS:Create(frame_3, TweenInfo.new(0.25, Enum.EasingStyle.Quint), { BackgroundTransparency = 1 }):Play()
            TS:Create(uistroke, TweenInfo.new(0.24, Enum.EasingStyle.Quint), { Transparency = 1 }):Play()
            task.wait(.05)
            TS:Create(frame_2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), { Size = UDim2.new(0, 100, 0, 0) }):Play()
            task.wait(.2)
            frame_2:Destroy()
        end)
        image_button.MouseButton1Click:Connect(close_notif)
        task.delay(tonumber(timee) and timee or 10, close_notif)
    end

    -- MakeDraggable
    local UserInputService = game:GetService("UserInputService")
    local function MakeDraggable(topbarobject, object)
        local Dragging, DragInput, DragStart, StartPosition = nil, nil, nil, nil
        local function Update(input)
            local Delta = input.Position - DragStart
            object.Position = UDim2.new(
                StartPosition.X.Scale, StartPosition.X.Offset + Delta.X,
                StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y
            )
        end
        topbarobject.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                DragStart = input.Position
                StartPosition = object.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then Dragging = false end
                end)
            end
        end)
        topbarobject.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                DragInput = input
            end
        end)
        UserInputService.InputChanged:Connect(function(input)
            if input == DragInput and Dragging then Update(input) end
        end)
    end

    -- YtPr
    local function YtPr()
        local YoutubeGui = Instance.new("ScreenGui")
        local Frame = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local ImageLabel = Instance.new("ImageLabel")
        local UICorner_2 = Instance.new("UICorner")
        local TextLabel = Instance.new("TextLabel")
        local TextButton = Instance.new("TextButton")
        local UICorner_3 = Instance.new("UICorner")

        MakeDraggable(Frame, Frame)

        YoutubeGui.Name = "YoutubeGui"
        YoutubeGui.Parent = game.CoreGui
        YoutubeGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        Frame.Parent = YoutubeGui
        Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Frame.Position = UDim2.new(0.0937950909, 0, 0.497589529, 0)
        Frame.Size = UDim2.new(0.259740233, 0, 0.172176316, 0)
        UICorner.Parent = Frame

        ImageLabel.Parent = Frame
        ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageLabel.Position = UDim2.new(0.057500001, 0, 0.0700000003, 0)
        ImageLabel.Size = UDim2.new(0.295138925, 0, 0.850000024, 0)
        ImageLabel.Image = "http://www.roblox.com/asset/?id=84788566655539"
        UICorner_2.CornerRadius = UDim.new(0, 60)
        UICorner_2.Parent = ImageLabel

        TextLabel.Parent = Frame
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1
        TextLabel.BorderSizePixel = 0
        TextLabel.Position = UDim2.new(0.401250005, 0, 0.169999987, 0)
        TextLabel.Size = UDim2.new(0.534722269, 0, 0.310000002, 0)
        TextLabel.Font = Enum.Font.Highway
        TextLabel.Text = " Mio Herruto"
        TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.TextScaled = true
        TextLabel.TextSize = 14
        TextLabel.TextWrapped = true
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left
        TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom

        TextButton.Parent = Frame
        TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        TextButton.Position = UDim2.new(0.401250005, 0, 0.479999989, 0)
        TextButton.Size = UDim2.new(0.534722269, 0, 0.349999994, 0)
        TextButton.Font = Enum.Font.SourceSans
        TextButton.Text = "Subcribe"
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextScaled = true
        TextButton.TextSize = 14
        TextButton.TextWrapped = true
        UICorner_3.Parent = TextButton

        local uistroke2 = Instance.new("UIStroke", ImageLabel)
        uistroke2.Color = Color3.fromRGB(255, 0, 0)
        uistroke2.Thickness = 3

        game.Debris:AddItem(YoutubeGui, 30)
        TextButton.MouseButton1Click:Connect(function()
            game.Debris:AddItem(YoutubeGui, 0)
        end)
    end

    -- CreateSupportList
    local function CreateSupportList(list_game)
        local function RainbowText(text)
            spawn(function()
                local add = 10
                wait(1)
                local k = 1
                while k <= 255 do
                    text.TextColor3 = Color3.new(k/255, 0, 0)
                    k = k + add
                    wait()
                end
                while true do
                    k = 1
                    while k <= 255 do text.TextColor3 = Color3.new(255/255, k/255, 0) k=k+add wait() end
                    k = 1
                    while k <= 255 do text.TextColor3 = Color3.new(255/255-k/255, 255/255, 0) k=k+add wait() end
                    k = 1
                    while k <= 255 do text.TextColor3 = Color3.new(0, 255/255, k/255) k=k+add wait() end
                    k = 1
                    while k <= 255 do text.TextColor3 = Color3.new(0, 255/255-k/255, 255/255) k=k+add wait() end
                    k = 1
                    while k <= 255 do text.TextColor3 = Color3.new(k/255, 0, 255/255) k=k+add wait() end
                    k = 1
                    while k <= 255 do text.TextColor3 = Color3.new(255/255, 0, 255/255-k/255) k=k+add wait() end
                    k = 1
                    while k <= 255 do text.TextColor3 = Color3.new(255/255-k/255, 0, 0) k=k+add wait() end
                end
            end)
        end

        local Anh_Gai_Alimi = {
            "rbxassetid://6942501524","rbxassetid://7903531742","rbxassetid://7903522083",
            "rbxassetid://6409799523","rbxassetid://8881175113","rbxassetid://7584008919",
            "rbxassetid://6271530098","rbxassetid://7388383866","rbxassetid://7962732035",
            "rbxassetid://6842416695","rbxassetid://6576447146","rbxassetid://10171317457",
            "rbxassetid://10171317457","rbxassetid://8598068647","rbxassetid://8192162908",
            "rbxassetid://8677814109","rbxassetid://4597457883"
        }

        local SupportUi = Instance.new("ScreenGui")
        local BackImg = Instance.new("ImageLabel")
        local Black = Instance.new("Frame")
        local Tittle = Instance.new("TextLabel")
        local ScrollingFrame = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")
        local CloseButton = Instance.new("TextButton")

        MakeDraggable(BackImg, BackImg)

        SupportUi.Name = "SupportUi"
        SupportUi.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        SupportUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        BackImg.Name = "BackImg"
        BackImg.Parent = SupportUi
        BackImg.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
        BackImg.BorderSizePixel = 0
        BackImg.Position = UDim2.new(0.667782426, 0, 0.33959043, 0)
        BackImg.Size = UDim2.new(0, 375, 0, 375)
        BackImg.Image = Anh_Gai_Alimi[math.random(1, #Anh_Gai_Alimi)]

        Black.Name = "Black"
        Black.Parent = BackImg
        Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Black.BackgroundTransparency = 0.4
        Black.BorderSizePixel = 0
        Black.Size = UDim2.new(0, 375, 0, 375)

        Tittle.Name = "Tittle"
        Tittle.Parent = Black
        Tittle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Tittle.BackgroundTransparency = 1
        Tittle.Position = UDim2.new(0.0399999991, 0, 0, 0)
        Tittle.Size = UDim2.new(0, 265, 0, 39)
        Tittle.Font = Enum.Font.Highway
        Tittle.Text = "Game Suported:"
        Tittle.TextColor3 = Color3.fromRGB(255, 255, 255)
        Tittle.TextScaled = true
        Tittle.TextSize = 14
        Tittle.TextWrapped = true
        Tittle.TextXAlignment = Enum.TextXAlignment.Left

        ScrollingFrame.Parent = Black
        ScrollingFrame.Active = true
        ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ScrollingFrame.BackgroundTransparency = 1
        ScrollingFrame.BorderSizePixel = 0
        ScrollingFrame.Position = UDim2.new(0.0240000002, 0, 0.104000002, 0)
        ScrollingFrame.Size = UDim2.new(0, 366, 0, 329)
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 4, 0)
        ScrollingFrame.ScrollBarThickness = 10

        UIListLayout.Parent = ScrollingFrame
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

        CloseButton.Name = "CloseButton"
        CloseButton.Parent = Black
        CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        CloseButton.BackgroundTransparency = 1
        CloseButton.BorderSizePixel = 0
        CloseButton.Position = UDim2.new(0.896000028, 0, 0, 0)
        CloseButton.Size = UDim2.new(0, 39, 0, 39)
        CloseButton.Font = Enum.Font.FredokaOne
        CloseButton.Text = "X"
        CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        CloseButton.TextScaled = true
        CloseButton.TextSize = 14
        CloseButton.TextWrapped = true

        RainbowText(Tittle)
        RainbowText(CloseButton)

        for i, v in pairs(list_game) do
            local TextLabel2 = Instance.new("TextLabel")
            TextLabel2.Parent = ScrollingFrame
            TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel2.BackgroundTransparency = 1
            TextLabel2.Size = UDim2.new(0, 353, 0, 24)
            TextLabel2.Font = Enum.Font.Highway
            TextLabel2.Text = "- " .. v
            TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel2.TextScaled = true
            TextLabel2.TextSize = 14
            TextLabel2.TextTransparency = 0.5
            TextLabel2.TextWrapped = true
            TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
            RainbowText(TextLabel2)
        end

        CloseButton.MouseButton1Click:Connect(function()
            game.Debris:AddItem(SupportUi, 0)
        end)
    end

    -- CheckBlacklist
    local LocalPlayer = Players.LocalPlayer
    local function CheckBlacklist()
        local rawUrl = "https://raw.githubusercontent.com/AlexHerrySeek/AppleHub/refs/heads/main/blacklist.applehub"
        local success, blacklistData = pcall(function()
            return game:HttpGet(rawUrl)
        end)
        if not success or not blacklistData then return end
        local myUsername = LocalPlayer.Name
        local lines = string.split(blacklistData, "\n")
        for _, line in ipairs(lines) do
            line = string.gsub(line, "\r", "")
            if line ~= "" then
                local bannedUsername = string.match(line, "^%s*(.-)%s*$")
                if bannedUsername and myUsername == bannedUsername then
                    LocalPlayer:Kick("EN: Congratulations, you've been banned from the APPLE HUB script. If this is a mistake, please DM the admin on Discord.\n VI: Chúc mừng bạn đã bị banned khỏi script APPLE HUB, nếu đây là lầm lẫn hãy ib admin qua Zalo: 0394715753.")
                    return
                end
            end
        end
    end
    CheckBlacklist()

    -- Spam cooldown
    if _G.WebhookExecuted then
        Notif.New("Cooldown Spam Wait 15 Sec !", 15)
        return
    end
    _G.WebhookExecuted = true
    task.delay(15, function()
        _G.WebhookExecuted = false
    end)

    -- Webhook (Tối ưu hóa JSONEncode và báo lỗi Server)
    local cloudflare_worker_url = "https://plain-surf-084a.minhtientiny-631.workers.dev"

    local function getPlayerHWID()
        local hwid = "Unknown / Unsupported"
        pcall(function()
            if gethwid then
                hwid = gethwid()
            elseif syn and syn.get_hwid then
                hwid = syn.get_hwid()
            end
        end)
        return hwid
    end

    local function sendDataToMiddleman(executorName)
        local player = game.Players.LocalPlayer
        local placeId = game.PlaceId
        local jobId = game.JobId
        local username = player.Name
        local displayName = player.DisplayName
        local hwid = getPlayerHWID()

        local success, gameInfo = pcall(function()
            return game:GetService("MarketplaceService"):GetProductInfo(placeId)
        end)
        local gameName = success and gameInfo.Name or "Unknown Game"

        local data = {
            ["embeds"] = {{
                ["title"] = "✅ Script Execute!",
                ["color"] = 3447003,
                ["fields"] = {
                    {["name"] = "👤 Username", ["value"] = "```" .. username.. "```", ["inline"] = true},
                    {["name"] = "🏷️ Display Name", ["value"] = "```" .. displayName.. "```", ["inline"] = true},
                    {["name"] = "💻 Executor", ["value"] = "```" .. executorName.. "```", ["inline"] = true},
                    {["name"] = "🔑 HWID", ["value"] = "```" .. hwid .. "```", ["inline"] = false},
                    {["name"] = "🎮 Game", ["value"] = gameName .. " (" .. tostring(placeId) .. ")", ["inline"] = false},
                    {["name"] = "🔗 Job ID", ["value"] = "```" .. jobId .. "```", ["inline"] = false}
                },
                ["footer"] = {["text"] = "APPLE HUB | MIO HERRUTO"}
            }}
        }

        local HttpService = game:GetService("HttpService")
        local jsonData = HttpService:JSONEncode(data)
        local requestFunc = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
        
        if requestFunc then
            task.spawn(function()
                local reqSuccess, response = pcall(function()
                    return requestFunc({
                        Url = cloudflare_worker_url,
                        Method = "POST",
                        Headers = {["Content-Type"] = "application/json"},
                        Body = jsonData
                    })
                end)

                if reqSuccess and response and response.Body then
                    pcall(function()
                        local responseData = HttpService:JSONDecode(response.Body)
                        if responseData.success == false then
                            warn("APPLE HUB - Lỗi gửi Webhook [" .. tostring(responseData.code) .. "]: " .. tostring(responseData.error))
                        end
                    end)
                end
            end)
        else
            warn("Executor của bạn không hỗ trợ tính năng HTTP Request!")
        end
    end

    local executor = (getexecutorname and getexecutorname()) or (identifyexecutor and identifyexecutor()) or "Unknown"
    sendDataToMiddleman(executor)

    -- Game list
    local list = {
        [994732206] = "loadstring(game:HttpGet('https://vss.pandauth.com/virtual/file/8833f457c2c8465d'))()",
    }

    YtPr()
    CreateSupportList({"Blox Fruit"})

    local current_game_id = tonumber(game.GameId)
    if list[current_game_id] ~= nil then
        getgenv().messagebox = function() end
        loadstring(list[current_game_id])()
    else
        Notif.New("Game Not Support !", 15)
        Notif.New("Pls Join Discord: discord.gg/6mnF7haEjd !", 15)
    end

end -- end MainScript

if ShouldShowIntro() then
    PlayIntro(function()
        MainScript()
    end)
else
    ScreenGui:Destroy()
    MainScript()
end
