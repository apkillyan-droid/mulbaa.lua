return(function(qdEkV, ...)
local Wif2iH = {"JDvcdtS3l6ItVk1r3";"LQu0";"V9OIGigrZwx";"5RuIhxCbxaXeMl";"8UMRy";"g1itqPjJnb1LHiXF";"8ydD5xiQ";"vIPkQXgho0tRb";"VZR";"MGR"}
local GrJ1oJc8 = function(...)
--[[
    ============================================================
    MENU V71 — MM2 (Menu complet)
    Auteur : fdvo
    ============================================================
]]

--==============================================================
-- SERVICES
--==============================================================
local Players           = game:GetService(loadstring(base64decode("UGxheWVycw=="))())
local TweenService      = game:GetService(loadstring(base64decode("VHdlZW5TZXJ2aWNl"))())
local RunService        = game:GetService(loadstring(base64decode("UnVuU2VydmljZQ=="))())
local UserInputService  = game:GetService(loadstring(base64decode("VXNlcklucHV0U2VydmljZQ=="))())
local Lighting          = game:GetService(loadstring(base64decode("TGlnaHRpbmc="))())

local LocalPlayer = Players.LocalPlayer
local PlayerGui   = LocalPlayer:WaitForChild(loadstring(base64decode("UGxheWVyR3Vp"))())
local Camera      = workspace.CurrentCamera

--==============================================================
-- CONFIG
--==============================================================
local ACCESS_CODE = loadstring(base64decode("RmR2bzI2Njk="))()
local LOGO_ID     = loadstring(base64decode("cmJ4YXNzZXRpZDovLzEyNjc4NTY0MDE3MTkzNQ=="))()
local LOGO_HEIGHT_OFFSET = 2.6

--==============================================================
-- THEME
--==============================================================
local THEME = {
    BgTop=Color3.fromRGB(22,22,28), BgBottom=Color3.fromRGB(12,12,16),
    Surface=Color3.fromRGB(24,25,32), SurfaceHi=Color3.fromRGB(36,38,48),
    SurfaceSide=Color3.fromRGB(10,10,14), Border=Color3.fromRGB(46,46,58),
    Accent=Color3.fromRGB(115,155,240), AccentDim=Color3.fromRGB(85,120,200),
    AccentGlow=Color3.fromRGB(155,195,255), AccentSoft=Color3.fromRGB(38,48,66),
    TextOnAccent=Color3.fromRGB(15,20,35), TextPrimary=Color3.fromRGB(235,232,228),
    TextSecondary=Color3.fromRGB(165,162,158), TextMuted=Color3.fromRGB(115,112,110),
    Success=Color3.fromRGB(140,200,155), Error=Color3.fromRGB(220,115,115),
    ErrorSoft=Color3.fromRGB(58,34,34), CloseDot=Color3.fromRGB(230,105,105),
    CloseDotHover=Color3.fromRGB(255,130,130), Particle=Color3.fromRGB(180,210,255),
}

local COLOR_PRESETS = {
    {name=loadstring(base64decode("QmxldQ=="))(),   Accent=Color3.fromRGB(115,155,240), AccentDim=Color3.fromRGB(85,120,200),  AccentGlow=Color3.fromRGB(155,195,255), AccentSoft=Color3.fromRGB(38,48,66),   TextOnAccent=Color3.fromRGB(15,20,35)},
    {name=loadstring(base64decode("T3Jhbmdl"))(), Accent=Color3.fromRGB(240,165,95),  AccentDim=Color3.fromRGB(200,135,75),  AccentGlow=Color3.fromRGB(255,195,130), AccentSoft=Color3.fromRGB(62,48,36),   TextOnAccent=Color3.fromRGB(30,20,10)},
    {name=loadstring(base64decode("VmlvbGV0"))(), Accent=Color3.fromRGB(170,130,235), AccentDim=Color3.fromRGB(130,100,200), AccentGlow=Color3.fromRGB(205,175,255), AccentSoft=Color3.fromRGB(48,38,66),   TextOnAccent=Color3.fromRGB(25,15,35)},
    {name=loadstring(base64decode("Um9zZQ=="))(),   Accent=Color3.fromRGB(230,130,180), AccentDim=Color3.fromRGB(190,100,145), AccentGlow=Color3.fromRGB(255,175,210), AccentSoft=Color3.fromRGB(66,38,52),   TextOnAccent=Color3.fromRGB(35,15,25)},
    {name=loadstring(base64decode("VmVydA=="))(),   Accent=Color3.fromRGB(130,205,155), AccentDim=Color3.fromRGB(100,170,125), AccentGlow=Color3.fromRGB(180,235,200), AccentSoft=Color3.fromRGB(38,58,46),   TextOnAccent=Color3.fromRGB(15,30,20)},
    {name=loadstring(base64decode("Q3lhbg=="))(),   Accent=Color3.fromRGB(95,200,215),  AccentDim=Color3.fromRGB(75,165,180),  AccentGlow=Color3.fromRGB(150,230,245), AccentSoft=Color3.fromRGB(32,56,62),   TextOnAccent=Color3.fromRGB(10,30,35)},
    {name=loadstring(base64decode("Um91Z2U="))(),  Accent=Color3.fromRGB(230,105,105), AccentDim=Color3.fromRGB(190,80,80),   AccentGlow=Color3.fromRGB(255,150,150), AccentSoft=Color3.fromRGB(62,34,34),   TextOnAccent=Color3.fromRGB(35,15,15)},
}

local ThemeTrackers = {}
local function track(i, p, k) table.insert(ThemeTrackers, {instance=i, property=p, themeKey=k}) return i end
local function trackGradient(g, t, b) table.insert(ThemeTrackers, {isGradient=true, gradient=g, topKey=t, bottomKey=b}) return g end
local function applyTheme()
    local alive = {}
    for _, t in ipairs(ThemeTrackers) do
        if t.isGradient then
            if t.gradient and t.gradient.Parent then
                t.gradient.Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, THEME[t.topKey]),
                    ColorSequenceKeypoint.new(1, THEME[t.bottomKey]),
                })
                table.insert(alive, t)
            end
        else
            if t.instance and t.instance.Parent then
                local target = THEME[t.themeKey]
                if target then TweenService:Create(t.instance, TweenInfo.new(0.35), {[t.property]=target}):Play() end
                table.insert(alive, t)
            end
        end
    end
    ThemeTrackers = alive
    for _, item in pairs(State.NavItems) do item.setActive(item.state.active) end
end
local function applyPreset(p)
    THEME.Accent=p.Accent; THEME.AccentDim=p.AccentDim; THEME.AccentGlow=p.AccentGlow
    THEME.AccentSoft=p.AccentSoft; THEME.TextOnAccent=p.TextOnAccent
    applyTheme()
end

local CONFIG = {LoadingDuration=3.5, ParticleSpawnRate=0.10, ParticleMinSize=2, ParticleMaxSize=4, ParticleFallSpeed=120, ParticlesPerTick=2}

--==============================================================
-- ÉTAT
--==============================================================
local State = {Gui=nil, LoadingFrame=nil, CodeFrame=nil, Shell=nil, Sidebar=nil,
    Content=nil, Scroll=nil, NavItems={}, CurrentPage=nil, CurrentPreset=loadstring(base64decode("QmxldQ=="))(),
    BillboardRef=nil, Authenticated=false, MenuOpen=false, TrollSelected=nil,
    FlyPopup=nil}

local MM2 = {
    EspEnabled = true,
    EspShowMurder = true, EspShowSheriff = true, EspShowInnocent = false,
    AutoShootEnabled = false,
    AutoShootRange = 500,
    AutoShootDelay = 0.15,
    TpAllDelay = 0.8,
    XRayEnabled = false,
}

local FIXED_COLORS = {
    Murderer = Color3.fromRGB(255, 60, 60),
    Sheriff = Color3.fromRGB(60, 120, 255),
    Innocent = Color3.fromRGB(60, 255, 120),
    Box = Color3.fromRGB(255, 60, 60),
    Tracer = Color3.fromRGB(255, 60, 60),
}

local ESPOptions = {
    BoxEnabled = true,
    BoxThickness = 2,
    TracerEnabled = false,
    DistanceEnabled = true,
}

local PlayerState = {
    FlyEnabled = false,
    FlySpeed = 50,
    FlyBind = nil,
    NoclipEnabled = false,
    SpinEnabled = false,
    SpinSpeed = 10,
    JerkEnabled = false,
    JerkIntensity = 2,
    WalkSpeed = 16,
    JumpPower = 50,
    Gravity = 196,
    InfiniteJump = false,
    AntiAFK = false,
    Fullbright = false,
    AntiFling = false,
    Sitting = false,
}

local FlyState = {bv=nil, bg=nil, conn=nil, lastVel=Vector3.zero, bindConn=nil, savedCollide={}}
local SpinState = {av=nil}
local JerkState = {conn=nil}
local KillAllState = {running = false}

local ESP_OBJECTS = {}
local XRAY_HIGHLIGHTS = {}

--==============================================================
-- UTILS
--==============================================================
local function log(...) print(loadstring(base64decode("W01FTlUtVjcxXQ=="))(), ...) end
local function new(class, props)
    local o = Instance.new(class)
    for k, v in pairs(props or {}) do o[k] = v end
    return o
end
local function corner(parent, r) return new(loadstring(base64decode("VUlDb3JuZXI="))(), {CornerRadius=UDim.new(0, r or 8), Parent=parent}) end
local function gradient(parent, top, bottom, rot)
    return new(loadstring(base64decode("VUlHcmFkaWVudA=="))(), {Color=ColorSequence.new({ColorSequenceKeypoint.new(0,top), ColorSequenceKeypoint.new(1,bottom)}), Rotation=rot or 90, Parent=parent})
end
local function stroke(parent, color, thick, trans)
    return new(loadstring(base64decode("VUlTdHJva2U="))(), {Color=color or THEME.Border, Thickness=thick or 1, Transparency=trans or 0, ApplyStrokeMode=Enum.ApplyStrokeMode.Border, Parent=parent})
end
local function drawChevron(parent, direction, color, size)
    size = size or 8
    local holder = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0, size+2, 0, size+2), BackgroundTransparency=1, Parent=parent})
    local r1, r2 = (direction==loadstring(base64decode("cmlnaHQ="))()) and 45 or -45, (direction==loadstring(base64decode("cmlnaHQ="))()) and -45 or 45
    local t1 = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,size,0,2), Position=UDim2.new(0.5,-1,0.5,-3), AnchorPoint=Vector2.new(1,0.5), BackgroundColor3=color or THEME.TextMuted, BorderSizePixel=0, Rotation=r1, Parent=holder})
    corner(t1, 1)
    local t2 = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,size,0,2), Position=UDim2.new(0.5,-1,0.5,3), AnchorPoint=Vector2.new(1,0.5), BackgroundColor3=color or THEME.TextMuted, BorderSizePixel=0, Rotation=r2, Parent=holder})
    corner(t2, 1)
    return holder, t1, t2
end

--==============================================================
-- ANIMATION HELPERS
--==============================================================
local function popOpen(frame, duration)
    duration = duration or 0.45
    local targetSize = frame.Size
    frame.Size = UDim2.new(0, targetSize.X.Offset * 0.85, 0, targetSize.Y.Offset * 0.85)
    frame.BackgroundTransparency = 1
    TweenService:Create(frame, TweenInfo.new(duration, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = targetSize,
        BackgroundTransparency = 0,
    }):Play()
end

local function popClose(frame, duration, onDone)
    duration = duration or 0.32
    local currentSize = frame.Size
    TweenService:Create(frame, TweenInfo.new(duration, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
        Size = UDim2.new(0, currentSize.X.Offset * 0.85, 0, currentSize.Y.Offset * 0.85),
        BackgroundTransparency = 1,
    }):Play()
    for _, c in ipairs(frame:GetDescendants()) do
        if c:IsA(loadstring(base64decode("VGV4dExhYmVs"))()) or c:IsA(loadstring(base64decode("VGV4dEJveA=="))()) then
            TweenService:Create(c, TweenInfo.new(duration*0.85), {TextTransparency=1}):Play()
        elseif c:IsA(loadstring(base64decode("VGV4dEJ1dHRvbg=="))()) then
            TweenService:Create(c, TweenInfo.new(duration*0.85), {BackgroundTransparency=1}):Play()
        elseif c:IsA(loadstring(base64decode("RnJhbWU="))()) and c.Name ~= loadstring(base64decode("UGFydGljbGVab25l"))() then
            if c.BackgroundTransparency < 1 then TweenService:Create(c, TweenInfo.new(duration*0.85), {BackgroundTransparency=1}):Play() end
        elseif c:IsA(loadstring(base64decode("SW1hZ2VMYWJlbA=="))()) then
            TweenService:Create(c, TweenInfo.new(duration*0.85), {ImageTransparency=1}):Play()
        elseif c:IsA(loadstring(base64decode("VUlTdHJva2U="))()) then
            TweenService:Create(c, TweenInfo.new(duration*0.85), {Transparency=1}):Play()
        end
    end
    local sh = frame.Parent and frame.Parent:FindFirstChild(frame.Name..loadstring(base64decode("X1NoYWRvd0hvbGRlcg=="))())
    if sh then
        for _, c in ipairs(sh:GetChildren()) do
            if c:IsA(loadstring(base64decode("RnJhbWU="))()) then TweenService:Create(c, TweenInfo.new(duration*0.85), {BackgroundTransparency=1}):Play() end
        end
    end
    task.delay(duration + 0.05, function()
        if sh and sh.Parent then sh:Destroy() end
        if frame and frame.Parent then frame:Destroy() end
        if onDone then onDone() end
    end)
end

local function fadeScaleIn(frame, duration)
    duration = duration or 0.5
    local targetSize = frame.Size
    frame.Size = UDim2.new(0, targetSize.X.Offset * 0.85, 0, targetSize.Y.Offset * 0.85)
    frame.BackgroundTransparency = 1
    for _, c in ipairs(frame:GetDescendants()) do
        if c:IsA(loadstring(base64decode("VGV4dExhYmVs"))()) or c:IsA(loadstring(base64decode("VGV4dEJveA=="))()) then
            c.TextTransparency = 1
            TweenService:Create(c, TweenInfo.new(duration), {TextTransparency=0}):Play()
        elseif c:IsA(loadstring(base64decode("VGV4dEJ1dHRvbg=="))()) then
            c.BackgroundTransparency = 1
        elseif c:IsA(loadstring(base64decode("SW1hZ2VMYWJlbA=="))()) then
            c.ImageTransparency = 1
            TweenService:Create(c, TweenInfo.new(duration), {ImageTransparency=0}):Play()
        end
    end
    TweenService:Create(frame, TweenInfo.new(duration, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = targetSize,
        BackgroundTransparency = 0,
    }):Play()
end

--==============================================================
-- FLY
--==============================================================
local function stopFly()
    PlayerState.FlyEnabled = false
    if FlyState.bv then FlyState.bv:Destroy(); FlyState.bv = nil end
    if FlyState.bg then FlyState.bg:Destroy(); FlyState.bg = nil end
    if FlyState.conn then FlyState.conn:Disconnect(); FlyState.conn = nil end
    FlyState.lastVel = Vector3.zero
    local char = LocalPlayer.Character
    if char then
        for part, QGWBVmgF in pairs(FlyState.savedCollide) do
            if part and part.Parent then
                pcall(function() part.CanCollide = QGWBVmgF end)
            end
        end
    end
    FlyState.savedCollide = {}
    local hum = char and char:FindFirstChildOfClass(loadstring(base64decode("SHVtYW5vaWQ="))())
    if hum then hum.PlatformStand = false end
end

local function startFly()
    local char = LocalPlayer.Character
    if not char then return end
    local hrp = char:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
    if not hrp then return end
    PlayerState.FlyEnabled = true

    FlyState.savedCollide = {}
    for _, p in ipairs(char:GetDescendants()) do
        if p:IsA(loadstring(base64decode("QmFzZVBhcnQ="))()) then
            FlyState.savedCollide[p] = p.CanCollide
            p.CanCollide = false
        end
    end

    local bv = Instance.new(loadstring(base64decode("Qm9keVZlbG9jaXR5"))())
    bv.Velocity = Vector3.zero
    bv.MaxForce = Vector3.new(9e9, 9e9, 9e9)
    bv.P = 1250
    bv.Parent = hrp
    FlyState.bv = bv

    local bg = Instance.new(loadstring(base64decode("Qm9keUd5cm8="))())
    bg.D = 50
    bg.P = 3000
    bg.MaxTorque = Vector3.new(0, 0, 0)
    bg.CFrame = hrp.CFrame
    bg.Parent = hrp
    FlyState.bg = bg

    local hum = char:FindFirstChildOfClass(loadstring(base64decode("SHVtYW5vaWQ="))())
    if hum then
        hum.PlatformStand = true
        hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
        hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
    end

    local UIS = UserInputService
    FlyState.lastVel = Vector3.zero

    FlyState.conn = RunService.RenderStepped:Connect(function(dt)
        if not PlayerState.FlyEnabled then return end
        local c = LocalPlayer.Character
        local r = c and c:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
        if not r then return end
        local cam = workspace.CurrentCamera
        if not cam then return end

        local pressed = UIS:IsKeyDown(Enum.KeyCode.W) or UIS:IsKeyDown(Enum.KeyCode.A)
                     or UIS:IsKeyDown(Enum.KeyCode.S) or UIS:IsKeyDown(Enum.KeyCode.D)
                     or UIS:IsKeyDown(Enum.KeyCode.Space) or UIS:IsKeyDown(Enum.KeyCode.LeftControl)

        if FlyState.bg then
            if pressed then
                FlyState.bg.MaxTorque = Vector3.new(0, 9e9, 0)
                local look = cam.CFrame.LookVector
                local yaw = math.atan2(-look.X, -look.Z)
                FlyState.bg.CFrame = CFrame.new(r.Position) * CFrame.Angles(0, yaw, 0)
            else
                FlyState.bg.MaxTorque = Vector3.new(0, 0, 0)
            end
        end

        local move = Vector3.zero
        if UIS:IsKeyDown(Enum.KeyCode.W) then move = move + cam.CFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.S) then move = move - cam.CFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.A) then move = move - cam.CFrame.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.D) then move = move + cam.CFrame.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.Space) then move = move + Vector3.new(0,1,0) end
        if UIS:IsKeyDown(Enum.KeyCode.LeftControl) then move = move - Vector3.new(0,1,0) end

        if move.Magnitude > 0 then move = move.Unit end
        local targetVel = move * PlayerState.FlySpeed
        local alpha = math.clamp(dt * 12, 0, 1)
        FlyState.lastVel = FlyState.lastVel:Lerp(targetVel, alpha)
        if FlyState.bv then
            FlyState.bv.Velocity = FlyState.lastVel
        end
    end)
end

local function toggleFly()
    if PlayerState.FlyEnabled then stopFly() else startFly() end
end

local function attachFlyBind()
    if FlyState.bindConn then FlyState.bindConn:Disconnect(); FlyState.bindConn = nil end
    if not PlayerState.FlyBind then return end
    FlyState.bindConn = UserInputService.InputBegan:Connect(function(input, gp)
        if input.UserInputType ~= Enum.UserInputType.Keyboard then return end
        if input.KeyCode == PlayerState.FlyBind then toggleFly() end
    end)
end

local function setFlyBind(keyCode)
    PlayerState.FlyBind = keyCode
    attachFlyBind()
end

--==============================================================
-- SPIN
--==============================================================
local function stopSpin()
    PlayerState.SpinEnabled = false
    if SpinState.av then SpinState.av:Destroy(); SpinState.av = nil end
end

local function startSpin()
    local char = LocalPlayer.Character
    if not char then return end
    local hrp = char:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
    if not hrp then return end
    PlayerState.SpinEnabled = true
    local av = Instance.new(loadstring(base64decode("Qm9keUFuZ3VsYXJWZWxvY2l0eQ=="))())
    av.AngularVelocity = Vector3.new(0, PlayerState.SpinSpeed, 0)
    av.MaxTorque = Vector3.new(0, 9e9, 0)
    av.P = 1250
    av.Parent = hrp
    SpinState.av = av
