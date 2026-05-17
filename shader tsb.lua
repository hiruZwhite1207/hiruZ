--// TSB SUNSET CINEMATIC RTX V5
--// realistic sunset + warm sunlight + soft shadow + living world

local Lighting = game:GetService("Lighting")
local Terrain = workspace:FindFirstChildOfClass("Terrain")
local RunService = game:GetService("RunService")

pcall(function()

    ----------------------------------------------------
    -- CLEAR OLD EFFECTS
    ----------------------------------------------------

    for _,v in pairs(Lighting:GetChildren()) do
        if v:IsA("PostEffect")
        or v:IsA("Atmosphere")
        or v:IsA("Sky") then
            v:Destroy()
        end
    end

    ----------------------------------------------------
    -- SUNSET LIGHTING
    ----------------------------------------------------

    Lighting.Technology = Enum.Technology.Future
    Lighting.GlobalShadows = true
    Lighting.ShadowSoftness = 0.04

    -- hoàng hôn nhẹ
    Lighting.ClockTime = 17.4

    -- ánh sáng vàng đẹp
    Lighting.Brightness = 3
    Lighting.ExposureCompensation = 0.42

    Lighting.EnvironmentDiffuseScale = 0.75
    Lighting.EnvironmentSpecularScale = 1

    -- màu tối nhẹ cinematic
    Lighting.Ambient = Color3.fromRGB(38,36,42)
    Lighting.OutdoorAmbient = Color3.fromRGB(175,160,145)

    ----------------------------------------------------
    -- ATMOSPHERE
    ----------------------------------------------------

    local atm = Instance.new("Atmosphere")

    -- giảm sương
    atm.Density = 0.2
    atm.Haze = 0.6

    -- màu hoàng hôn
    atm.Color = Color3.fromRGB(255,220,185)
    atm.Decay = Color3.fromRGB(110,95,120)

    -- ánh sáng xuyên cây
    atm.Glare = 0.42
    atm.Offset = 0.01

    atm.Parent = Lighting

    ----------------------------------------------------
    -- SUN RAYS
    ----------------------------------------------------

    local rays = Instance.new("SunRaysEffect")
    rays.Intensity = 0.24
    rays.Spread = 0.98
    rays.Parent = Lighting

    ----------------------------------------------------
    -- BLOOM
    ----------------------------------------------------

    local bloom = Instance.new("BloomEffect")
    bloom.Intensity = 0.4
    bloom.Size = 72
    bloom.Threshold = 1.95
    bloom.Parent = Lighting

    ----------------------------------------------------
    -- DEPTH
    ----------------------------------------------------

    local dof = Instance.new("DepthOfFieldEffect")
    dof.FocusDistance = 60
    dof.InFocusRadius = 50
    dof.FarIntensity = 0.12
    dof.NearIntensity = 0.02
    dof.Parent = Lighting

    ----------------------------------------------------
    -- COLOR CORRECTION
    ----------------------------------------------------

    local cc = Instance.new("ColorCorrectionEffect")

    -- vàng nhẹ sunset
    cc.TintColor = Color3.fromRGB(255,235,215)

    cc.Contrast = 0.32
    cc.Brightness = 0.05
    cc.Saturation = 0.04

    cc.Parent = Lighting

    ----------------------------------------------------
    -- SKYBOX
    ----------------------------------------------------

    local sky = Instance.new("Sky")

    sky.SkyboxBk = "rbxassetid://6444884337"
    sky.SkyboxDn = "rbxassetid://6444884785"
    sky.SkyboxFt = "rbxassetid://6444884337"
    sky.SkyboxLf = "rbxassetid://6444884337"
    sky.SkyboxRt = "rbxassetid://6444884337"
    sky.SkyboxUp = "rbxassetid://6412503613"

    sky.SunAngularSize = 22
    sky.StarCount = 0

    sky.Parent = Lighting

    ----------------------------------------------------
    -- WATER REALISM
    ----------------------------------------------------

    if Terrain then

        Terrain.WaterColor = Color3.fromRGB(55,85,110)

        Terrain.WaterTransparency = 0.08
        Terrain.WaterReflectance = 0.48

        Terrain.WaterWaveSize = 0.24
        Terrain.WaterWaveSpeed = 14
    end

    ----------------------------------------------------
    -- WORLD MATERIALS
    ----------------------------------------------------

    for _,obj in pairs(workspace:GetDescendants()) do

        if obj:IsA("BasePart") then

            local n = string.lower(obj.Name)

            ------------------------------------------------
            -- TREES
            ------------------------------------------------

            if string.find(n,"tree")
            or string.find(n,"leaf")
            or string.find(n,"bush") then

                obj.Material = Enum.Material.LeafyGrass
                obj.CastShadow = true

                obj.Color = obj.Color:Lerp(
                    Color3.fromRGB(
                        math.random(65,95),
                        math.random(100,145),
                        math.random(55,80)
                    ),
                    0.18
                )

                obj.Reflectance = 0.01
            end

            ------------------------------------------------
            -- WOOD
            ------------------------------------------------

            if string.find(n,"wood")
            or string.find(n,"log") then

                obj.Material = Enum.Material.Wood
                obj.CastShadow = true
            end

            ------------------------------------------------
            -- GROUND REFLECTION
            ------------------------------------------------

            if obj.Material == Enum.Material.Concrete
            or obj.Material == Enum.Material.Asphalt then

                obj.Reflectance = 0.04

            end
        end
    end

    ----------------------------------------------------
    -- WIND SYSTEM
    ----------------------------------------------------

    local t = 0

    RunService.RenderStepped:Connect(function(dt)

        t += dt * 1.3

        for _,obj in pairs(workspace:GetDescendants()) do

            if obj:IsA("BasePart") then

                local n = string.lower(obj.Name)

                if string.find(n,"leaf")
                or string.find(n,"bush") then

                    local sway =
                        math.sin(t + obj.Position.X * 0.04) * 0.002

                    obj.CFrame =
                        obj.CFrame *
                        CFrame.Angles(0,sway,0)
                end
            end
        end

        -- ánh sáng thay đổi nhẹ cinematic
        Lighting.ExposureCompensation =
            0.42 + math.sin(t * 0.15) * 0.01
    end)

end)

print("SUNSET RTX ENABLED ")