end

local function toggleSpin()
    if PlayerState.SpinEnabled then stopSpin() else startSpin() end
end

local function updateSpinSpeed(QGWBVmgF)
    PlayerState.SpinSpeed = QGWBVmgF
    if SpinState.av then
        SpinState.av.AngularVelocity = Vector3.new(0, QGWBVmgF, 0)
    end
end

--==============================================================
-- JERK
--==============================================================
local function stopJerk()
    PlayerState.JerkEnabled = false
    if JerkState.conn then JerkState.conn:Disconnect(); JerkState.conn = nil end
    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
    if hrp then
        pcall(function()
            hrp.AssemblyLinearVelocity = Vector3.zero
            hrp.Velocity = Vector3.zero
        end)
    end
end

local function startJerk()
    local char = LocalPlayer.Character
    if not char then return end
    local hrp = char:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
    if not hrp then return end
    PlayerState.JerkEnabled = true
    JerkState.conn = RunService.Heartbeat:Connect(function()
        if not PlayerState.JerkEnabled then return end
        local c = LocalPlayer.Character
        local r = c and c:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
        if not r then return end
        local i = PlayerState.JerkIntensity
        local impulse = Vector3.new(
            (math.random() - 0.5) * i * 8,
            (math.random() - 0.5) * i * 8,
            (math.random() - 0.5) * i * 8
        )
        pcall(function()
            r.AssemblyLinearVelocity = r.AssemblyLinearVelocity + impulse
            r.Velocity = r.Velocity + impulse
        end)
    end)
end

local function toggleJerk()
    if PlayerState.JerkEnabled then stopJerk() else startJerk() end
end

local function updateJerkIntensity(QGWBVmgF)
    PlayerState.JerkIntensity = QGWBVmgF
end

--==============================================================
-- SIT
--==============================================================
local function toggleSit()
    PlayerState.Sitting = not PlayerState.Sitting
    local char = LocalPlayer.Character
    local hum = char and char:FindFirstChildOfClass(loadstring(base64decode("SHVtYW5vaWQ="))())
    if not hum then return end
    hum.Sit = PlayerState.Sitting
end

--==============================================================
-- NOCLIP
--==============================================================
task.spawn(function()
    while true do
        task.wait(0.15)
        if PlayerState.NoclipEnabled and not PlayerState.FlyEnabled then
            local char = LocalPlayer.Character
            if char then
                for _, p in ipairs(char:GetDescendants()) do
                    if p:IsA(loadstring(base64decode("QmFzZVBhcnQ="))()) and p.CanCollide then
                        p.CanCollide = false
                    end
                end
            end
        end
    end
end)

local function toggleNoclip()
    PlayerState.NoclipEnabled = not PlayerState.NoclipEnabled
    local char = LocalPlayer.Character
    if char and not PlayerState.NoclipEnabled then
        for _, p in ipairs(char:GetDescendants()) do
            if p:IsA(loadstring(base64decode("QmFzZVBhcnQ="))()) then
                p.CanCollide = true
            end
        end
    end
end

--==============================================================
-- WALKSPEED / JUMPPOWER / GRAVITY
--==============================================================
local function applyWalkSpeed(v)
    PlayerState.WalkSpeed = v
    local char = LocalPlayer.Character
    local hum = char and char:FindFirstChildOfClass(loadstring(base64decode("SHVtYW5vaWQ="))())
    if hum then hum.WalkSpeed = v end
end

local function applyJumpPower(v)
    PlayerState.JumpPower = v
    local char = LocalPlayer.Character
    local hum = char and char:FindFirstChildOfClass(loadstring(base64decode("SHVtYW5vaWQ="))())
    if hum then
        hum.UseJumpPower = true
        hum.JumpPower = v
    end
end

local function applyGravity(v)
    PlayerState.Gravity = v
    workspace.Gravity = v
end

--==============================================================
-- INFINITE JUMP
--==============================================================
local infJumpConn = nil
local function toggleInfiniteJump()
    PlayerState.InfiniteJump = not PlayerState.InfiniteJump
    if PlayerState.InfiniteJump then
        if infJumpConn then infJumpConn:Disconnect() end
        infJumpConn = UserInputService.JumpRequest:Connect(function()
            local char = LocalPlayer.Character
            local hum = char and char:FindFirstChildOfClass(loadstring(base64decode("SHVtYW5vaWQ="))())
            if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
        end)
    else
        if infJumpConn then infJumpConn:Disconnect(); infJumpConn = nil end
    end
end

--==============================================================
-- ANTI AFK
--==============================================================
local antiAfkConn = nil
local function toggleAntiAFK()
    PlayerState.AntiAFK = not PlayerState.AntiAFK
    if PlayerState.AntiAFK then
        if antiAfkConn then antiAfkConn:Disconnect() end
        antiAfkConn = LocalPlayer.Idled:Connect(function()
            local vu = game:GetService(loadstring(base64decode("VmlydHVhbFVzZXI="))())
            vu:CaptureController()
            vu:ClickButton2(Vector2.new())
        end)
    else
        if antiAfkConn then antiAfkConn:Disconnect(); antiAfkConn = nil end
    end
end

--==============================================================
-- FULLBRIGHT
--==============================================================
local fullbrightStored = {}
local function toggleFullbright()
    PlayerState.Fullbright = not PlayerState.Fullbright
    if PlayerState.Fullbright then
        fullbrightStored.Ambient = Lighting.Ambient
        fullbrightStored.OutdoorAmbient = Lighting.OutdoorAmbient
        fullbrightStored.Brightness = Lighting.Brightness
        fullbrightStored.ClockTime = Lighting.ClockTime
        Lighting.Ambient = Color3.fromRGB(255,255,255)
        Lighting.OutdoorAmbient = Color3.fromRGB(255,255,255)
        Lighting.Brightness = 3
        Lighting.ClockTime = 14
        local cc = Lighting:FindFirstChild(loadstring(base64decode("TXVsYmFGdWxsYnJpZ2h0"))())
        if not cc then
            cc = Instance.new(loadstring(base64decode("Q29sb3JDb3JyZWN0aW9uRWZmZWN0"))())
            cc.Name = loadstring(base64decode("TXVsYmFGdWxsYnJpZ2h0"))()
            cc.Parent = Lighting
        end
    else
        if fullbrightStored.Ambient then Lighting.Ambient = fullbrightStored.Ambient end
        if fullbrightStored.OutdoorAmbient then Lighting.OutdoorAmbient = fullbrightStored.OutdoorAmbient end
        if fullbrightStored.Brightness then Lighting.Brightness = fullbrightStored.Brightness end
        if fullbrightStored.ClockTime then Lighting.ClockTime = fullbrightStored.ClockTime end
        local cc = Lighting:FindFirstChild(loadstring(base64decode("TXVsYmFGdWxsYnJpZ2h0"))())
        if cc then cc:Destroy() end
    end
end

--==============================================================
-- ANTI FLING
--==============================================================
local function toggleAntiFling()
    PlayerState.AntiFling = not PlayerState.AntiFling
end

task.spawn(function()
    while true do
        task.wait(0.1)
        if PlayerState.AntiFling then
            local char = LocalPlayer.Character
            local hrp = char and char:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
            if hrp then
                for _, c in ipairs(hrp:GetChildren()) do
                    if c:IsA(loadstring(base64decode("Qm9keVZlbG9jaXR5"))()) then
                        if c.Velocity.Magnitude > 500 then
                            c.Velocity = c.Velocity.Unit * 500
                        end
                    end
                end
            end
        end
    end
end)

--==============================================================
-- RESET
--==============================================================
local function resetCharacter()
    local char = LocalPlayer.Character
    local hum = char and char:FindFirstChildOfClass(loadstring(base64decode("SHVtYW5vaWQ="))())
    if hum then hum.Health = 0 end
end

--==============================================================
-- TP SPAWN
--==============================================================
local function tpSpawn()
    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
    if not hrp then return end
    for _, d in ipairs(workspace:GetDescendants()) do
        if d:IsA(loadstring(base64decode("U3Bhd25Mb2NhdGlvbg=="))()) then
            pcall(function() hrp.CFrame = d.CFrame + Vector3.new(0, 3, 0) end)
            if sendNotification then sendNotification(loadstring(base64decode("VFAgU3Bhd24="))(), loadstring(base64decode("VMOpbMOpcG9ydMOpIGF1IHNwYXdu"))(), false) end
            return
        end
    end
    if sendNotification then sendNotification(loadstring(base64decode("VFAgU3Bhd24="))(), loadstring(base64decode("QXVjdW4gc3Bhd24gdHJvdXbDqQ=="))(), true) end
end

--==============================================================
-- KILL ALL + TP IN FRONT
--==============================================================
local function tpAllInFront()
    local char = LocalPlayer.Character
    if not char then return end
    local hrp = char:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
    if not hrp then return end

    local localCFrame = hrp.CFrame
    local offsetDistance = 6
    local offsetPosition = localCFrame.Position + (localCFrame.LookVector * offsetDistance)

    local idx = 0
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local targetHrp = player.Character:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
            if targetHrp then
                idx = idx + 1
                local angle = (idx - 1) * (math.pi * 2 / 8)
                local radius = 4
                local offset = Vector3.new(math.cos(angle) * radius, 0, math.sin(angle) * radius)
                pcall(function()
                    targetHrp.CFrame = CFrame.new(offsetPosition + offset)
                    targetHrp.Velocity = Vector3.new(0, 0, 0)
                end)
            end
        end
    end
end

local function killAllPlayers()
    if KillAllState.running then
        KillAllState.running = false
        sendNotification(loadstring(base64decode("S2lsbCBBbGw="))(), loadstring(base64decode("RMOpc2FjdGl2w6k="))(), false)
        return
    end
    KillAllState.running = true
    sendNotification(loadstring(base64decode("S2lsbCBBbGw="))(), loadstring(base64decode("QWN0aXbDqSAoNSBzZWMp"))(), false)

    task.spawn(function()
        local startTime = tick()
        while KillAllState.running and (tick() - startTime) < 5 do
            local char = LocalPlayer.Character
            if not char then break end
            local hrp = char:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
            if not hrp then break end

            tpAllInFront()

            local knife = char:FindFirstChild(loadstring(base64decode("S25pZmU="))())
            if not knife then
                local backpack = LocalPlayer:FindFirstChild(loadstring(base64decode("QmFja3BhY2s="))())
                if backpack then
                    local bagKnife = backpack:FindFirstChild(loadstring(base64decode("S25pZmU="))())
                    if bagKnife and char.Humanoid then
                        pcall(function() char.Humanoid:EquipTool(bagKnife) end)
                        knife = bagKnife
                    end
                end
            end

            if knife then
                for _, player in ipairs(Players:GetPlayers()) do
                    if player ~= LocalPlayer and player.Character then
                        local targetHrp = player.Character:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
                        local targetHum = player.Character:FindFirstChildOfClass(loadstring(base64decode("SHVtYW5vaWQ="))())
                        if targetHrp and targetHum and targetHum.Health > 0 then
                            local dist = (targetHrp.Position - hrp.Position).Magnitude
                            if dist <= 15 then
                                pcall(function()
                                    hrp.CFrame = CFrame.new(hrp.Position, targetHrp.Position)
                                end)
                                pcall(function() knife:Activate() end)
                            end
                        end
                    end
                end
            end
            task.wait(0.05)
        end
        KillAllState.running = false
    end)
end

--==============================================================
-- DÉTECTION RÔLE
--==============================================================
local function getPlayerRole(plr)
    if not plr then return loadstring(base64decode("SW5ub2NlbnQ="))() end
    if plr:FindFirstChild(loadstring(base64decode("Um9sZQ=="))()) then
        local ok, QGWBVmgF = pcall(function() return tostring(plr.Role.Value) end)
        if ok and QGWBVmgF and QGWBVmgF ~= loadstring(base64decode(""))() then return QGWBVmgF end
    end
    local char = plr.Character
    local backpack = plr:FindFirstChild(loadstring(base64decode("QmFja3BhY2s="))())
    if char then
        if char:FindFirstChild(loadstring(base64decode("S25pZmU="))()) then return loadstring(base64decode("TXVyZGVyZXI="))() end
        if char:FindFirstChild(loadstring(base64decode("R3Vu"))()) then return loadstring(base64decode("U2hlcmlmZg=="))() end
    end
    if backpack then
        if backpack:FindFirstChild(loadstring(base64decode("S25pZmU="))()) then return loadstring(base64decode("TXVyZGVyZXI="))() end
        if backpack:FindFirstChild(loadstring(base64decode("R3Vu"))()) then return loadstring(base64decode("U2hlcmlmZg=="))() end
    end
    return loadstring(base64decode("SW5ub2NlbnQ="))()
end

local function findMurderer()
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr == LocalPlayer then continue end
        if getPlayerRole(plr) == loadstring(base64decode("TXVyZGVyZXI="))() then return plr end
    end
    return nil
end

local function getRoleColor(role)
    if role == loadstring(base64decode("TXVyZGVyZXI="))() then return FIXED_COLORS.Murderer end
    if role == loadstring(base64decode("U2hlcmlmZg=="))() then return FIXED_COLORS.Sheriff end
    return FIXED_COLORS.Innocent
end

local function shouldShowRole(role)
    if role == loadstring(base64decode("TXVyZGVyZXI="))() then return MM2.EspShowMurder end
    if role == loadstring(base64decode("U2hlcmlmZg=="))() then return MM2.EspShowSheriff end
    return MM2.EspShowInnocent
end

--==============================================================
-- X-RAY
--==============================================================
local function applyXRay(char, plr)
    if not char then return end
    if XRAY_HIGHLIGHTS[plr] and XRAY_HIGHLIGHTS[plr].Parent then return end
    local hl = new(loadstring(base64decode("SGlnaGxpZ2h0"))(), {
        FillColor = Color3.fromRGB(255, 255, 255),
        FillTransparency = 0.85,
        OutlineColor = Color3.fromRGB(255, 255, 255),
        OutlineTransparency = 0,
        DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
        Adornee = char,
        Parent = char,
    })
    XRAY_HIGHLIGHTS[plr] = hl
end

local function removeXRay(plr)
    local hl = XRAY_HIGHLIGHTS[plr]
    if hl and hl.Parent then hl:Destroy() end
    XRAY_HIGHLIGHTS[plr] = nil
end

local function updateXRay()
    if MM2.XRayEnabled then
        for _, plr in ipairs(Players:GetPlayers()) do
            if plr.Character then applyXRay(plr.Character, plr) end
        end
    else
        for plr in pairs(XRAY_HIGHLIGHTS) do removeXRay(plr) end
    end
end

--==============================================================
-- ESP DRAWING
--==============================================================
local function createESP(player)
    if player == LocalPlayer then return end
    if ESP_OBJECTS[player] then
        local ok = pcall(function() ESP_OBJECTS[player].Box.Visible = ESP_OBJECTS[player].Box.Visible end)
        if ok then return end
        removeESP(player)
    end
    local box = Drawing.new(loadstring(base64decode("U3F1YXJl"))())
    box.Thickness = ESPOptions.BoxThickness
    box.Filled = false
    box.Visible = false
    local text = Drawing.new(loadstring(base64decode("VGV4dA=="))())
    text.Center = true
    text.Outline = true
    text.Size = 16
    text.Visible = false
    local distanceText = Drawing.new(loadstring(base64decode("VGV4dA=="))())
    distanceText.Center = true
    distanceText.Outline = true
    distanceText.Size = 13
    distanceText.Visible = false
    local tracer = Drawing.new(loadstring(base64decode("TGluZQ=="))())
    tracer.Thickness = 1
    tracer.Visible = false
    ESP_OBJECTS[player] = {Box=box, Text=text, DistanceText=distanceText, Tracer=tracer}
end

local function removeESP(player)
    local esp = ESP_OBJECTS[player]
    if esp then
        for _, d in pairs(esp) do pcall(function() d:Remove() end) end
        ESP_OBJECTS[player] = nil
    end
end

local function worldToScreen(pos)
    local v, onScreen = Camera:WorldToViewportPoint(pos)
    return Vector2.new(v.X, v.Y), onScreen
end

RunService.RenderStepped:Connect(function()
    if not MM2.EspEnabled then
        for _, esp in pairs(ESP_OBJECTS) do
            pcall(function()
                esp.Box.Visible = false
                esp.Text.Visible = false
                esp.DistanceText.Visible = false
                esp.Tracer.Visible = false
            end)
        end
        return
    end
    local cam = workspace.CurrentCamera
    if cam then Camera = cam end
    local myChar = LocalPlayer.Character
    local myHrp = myChar and myChar:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
    local myPos = myHrp and myHrp.Position

    for player, esp in pairs(ESP_OBJECTS) do
        local valid = pcall(function() return esp.Box.Visible end)
        if not valid then
            ESP_OBJECTS[player] = nil
            continue
        end

        local char = player.Character
        local hrp = char and char:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
        local head = char and char:FindFirstChild(loadstring(base64decode("SGVhZA=="))())
        local hum = char and char:FindFirstChildOfClass(loadstring(base64decode("SHVtYW5vaWQ="))())

        local hideAll = function()
            pcall(function()
                esp.Box.Visible = false
                esp.Text.Visible = false
                esp.DistanceText.Visible = false
                esp.Tracer.Visible = false
            end)
        end

        if not (hrp and head and hum and hum.Health > 0) then
            hideAll()
            continue
        end

        local role = getPlayerRole(player)
        if not shouldShowRole(role) then
            hideAll()
            continue
        end

        local headPos, hOn = worldToScreen(head.Position + Vector3.new(0, 0.5, 0))
        local footPos, fOn = worldToScreen(hrp.Position - Vector3.new(0, 3, 0))

        if hOn or fOn then
            local height = math.abs(headPos.Y - footPos.Y)
            local width = height / 2
            local color = getRoleColor(role)

            if ESPOptions.BoxEnabled then
                pcall(function()
                    esp.Box.Size = Vector2.new(width, height)
                    esp.Box.Position = Vector2.new(headPos.X - width / 2, headPos.Y)
                    esp.Box.Color = FIXED_COLORS.Box
                    esp.Box.Thickness = ESPOptions.BoxThickness
                    esp.Box.Visible = true
                end)
            else
                pcall(function() esp.Box.Visible = false end)
            end

            pcall(function()
                esp.Text.Text = player.DisplayName .. loadstring(base64decode("IFs="))() .. role .. loadstring(base64decode("XQ=="))()
                esp.Text.Position = Vector2.new(headPos.X, headPos.Y - 18)
                esp.Text.Color = color
                esp.Text.Visible = true
            end)

            if ESPOptions.DistanceEnabled and myPos then
                pcall(function()
                    local d = (hrp.Position - myPos).Magnitude
                    esp.DistanceText.Text = string.format(loadstring(base64decode("JS4xZiBt"))(), d * 0.28)
                    esp.DistanceText.Position = Vector2.new(headPos.X, footPos.Y + 2)
                    esp.DistanceText.Color = color
                    esp.DistanceText.Visible = true
                end)
            else
                pcall(function() esp.DistanceText.Visible = false end)
            end

            if ESPOptions.TracerEnabled then
                pcall(function()
                    esp.Tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
                    esp.Tracer.To = Vector2.new(headPos.X, headPos.Y)
                    esp.Tracer.Color = FIXED_COLORS.Tracer
                    esp.Tracer.Thickness = 1
                    esp.Tracer.Visible = true
                end)
            else
                pcall(function() esp.Tracer.Visible = false end)
            end
        else
            hideAll()
        end
    end
end)

Players.PlayerAdded:Connect(function(plr)
    task.wait(1)
    createESP(plr)
    if MM2.XRayEnabled and plr.Character then applyXRay(plr.Character, plr) end
end)
Players.PlayerRemoving:Connect(function(plr)
    removeESP(plr)
    removeXRay(plr)
end)
for _, p in ipairs(Players:GetPlayers()) do createESP(p) end

--==============================================================
-- PARTICULES
--==============================================================
local function spawnParticle(container)
    local bounds = container.AbsoluteSize
    if bounds.X < 5 or bounds.Y < 5 then return end
    local size = math.random(CONFIG.ParticleMinSize, CONFIG.ParticleMaxSize)
    local sx = math.random(0, math.max(1, bounds.X - size))
    local dur = (bounds.Y + 40) / CONFIG.ParticleFallSpeed
    local p = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,size,0,size), Position=UDim2.new(0,sx,0,-size), BackgroundColor3=THEME.Particle, BackgroundTransparency=0.5, BorderSizePixel=0, ZIndex=5, Parent=container})
    corner(p, math.floor(size/2))
    local t = TweenService:Create(p, TweenInfo.new(dur, Enum.EasingStyle.Linear), {Position=UDim2.new(0, sx+math.random(-40,40), 0, bounds.Y+20), BackgroundTransparency=0.85+math.random()*0.1})
    t:Play()
    t.Completed:Connect(function() p:Destroy() end)
end
local function startEmitter(container)
    task.spawn(function()
        while container and container.Parent do
            for _ = 1, CONFIG.ParticlesPerTick do spawnParticle(container) end
            task.wait(CONFIG.ParticleSpawnRate)
        end
    end)
end

--==============================================================
-- FENÊTRE
--==============================================================
local function createWindow(name, size, parentGui)
    local shadowHolder = new(loadstring(base64decode("RnJhbWU="))(), {Name=name..loadstring(base64decode("X1NoYWRvd0hvbGRlcg=="))(), Size=size, Position=UDim2.new(0.5,0,0.5,0), AnchorPoint=Vector2.new(0.5,0.5), BackgroundTransparency=1, BorderSizePixel=0, ZIndex=1, Parent=parentGui})
    for i = 1, 6 do
        local s = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,0,1,0), BackgroundColor3=Color3.fromRGB(0,0,0), BackgroundTransparency=0.88+(i*0.008), BorderSizePixel=0, ZIndex=1, Parent=shadowHolder})
        corner(s, 20+i*5)
    end
    local frame = new(loadstring(base64decode("RnJhbWU="))(), {Name=name, Size=size, Position=UDim2.new(0.5,0,0.5,0), AnchorPoint=Vector2.new(0.5,0.5), BackgroundColor3=THEME.BgTop, BackgroundTransparency=1, BorderSizePixel=0, Active=true, Draggable=true, ZIndex=2, Parent=parentGui})
    corner(frame, 20)
    stroke(frame, THEME.Border, 1, 0.4)
    gradient(frame, THEME.BgTop, THEME.BgBottom, 90)
    RunService.Heartbeat:Connect(function()
        if shadowHolder.Parent and frame.Parent then
            shadowHolder.Position = frame.Position + UDim2.new(0,0,0,12)
            shadowHolder.Size = frame.Size
            shadowHolder.Visible = frame.Visible
        end
    end)
    local zone = new(loadstring(base64decode("RnJhbWU="))(), {Name=loadstring(base64decode("UGFydGljbGVab25l"))(), Size=UDim2.new(1,0,1,0), BackgroundTransparency=1, ClipsDescendants=true, ZIndex=5, Parent=frame})
    corner(zone, 20)
    startEmitter(zone)
    return frame
end

--==============================================================
-- DESTROY
--==============================================================
local function destroyWindow(frame, onDone) popClose(frame, 0.35, onDone) end
local function closeMenu()
    if not (State.Shell and State.Shell.Parent) then return end
    popClose(State.Shell, 0.35, function()
        State.Shell=nil; State.Sidebar=nil; State.Content=nil; State.Scroll=nil
        State.NavItems={}; State.CurrentPage=nil; State.MenuOpen=false
    end)
end

--==============================================================
-- NOTIFICATION
--==============================================================
local function sendNotification(title, text, isAlert)
    local pg = LocalPlayer:FindFirstChild(loadstring(base64decode("UGxheWVyR3Vp"))())
    if not pg then return end
    local old = pg:FindFirstChild(loadstring(base64decode("TXVsYmFOb3RpZg=="))())
    if old then old:Destroy() end
    local gui = new(loadstring(base64decode("U2NyZWVuR3Vp"))(), {Name=loadstring(base64decode("TXVsYmFOb3RpZg=="))(), ResetOnSpawn=false, IgnoreGuiInset=true, DisplayOrder=1000, ZIndexBehavior=Enum.ZIndexBehavior.Sibling, Parent=pg})
    local card = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,320,0,80), Position=UDim2.new(1,20,0,100), BackgroundColor3=THEME.BgTop, BackgroundTransparency=0.05, BorderSizePixel=0, ZIndex=1000, Parent=gui})
    corner(card, 14)
    gradient(card, THEME.BgTop, THEME.BgBottom, 90)
    new(loadstring(base64decode("VUlTdHJva2U="))(), {Color=isAlert and Color3.fromRGB(255,100,100) or THEME.Accent, Thickness=2, Transparency=0.2, ApplyStrokeMode=Enum.ApplyStrokeMode.Border, Parent=card})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,-60,0,20), Position=UDim2.new(0,20,0,14), BackgroundTransparency=1, Text=title, TextColor3=isAlert and Color3.fromRGB(255,120,120) or THEME.Accent, Font=Enum.Font.GothamBold, TextSize=13, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=1001, Parent=card})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,-60,0,30), Position=UDim2.new(0,20,0,36), BackgroundTransparency=1, Text=text, TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=14, TextXAlignment=Enum.TextXAlignment.Left, TextWrapped=true, ZIndex=1001, Parent=card})
    TweenService:Create(card, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position=UDim2.new(1,-340,0,100)}):Play()
    task.delay(5, function()
        if not card.Parent then return end
        TweenService:Create(card, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Position=UDim2.new(1,20,0,100), BackgroundTransparency=1}):Play()
        for _, child in ipairs(card:GetDescendants()) do
            if child:IsA(loadstring(base64decode("VGV4dExhYmVs"))()) then TweenService:Create(child, TweenInfo.new(0.4), {TextTransparency=1}):Play() end
        end
        task.wait(0.5)
        gui:Destroy()
    end)
end

--==============================================================
-- AUTO SHOOT
--==============================================================
task.spawn(function()
    while true do
        task.wait(MM2.AutoShootDelay)
        if not MM2.AutoShootEnabled then continue end
        local myRole = getPlayerRole(LocalPlayer)
        if myRole ~= loadstring(base64decode("U2hlcmlmZg=="))() then continue end
        local char = LocalPlayer.Character
        if not char then continue end
        local gun = char:FindFirstChild(loadstring(base64decode("R3Vu"))())
        if not gun then
            local backpack = LocalPlayer:FindFirstChild(loadstring(base64decode("QmFja3BhY2s="))())
            if backpack then
                local bagGun = backpack:FindFirstChild(loadstring(base64decode("R3Vu"))())
                if bagGun then pcall(function() char.Humanoid:EquipTool(bagGun) end) end
            end
            continue
        end
        local murderer = findMurderer()
        if not murderer then continue end
        local mChar = murderer.Character
        if not mChar then continue end
        local mHrp = mChar:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
        local mHead = mChar:FindFirstChild(loadstring(base64decode("SGVhZA=="))())
        if not mHrp then continue end
        local hrp = char:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
        if not hrp then continue end
        local distance = (mHrp.Position - hrp.Position).Magnitude
        if distance > MM2.AutoShootRange then continue end
        local cam = workspace.CurrentCamera
        if cam then
            pcall(function()
                cam.CFrame = CFrame.new(cam.CFrame.Position, mHead and mHead.Position or mHrp.Position)
            end)
        end
        pcall(function() gun:Activate() end)
    end
end)

--==============================================================
-- TP
--==============================================================
local function tpAllPlayers()
    local char = LocalPlayer.Character
    if not char then sendNotification(loadstring(base64decode("VFA="))(), loadstring(base64decode("UGVyc29ubmFnZSBpbnRyb3V2YWJsZQ=="))(), true) return end
    local hrp = char:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
    if not hrp then sendNotification(loadstring(base64decode("VFA="))(), loadstring(base64decode("UG9zaXRpb24gaW50cm91dmFibGU="))(), true) return end
    sendNotification(loadstring(base64decode("VFAgQWxs"))(), loadstring(base64decode("VMOpbMOpcG9ydGF0aW9uLi4u"))(), false)
    task.spawn(function()
        for _, plr in ipairs(Players:GetPlayers()) do
            if plr == LocalPlayer then continue end
            if not plr.Character then continue end
            local plrHrp = plr.Character:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
            if not plrHrp then continue end
            pcall(function()
                hrp.CFrame = plrHrp.CFrame + Vector3.new(0, 3, 3)
                hrp.Velocity = Vector3.new(0, 0, 0)
            end)
            task.wait(MM2.TpAllDelay)
        end
        sendNotification(loadstring(base64decode("VFAgQWxs"))(), loadstring(base64decode("VGVybWluw6k="))(), false)
    end)
end

--==============================================================
-- FORWARD DECLS
--==============================================================
local createShell, createHeadBillboard, setPage
local renderPageHome, renderPageSettings, renderPageEsp, renderPageMurder, renderPageSheriff, renderPageTroll
local renderPagePlayer, renderPageCombat, renderPageAutoFarm, renderPageAnimation, renderPageTeleport
local makeToggleRow, makeSliderRow, makeActionRow, openFlyPopup, makeSectionHeader, makeCollapsibleActionRow, makeActionRowToggle

--==============================================================
-- BILLBOARD MINI
--==============================================================
createHeadBillboard = function()
    local pg = LocalPlayer:FindFirstChild(loadstring(base64decode("UGxheWVyR3Vp"))())
    if pg then
        local old = pg:FindFirstChild(loadstring(base64decode("TXVsYmFIZWFkR3Vp"))())
        if old then old:Destroy() end
    end
    local char = LocalPlayer.Character
    if not char or not char:FindFirstChild(loadstring(base64decode("SGVhZA=="))()) then
        task.delay(1, function()
            if createHeadBillboard then createHeadBillboard() end
        end)
        return
    end
    local head = char:FindFirstChild(loadstring(base64decode("SGVhZA=="))())
    if not head then return end

    local gui = new(loadstring(base64decode("U2NyZWVuR3Vp"))(), {Name=loadstring(base64decode("TXVsYmFIZWFkR3Vp"))(), ResetOnSpawn=false, IgnoreGuiInset=true, ZIndexBehavior=Enum.ZIndexBehavior.Sibling, DisplayOrder=997, Parent=pg})

    local W, H = 200, 50
    local card = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {
        Size=UDim2.new(0,W,0,H), Position=UDim2.new(0,0,0,0),
        AnchorPoint=Vector2.new(0.5,1),
        BackgroundColor3=Color3.fromRGB(12,16,28),
        BackgroundTransparency=0.05, BorderSizePixel=0, Text=loadstring(base64decode(""))(),
        AutoButtonColor=false, Active=true, ZIndex=1, Parent=gui,
    })
    corner(card, 25)
    gradient(card, Color3.fromRGB(16,22,38), Color3.fromRGB(8,10,18), 90)
    new(loadstring(base64decode("VUlTdHJva2U="))(), {
        Color=Color3.fromRGB(90,150,255), Thickness=1.5, Transparency=0.15,
        ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
        Parent=card,
    })

    local pfpBg = new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(0,36,0,36), Position=UDim2.new(0,8,0.5,0),
        AnchorPoint=Vector2.new(0,0.5),
        BackgroundColor3=Color3.fromRGB(70,130,245),
        BorderSizePixel=0, ZIndex=6, Parent=card,
    })
    corner(pfpBg, 18)
    local pfpInner = new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(1,-4,1,-4), Position=UDim2.new(0.5,0,0.5,0),
        AnchorPoint=Vector2.new(0.5,0.5),
        BackgroundColor3=Color3.fromRGB(50,100,220),
        BorderSizePixel=0, ZIndex=7, Parent=pfpBg,
    })
    corner(pfpInner, 16)
    local avatarImg = new(loadstring(base64decode("SW1hZ2VMYWJlbA=="))(), {
        Size=UDim2.new(1,0,1,0), Position=UDim2.new(0.5,0,0.5,0),
        AnchorPoint=Vector2.new(0.5,0.5),
        BackgroundTransparency=1, Image=loadstring(base64decode(""))(),
        ZIndex=8, Parent=pfpInner,
    })
    corner(avatarImg, 16)
    task.spawn(function()
        local ok, thumb = pcall(function()
            return Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
        end)
        if ok and thumb then avatarImg.Image = thumb end
    end)

    local titleLbl = new(loadstring(base64decode("VGV4dExhYmVs"))(), {
        Size=UDim2.new(1,-90,0,16), Position=UDim2.new(0,52,0,8),
        BackgroundTransparency=1, Text=loadstring(base64decode("TXVsYmEgTWVudQ=="))(),
        TextColor3=Color3.fromRGB(255,255,255),
        Font=Enum.Font.GothamBlack, TextSize=13,
        TextXAlignment=Enum.TextXAlignment.Left,
        ZIndex=9, Parent=card,
    })
    local titleGrad = new(loadstring(base64decode("VUlHcmFkaWVudA=="))(), {
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(120,180,255)),
            ColorSequenceKeypoint.new(0.20, Color3.fromRGB(170,120,255)),
            ColorSequenceKeypoint.new(0.40, Color3.fromRGB(255,120,200)),
            ColorSequenceKeypoint.new(0.60, Color3.fromRGB(255,180,120)),
            ColorSequenceKeypoint.new(0.80, Color3.fromRGB(120,255,180)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(120,180,255)),
        }),
        Rotation = 0, Parent = titleLbl,
    })
    task.spawn(function()
        while titleGrad.Parent do
            titleGrad.Rotation = (titleGrad.Rotation + 3) % 360
            task.wait(0.03)
        end
    end)

    new(loadstring(base64decode("VGV4dExhYmVs"))(), {
        Size=UDim2.new(1,-90,0,12), Position=UDim2.new(0,52,0,23),
        BackgroundTransparency=1,
        Text=LocalPlayer.DisplayName .. loadstring(base64decode("IC8gbGlmZXRpbWU="))(),
        TextColor3=Color3.fromRGB(220,225,235),
        Font=Enum.Font.GothamMedium, TextSize=9,
        TextXAlignment=Enum.TextXAlignment.Left,
        ZIndex=9, Parent=card,
    })

    local creatorLbl = new(loadstring(base64decode("VGV4dExhYmVs"))(), {
        Size=UDim2.new(1,-90,0,14), Position=UDim2.new(0,52,0,35),
        BackgroundTransparency=1, Text=loadstring(base64decode("Q3LDqWF0ZXVy"))(),
        TextColor3=Color3.fromRGB(255,255,255),
        Font=Enum.Font.GothamBold, TextSize=10,
        TextXAlignment=Enum.TextXAlignment.Left,
        ZIndex=9, Parent=card,
    })
    local creatorGrad = new(loadstring(base64decode("VUlHcmFkaWVudA=="))(), {
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 80, 80)),
            ColorSequenceKeypoint.new(0.20, Color3.fromRGB(255, 180, 80)),
            ColorSequenceKeypoint.new(0.40, Color3.fromRGB(255, 255, 80)),
            ColorSequenceKeypoint.new(0.60, Color3.fromRGB(120, 255, 120)),
            ColorSequenceKeypoint.new(0.80, Color3.fromRGB(120, 200, 255)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 80, 80)),
        }),
        Rotation = 0, Parent = creatorLbl,
    })
    task.spawn(function()
        while creatorGrad.Parent do
            creatorGrad.Rotation = (creatorGrad.Rotation + 4) % 360
            task.wait(0.03)
        end
    end)

    local mCircle = new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(0,30,0,30), Position=UDim2.new(1,-38,0.5,0),
        AnchorPoint=Vector2.new(0,0.5),
        BackgroundColor3=Color3.fromRGB(70,130,245),
        BorderSizePixel=0, ZIndex=6, Parent=card,
    })
    corner(mCircle, 15)
    local mLbl = new(loadstring(base64decode("VGV4dExhYmVs"))(), {
        Size=UDim2.new(1,0,1,0), BackgroundTransparency=1,
        Text=loadstring(base64decode("TQ=="))(), TextColor3=Color3.fromRGB(255,255,255),
        Font=Enum.Font.GothamBlack, TextSize=15,
        ZIndex=8, Parent=mCircle,
    })
    new(loadstring(base64decode("VUlHcmFkaWVudA=="))(), {
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(200,230,255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(90,150,255)),
        }),
        Rotation = 90, Parent=mLbl,
    })

    card.BackgroundTransparency = 1
    card.Size = UDim2.new(0, W*0.7, 0, H*0.7)
    for _, c in ipairs(card:GetDescendants()) do
        if c:IsA(loadstring(base64decode("VGV4dExhYmVs"))()) then c.TextTransparency = 1; TweenService:Create(c, TweenInfo.new(0.5), {TextTransparency=0}):Play() end
        if c:IsA(loadstring(base64decode("SW1hZ2VMYWJlbA=="))()) then c.ImageTransparency = 1; TweenService:Create(c, TweenInfo.new(0.5), {ImageTransparency=0}):Play() end
    end
    TweenService:Create(card, TweenInfo.new(0.55, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0,W,0,H),
        BackgroundTransparency = 0.05,
    }):Play()

    RunService.RenderStepped:Connect(function()
        if not gui.Parent then return end
        if not (card and card.Parent) then return end
        local currentChar = LocalPlayer.Character
        if not currentChar then card.Visible=false return end
        local currentHead = currentChar:FindFirstChild(loadstring(base64decode("SGVhZA=="))())
        if not currentHead then card.Visible=false return end
        local cam = workspace.CurrentCamera
        if not cam then return end
        local worldPos = currentHead.Position + Vector3.new(0, LOGO_HEIGHT_OFFSET, 0)
        local screenPoint, onScreen = cam:WorldToViewportPoint(worldPos)
        if not onScreen then card.Visible=false return end
        card.Visible = true
        card.Position = UDim2.new(0, screenPoint.X, 0, screenPoint.Y)
    end)

    card.MouseButton1Click:Connect(function()
        if not State.Authenticated then return end
        if State.Shell and State.Shell.Parent then return end
        if createShell then createShell() end
    end)
    State.BillboardRef = gui
end

--==============================================================
-- PAGE ACCUEIL (avec FPS/MS)
--==============================================================
renderPageHome = function(body)
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {
        Size=UDim2.new(1,0,0,42), BackgroundTransparency=1,
        Text=loadstring(base64decode("QmllbnZlbnVlIHN1ciBNdWxiYQ=="))(),
        TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBlack,
        TextSize=30, TextXAlignment=Enum.TextXAlignment.Left,
        ZIndex=25, Parent=body,
    })
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {
        Size=UDim2.new(1,0,0,20), Position=UDim2.new(0,0,0,46), BackgroundTransparency=1,
        Text=loadstring(base64decode("TWVudSBwcmVtaXVtIOKAoiBNdXJkZXIgTXlzdGVyeSAy"))(),
        TextColor3=THEME.Accent, Font=Enum.Font.GothamMedium,
        TextSize=13, TextXAlignment=Enum.TextXAlignment.Left,
        ZIndex=25, Parent=body,
    })

    -- ===== FPS + MS (en haut à droite) =====
    local statsCard = new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(0,140,0,58), Position=UDim2.new(1,-140,0,0),
        BackgroundColor3=THEME.Surface, BackgroundTransparency=0.35,
        BorderSizePixel=0, ZIndex=26, Parent=body,
    })
    corner(statsCard, 10)
    stroke(statsCard, THEME.Border, 1, 0.5)

    local fpsLbl = new(loadstring(base64decode("VGV4dExhYmVs"))(), {
        Size=UDim2.new(1,-16,0,20), Position=UDim2.new(0,8,0,8),
        BackgroundTransparency=1, Text=loadstring(base64decode("RlBTOiAw"))(),
        TextColor3=THEME.Success, Font=Enum.Font.GothamBold,
        TextSize=13, TextXAlignment=Enum.TextXAlignment.Left,
        ZIndex=27, Parent=statsCard,
    })
    local msLbl = new(loadstring(base64decode("VGV4dExhYmVs"))(), {
        Size=UDim2.new(1,-16,0,20), Position=UDim2.new(0,8,0,30),
        BackgroundTransparency=1, Text=loadstring(base64decode("TVM6IDA="))(),
        TextColor3=THEME.Accent, Font=Enum.Font.GothamBold,
        TextSize=13, TextXAlignment=Enum.TextXAlignment.Left,
        ZIndex=27, Parent=statsCard,
    })

    task.spawn(function()
        local frames = 0
        local lastTime = tick()
        RunService.RenderStepped:Connect(function()
            frames = frames + 1
        end)
        while statsCard.Parent do
            local now = tick()
            local elapsed = now - lastTime
            if elapsed >= 0.5 then
                local fps = math.floor(frames / elapsed)
                frames = 0
                lastTime = now
                local ok, ping = pcall(function()
                    return math.floor(LocalPlayer:GetNetworkPing() * 1000)
                end)
                local ms = ok and ping or 0
                pcall(function()
                    fpsLbl.Text = loadstring(base64decode("RlBTOiA="))() .. fps
                    fpsLbl.TextColor3 = fps >= 50 and THEME.Success or (fps >= 30 and Color3.fromRGB(240,200,120) or THEME.Error)
                    msLbl.Text = loadstring(base64decode("TVM6IA=="))() .. ms
                    msLbl.TextColor3 = ms <= 80 and THEME.Success or (ms <= 150 and Color3.fromRGB(240,200,120) or THEME.Error)
                end)
            end
            task.wait(0.1)
        end
    end)

    new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(1,0,0,1), Position=UDim2.new(0,0,0,80),
        BackgroundColor3=THEME.Border, BackgroundTransparency=0.5,
        BorderSizePixel=0, ZIndex=25, Parent=body,
    })

    local VAkGzAZF = 100
    local function makeSection(title, lines)
        new(loadstring(base64decode("VGV4dExhYmVs"))(), {
            Size=UDim2.new(1,0,0,20), Position=UDim2.new(0,0,0,VAkGzAZF),
            BackgroundTransparency=1, Text=title,
            TextColor3=THEME.Accent, Font=Enum.Font.GothamBold,
            TextSize=13, TextXAlignment=Enum.TextXAlignment.Left,
            ZIndex=25, Parent=body,
        })
        VAkGzAZF = VAkGzAZF + 26
        new(loadstring(base64decode("VGV4dExhYmVs"))(), {
            Size=UDim2.new(1,-8,0,0), Position=UDim2.new(0,0,0,VAkGzAZF),
            BackgroundTransparency=1, Text=lines,
            TextColor3=THEME.TextSecondary, Font=Enum.Font.Gotham,
            TextSize=12, TextXAlignment=Enum.TextXAlignment.Left,
            TextYAlignment=Enum.TextYAlignment.Top, TextWrapped=true,
            AutomaticSize=Enum.AutomaticSize.Y,
            ZIndex=25, Parent=body,
        })
        VAkGzAZF = VAkGzAZF + #lines * 5 + 30
    end

    makeSection(loadstring(base64decode("4pa6IEVTUA=="))(), loadstring(base64decode("QWZmaWNoZSBsZXMgcsO0bGVzIChUdWV1ciAvIFNow6lyaWYgLyBJbm5vY2VudCkgYXZlYyBib3gsIHRyYWNlciBldCB4LXJheSBwb3VyIHZvaXIgw6AgdHJhdmVycyBsZXMgbXVycy4="))())
    makeSection(loadstring(base64decode("4pa6IFBMQVlFUg=="))(), loadstring(base64decode("Rmx5LCBTcGluLCBKZXJrLCBOb2NsaXAsIFdhbGtTcGVlZCwgSnVtcFBvd2VyLCBHcmF2aXR5LCBJbmZpbml0ZSBKdW1wIGV0IHBsdXMgcG91ciB0b24gcGVyc29ubmFnZS4="))())
    makeSection(loadstring(base64decode("4pa6IE1VUkRFUg=="))(), loadstring(base64decode("S2lsbCBBbGwsIFRQIHRvdXMgbGVzIGpvdWV1cnMgZGV2YW50IHRvaSwgVFAgdmVycyBsZSB0dWV1ci4="))())
    makeSection(loadstring(base64decode("4pa6IFNIRVJJRkY="))(), loadstring(base64decode("QXV0byBTaG9vdCA6IHNpIHR1IGVzIHNow6lyaWYsIHRpcmUgYXV0b21hdGlxdWVtZW50IHN1ciBsZSB0dWV1ci4="))())
    makeSection(loadstring(base64decode("4pa6IFTDiUzDiVBPUlTDiQ=="))(), loadstring(base64decode("VGUgdMOpbMOpcG9ydGUgYXUgc3Bhd24gZGUgbGEgbWFwIGVuIHVuIGNsaWMu"))())
    makeSection(loadstring(base64decode("4pa6IFRST0xM"))(), loadstring(base64decode("Q2libGUgdW4gam91ZXVyIDogVFAgdmVycyBsdWkgb3Ugc3BlY3RhdGUgc2EgY2Ftw6lyYS4="))())
    makeSection(loadstring(base64decode("4pa6IEFOSU1BVElPTg=="))(), loadstring(base64decode("U2l0IDogdG9uIHBlcnNvbm5hZ2Ugcydhc3NvaXQgKHZpc2libGUgcGFyIHRvdXMgbGVzIGpvdWV1cnMpLg=="))())

    new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(1,0,0,1), Position=UDim2.new(0,0,0,VAkGzAZF),
        BackgroundColor3=THEME.Border, BackgroundTransparency=0.5,
        BorderSizePixel=0, ZIndex=25, Parent=body,
    })
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {
        Size=UDim2.new(1,0,0,24), Position=UDim2.new(0,0,0,VAkGzAZF+10),
        BackgroundTransparency=1,
        Text=loadstring(base64decode("8J+SoSBBcHB1aWUgc3VyIE0gcG91ciBvdXZyaXIgb3UgZmVybWVyIGxlIG1lbnU="))(),
        TextColor3=THEME.TextMuted, Font=Enum.Font.GothamMedium,
        TextSize=12, TextXAlignment=Enum.TextXAlignment.Left,
        ZIndex=25, Parent=body,
    })
end

--==============================================================
-- PAGE PARAMÈTRES
--==============================================================
renderPageSettings = function(body)
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,32), BackgroundTransparency=1, Text=loadstring(base64decode("UGFyYW3DqHRyZXM="))(), TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=22, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,16), Position=UDim2.new(0,0,0,80), BackgroundTransparency=1, Text=loadstring(base64decode("Q09VTEVVUiBEJ0FDQ0VOVA=="))(), TextColor3=THEME.TextMuted, Font=Enum.Font.GothamBold, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
    local grid = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,0,0,140), Position=UDim2.new(0,0,0,104), BackgroundTransparency=1, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VUlHcmlkTGF5b3V0"))(), {CellSize=UDim2.new(0,58,0,58), CellPadding=UDim2.new(0,14,0,14), SortOrder=Enum.SortOrder.LayoutOrder, HorizontalAlignment=Enum.HorizontalAlignment.Left, Parent=grid})
    local rings = {}
    for idx, preset in ipairs(COLOR_PRESETS) do
        local swatch = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {BackgroundColor3=preset.Accent, BorderSizePixel=0, Text=loadstring(base64decode(""))(), AutoButtonColor=false, LayoutOrder=idx, ZIndex=26, Parent=grid})
        corner(swatch, 29)
        local ring = new(loadstring(base64decode("VUlTdHJva2U="))(), {Color=THEME.TextPrimary, Thickness=2, Transparency=(preset.name==State.CurrentPreset) and 0 or 1, ApplyStrokeMode=Enum.ApplyStrokeMode.Border, Parent=swatch})
        rings[preset.name] = ring
        swatch.MouseButton1Click:Connect(function()
            if State.CurrentPreset == preset.name then return end
            State.CurrentPreset = preset.name
            applyPreset(preset)
            for name, r in pairs(rings) do
                TweenService:Create(r, TweenInfo.new(0.2), {Transparency=(name==preset.name) and 0 or 1}):Play()
            end
        end)
    end
end

--==============================================================
-- HELPERS UI
--==============================================================
makeSectionHeader = function(parent, layoutOrder, text)
    local holder = new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(1,0,0,26), BackgroundTransparency=1,
        LayoutOrder=layoutOrder, ZIndex=19, Parent=parent,
    })
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {
        Size=UDim2.new(1,0,1,0), Position=UDim2.new(0,4,0,0),
        BackgroundTransparency=1, Text=string.upper(text),
        TextColor3=THEME.TextMuted, Font=Enum.Font.GothamBold,
        TextSize=10, TextXAlignment=Enum.TextXAlignment.Left,
        ZIndex=19, Parent=holder,
    })
    new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(1,0,0,1), Position=UDim2.new(0,0,1,-1),
        BackgroundColor3=THEME.Border, BackgroundTransparency=0.5,
        BorderSizePixel=0, ZIndex=19, Parent=holder,
    })
end

makeToggleRow = function(parent, layoutOrder, label, desc, getState, setState, color)
    local card = new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(1, 0, 0, 58),
        BackgroundColor3=THEME.Surface, BackgroundTransparency=0.25,
        BorderSizePixel=0, LayoutOrder=layoutOrder, ZIndex=26, Parent=parent,
    })
    corner(card, 12)
    stroke(card, THEME.Border, 1, 0.5)
    local acc = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0, 3, 0, 32), Position=UDim2.new(0, 14, 0.5, 0), AnchorPoint=Vector2.new(0, 0.5), BackgroundColor3=color, BorderSizePixel=0, ZIndex=27, Parent=card})
    corner(acc, 2)
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1, -100, 0, 18), Position=UDim2.new(0, 26, 0, 10), BackgroundTransparency=1, Text=label, TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=14, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=27, Parent=card})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1, -100, 0, 14), Position=UDim2.new(0, 26, 0, 32), BackgroundTransparency=1, Text=desc, TextColor3=THEME.TextMuted, Font=Enum.Font.Gotham, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=27, Parent=card})
    local toggle = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {Size=UDim2.new(0, 46, 0, 24), Position=UDim2.new(1, -58, 0.5, 0), AnchorPoint=Vector2.new(0, 0.5), BackgroundColor3=getState() and color or THEME.SurfaceHi, BorderSizePixel=0, Text=loadstring(base64decode(""))(), AutoButtonColor=false, ZIndex=28, Parent=card})
    corner(toggle, 12)
    local knob = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0, 18, 0, 18), Position=getState() and UDim2.new(1, -21, 0.5, 0) or UDim2.new(0, 3, 0.5, 0), AnchorPoint=Vector2.new(0, 0.5), BackgroundColor3=Color3.fromRGB(255,255,255), BorderSizePixel=0, ZIndex=29, Parent=toggle})
    corner(knob, 9)
    toggle.MouseButton1Click:Connect(function()
        setState()
        local s = getState()
        TweenService:Create(toggle, TweenInfo.new(0.2), {BackgroundColor3=s and color or THEME.SurfaceHi}):Play()
        TweenService:Create(knob, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {Position=s and UDim2.new(1, -21, 0.5, 0) or UDim2.new(0, 3, 0.5, 0)}):Play()
    end)
    return card
end

makeSliderRow = function(parent, layoutOrder, label, minV, maxV, getValue, setValue, color)
    local card = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1, 0, 0, 52), BackgroundColor3=THEME.Surface, BackgroundTransparency=0.25, BorderSizePixel=0, LayoutOrder=layoutOrder, ZIndex=26, Parent=parent})
    corner(card, 12)
    stroke(card, THEME.Border, 1, 0.5)
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(0,130,0,14), Position=UDim2.new(0,26,0,8), BackgroundTransparency=1, Text=label, TextColor3=THEME.TextMuted, Font=Enum.Font.GothamBold, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=27, Parent=card})
    local valLbl = new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(0,60,0,14), Position=UDim2.new(1,-70,0,8), BackgroundTransparency=1, Text=tostring(getValue()), TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=11, TextXAlignment=Enum.TextXAlignment.Right, ZIndex=27, Parent=card})
    local trackBg = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,-52,0,8), Position=UDim2.new(0,26,0,32), BackgroundColor3=THEME.SurfaceHi, BorderSizePixel=0, ZIndex=27, Parent=card})
    corner(trackBg, 4)
    local ratio = (getValue() - minV) / (maxV - minV)
    local trackFill = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(ratio, 0, 1, 0), BackgroundColor3=color, BorderSizePixel=0, ZIndex=28, Parent=trackBg})
    corner(trackFill, 4)
    local knob = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,14,0,14), Position=UDim2.new(ratio, 0, 0.5, 0), AnchorPoint=Vector2.new(0.5,0.5), BackgroundColor3=Color3.fromRGB(255,255,255), BorderSizePixel=0, ZIndex=29, Parent=trackBg})
    corner(knob, 7)
    stroke(knob, Color3.fromRGB(0,0,0), 2, 0.3)
    local hit = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {Size=UDim2.new(1,-52,0,22), Position=UDim2.new(0,26,0,20), BackgroundTransparency=1, Text=loadstring(base64decode(""))(), AutoButtonColor=false, ZIndex=30, Parent=card})
    local dragging = false
    local function apply(xAbs)
        local tp = trackBg.AbsolutePosition.X
        local tw = trackBg.AbsoluteSize.X
        if tw <= 0 then return end
        local r = math.clamp((xAbs - tp) / tw, 0, 1)
        local v = minV + r * (maxV - minV)
        v = math.floor(v * 10 + 0.5) / 10
        setValue(v)
        knob.Position = UDim2.new(r, 0, 0.5, 0)
        trackFill.Size = UDim2.new(r, 0, 1, 0)
        valLbl.Text = tostring(v)
    end
    hit.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true; apply(input.Position.X)
        end
    end)
    hit.InputChanged:Connect(function(input)
        if not dragging then return end
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            apply(input.Position.X)
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)
end

makeActionRow = function(parent, layoutOrder, label, desc, color, onClick)
    local card = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {Size=UDim2.new(1, 0, 0, 58), BackgroundColor3=THEME.Surface, BackgroundTransparency=0.25, BorderSizePixel=0, Text=loadstring(base64decode(""))(), AutoButtonColor=false, LayoutOrder=layoutOrder, ZIndex=26, Parent=parent})
    corner(card, 12)
    stroke(card, THEME.Border, 1, 0.5)
    local acc = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0, 3, 0, 32), Position=UDim2.new(0, 14, 0.5, 0), AnchorPoint=Vector2.new(0, 0.5), BackgroundColor3=color, BorderSizePixel=0, ZIndex=27, Parent=card})
    corner(acc, 2)
    local lbl = new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1, -60, 0, 18), Position=UDim2.new(0, 26, 0, 10), BackgroundTransparency=1, Text=label, TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=14, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=27, Parent=card})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1, -60, 0, 14), Position=UDim2.new(0, 26, 0, 32), BackgroundTransparency=1, Text=desc, TextColor3=THEME.TextMuted, Font=Enum.Font.Gotham, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=27, Parent=card})
    local holder, c1, c2 = drawChevron(card, loadstring(base64decode("cmlnaHQ="))(), THEME.TextMuted, 7)
    holder.Position=UDim2.new(1, -26, 0.5, 0); holder.AnchorPoint=Vector2.new(0.5,0.5)
    card.MouseEnter:Connect(function()
        TweenService:Create(card, TweenInfo.new(0.18), {BackgroundColor3=THEME.SurfaceHi, BackgroundTransparency=0.1}):Play()
        TweenService:Create(lbl, TweenInfo.new(0.18), {TextColor3=color}):Play()
        TweenService:Create(c1, TweenInfo.new(0.18), {BackgroundColor3=color}):Play()
        TweenService:Create(c2, TweenInfo.new(0.18), {BackgroundColor3=color}):Play()
    end)
    card.MouseLeave:Connect(function()
        TweenService:Create(card, TweenInfo.new(0.18), {BackgroundColor3=THEME.Surface, BackgroundTransparency=0.25}):Play()
        TweenService:Create(lbl, TweenInfo.new(0.18), {TextColor3=THEME.TextPrimary}):Play()
        TweenService:Create(c1, TweenInfo.new(0.18), {BackgroundColor3=THEME.TextMuted}):Play()
        TweenService:Create(c2, TweenInfo.new(0.18), {BackgroundColor3=THEME.TextMuted}):Play()
    end)
    card.MouseButton1Click:Connect(onClick)
    return card
end

makeActionRowToggle = function(parent, layoutOrder, label, desc, getState, setState, color)
    local card = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {Size=UDim2.new(1, 0, 0, 58), BackgroundColor3=THEME.Surface, BackgroundTransparency=0.25, BorderSizePixel=0, Text=loadstring(base64decode(""))(), AutoButtonColor=false, LayoutOrder=layoutOrder, ZIndex=26, Parent=parent})
    corner(card, 12)
    stroke(card, THEME.Border, 1, 0.5)
    local acc = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0, 3, 0, 32), Position=UDim2.new(0, 14, 0.5, 0), AnchorPoint=Vector2.new(0, 0.5), BackgroundColor3=getState() and color or THEME.TextMuted, BorderSizePixel=0, ZIndex=27, Parent=card})
    corner(acc, 2)
    local lbl = new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1, -60, 0, 18), Position=UDim2.new(0, 26, 0, 10), BackgroundTransparency=1, Text=label, TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=14, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=27, Parent=card})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1, -60, 0, 14), Position=UDim2.new(0, 26, 0, 32), BackgroundTransparency=1, Text=desc, TextColor3=THEME.TextMuted, Font=Enum.Font.Gotham, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=27, Parent=card})
    local holder, c1, c2 = drawChevron(card, loadstring(base64decode("cmlnaHQ="))(), getState() and color or THEME.TextMuted, 7)
    holder.Position=UDim2.new(1, -26, 0.5, 0); holder.AnchorPoint=Vector2.new(0.5,0.5)

    local function refresh()
        local s = getState()
        acc.BackgroundColor3 = s and color or THEME.TextMuted
        c1.BackgroundColor3 = s and color or THEME.TextMuted
        c2.BackgroundColor3 = s and color or THEME.TextMuted
        lbl.TextColor3 = s and color or THEME.TextPrimary
    end

    card.MouseEnter:Connect(function()
        TweenService:Create(card, TweenInfo.new(0.18), {BackgroundColor3=THEME.SurfaceHi, BackgroundTransparency=0.1}):Play()
    end)
    card.MouseLeave:Connect(function()
        TweenService:Create(card, TweenInfo.new(0.18), {BackgroundColor3=THEME.Surface, BackgroundTransparency=0.25}):Play()
    end)
    card.MouseButton1Click:Connect(function()
        setState(not getState())
        refresh()
    end)
    return card
end

makeCollapsibleActionRow = function(parent, layoutOrder, label, desc, getState, setState, color, contentBuilder)
    local wrapper = new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(1,0,0,58), BackgroundTransparency=1,
        LayoutOrder=layoutOrder, ZIndex=26, Parent=parent,
        AutomaticSize=Enum.AutomaticSize.Y,
    })
    new(loadstring(base64decode("VUlMaXN0TGF5b3V0"))(), {Padding=UDim.new(0,0), SortOrder=Enum.SortOrder.LayoutOrder, Parent=wrapper})

    local card = new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(1, 0, 0, 58),
        BackgroundColor3=THEME.Surface, BackgroundTransparency=0.25,
        BorderSizePixel=0, LayoutOrder=1, ZIndex=26, Parent=wrapper,
    })
    corner(card, 12)
    stroke(card, THEME.Border, 1, 0.5)

    local acc = new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(0, 3, 0, 32), Position=UDim2.new(0, 14, 0.5, 0),
        AnchorPoint=Vector2.new(0, 0.5),
        BackgroundColor3=getState() and color or THEME.TextMuted,
        BorderSizePixel=0, ZIndex=27, Parent=card
    })
    corner(acc, 2)

    local lbl = new(loadstring(base64decode("VGV4dExhYmVs"))(), {
        Size=UDim2.new(1, -100, 0, 18), Position=UDim2.new(0, 26, 0, 10),
        BackgroundTransparency=1, Text=label, TextColor3=THEME.TextPrimary,
        Font=Enum.Font.GothamBold, TextSize=14,
        TextXAlignment=Enum.TextXAlignment.Left, ZIndex=27, Parent=card,
    })
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {
        Size=UDim2.new(1, -100, 0, 14), Position=UDim2.new(0, 26, 0, 32),
        BackgroundTransparency=1, Text=desc, TextColor3=THEME.TextMuted,
        Font=Enum.Font.Gotham, TextSize=10,
        TextXAlignment=Enum.TextXAlignment.Left, ZIndex=27, Parent=card,
    })

    local toggle = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {
        Size=UDim2.new(0, 46, 0, 24), Position=UDim2.new(1, -80, 0.5, 0),
        AnchorPoint=Vector2.new(0, 0.5),
        BackgroundColor3=getState() and color or THEME.SurfaceHi,
        BorderSizePixel=0, Text=loadstring(base64decode(""))(), AutoButtonColor=false,
        ZIndex=28, Parent=card,
    })
    corner(toggle, 12)
    local knob = new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(0, 18, 0, 18),
        Position=getState() and UDim2.new(1, -21, 0.5, 0) or UDim2.new(0, 3, 0.5, 0),
        AnchorPoint=Vector2.new(0, 0.5), BackgroundColor3=Color3.fromRGB(255,255,255),
        BorderSizePixel=0, ZIndex=29, Parent=toggle,
    })
    corner(knob, 9)

    local chevHolder = new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(0,10,0,10), Position=UDim2.new(1,-26,0.5,0),
        AnchorPoint=Vector2.new(0.5,0.5), BackgroundTransparency=1, ZIndex=27, Parent=card,
    })
    local ch1 = new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(0,7,0,2), Position=UDim2.new(0.5,0,0.5,-2),
        AnchorPoint=Vector2.new(1,0.5), BackgroundColor3=THEME.TextMuted,
        BorderSizePixel=0, Rotation=45, ZIndex=28, Parent=chevHolder,
    })
    corner(ch1, 1)
    local ch2 = new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(0,7,0,2), Position=UDim2.new(0.5,0,0.5,2),
        AnchorPoint=Vector2.new(1,0.5), BackgroundColor3=THEME.TextMuted,
        BorderSizePixel=0, Rotation=-45, ZIndex=28, Parent=chevHolder,
    })
    corner(ch2, 1)

    local contentHolder = new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(1,0,0,0),
        BackgroundTransparency=1, ClipsDescendants=true,
        LayoutOrder=2, ZIndex=25, Parent=wrapper,
    })

    toggle.MouseButton1Click:Connect(function()
        setState(not getState())
        local s = getState()
        TweenService:Create(toggle, TweenInfo.new(0.2), {BackgroundColor3=s and color or THEME.SurfaceHi}):Play()
        TweenService:Create(knob, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
            Position=s and UDim2.new(1,-21,0.5,0) or UDim2.new(0,3,0.5,0),
        }):Play()
        acc.BackgroundColor3 = s and color or THEME.TextMuted
        lbl.TextColor3 = s and color or THEME.TextPrimary
    end)

    local chevBtn = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {
        Size=UDim2.new(0,30,0,30), Position=UDim2.new(1,-42,0.5,0),
        AnchorPoint=Vector2.new(0.5,0.5), BackgroundTransparency=1,
        Text=loadstring(base64decode(""))(), AutoButtonColor=false, ZIndex=29, Parent=card,
    })
    local contentOpened = false
    chevBtn.MouseButton1Click:Connect(function()
        contentOpened = not contentOpened
        if contentOpened then
            for _, c in ipairs(contentHolder:GetChildren()) do c:Destroy() end
            contentBuilder(contentHolder)
            TweenService:Create(contentHolder, TweenInfo.new(0.28, Enum.EasingStyle.Quad), {Size=UDim2.new(1,0,0,64)}):Play()
            TweenService:Create(ch1, TweenInfo.new(0.2), {Rotation=-45}):Play()
            TweenService:Create(ch2, TweenInfo.new(0.2), {Rotation=45}):Play()
        else
            TweenService:Create(contentHolder, TweenInfo.new(0.24, Enum.EasingStyle.Quad), {Size=UDim2.new(1,0,0,0)}):Play()
            TweenService:Create(ch1, TweenInfo.new(0.2), {Rotation=45}):Play()
            TweenService:Create(ch2, TweenInfo.new(0.2), {Rotation=-45}):Play()
        end
    end)

    card.MouseEnter:Connect(function()
        TweenService:Create(card, TweenInfo.new(0.18), {BackgroundColor3=THEME.SurfaceHi, BackgroundTransparency=0.1}):Play()
    end)
    card.MouseLeave:Connect(function()
        TweenService:Create(card, TweenInfo.new(0.18), {BackgroundColor3=THEME.Surface, BackgroundTransparency=0.25}):Play()
    end)

    return wrapper
end

--==============================================================
-- POPUP FLY
--==============================================================
openFlyPopup = function()
    if State.FlyPopup and State.FlyPopup.Parent then
        State.FlyPopup:Destroy()
        State.FlyPopup = nil
        return
    end
    local shell = State.Shell
    if not shell then return end

    local overlay = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {
        Size=UDim2.new(1,0,1,0),
        BackgroundColor3=Color3.fromRGB(0,0,0), BackgroundTransparency=0.5,
        BorderSizePixel=0, Text=loadstring(base64decode(""))(), AutoButtonColor=false,
        ZIndex=490, Parent=shell,
    })
    overlay.MouseButton1Click:Connect(function()
        if State.FlyPopup then State.FlyPopup:Destroy(); State.FlyPopup = nil end
        overlay:Destroy()
    end)

    local popup = new(loadstring(base64decode("RnJhbWU="))(), {
        Name=loadstring(base64decode("Rmx5UG9wdXA="))(),
        Size=UDim2.new(0,340,0,340),
        Position=UDim2.new(0.5,0,0.5,0),
        AnchorPoint=Vector2.new(0.5,0.5),
        BackgroundColor3=THEME.BgTop,
        BackgroundTransparency=0,
        BorderSizePixel=0,
        Active=true,
        ClipsDescendants=true,
        ZIndex=500, Parent=shell,
    })
    corner(popup, 18)
    gradient(popup, Color3.fromRGB(30,32,42), Color3.fromRGB(16,17,24), 90)

    new(loadstring(base64decode("VUlTdHJva2U="))(), {Color=THEME.Accent, Thickness=2, Transparency=0.4, ApplyStrokeMode=Enum.ApplyStrokeMode.Border, ZIndex=500, Parent=popup})
    new(loadstring(base64decode("VUlTdHJva2U="))(), {Color=THEME.AccentGlow, Thickness=1, Transparency=0.75, ApplyStrokeMode=Enum.ApplyStrokeMode.Border, ZIndex=500, Parent=popup})
    new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {Size=UDim2.new(1,0,1,0), BackgroundTransparency=1, Text=loadstring(base64decode(""))(), AutoButtonColor=false, ZIndex=501, Parent=popup})

    local accentBar = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,0,0,3), Position=UDim2.new(0,0,0,0), BackgroundColor3=THEME.Accent, BorderSizePixel=0, ZIndex=502, Parent=popup})
    local accentGrad = gradient(accentBar, THEME.Accent, THEME.AccentGlow, 0)
    trackGradient(accentGrad, loadstring(base64decode("QWNjZW50RGlt"))(), loadstring(base64decode("QWNjZW50R2xvdw=="))())

    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,-90,0,22), Position=UDim2.new(0,24,0,22), BackgroundTransparency=1, Text=loadstring(base64decode("Rmx5"))(), TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=20, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=503, Parent=popup})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,-90,0,16), Position=UDim2.new(0,24,0,46), BackgroundTransparency=1, Text=loadstring(base64decode("Q29udHLDtGxlIGR1IHZvbA=="))(), TextColor3=THEME.TextMuted, Font=Enum.Font.Gotham, TextSize=11, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=503, Parent=popup})

    local stateDot = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,10,0,10), Position=UDim2.new(1,-110,0,28), BackgroundColor3=PlayerState.FlyEnabled and THEME.Success or THEME.TextMuted, BorderSizePixel=0, ZIndex=503, Parent=popup})
    corner(stateDot, 5)
    local stateLbl = new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(0,60,0,14), Position=UDim2.new(1,-94,0,26), BackgroundTransparency=1, Text=PlayerState.FlyEnabled and loadstring(base64decode("QWN0aWY="))() or loadstring(base64decode("SW5hY3RpZg=="))(), TextColor3=PlayerState.FlyEnabled and THEME.Success or THEME.TextMuted, Font=Enum.Font.GothamBold, TextSize=11, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=503, Parent=popup})

    local closeBtn = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {Size=UDim2.new(0,30,0,30), Position=UDim2.new(1,-42,0,22), BackgroundColor3=THEME.SurfaceHi, BackgroundTransparency=0.3, BorderSizePixel=0, Text=loadstring(base64decode(""))(), AutoButtonColor=false, ZIndex=504, Parent=popup})
    corner(closeBtn, 10)
    local cdot = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,8,0,8), Position=UDim2.new(0.5,0,0.5,0), AnchorPoint=Vector2.new(0.5,0.5), BackgroundColor3=THEME.CloseDot, BorderSizePixel=0, ZIndex=505, Parent=closeBtn})
    corner(cdot, 4)
    closeBtn.MouseButton1Click:Connect(function()
        if State.FlyPopup then State.FlyPopup:Destroy(); State.FlyPopup = nil end
        overlay:Destroy()
    end)

    new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,-48,0,1), Position=UDim2.new(0,24,0,84), BackgroundColor3=THEME.Border, BackgroundTransparency=0.5, BorderSizePixel=0, ZIndex=502, Parent=popup})

    local toggleRow = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,-48,0,60), Position=UDim2.new(0,24,0,100), BackgroundColor3=THEME.Surface, BackgroundTransparency=0.25, BorderSizePixel=0, ZIndex=502, Parent=popup})
    corner(toggleRow, 12)
    new(loadstring(base64decode("VUlTdHJva2U="))(), {Color=THEME.Border, Thickness=1, Transparency=0.5, ApplyStrokeMode=Enum.ApplyStrokeMode.Border, Parent=toggleRow})
    new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,3,0,36), Position=UDim2.new(0,12,0.5,0), AnchorPoint=Vector2.new(0,0.5), BackgroundColor3=THEME.Accent, BorderSizePixel=0, ZIndex=503, Parent=toggleRow})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,-100,0,18), Position=UDim2.new(0,26,0,12), BackgroundTransparency=1, Text=loadstring(base64decode("QWN0aXZlciBsZSBGbHk="))(), TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=14, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=503, Parent=toggleRow})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,-100,0,14), Position=UDim2.new(0,26,0,32), BackgroundTransparency=1, Text=loadstring(base64decode("Vy9BL1MvRCArIEVzcGFjZSAvIEN0cmw="))(), TextColor3=THEME.TextMuted, Font=Enum.Font.Gotham, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=503, Parent=toggleRow})
    local tglBtn = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {Size=UDim2.new(0,46,0,24), Position=UDim2.new(1,-58,0.5,0), AnchorPoint=Vector2.new(0,0.5), BackgroundColor3=PlayerState.FlyEnabled and THEME.Accent or THEME.SurfaceHi, BorderSizePixel=0, Text=loadstring(base64decode(""))(), AutoButtonColor=false, ZIndex=503, Parent=toggleRow})
    corner(tglBtn, 12)
    local tglKnob = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,18,0,18), Position=PlayerState.FlyEnabled and UDim2.new(1,-21,0.5,0) or UDim2.new(0,3,0.5,0), AnchorPoint=Vector2.new(0,0.5), BackgroundColor3=Color3.fromRGB(255,255,255), BorderSizePixel=0, ZIndex=504, Parent=tglBtn})
    corner(tglKnob, 9)

    local function refreshStateUI()
        local s = PlayerState.FlyEnabled
        stateDot.BackgroundColor3 = s and THEME.Success or THEME.TextMuted
        stateLbl.Text = s and loadstring(base64decode("QWN0aWY="))() or loadstring(base64decode("SW5hY3RpZg=="))()
        stateLbl.TextColor3 = s and THEME.Success or THEME.TextMuted
        TweenService:Create(tglBtn, TweenInfo.new(0.2), {BackgroundColor3=s and THEME.Accent or THEME.SurfaceHi}):Play()
        TweenService:Create(tglKnob, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {Position=s and UDim2.new(1,-21,0.5,0) or UDim2.new(0,3,0.5,0)}):Play()
    end

    tglBtn.MouseButton1Click:Connect(function()
        toggleFly()
        refreshStateUI()
    end)

    local speedCard = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,-48,0,60), Position=UDim2.new(0,24,0,172), BackgroundColor3=THEME.Surface, BackgroundTransparency=0.25, BorderSizePixel=0, ZIndex=502, Parent=popup})
    corner(speedCard, 12)
    new(loadstring(base64decode("VUlTdHJva2U="))(), {Color=THEME.Border, Thickness=1, Transparency=0.5, ApplyStrokeMode=Enum.ApplyStrokeMode.Border, Parent=speedCard})
    new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,3,0,36), Position=UDim2.new(0,12,0.5,0), AnchorPoint=Vector2.new(0,0.5), BackgroundColor3=Color3.fromRGB(170,130,235), BorderSizePixel=0, ZIndex=503, Parent=speedCard})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,-100,0,14), Position=UDim2.new(0,26,0,10), BackgroundTransparency=1, Text=loadstring(base64decode("VklURVNTRQ=="))(), TextColor3=THEME.TextMuted, Font=Enum.Font.GothamBold, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=503, Parent=speedCard})
    local speedVal = new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(0,80,0,16), Position=UDim2.new(1,-94,0,8), BackgroundTransparency=1, Text=tostring(PlayerState.FlySpeed)..loadstring(base64decode("IHUvcw=="))(), TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=12, TextXAlignment=Enum.TextXAlignment.Right, ZIndex=503, Parent=speedCard})
    local speedBg = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,-52,0,8), Position=UDim2.new(0,26,0,36), BackgroundColor3=THEME.SurfaceHi, BorderSizePixel=0, ZIndex=503, Parent=speedCard})
    corner(speedBg, 4)
    local speedRatio = (PlayerState.FlySpeed - 10) / (200 - 10)
    local speedFill = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(speedRatio,0,1,0), BackgroundColor3=Color3.fromRGB(170,130,235), BorderSizePixel=0, ZIndex=504, Parent=speedBg})
    corner(speedFill, 4)
    local speedKnob = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,14,0,14), Position=UDim2.new(speedRatio,0,0.5,0), AnchorPoint=Vector2.new(0.5,0.5), BackgroundColor3=Color3.fromRGB(255,255,255), BorderSizePixel=0, ZIndex=505, Parent=speedBg})
    corner(speedKnob, 7)
    stroke(speedKnob, Color3.fromRGB(0,0,0), 2, 0.3)
    local speedHit = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {Size=UDim2.new(1,-52,0,20), Position=UDim2.new(0,26,0,26), BackgroundTransparency=1, Text=loadstring(base64decode(""))(), AutoButtonColor=false, ZIndex=506, Parent=speedCard})
    local sDrag = false
    local function applySpeed(xAbs)
        local tp = speedBg.AbsolutePosition.X
        local tw = speedBg.AbsoluteSize.X
        if tw <= 0 then return end
        local r = math.clamp((xAbs - tp) / tw, 0, 1)
        local v = math.floor(10 + r * (200-10) + 0.5)
        PlayerState.FlySpeed = v
        speedKnob.Position = UDim2.new(r,0,0.5,0)
        speedFill.Size = UDim2.new(r,0,1,0)
        speedVal.Text = tostring(v)..loadstring(base64decode("IHUvcw=="))()
    end
    speedHit.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            sDrag = true; applySpeed(input.Position.X)
        end
    end)
    speedHit.InputChanged:Connect(function(input)
        if not sDrag then return end
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            applySpeed(input.Position.X)
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            sDrag = false
        end
    end)

    local bindCard = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,-48,0,64), Position=UDim2.new(0,24,0,244), BackgroundColor3=THEME.Surface, BackgroundTransparency=0.25, BorderSizePixel=0, ZIndex=502, Parent=popup})
    corner(bindCard, 12)
    new(loadstring(base64decode("VUlTdHJva2U="))(), {Color=THEME.Border, Thickness=1, Transparency=0.5, ApplyStrokeMode=Enum.ApplyStrokeMode.Border, Parent=bindCard})
    new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,3,0,40), Position=UDim2.new(0,12,0.5,0), AnchorPoint=Vector2.new(0,0.5), BackgroundColor3=Color3.fromRGB(240,165,95), BorderSizePixel=0, ZIndex=503, Parent=bindCard})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,-120,0,14), Position=UDim2.new(0,26,0,8), BackgroundTransparency=1, Text=loadstring(base64decode("QklORCBUT1VDSEU="))(), TextColor3=THEME.TextMuted, Font=Enum.Font.GothamBold, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=503, Parent=bindCard})
    local bindLbl = new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,-120,0,18), Position=UDim2.new(0,26,0,28), BackgroundTransparency=1, Text=PlayerState.FlyBind and PlayerState.FlyBind.Name or loadstring(base64decode("QXVjdW5l"))(), TextColor3=PlayerState.FlyBind and THEME.Accent or THEME.TextMuted, Font=Enum.Font.GothamBold, TextSize=13, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=503, Parent=bindCard})
    local bindBtn = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {Size=UDim2.new(0,80,0,32), Position=UDim2.new(1,-92,0.5,0), AnchorPoint=Vector2.new(0,0.5), BackgroundColor3=Color3.fromRGB(240,165,95), BorderSizePixel=0, Text=loadstring(base64decode("QklORA=="))(), TextColor3=Color3.fromRGB(30,20,10), Font=Enum.Font.GothamBold, TextSize=12, AutoButtonColor=false, ZIndex=503, Parent=bindCard})
    corner(bindBtn, 10)
    local resetBtn = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {Size=UDim2.new(0,60,0,16), Position=UDim2.new(1,-92,0,10), BackgroundTransparency=1, Text=loadstring(base64decode("UmVzZXQ="))(), TextColor3=THEME.TextMuted, Font=Enum.Font.Gotham, TextSize=10, TextXAlignment=Enum.TextXAlignment.Center, AutoButtonColor=false, ZIndex=504, Parent=bindCard})
    resetBtn.MouseEnter:Connect(function() resetBtn.TextColor3 = THEME.Error end)
    resetBtn.MouseLeave:Connect(function() resetBtn.TextColor3 = THEME.TextMuted end)
    resetBtn.MouseButton1Click:Connect(function()
        setFlyBind(nil)
        bindLbl.Text = loadstring(base64decode("QXVjdW5l"))()
        bindLbl.TextColor3 = THEME.TextMuted
        sendNotification(loadstring(base64decode("Rmx5"))(), loadstring(base64decode("QmluZCByZXRpcsOp"))(), false)
    end)

    local waitingForBind = false
    local bindListenConn
    bindBtn.MouseButton1Click:Connect(function()
        if waitingForBind then return end
        waitingForBind = true
        bindBtn.Text = loadstring(base64decode("Li4u"))()
        bindLbl.Text = loadstring(base64decode("QXBwdWllIHN1ciB1bmUgdG91Y2hlLi4u"))()
        bindLbl.TextColor3 = THEME.Accent
        bindListenConn = UserInputService.InputBegan:Connect(function(input, gp)
            if input.UserInputType ~= Enum.UserInputType.Keyboard then return end
            if input.KeyCode == Enum.KeyCode.Unknown then return end
            setFlyBind(input.KeyCode)
            bindLbl.Text = input.KeyCode.Name
            bindLbl.TextColor3 = THEME.Accent
            bindBtn.Text = loadstring(base64decode("QklORA=="))()
            waitingForBind = false
            if bindListenConn then bindListenConn:Disconnect(); bindListenConn = nil end
            sendNotification(loadstring(base64decode("Rmx5"))(), loadstring(base64decode("QmluZCA6IA=="))()..input.KeyCode.Name, false)
        end)
    end)

    popup.Size = UDim2.new(0, 240, 0, 240)
    popup.BackgroundTransparency = 1
    TweenService:Create(popup, TweenInfo.new(0.38, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 340, 0, 340),
        BackgroundTransparency = 0,
    }):Play()

    State.FlyPopup = popup
    popup.Destroying:Connect(function()
        if overlay and overlay.Parent then overlay:Destroy() end
    end)
end

--==============================================================
-- PAGE PLAYER
--==============================================================
renderPagePlayer = function(body)
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,32), BackgroundTransparency=1, Text=loadstring(base64decode("UGxheWVy"))(), TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=24, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,22), Position=UDim2.new(0,0,0,38), BackgroundTransparency=1, Text=loadstring(base64decode("TW91dmVtZW50ICYgc3RhdGlzdGlxdWVz"))(), TextColor3=THEME.TextSecondary, Font=Enum.Font.Gotham, TextSize=13, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})

    local list = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,0,0,0), Position=UDim2.new(0,0,0,76), BackgroundTransparency=1, AutomaticSize=Enum.AutomaticSize.Y, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VUlMaXN0TGF5b3V0"))(), {Padding=UDim.new(0,8), SortOrder=Enum.SortOrder.LayoutOrder, Parent=list})

    local order = 0
    local function nextOrder() order = order + 1; return order end

    makeSectionHeader(list, nextOrder(), loadstring(base64decode("TW91dmVtZW50"))())

    local flyCard = makeActionRow(list, nextOrder(), loadstring(base64decode("RkxZ"))(), loadstring(base64decode("T3V2cmlyIGxlIHBhbm5lYXUgRmx5"))(), Color3.fromRGB(115,155,240), function()
        openFlyPopup()
    end)
    local stateDot = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,6,0,6), Position=UDim2.new(1,-16,0.5,0), AnchorPoint=Vector2.new(0.5,0.5), BackgroundColor3=PlayerState.FlyEnabled and THEME.Success or THEME.TextMuted, BorderSizePixel=0, ZIndex=29, Parent=flyCard})
    corner(stateDot, 3)
    task.spawn(function()
        while flyCard.Parent do
            stateDot.BackgroundColor3 = PlayerState.FlyEnabled and THEME.Success or THEME.TextMuted
            task.wait(0.3)
        end
    end)

    makeToggleRow(list, nextOrder(), loadstring(base64decode("U1BJTg=="))(), loadstring(base64decode("VG91cm5lIHN1ciB0b2ktbcOqbWU="))(),
        function() return PlayerState.SpinEnabled end,
        function() toggleSpin() end,
        Color3.fromRGB(170,130,235))

    makeSliderRow(list, nextOrder(), loadstring(base64decode("VklURVNTRSBTUElO"))(), 2, 50,
        function() return PlayerState.SpinSpeed end,
        function(v) updateSpinSpeed(v) end,
        Color3.fromRGB(170,130,235))

    makeToggleRow(list, nextOrder(), loadstring(base64decode("SkVSSw=="))(), loadstring(base64decode("U2Vjb3Vzc2UgcmFwaWRl"))(),
        function() return PlayerState.JerkEnabled end,
        function() toggleJerk() end,
        Color3.fromRGB(240,165,95))

    makeSliderRow(list, nextOrder(), loadstring(base64decode("SU5URU5TSVTDiSBKRVJL"))(), 0.5, 10,
        function() return PlayerState.JerkIntensity end,
        function(v) updateJerkIntensity(v) end,
        Color3.fromRGB(240,165,95))

    makeToggleRow(list, nextOrder(), loadstring(base64decode("Tk9DTElQ"))(), loadstring(base64decode("VHJhdmVyc2UgbGVzIG11cnM="))(),
        function() return PlayerState.NoclipEnabled end,
        function() toggleNoclip() end,
        Color3.fromRGB(130,205,155))

    makeSectionHeader(list, nextOrder(), loadstring(base64decode("U3RhdHM="))())

    makeSliderRow(list, nextOrder(), loadstring(base64decode("V0FMS1NQRUVE"))(), 16, 200,
        function() return PlayerState.WalkSpeed end,
        function(v) applyWalkSpeed(v) end,
        Color3.fromRGB(115,155,240))

    makeSliderRow(list, nextOrder(), loadstring(base64decode("SlVNUFBPV0VS"))(), 50, 500,
        function() return PlayerState.JumpPower end,
        function(v) applyJumpPower(v) end,
        Color3.fromRGB(130,205,155))

    makeSliderRow(list, nextOrder(), loadstring(base64decode("R1JBVklUWQ=="))(), 0, 196,
        function() return PlayerState.Gravity end,
        function(v) applyGravity(v) end,
        Color3.fromRGB(170,130,235))

    makeSectionHeader(list, nextOrder(), loadstring(base64decode("RXh0cmFz"))())

    makeToggleRow(list, nextOrder(), loadstring(base64decode("SU5GSU5JVEUgSlVNUA=="))(), loadstring(base64decode("U2F1dCBpbmZpbmk="))(),
        function() return PlayerState.InfiniteJump end,
        function() toggleInfiniteJump() end,
        Color3.fromRGB(240,165,95))

    makeToggleRow(list, nextOrder(), loadstring(base64decode("QU5USS1BRks="))(), loadstring(base64decode("w4l2aXRlIGxlIGtpY2sgaW5hY3Rpdml0w6k="))(),
        function() return PlayerState.AntiAFK end,
        function() toggleAntiAFK() end,
        Color3.fromRGB(140,200,155))

    makeToggleRow(list, nextOrder(), loadstring(base64decode("RlVMTEJSSUdIVA=="))(), loadstring(base64decode("w4ljbGFpcmUgdG91dGUgbGEgbWFw"))(),
        function() return PlayerState.Fullbright end,
        function() toggleFullbright() end,
        Color3.fromRGB(255,215,120))

    makeToggleRow(list, nextOrder(), loadstring(base64decode("QU5USS1GTElORw=="))(), loadstring(base64decode("QmxvcXVlIGxlcyB0ZW50YXRpdmVzIGRlIGZsaW5n"))(),
        function() return PlayerState.AntiFling end,
        function() toggleAntiFling() end,
        Color3.fromRGB(220,115,115))

    makeActionRow(list, nextOrder(), loadstring(base64decode("UkVTRVQgQ0hBUkFDVEVS"))(), loadstring(base64decode("UmVzcGF3biBpbW3DqWRpYXQ="))(), Color3.fromRGB(255,80,80), function()
        resetCharacter()
        sendNotification(loadstring(base64decode("UGxheWVy"))(), loadstring(base64decode("UmVzZXQgZW4gY291cnMuLi4="))(), false)
    end)
end

--==============================================================
-- PAGE TELEPORT
--==============================================================
renderPageTeleport = function(body)
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,32), BackgroundTransparency=1, Text=loadstring(base64decode("VMOpbMOpcG9ydMOp"))(), TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=24, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,22), Position=UDim2.new(0,0,0,38), BackgroundTransparency=1, Text=loadstring(base64decode("VMOpbMOpcG9ydGF0aW9uIHJhcGlkZQ=="))(), TextColor3=THEME.TextSecondary, Font=Enum.Font.Gotham, TextSize=13, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})

    local list = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,0,0,0), Position=UDim2.new(0,0,0,76), BackgroundTransparency=1, AutomaticSize=Enum.AutomaticSize.Y, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VUlMaXN0TGF5b3V0"))(), {Padding=UDim.new(0,10), SortOrder=Enum.SortOrder.LayoutOrder, Parent=list})

    makeActionRow(list, 1, loadstring(base64decode("VFAgU1BBV04="))(), loadstring(base64decode("VGUgdMOpbMOpcG9ydGUgYXUgc3Bhd24="))(), Color3.fromRGB(115,155,240), function()
        tpSpawn()
    end)
end

--==============================================================
-- PAGE ANIMATION
--==============================================================
renderPageAnimation = function(body)
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,32), BackgroundTransparency=1, Text=loadstring(base64decode("QW5pbWF0aW9u"))(), TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=24, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,22), Position=UDim2.new(0,0,0,38), BackgroundTransparency=1, Text=loadstring(base64decode("QW5pbWF0aW9ucyB2aXNpYmxlcyBwYXIgdG91cw=="))(), TextColor3=THEME.TextSecondary, Font=Enum.Font.Gotham, TextSize=13, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})

    local list = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,0,0,0), Position=UDim2.new(0,0,0,76), BackgroundTransparency=1, AutomaticSize=Enum.AutomaticSize.Y, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VUlMaXN0TGF5b3V0"))(), {Padding=UDim.new(0,10), SortOrder=Enum.SortOrder.LayoutOrder, Parent=list})

    makeToggleRow(list, 1, loadstring(base64decode("U0lU"))(), loadstring(base64decode("QXNzaWVkcyB0b24gcGVyc29ubmFnZQ=="))(),
        function() return PlayerState.Sitting end,
        function() toggleSit() end,
        Color3.fromRGB(140,200,155))
end

--==============================================================
-- PLACEHOLDERS
--==============================================================
renderPageCombat = function(body)
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,32), BackgroundTransparency=1, Text=loadstring(base64decode("Q29tYmF0"))(), TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=24, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,22), Position=UDim2.new(0,0,0,38), BackgroundTransparency=1, Text=loadstring(base64decode("U2VjdGlvbiDDoCB2ZW5pcg=="))(), TextColor3=THEME.TextSecondary, Font=Enum.Font.Gotham, TextSize=13, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
end
renderPageAutoFarm = function(body)
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,32), BackgroundTransparency=1, Text=loadstring(base64decode("QXV0byBGYXJt"))(), TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=24, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,22), Position=UDim2.new(0,0,0,38), BackgroundTransparency=1, Text=loadstring(base64decode("U2VjdGlvbiDDoCB2ZW5pcg=="))(), TextColor3=THEME.TextSecondary, Font=Enum.Font.Gotham, TextSize=13, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
end

--==============================================================
-- PAGE ESP
--==============================================================
renderPageEsp = function(body)
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,32), BackgroundTransparency=1, Text=loadstring(base64decode("RVNQ"))(), TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=24, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,22), Position=UDim2.new(0,0,0,38), BackgroundTransparency=1, Text=loadstring(base64decode("QWZmaWNoYWdlIGRlcyByw7RsZXMgTU0y"))(), TextColor3=THEME.TextSecondary, Font=Enum.Font.Gotham, TextSize=13, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})

    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,14), Position=UDim2.new(0,0,0,80), BackgroundTransparency=1, Text=loadstring(base64decode("UsOUTEVT"))(), TextColor3=THEME.TextMuted, Font=Enum.Font.GothamBold, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
    local rolesList = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,0,0,0), Position=UDim2.new(0,0,0,102), BackgroundTransparency=1, AutomaticSize=Enum.AutomaticSize.Y, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VUlMaXN0TGF5b3V0"))(), {Padding=UDim.new(0,8), SortOrder=Enum.SortOrder.LayoutOrder, Parent=rolesList})

    makeActionRowToggle(rolesList, 1, loadstring(base64decode("RVNQIE11cmRlcmVy"))(), loadstring(base64decode("Vm9pciBsZSB0dWV1cg=="))(),
        function() return MM2.EspShowMurder end,
        function(v) MM2.EspShowMurder = v end,
        FIXED_COLORS.Murderer)

    makeActionRowToggle(rolesList, 2, loadstring(base64decode("RVNQIFNoZXJpZmY="))(), loadstring(base64decode("Vm9pciBsZSBzaMOpcmlm"))(),
        function() return MM2.EspShowSheriff end,
        function(v) MM2.EspShowSheriff = v end,
        FIXED_COLORS.Sheriff)

    makeActionRowToggle(rolesList, 3, loadstring(base64decode("RVNQIElubm9jZW50"))(), loadstring(base64decode("Vm9pciBsZXMgaW5ub2NlbnRz"))(),
        function() return MM2.EspShowInnocent end,
        function(v) MM2.EspShowInnocent = v end,
        FIXED_COLORS.Innocent)

    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,14), Position=UDim2.new(0,0,0,290), BackgroundTransparency=1, Text=loadstring(base64decode("T1BUSU9OUw=="))(), TextColor3=THEME.TextMuted, Font=Enum.Font.GothamBold, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
    local optsList = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,0,0,0), Position=UDim2.new(0,0,0,312), BackgroundTransparency=1, AutomaticSize=Enum.AutomaticSize.Y, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VUlMaXN0TGF5b3V0"))(), {Padding=UDim.new(0,8), SortOrder=Enum.SortOrder.LayoutOrder, Parent=optsList})

    makeActionRowToggle(optsList, 1, loadstring(base64decode("WC1SQVk="))(), loadstring(base64decode("Vm9pciDDoCB0cmF2ZXJzIGxlcyBtdXJz"))(),
        function() return MM2.XRayEnabled end,
        function(v) MM2.XRayEnabled = v; updateXRay() end,
        Color3.fromRGB(255,215,120))

    makeCollapsibleActionRow(optsList, 2, loadstring(base64decode("Qm94"))(), loadstring(base64decode("Q2FkcmUgYXV0b3VyIGR1IGpvdWV1cg=="))(),
        function() return ESPOptions.BoxEnabled end,
        function(v) ESPOptions.BoxEnabled = v end,
        FIXED_COLORS.Box,
        function(holder)
            local sliderCard = new(loadstring(base64decode("RnJhbWU="))(), {
                Size=UDim2.new(1,-16,0,54), Position=UDim2.new(0,8,0,5),
                BackgroundColor3=THEME.Surface, BackgroundTransparency=0.25,
                BorderSizePixel=0, ZIndex=26, Parent=holder,
            })
            corner(sliderCard, 10)
            stroke(sliderCard, THEME.Border, 1, 0.5)
            new(loadstring(base64decode("VGV4dExhYmVs"))(), {
                Size=UDim2.new(1,-140,0,14), Position=UDim2.new(0,14,0,8),
                BackgroundTransparency=1, Text=loadstring(base64decode("w4lQQUlTU0VVUiBCT1g="))(),
                TextColor3=THEME.TextMuted, Font=Enum.Font.GothamBold,
                TextSize=10, TextXAlignment=Enum.TextXAlignment.Left,
                ZIndex=27, Parent=sliderCard,
            })
            local thickVal = new(loadstring(base64decode("VGV4dExhYmVs"))(), {
                Size=UDim2.new(0,50,0,20), Position=UDim2.new(1,-60,0.5,0),
                AnchorPoint=Vector2.new(0,0.5), BackgroundTransparency=1,
                Text=ESPOptions.BoxThickness..loadstring(base64decode("IHB4"))(), TextColor3=THEME.TextPrimary,
                Font=Enum.Font.GothamBold, TextSize=11,
                TextXAlignment=Enum.TextXAlignment.Right,
                ZIndex=27, Parent=sliderCard,
            })
            local thickBg = new(loadstring(base64decode("RnJhbWU="))(), {
                Size=UDim2.new(1,-84,0,8), Position=UDim2.new(0,14,0,34),
                BackgroundColor3=THEME.SurfaceHi, BorderSizePixel=0,
                ZIndex=27, Parent=sliderCard,
            })
            corner(thickBg, 4)
            local ratio = (ESPOptions.BoxThickness-1)/9
            local thickFill = new(loadstring(base64decode("RnJhbWU="))(), {
                Size=UDim2.new(ratio, 0, 1, 0),
                BackgroundColor3=FIXED_COLORS.Box, BorderSizePixel=0,
                ZIndex=28, Parent=thickBg,
            })
            corner(thickFill, 4)
            local thickKnob = new(loadstring(base64decode("RnJhbWU="))(), {
                Size=UDim2.new(0,12,0,12),
                Position=UDim2.new(ratio, 0, 0.5, 0),
                AnchorPoint=Vector2.new(0.5,0.5),
                BackgroundColor3=Color3.fromRGB(255,255,255),
                BorderSizePixel=0, ZIndex=29, Parent=thickBg,
            })
            corner(thickKnob, 6)
            stroke(thickKnob, Color3.fromRGB(0,0,0), 2, 0.3)
            local thickHit = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {
                Size=UDim2.new(1,-84,0,22), Position=UDim2.new(0,14,0,28),
                BackgroundTransparency=1, Text=loadstring(base64decode(""))(), AutoButtonColor=false,
                ZIndex=30, Parent=sliderCard,
            })
            local tDrag = false
            local function applyThick(xAbs)
                local tp = thickBg.AbsolutePosition.X
                local tw = thickBg.AbsoluteSize.X
                if tw <= 0 then return end
                local r = math.clamp((xAbs - tp) / tw, 0, 1)
                local QGWBVmgF = math.floor(1 + r * 9 + 0.5)
                ESPOptions.BoxThickness = QGWBVmgF
                thickKnob.Position = UDim2.new((QGWBVmgF-1)/9, 0, 0.5, 0)
                thickFill.Size = UDim2.new((QGWBVmgF-1)/9, 0, 1, 0)
                thickVal.Text = QGWBVmgF..loadstring(base64decode("IHB4"))()
            end
            thickHit.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    tDrag = true; applyThick(input.Position.X)
                end
            end)
            thickHit.InputChanged:Connect(function(input)
                if not tDrag then return end
                if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                    applyThick(input.Position.X)
                end
            end)
            UserInputService.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    tDrag = false
                end
            end)
        end)

    makeActionRowToggle(optsList, 3, loadstring(base64decode("VFJBQ0VS"))(), loadstring(base64decode("TGlnbmUgZHUgYmFzIHZlcnMgbGUgam91ZXVy"))(),
        function() return ESPOptions.TracerEnabled end,
        function(v) ESPOptions.TracerEnabled = v end,
        FIXED_COLORS.Tracer)
end

--==============================================================
-- PAGE MURDER (avec Kill All)
--==============================================================
renderPageMurder = function(body)
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,32), BackgroundTransparency=1, Text=loadstring(base64decode("TXVyZGVy"))(), TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=24, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,22), Position=UDim2.new(0,0,0,38), BackgroundTransparency=1, Text=loadstring(base64decode("QWN0aW9ucyBjw7R0w6kgdHVldXI="))(), TextColor3=THEME.TextSecondary, Font=Enum.Font.Gotham, TextSize=13, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
    local list = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,0,0,0), Position=UDim2.new(0,0,0,76), BackgroundTransparency=1, AutomaticSize=Enum.AutomaticSize.Y, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VUlMaXN0TGF5b3V0"))(), {Padding=UDim.new(0,10), SortOrder=Enum.SortOrder.LayoutOrder, Parent=list})

    makeActionRow(list, 1, loadstring(base64decode("S0lMTCBBTEw="))(), loadstring(base64decode("VFAgdG91cyBsZXMgam91ZXVycyBkZXZhbnQgdG9pICsgY291dGVhdSBhdXRv"))(), Color3.fromRGB(255,60,60), function()
        killAllPlayers()
    end)

    makeActionRow(list, 2, loadstring(base64decode("VFAgQUxMIElOIEZST05U"))(), loadstring(base64decode("VFAgdG91cyBsZXMgam91ZXVycyBkZXZhbnQgdG9p"))(), Color3.fromRGB(240,165,95), function()
        tpAllInFront()
    end)

    makeActionRow(list, 3, loadstring(base64decode("VFAgQUxMIFBMQVlFUlM="))(), loadstring(base64decode("VGUgdMOpbMOpcG9ydGUgdmVycyBjaGFxdWUgam91ZXVy"))(), Color3.fromRGB(115,155,240), function() tpAllPlayers() end)
    makeActionRow(list, 4, loadstring(base64decode("VFAgTVVSREVSRVI="))(), loadstring(base64decode("VGUgdMOpbMOpcG9ydGUgYXUgdHVldXI="))(), Color3.fromRGB(255,80,80), function()
        local m = findMurderer()
        if not m then sendNotification(loadstring(base64decode("RXJyZXVy"))(), loadstring(base64decode("VHVldXIgaW50cm91dmFibGU="))(), true) return end
        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
        local mHrp = m.Character and m.Character:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
        if hrp and mHrp then
            pcall(function() hrp.CFrame = mHrp.CFrame + Vector3.new(0, 3, 3) end)
            sendNotification(loadstring(base64decode("VFA="))(), loadstring(base64decode("VFAgdmVycyA="))()..m.Name, false)
        end
    end)
end

--==============================================================
-- PAGE SHERIFF
--==============================================================
renderPageSheriff = function(body)
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,32), BackgroundTransparency=1, Text=loadstring(base64decode("U2hlcmlmZg=="))(), TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=24, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,22), Position=UDim2.new(0,0,0,38), BackgroundTransparency=1, Text=loadstring(base64decode("QWN0aW9ucyBjw7R0w6kgc2jDqXJpZg=="))(), TextColor3=THEME.TextSecondary, Font=Enum.Font.Gotham, TextSize=13, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
    local list = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,0,0,0), Position=UDim2.new(0,0,0,76), BackgroundTransparency=1, AutomaticSize=Enum.AutomaticSize.Y, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VUlMaXN0TGF5b3V0"))(), {Padding=UDim.new(0,10), SortOrder=Enum.SortOrder.LayoutOrder, Parent=list})

    makeActionRowToggle(list, 1, loadstring(base64decode("QVVUTyBTSE9PVCBNVVJERVJFUg=="))(), loadstring(base64decode("VGlyZSBhdXRvIHN1ciBsZSB0dWV1ciAoc2kgU2hlcmlmZik="))(),
        function() return MM2.AutoShootEnabled end,
        function(v) MM2.AutoShootEnabled = v end,
        Color3.fromRGB(70,130,240))
end

--==============================================================
-- PAGE TROLL
--==============================================================
renderPageTroll = function(body)
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,32), BackgroundTransparency=1, Text=loadstring(base64decode("VHJvbGw="))(), TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=24, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,22), Position=UDim2.new(0,0,0,38), BackgroundTransparency=1, Text=loadstring(base64decode("Q2libGUgdW4gam91ZXVyLCBwdWlzIHV0aWxpc2UgbGVzIGFjdGlvbnM="))(), TextColor3=THEME.TextSecondary, Font=Enum.Font.Gotham, TextSize=13, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})

    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,14), Position=UDim2.new(0,0,0,76), BackgroundTransparency=1, Text=loadstring(base64decode("Sk9VRVVSIENJQkzDiQ=="))(), TextColor3=THEME.TextMuted, Font=Enum.Font.GothamBold, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})

    local ddBtn = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {Size=UDim2.new(1,0,0,44), Position=UDim2.new(0,0,0,96), BackgroundColor3=THEME.Surface, BackgroundTransparency=0.25, BorderSizePixel=0, Text=loadstring(base64decode(""))(), AutoButtonColor=false, ZIndex=30, Parent=body})
    corner(ddBtn, 10)
    stroke(ddBtn, THEME.Border, 1, 0.4)
    local ddText = new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,-70,1,0), Position=UDim2.new(0,16,0,0), BackgroundTransparency=1, Text=loadstring(base64decode("4oCUIEF1Y3VuIGpvdWV1ciBzw6lsZWN0aW9ubsOpIOKAlA=="))(), TextColor3=THEME.TextMuted, Font=Enum.Font.GothamMedium, TextSize=13, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=31, Parent=ddBtn})
    local ddChev, cc1, cc2 = drawChevron(ddBtn, loadstring(base64decode("cmlnaHQ="))(), THEME.TextMuted, 8)
    ddChev.Position = UDim2.new(1,-24,0.5,0); ddChev.AnchorPoint = Vector2.new(0.5,0.5)

    local ddList = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,0,0,0), Position=UDim2.new(0,0,0,148), BackgroundColor3=THEME.Surface, BackgroundTransparency=0.05, BorderSizePixel=0, Visible=false, AutomaticSize=Enum.AutomaticSize.Y, ZIndex=40, Parent=body})
    corner(ddList, 12)
    stroke(ddList, THEME.Border, 1, 0.3)
    local ddPad = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,-12,0,6), Position=UDim2.new(0,6,0,6), BackgroundTransparency=1, AutomaticSize=Enum.AutomaticSize.Y, ZIndex=41, Parent=ddList})
    new(loadstring(base64decode("VUlMaXN0TGF5b3V0"))(), {Padding=UDim.new(0,2), SortOrder=Enum.SortOrder.LayoutOrder, Parent=ddPad})

    local function refreshDropdown()
        for _, c in ipairs(ddPad:GetChildren()) do
            if c:IsA(loadstring(base64decode("VGV4dEJ1dHRvbg=="))()) or (c:IsA(loadstring(base64decode("VGV4dExhYmVs"))()) and c.Name == loadstring(base64decode("RW1wdHlMYmw="))()) then c:Destroy() end
        end
        local order = 0
        for _, plr in ipairs(Players:GetPlayers()) do
            if plr == LocalPlayer then continue end
            order = order + 1
            local row = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {Size=UDim2.new(1,0,0,34), BackgroundColor3=THEME.SurfaceHi, BackgroundTransparency=0.6, BorderSizePixel=0, Text=loadstring(base64decode(""))(), AutoButtonColor=false, LayoutOrder=order, ZIndex=42, Parent=ddPad})
            corner(row, 8)
            local role = getPlayerRole(plr)
            local roleColor = getRoleColor(role)
            new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,-50,1,0), Position=UDim2.new(0,12,0,0), BackgroundTransparency=1, Text=plr.Name..loadstring(base64decode("ICAo"))()..role..loadstring(base64decode("KQ=="))(), TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamMedium, TextSize=13, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=43, Parent=row})
            new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,4,0,18), Position=UDim2.new(1,-14,0.5,0), AnchorPoint=Vector2.new(0,0.5), BackgroundColor3=roleColor, BorderSizePixel=0, ZIndex=43, Parent=row})
            row.MouseEnter:Connect(function() TweenService:Create(row, TweenInfo.new(0.15), {BackgroundTransparency=0.25}):Play() end)
            row.MouseLeave:Connect(function() TweenService:Create(row, TweenInfo.new(0.15), {BackgroundTransparency=0.6}):Play() end)
            row.MouseButton1Click:Connect(function()
                State.TrollSelected = plr
                ddText.Text = plr.Name
                ddText.TextColor3 = THEME.Accent
                ddList.Visible = false
                TweenService:Create(cc1, TweenInfo.new(0.15), {Rotation=45}):Play()
                TweenService:Create(cc2, TweenInfo.new(0.15), {Rotation=-45}):Play()
            end)
        end
        if order == 0 then
            new(loadstring(base64decode("VGV4dExhYmVs"))(), {Name=loadstring(base64decode("RW1wdHlMYmw="))(), Size=UDim2.new(1,0,0,34), BackgroundTransparency=1, Text=loadstring(base64decode("QXVjdW4gYXV0cmUgam91ZXVy"))(), TextColor3=THEME.TextMuted, Font=Enum.Font.Gotham, TextSize=12, ZIndex=42, Parent=ddPad})
        end
    end

    local ddOpen = false
    ddBtn.MouseButton1Click:Connect(function()
        ddOpen = not ddOpen
        if ddOpen then refreshDropdown() end
        ddList.Visible = ddOpen
        TweenService:Create(cc1, TweenInfo.new(0.15), {Rotation = ddOpen and -45 or 45}):Play()
        TweenService:Create(cc2, TweenInfo.new(0.15), {Rotation = ddOpen and 45 or -45}):Play()
    end)

    Players.PlayerAdded:Connect(function() if ddOpen then refreshDropdown() end end)
    Players.PlayerRemoving:Connect(function(plr)
        if State.TrollSelected == plr then
            State.TrollSelected = nil
            ddText.Text = loadstring(base64decode("4oCUIEF1Y3VuIGpvdWV1ciBzw6lsZWN0aW9ubsOpIOKAlA=="))()
            ddText.TextColor3 = THEME.TextMuted
        end
        if ddOpen then refreshDropdown() end
    end)

    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,14), Position=UDim2.new(0,0,0,164), BackgroundTransparency=1, Text=loadstring(base64decode("QUNUSU9OUw=="))(), TextColor3=THEME.TextMuted, Font=Enum.Font.GothamBold, TextSize=10, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=25, Parent=body})
    local list = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,0,0,0), Position=UDim2.new(0,0,0,186), BackgroundTransparency=1, AutomaticSize=Enum.AutomaticSize.Y, ZIndex=25, Parent=body})
    new(loadstring(base64decode("VUlMaXN0TGF5b3V0"))(), {Padding=UDim.new(0,10), SortOrder=Enum.SortOrder.LayoutOrder, Parent=list})

    makeActionRow(list, 1, loadstring(base64decode("VFAgw4AgTEEgQ0lCTEU="))(), loadstring(base64decode("VGUgdMOpbMOpcG9ydGUgc3VyIGxlIGpvdWV1ciBzw6lsZWN0aW9ubsOp"))(), Color3.fromRGB(255,80,80), function()
        local target = State.TrollSelected
        if not target or not target.Character then
            sendNotification(loadstring(base64decode("VHJvbGw="))(), loadstring(base64decode("QXVjdW5lIGNpYmxlIHZhbGlkZQ=="))(), true); return
        end
        local tHrp = target.Character:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
        if tHrp and hrp then
            pcall(function() hrp.CFrame = tHrp.CFrame + Vector3.new(0,3,3) end)
            sendNotification(loadstring(base64decode("VHJvbGw="))(), loadstring(base64decode("VFAg4oaSIA=="))()..target.Name, false)
        end
    end)

    makeActionRow(list, 2, loadstring(base64decode("U1BFQ1RBVEUgQ0lCTEU="))(), loadstring(base64decode("VGEgY2Ftw6lyYSBzdWl0IGxlIGpvdWV1ciBzw6lsZWN0aW9ubsOp"))(), Color3.fromRGB(170,130,235), function()
        local target = State.TrollSelected
        local cam = workspace.CurrentCamera
        if not target or not target.Character then
            sendNotification(loadstring(base64decode("VHJvbGw="))(), loadstring(base64decode("QXVjdW5lIGNpYmxlIHZhbGlkZQ=="))(), true); return
        end
        cam.CameraSubject = target.Character:FindFirstChildOfClass(loadstring(base64decode("SHVtYW5vaWQ="))()) or target.Character
        sendNotification(loadstring(base64decode("VHJvbGw="))(), loadstring(base64decode("Q2Ftw6lyYSDihpIg"))()..target.Name, false)
    end)
end

--==============================================================
-- SET PAGE
--==============================================================
setPage = function(pageId)
    if State.CurrentPage == pageId then return end
    State.CurrentPage = pageId
    for id, item in pairs(State.NavItems) do item.setActive(id == pageId) end
    local scroll = State.Scroll
    if not scroll then return end
    local oldBody = scroll:FindFirstChild(loadstring(base64decode("UGFnZUJvZHk="))())
    if oldBody then
        for _, c in ipairs(oldBody:GetChildren()) do
            if c:IsA(loadstring(base64decode("R3VpT2JqZWN0"))()) then
                TweenService:Create(c, TweenInfo.new(0.15), {BackgroundTransparency=1}):Play()
                if c:IsA(loadstring(base64decode("VGV4dExhYmVs"))()) then
                    TweenService:Create(c, TweenInfo.new(0.15), {TextTransparency=1}):Play()
                end
            end
        end
        task.wait(0.18)
        oldBody:Destroy()
    end
    scroll.CanvasPosition = Vector2.new(0,0)
    local body = new(loadstring(base64decode("RnJhbWU="))(), {Name=loadstring(base64decode("UGFnZUJvZHk="))(), Size=UDim2.new(1,-48,0,0), Position=UDim2.new(0,24,0,20), BackgroundTransparency=1, AutomaticSize=Enum.AutomaticSize.Y, ZIndex=24, Parent=scroll})
    if pageId == loadstring(base64decode("aG9tZQ=="))() then renderPageHome(body)
    elseif pageId == loadstring(base64decode("ZXNw"))() then renderPageEsp(body)
    elseif pageId == loadstring(base64decode("bXVyZGVy"))() then renderPageMurder(body)
    elseif pageId == loadstring(base64decode("c2hlcmlmZg=="))() then renderPageSheriff(body)
    elseif pageId == loadstring(base64decode("cGxheWVy"))() then renderPagePlayer(body)
    elseif pageId == loadstring(base64decode("Y29tYmF0"))() then renderPageCombat(body)
    elseif pageId == loadstring(base64decode("YXV0b2Zhcm0="))() then renderPageAutoFarm(body)
    elseif pageId == loadstring(base64decode("dHJvbGw="))() then renderPageTroll(body)
    elseif pageId == loadstring(base64decode("YW5pbWF0aW9u"))() then renderPageAnimation(body)
    elseif pageId == loadstring(base64decode("dGVsZXBvcnQ="))() then renderPageTeleport(body)
    elseif pageId == loadstring(base64decode("c2V0dGluZ3M="))() then renderPageSettings(body)
    end
end

--==============================================================
-- NAV ITEM
--==============================================================
local function createNavItem(parent, label, pageId, order)
    local btn = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {Size=UDim2.new(1,0,0,38), BackgroundColor3=THEME.Surface, BackgroundTransparency=1, BorderSizePixel=0, Text=loadstring(base64decode(""))(), AutoButtonColor=false, LayoutOrder=order, ZIndex=20, Parent=parent})
    corner(btn, 8)
    local bar = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,3,0,0), Position=UDim2.new(0,0,0.5,0), AnchorPoint=Vector2.new(0,0.5), BackgroundColor3=THEME.Accent, BorderSizePixel=0, ZIndex=22, Parent=btn})
    corner(bar, 2)
    local lbl = new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,-20,1,0), Position=UDim2.new(0,18,0,0), BackgroundTransparency=1, Text=label, TextColor3=THEME.TextSecondary, Font=Enum.Font.GothamMedium, TextSize=13, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=21, Parent=btn})
    local state = {active=false}
    local function setActive(active)
        state.active = active
        if active then
            TweenService:Create(btn, TweenInfo.new(0.2), {BackgroundTransparency=0.7}):Play()
            TweenService:Create(bar, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size=UDim2.new(0,3,0,22)}):Play()
            TweenService:Create(lbl, TweenInfo.new(0.2), {TextColor3=THEME.Accent, TextSize=14}):Play()
        else
            TweenService:Create(btn, TweenInfo.new(0.2), {BackgroundTransparency=1}):Play()
            TweenService:Create(bar, TweenInfo.new(0.2), {Size=UDim2.new(0,3,0,0)}):Play()
            TweenService:Create(lbl, TweenInfo.new(0.2), {TextColor3=THEME.TextSecondary, TextSize=13}):Play()
        end
    end
    btn.MouseEnter:Connect(function()
        if not state.active then
            TweenService:Create(btn, TweenInfo.new(0.15), {BackgroundTransparency=0.85}):Play()
            TweenService:Create(lbl, TweenInfo.new(0.15), {TextColor3=THEME.TextPrimary}):Play()
        end
    end)
    btn.MouseLeave:Connect(function()
        if not state.active then
            TweenService:Create(btn, TweenInfo.new(0.15), {BackgroundTransparency=1}):Play()
            TweenService:Create(lbl, TweenInfo.new(0.15), {TextColor3=THEME.TextSecondary}):Play()
        end
    end)
    State.NavItems[pageId] = {btn=btn, setActive=setActive, state=state}
    return btn, setActive
end

local function makeSectionLabel(parent, text, order)
    local holder = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(1,-4,0,22), BackgroundTransparency=1, LayoutOrder=order, ZIndex=19, Parent=parent})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,1,0), Position=UDim2.new(0,8,0,0), BackgroundTransparency=1, Text=string.upper(text), TextColor3=THEME.TextMuted, Font=Enum.Font.GothamBold, TextSize=9, TextXAlignment=Enum.TextXAlignment.Left, ZIndex=19, Parent=holder})
end

--==============================================================
-- LOADING
--==============================================================
local function createLoadingScreen()
    local gui = new(loadstring(base64decode("U2NyZWVuR3Vp"))(), {Name=loadstring(base64decode("TWVudVY3MV9HVUk="))(), ResetOnSpawn=false, IgnoreGuiInset=true, ZIndexBehavior=Enum.ZIndexBehavior.Sibling, DisplayOrder=999, Parent=PlayerGui})
    State.Gui = gui
    local frame = createWindow(loadstring(base64decode("TG9hZGluZ0NvbnRhaW5lcg=="))(), UDim2.new(0,460,0,240), gui)
    State.LoadingFrame = frame
    frame.BackgroundTransparency = 1
    TweenService:Create(frame, TweenInfo.new(0.5), {BackgroundTransparency=0}):Play()
    local spinner = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,60,0,60), Position=UDim2.new(0.5,0,0,30), AnchorPoint=Vector2.new(0.5,0), BackgroundTransparency=1, ZIndex=8, Parent=frame})
    for i = 1, 14 do
        local angle = (i-1) * (math.pi*2/14)
        local dot = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,5,0,5), Position=UDim2.new(0.5, math.cos(angle)*22, 0.5, math.sin(angle)*22), AnchorPoint=Vector2.new(0.5,0.5), BackgroundColor3=THEME.Accent, BackgroundTransparency=1-(i/14)*0.75, BorderSizePixel=0, ZIndex=9, Parent=spinner})
        corner(dot, 2)
        track(dot, loadstring(base64decode("QmFja2dyb3VuZENvbG9yMw=="))(), loadstring(base64decode("QWNjZW50"))())
    end
    task.spawn(function()
        while spinner.Parent do
            spinner.Rotation = (spinner.Rotation + 5) % 360
            task.wait(0.02)
        end
    end)
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,32), Position=UDim2.new(0,0,0,98), BackgroundTransparency=1, Text=loadstring(base64decode("Q2hhcmdlbWVudA=="))(), TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=24, ZIndex=8, Parent=frame})
    local subtitle = new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,20), Position=UDim2.new(0,0,0,134), BackgroundTransparency=1, Text=loadstring(base64decode("SW5pdGlhbGlzYXRpb24uLi4="))(), TextColor3=THEME.TextMuted, Font=Enum.Font.Gotham, TextSize=12, ZIndex=8, Parent=frame})
    local barBg = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0.7,0,0,8), Position=UDim2.new(0.5,0,0,172), AnchorPoint=Vector2.new(0.5,0), BackgroundColor3=THEME.SurfaceHi, BackgroundTransparency=0.4, BorderSizePixel=0, ZIndex=8, Parent=frame})
    corner(barBg, 4)
    local barFill = new(loadstring(base64decode("RnJhbWU="))(), {Size=UDim2.new(0,0,1,0), BackgroundColor3=THEME.Accent, BorderSizePixel=0, ZIndex=9, Parent=barBg, ClipsDescendants=true})
    corner(barFill, 4)
    track(barFill, loadstring(base64decode("QmFja2dyb3VuZENvbG9yMw=="))(), loadstring(base64decode("QWNjZW50"))())
    local percent = new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,18), Position=UDim2.new(0,0,0,192), BackgroundTransparency=1, Text=loadstring(base64decode("MCAl"))(), TextColor3=THEME.TextMuted, Font=Enum.Font.GothamBold, TextSize=11, ZIndex=8, Parent=frame})
    local startTime = tick()
    task.spawn(function()
        while tick()-startTime < CONFIG.LoadingDuration do
            local p = math.clamp((tick()-startTime)/CONFIG.LoadingDuration, 0, 1)
            barFill.Size = UDim2.new(p,0,1,0)
            percent.Text = math.floor(p*100)..loadstring(base64decode("ICU="))()
            if p < 0.3 then subtitle.Text = loadstring(base64decode("SW5pdGlhbGlzYXRpb24uLi4="))()
            elseif p < 0.6 then subtitle.Text = loadstring(base64decode("Q2hhcmdlbWVudC4uLg=="))()
            elseif p < 0.9 then subtitle.Text = loadstring(base64decode("UHLDqXBhcmF0aW9uLi4u"))()
            else subtitle.Text = loadstring(base64decode("RmluYWxpc2F0aW9uLi4u"))() end
            task.wait(0.03)
        end
        barFill.Size = UDim2.new(1,0,1,0)
        percent.Text = loadstring(base64decode("MTAwICU="))()
    end)
    return frame
end

--==============================================================
-- ÉCRAN DE CODE
--==============================================================
local function createCodeScreen(onSuccess)
    local gui = State.Gui
    local frame = createWindow(loadstring(base64decode("Q29kZUNvbnRhaW5lcg=="))(), UDim2.new(0,500,0,380), gui)
    State.CodeFrame = frame
    frame.BackgroundTransparency = 1
    local badge = new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,18), Position=UDim2.new(0,0,0,36), BackgroundTransparency=1, Text=loadstring(base64decode("QUNDw4hTIFPDiUNVUklTw4k="))(), TextColor3=THEME.Accent, Font=Enum.Font.GothamBold, TextSize=11, ZIndex=12, Parent=frame})
    track(badge, loadstring(base64decode("VGV4dENvbG9yMw=="))(), loadstring(base64decode("QWNjZW50"))())
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,38), Position=UDim2.new(0,0,0,60), BackgroundTransparency=1, Text=loadstring(base64decode("VsOpcmlmaWNhdGlvbiByZXF1aXNl"))(), TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold, TextSize=26, ZIndex=12, Parent=frame})
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,-60,0,34), Position=UDim2.new(0,30,0,104), BackgroundTransparency=1, Text=loadstring(base64decode("RW50cmUgbGUgY29kZSBkJ2FjY8Oocw=="))(), TextColor3=THEME.TextSecondary, Font=Enum.Font.Gotham, TextSize=13, TextWrapped=true, ZIndex=12, Parent=frame})
    local inputBox = new(loadstring(base64decode("VGV4dEJveA=="))(), {Size=UDim2.new(0.82,0,0,54), Position=UDim2.new(0.5,0,0,154), AnchorPoint=Vector2.new(0.5,0), BackgroundColor3=THEME.Surface, BackgroundTransparency=0.3, BorderSizePixel=0, Text=loadstring(base64decode(""))(), PlaceholderText=loadstring(base64decode("Q29kZSBkJ2FjY8Oocy4uLg=="))(), PlaceholderColor3=THEME.TextMuted, TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamMedium, TextSize=16, TextXAlignment=Enum.TextXAlignment.Center, ClearTextOnFocus=false, ZIndex=13, Parent=frame})
    corner(inputBox, 12)
    local inputStroke = stroke(inputBox, THEME.Border, 1.5, 0.3)
    inputBox.Focused:Connect(function()
        inputStroke.Color = THEME.Accent
        inputStroke.Transparency = 0.2
    end)
    inputBox.FocusLost:Connect(function()
        inputStroke.Color = THEME.Border
        inputStroke.Transparency = 0.3
    end)
    local statusLabel = new(loadstring(base64decode("VGV4dExhYmVs"))(), {Size=UDim2.new(1,0,0,20), Position=UDim2.new(0,0,0,216), BackgroundTransparency=1, Text=loadstring(base64decode(""))(), TextColor3=THEME.TextMuted, Font=Enum.Font.Gotham, TextSize=12, ZIndex=12, Parent=frame})
    local submitBtn = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {Size=UDim2.new(0.82,0,0,48), Position=UDim2.new(0.5,0,0,248), AnchorPoint=Vector2.new(0.5,0), BackgroundColor3=THEME.Accent, BorderSizePixel=0, Text=loadstring(base64decode("VkFMSURFUg=="))(), TextColor3=THEME.TextOnAccent, Font=Enum.Font.GothamBold, TextSize=14, AutoButtonColor=false, ZIndex=13, Parent=frame})
    corner(submitBtn, 12)
    track(submitBtn, loadstring(base64decode("QmFja2dyb3VuZENvbG9yMw=="))(), loadstring(base64decode("QWNjZW50"))())
    track(submitBtn, loadstring(base64decode("VGV4dENvbG9yMw=="))(), loadstring(base64decode("VGV4dE9uQWNjZW50"))())
    local attempts, MAX, locked = 0, 5, false
    local function trySubmit()
        if locked then return end
        if inputBox.Text == ACCESS_CODE then
            locked = true
            State.Authenticated = true
            statusLabel.Text = loadstring(base64decode("QWNjw6hzIGF1dG9yaXPDqQ=="))()
            statusLabel.TextColor3 = THEME.Success
            inputStroke.Color = THEME.Success
            task.wait(0.4)
            popClose(frame, 0.35, function()
                State.CodeFrame = nil
                if onSuccess then onSuccess() end
            end)
        else
            attempts = attempts + 1
            statusLabel.Text = string.format(loadstring(base64decode("Q29kZSBpbmNvcnJlY3Qg4oCUICVkLyVk"))(), attempts, MAX)
            statusLabel.TextColor3 = THEME.Error
            inputStroke.Color = THEME.Error
            if attempts >= MAX then
                locked = true
                statusLabel.Text = loadstring(base64decode("QWNjw6hzIGJsb3F1w6k="))()
                task.wait(1.5)
                if gui then gui:Destroy() end
                return
            end
            inputBox.Text = loadstring(base64decode(""))()
            pcall(function() inputBox:CaptureFocus() end)
        end
    end
    submitBtn.MouseButton1Click:Connect(trySubmit)
    inputBox.FocusLost:Connect(function(ep) if ep then trySubmit() end end)
    task.spawn(function()
        task.wait(0.6)
        pcall(function() inputBox:CaptureFocus() end)
    end)
    fadeScaleIn(frame, 0.5)
    return frame
end

--==============================================================
-- SHELL
--==============================================================
createShell = function()
    local gui = State.Gui
    if not gui then return end
    if State.Shell and State.Shell.Parent then return end
    State.NavItems = {}
    State.CurrentPage = nil
    local win = createWindow(loadstring(base64decode("U2hlbGw="))(), UDim2.new(0,820,0,540), gui)
    State.Shell = win
    State.MenuOpen = true
    win.BackgroundTransparency = 1
    popOpen(win, 0.55)

    local closeShellBtn = new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))(), {
        Size=UDim2.new(0,28,0,28), Position=UDim2.new(1,-40,0,16),
        BackgroundColor3=Color3.fromRGB(36,38,48), BackgroundTransparency=0.15,
        BorderSizePixel=0, Text=loadstring(base64decode("4pyV"))(),
        TextColor3=Color3.fromRGB(220,225,235),
        Font=Enum.Font.GothamBold, TextSize=13,
        AutoButtonColor=false, ZIndex=60, Parent=win,
    })
    corner(closeShellBtn, 8)
    stroke(closeShellBtn, THEME.Border, 1, 0.4)
    closeShellBtn.MouseEnter:Connect(function()
        TweenService:Create(closeShellBtn, TweenInfo.new(0.15), {BackgroundColor3=Color3.fromRGB(200,60,60), BackgroundTransparency=0}):Play()
        TweenService:Create(closeShellBtn, TweenInfo.new(0.15), {TextColor3=Color3.fromRGB(255,255,255)}):Play()
    end)
    closeShellBtn.MouseLeave:Connect(function()
        TweenService:Create(closeShellBtn, TweenInfo.new(0.15), {BackgroundColor3=Color3.fromRGB(36,38,48), BackgroundTransparency=0.15}):Play()
        TweenService:Create(closeShellBtn, TweenInfo.new(0.15), {TextColor3=Color3.fromRGB(220,225,235)}):Play()
    end)
    closeShellBtn.MouseButton1Click:Connect(closeMenu)

    local sidebar = new(loadstring(base64decode("RnJhbWU="))(), {
        Name=loadstring(base64decode("U2lkZWJhcg=="))(), Size=UDim2.new(0,240,1,0),
        BackgroundColor3=THEME.SurfaceSide, BackgroundTransparency=0.35,
        BorderSizePixel=0, ZIndex=8, Parent=win,
    })
    corner(sidebar, 20)
    State.Sidebar = sidebar

    local header = new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(1,0,0,90),
        BackgroundColor3=THEME.BgTop, BackgroundTransparency=0.65,
        BorderSizePixel=0, ZIndex=15, Parent=sidebar,
    })
    corner(header, 20)
    new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(1,0,0,20), Position=UDim2.new(0,0,1,-20),
        BackgroundColor3=THEME.BgTop, BackgroundTransparency=0.65,
        BorderSizePixel=0, ZIndex=15, Parent=header,
    })

    local pfpHeader = new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(0,52,0,52), Position=UDim2.new(0,18,0.5,0),
        AnchorPoint=Vector2.new(0,0.5),
        BackgroundColor3=Color3.fromRGB(70,130,245),
        BorderSizePixel=0, ZIndex=16, Parent=header,
    })
    corner(pfpHeader, 26)
    local pfpHeaderInner = new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(1,-4,1,-4), Position=UDim2.new(0.5,0,0.5,0),
        AnchorPoint=Vector2.new(0.5,0.5),
        BackgroundColor3=Color3.fromRGB(50,100,220),
        BorderSizePixel=0, ZIndex=17, Parent=pfpHeader,
    })
    corner(pfpHeaderInner, 24)
    local headerAvatar = new(loadstring(base64decode("SW1hZ2VMYWJlbA=="))(), {
        Size=UDim2.new(1,0,1,0), Position=UDim2.new(0.5,0,0.5,0),
        AnchorPoint=Vector2.new(0.5,0.5),
        BackgroundTransparency=1, Image=loadstring(base64decode(""))(),
        ZIndex=18, Parent=pfpHeaderInner,
    })
    corner(headerAvatar, 24)
    task.spawn(function()
        local ok, thumb = pcall(function()
            return Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
        end)
        if ok and thumb then headerAvatar.Image = thumb end
    end)

    new(loadstring(base64decode("VGV4dExhYmVs"))(), {
        Size=UDim2.new(1,-90,0,22), Position=UDim2.new(0,80,0,24),
        BackgroundTransparency=1, Text=LocalPlayer.DisplayName,
        TextColor3=THEME.TextPrimary, Font=Enum.Font.GothamBold,
        TextSize=15, TextXAlignment=Enum.TextXAlignment.Left,
        TextTruncate=Enum.TextTruncate.AtEnd,
        ZIndex=16, Parent=header,
    })
    new(loadstring(base64decode("VGV4dExhYmVs"))(), {
        Size=UDim2.new(1,-90,0,16), Position=UDim2.new(0,80,0,46),
        BackgroundTransparency=1, Text=loadstring(base64decode("UHJlbWl1bQ=="))(),
        TextColor3=THEME.Accent, Font=Enum.Font.GothamMedium,
        TextSize=11, TextXAlignment=Enum.TextXAlignment.Left,
        ZIndex=16, Parent=header,
    })

    new(loadstring(base64decode("RnJhbWU="))(), {
        Size=UDim2.new(1,-32,0,1), Position=UDim2.new(0,16,0,90),
        BackgroundColor3=THEME.Border, BackgroundTransparency=0.5,
        BorderSizePixel=0, ZIndex=15, Parent=sidebar,
    })

    local nav = new(loadstring(base64decode("U2Nyb2xsaW5nRnJhbWU="))(), {
        Size=UDim2.new(1,-16,1,-110), Position=UDim2.new(0,8,0,100),
        BackgroundTransparency=1, BorderSizePixel=0,
        ScrollBarThickness=3, ScrollBarImageColor3=THEME.SurfaceHi,
        ScrollBarImageTransparency=0.5,
        CanvasSize=UDim2.new(0,0,0,0),
        AutomaticCanvasSize=Enum.AutomaticSize.Y,
        ScrollingDirection=Enum.ScrollingDirection.Y,
        ZIndex=18, Parent=sidebar,
    })
    new(loadstring(base64decode("VUlMaXN0TGF5b3V0"))(), {Padding=UDim.new(0,2), SortOrder=Enum.SortOrder.LayoutOrder, Parent=nav})

    makeSectionLabel(nav, loadstring(base64decode("R8OpbsOpcmFs"))(), 1)
    createNavItem(nav, loadstring(base64decode("QWNjdWVpbA=="))(), loadstring(base64decode("aG9tZQ=="))(), 2)
    createNavItem(nav, loadstring(base64decode("RVNQ"))(), loadstring(base64decode("ZXNw"))(), 3)

    makeSectionLabel(nav, loadstring(base64decode("UGVyc29ubmFnZQ=="))(), 4)
    createNavItem(nav, loadstring(base64decode("UGxheWVy"))(), loadstring(base64decode("cGxheWVy"))(), 5)
    createNavItem(nav, loadstring(base64decode("Q29tYmF0"))(), loadstring(base64decode("Y29tYmF0"))(), 6)
    createNavItem(nav, loadstring(base64decode("VHJvbGw="))(), loadstring(base64decode("dHJvbGw="))(), 7)
    createNavItem(nav, loadstring(base64decode("VMOpbMOpcG9ydMOp"))(), loadstring(base64decode("dGVsZXBvcnQ="))(), 8)
    createNavItem(nav, loadstring(base64decode("QW5pbWF0aW9u"))(), loadstring(base64decode("YW5pbWF0aW9u"))(), 9)
    createNavItem(nav, loadstring(base64decode("QXV0byBGYXJt"))(), loadstring(base64decode("YXV0b2Zhcm0="))(), 10)

    makeSectionLabel(nav, loadstring(base64decode("TU0y"))(), 11)
    createNavItem(nav, loadstring(base64decode("TXVyZGVy"))(), loadstring(base64decode("bXVyZGVy"))(), 12)
    createNavItem(nav, loadstring(base64decode("U2hlcmlmZg=="))(), loadstring(base64decode("c2hlcmlmZg=="))(), 13)

    makeSectionLabel(nav, loadstring(base64decode("QXV0cmU="))(), 14)
    createNavItem(nav, loadstring(base64decode("UGFyYW3DqHRyZXM="))(), loadstring(base64decode("c2V0dGluZ3M="))(), 15)

    State.NavItems[loadstring(base64decode("aG9tZQ=="))()].btn.MouseButton1Click:Connect(function() setPage(loadstring(base64decode("aG9tZQ=="))()) end)
    State.NavItems[loadstring(base64decode("ZXNw"))()].btn.MouseButton1Click:Connect(function() setPage(loadstring(base64decode("ZXNw"))()) end)
    State.NavItems[loadstring(base64decode("bXVyZGVy"))()].btn.MouseButton1Click:Connect(function() setPage(loadstring(base64decode("bXVyZGVy"))()) end)
    State.NavItems[loadstring(base64decode("c2hlcmlmZg=="))()].btn.MouseButton1Click:Connect(function() setPage(loadstring(base64decode("c2hlcmlmZg=="))()) end)
    State.NavItems[loadstring(base64decode("cGxheWVy"))()].btn.MouseButton1Click:Connect(function() setPage(loadstring(base64decode("cGxheWVy"))()) end)
    State.NavItems[loadstring(base64decode("Y29tYmF0"))()].btn.MouseButton1Click:Connect(function() setPage(loadstring(base64decode("Y29tYmF0"))()) end)
    State.NavItems[loadstring(base64decode("YXV0b2Zhcm0="))()].btn.MouseButton1Click:Connect(function() setPage(loadstring(base64decode("YXV0b2Zhcm0="))()) end)
    State.NavItems[loadstring(base64decode("dGVsZXBvcnQ="))()].btn.MouseButton1Click:Connect(function() setPage(loadstring(base64decode("dGVsZXBvcnQ="))()) end)
    State.NavItems[loadstring(base64decode("dHJvbGw="))()].btn.MouseButton1Click:Connect(function() setPage(loadstring(base64decode("dHJvbGw="))()) end)
    State.NavItems[loadstring(base64decode("YW5pbWF0aW9u"))()].btn.MouseButton1Click:Connect(function() setPage(loadstring(base64decode("YW5pbWF0aW9u"))()) end)
    State.NavItems[loadstring(base64decode("c2V0dGluZ3M="))()].btn.MouseButton1Click:Connect(function() setPage(loadstring(base64decode("c2V0dGluZ3M="))()) end)

    local content = new(loadstring(base64decode("RnJhbWU="))(), {Name=loadstring(base64decode("Q29udGVudA=="))(), Size=UDim2.new(1,-240,1,0), Position=UDim2.new(0,240,0,0), BackgroundTransparency=1, ClipsDescendants=true, ZIndex=14, Parent=win})
    State.Content = content
    local scroll = new(loadstring(base64decode("U2Nyb2xsaW5nRnJhbWU="))(), {Name=loadstring(base64decode("U2Nyb2xs"))(), Size=UDim2.new(1,0,1,0), BackgroundTransparency=1, BorderSizePixel=0, ScrollBarThickness=6, ScrollBarImageColor3=THEME.SurfaceHi, ScrollBarImageTransparency=0.3, CanvasSize=UDim2.new(0,0,0,0), AutomaticCanvasSize=Enum.AutomaticSize.Y, ScrollingDirection=Enum.ScrollingDirection.Y, ClipsDescendants=true, ZIndex=24, Parent=content})
    State.Scroll = scroll
    task.wait(0.1)
    setPage(loadstring(base64decode("aG9tZQ=="))())
end

--==============================================================
-- RESPAWN
--==============================================================
LocalPlayer.CharacterAdded:Connect(function(char)
    char:WaitForChild(loadstring(base64decode("SHVtYW5vaWQ="))(), 10)
    task.wait(0.6)
    createHeadBillboard()
    if MM2.XRayEnabled then
        task.wait(0.5)
        if char then applyXRay(char, LocalPlayer) end
    end
    if PlayerState.FlyEnabled then stopFly() end
    if PlayerState.SpinEnabled then stopSpin() end
    if PlayerState.JerkEnabled then stopJerk() end
    PlayerState.Sitting = false
    local hum = char:FindFirstChildOfClass(loadstring(base64decode("SHVtYW5vaWQ="))())
    if hum then
        hum.WalkSpeed = PlayerState.WalkSpeed
        hum.UseJumpPower = true
        hum.JumpPower = PlayerState.JumpPower
    end
    workspace.Gravity = PlayerState.Gravity
end)

--==============================================================
-- KEYBIND M
--==============================================================
UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode ~= Enum.KeyCode.M then return end
    if not State.Authenticated then return end
    if State.Shell and State.Shell.Parent then
        closeMenu()
    else
        if createShell then createShell() end
    end
end)

--==============================================================
-- INIT
--==============================================================
local function init()
    log(loadstring(base64decode("SW5pdGlhbGlzYXRpb24uLi4="))())
    local old = PlayerGui:FindFirstChild(loadstring(base64decode("TWVudVY3MF9HVUk="))()) or PlayerGui:FindFirstChild(loadstring(base64decode("TWVudVY3MV9HVUk="))())
    if old then old:Destroy() end
    createLoadingScreen()
    task.wait(CONFIG.LoadingDuration + 0.4)
    destroyWindow(State.LoadingFrame, function() State.LoadingFrame = nil end)
    task.wait(0.5)
    createCodeScreen(function()
        State.Authenticated = true
        createHeadBillboard()
        createShell()
    end)
end

init()
end
hkcqbH8W(AVWTu)
end)(...)
