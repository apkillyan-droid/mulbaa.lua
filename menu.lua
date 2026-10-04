--[[
███████╗██╗   ██╗██╗██╗         █████╗ ██╗  ██╗███████╗
██╔════╝██║   ██║██║██║        ██╔══██╗╚██╗██╔╝██╔════╝
█████╗  ██║   ██║██║██║        ███████║ ╚███╔╝ █████╗
██╔══╝  ╚██╗ ██╔╝██║██║        ██╔══██║ ██╔██╗ ██╔══╝
███████╗ ╚████╔╝ ██║███████╗   ██║  ██║██╔╝ ██╗███████╗
╚══════╝  ╚═══╝  ╚═╝╚══════╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝

        STUDIOS V2 OBFUSCATOR By MAX
        https://eaxe.net

        Sponsored by
        https://BloxDen.com
--]]

local e = game:GetService("Players");
local V = game:GetService("TweenService");
local p = game:GetService("RunService");
local I = game:GetService("UserInputService");
local c = game:GetService("Lighting");
local n = e.LocalPlayer;
local x = n:WaitForChild("PlayerGui");
local w = workspace.CurrentCamera;
local Y = "Fdvo2669";
local v = "rbxassetid://126785640171935";
local X = 2.6;
local i = {
		BgTop = Color3.fromRGB(22, 22, 28),
		BgBottom = Color3.fromRGB(12, 12, 16),
		Surface = Color3.fromRGB(24, 25, 32),
		SurfaceHi = Color3.fromRGB(36, 38, 48),
		SurfaceSide = Color3.fromRGB(10, 10, 14),
		Border = Color3.fromRGB(46, 46, 58),
		Accent = Color3.fromRGB(115, 155, 240),
		AccentDim = Color3.fromRGB(85, 120, 200),
		AccentGlow = Color3.fromRGB(155, 195, 255),
		AccentSoft = Color3.fromRGB(38, 48, 66),
		TextOnAccent = Color3.fromRGB(15, 20, 35),
		TextPrimary = Color3.fromRGB(235, 232, 228),
		TextSecondary = Color3.fromRGB(165, 162, 158),
		TextMuted = Color3.fromRGB(115, 112, 110),
		Success = Color3.fromRGB(140, 200, 155),
		Error = Color3.fromRGB(220, 115, 115),
		ErrorSoft = Color3.fromRGB(58, 34, 34),
		CloseDot = Color3.fromRGB(230, 105, 105),
		CloseDotHover = Color3.fromRGB(255, 130, 130),
		Particle = Color3.fromRGB(180, 210, 255),
	};
local R = {
		{
			name = "Bleu",
			Accent = Color3.fromRGB(115, 155, 240),
			AccentDim = Color3.fromRGB(85, 120, 200),
			AccentGlow = Color3.fromRGB(155, 195, 255),
			AccentSoft = Color3.fromRGB(38, 48, 66),
			TextOnAccent = Color3.fromRGB(15, 20, 35),
		},
		{
			name = "Orange",
			Accent = Color3.fromRGB(240, 165, 95),
			AccentDim = Color3.fromRGB(200, 135, 75),
			AccentGlow = Color3.fromRGB(255, 195, 130),
			AccentSoft = Color3.fromRGB(62, 48, 36),
			TextOnAccent = Color3.fromRGB(30, 20, 10),
		},
		{
			name = "Violet",
			Accent = Color3.fromRGB(170, 130, 235),
			AccentDim = Color3.fromRGB(130, 100, 200),
			AccentGlow = Color3.fromRGB(205, 175, 255),
			AccentSoft = Color3.fromRGB(48, 38, 66),
			TextOnAccent = Color3.fromRGB(25, 15, 35),
		},
		{
			name = "Rose",
			Accent = Color3.fromRGB(230, 130, 180),
			AccentDim = Color3.fromRGB(190, 100, 145),
			AccentGlow = Color3.fromRGB(255, 175, 210),
			AccentSoft = Color3.fromRGB(66, 38, 52),
			TextOnAccent = Color3.fromRGB(35, 15, 25),
		},
		{
			name = "Vert",
			Accent = Color3.fromRGB(130, 205, 155),
			AccentDim = Color3.fromRGB(100, 170, 125),
			AccentGlow = Color3.fromRGB(180, 235, 200),
			AccentSoft = Color3.fromRGB(38, 58, 46),
			TextOnAccent = Color3.fromRGB(15, 30, 20),
		},
		{
			name = "Cyan",
			Accent = Color3.fromRGB(95, 200, 215),
			AccentDim = Color3.fromRGB(75, 165, 180),
			AccentGlow = Color3.fromRGB(150, 230, 245),
			AccentSoft = Color3.fromRGB(32, 56, 62),
			TextOnAccent = Color3.fromRGB(10, 30, 35),
		},
		{
			name = "Rouge",
			Accent = Color3.fromRGB(230, 105, 105),
			AccentDim = Color3.fromRGB(190, 80, 80),
			AccentGlow = Color3.fromRGB(255, 150, 150),
			AccentSoft = Color3.fromRGB(62, 34, 34),
			TextOnAccent = Color3.fromRGB(35, 15, 15),
		},
	};
local Z = {};
local function t(e, V, p)
	table.insert(Z, { instance = e, property = V, themeKey = p });
	return e;
end;
local function s(e, V, p)
	table.insert(Z, {
		isGradient = true,
		gradient = e,
		topKey = V,
		bottomKey = p,
	});
	return e;
end;
local function F()
	local e = {};
	for p, I in ipairs(Z) do
		if I.isGradient then
			if I.gradient and I.gradient.Parent then
				I.gradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, i[I.topKey]), ColorSequenceKeypoint.new(1, i[I.bottomKey]) });
				table.insert(e, I);
			end;
		else
			if I.instance and I.instance.Parent then
				local p = i[I.themeKey];
				if p then
					(V:Create(I.instance, TweenInfo.new(.35), { [I.property] = p })):Play();
				end;
				table.insert(e, I);
			end;
		end;
	end;
	Z = e;
	for e, V in pairs(State.NavItems) do
		V.setActive(V.state.active);
	end;
end;
local function g(e)
	i.Accent = e.Accent;
	i.AccentDim = e.AccentDim;
	i.AccentGlow = e.AccentGlow;
	i.AccentSoft = e.AccentSoft;
	i.TextOnAccent = e.TextOnAccent;
	F();
end;
local y = {
		LoadingDuration = 3.5,
		ParticleSpawnRate = .1,
		ParticleMinSize = 2,
		ParticleMaxSize = 4,
		ParticleFallSpeed = 120,
		ParticlesPerTick = 2,
	};
local E = {
		Gui = nil,
		LoadingFrame = nil,
		CodeFrame = nil,
		Shell = nil,
		Sidebar = nil,
		Content = nil,
		Scroll = nil,
		NavItems = {},
		CurrentPage = nil,
		CurrentPreset = "Bleu",
		BillboardRef = nil,
		Authenticated = false,
		MenuOpen = false,
		TrollSelected = nil,
		FlyPopup = nil,
	};
local B = {
		EspEnabled = true,
		EspShowMurder = true,
		EspShowSheriff = true,
		EspShowInnocent = false,
		AutoShootEnabled = false,
		AutoShootRange = 500,
		AutoShootDelay = .15,
		TpAllDelay = .8,
		XRayEnabled = false,
	};
local T = {
		Murderer = Color3.fromRGB(255, 60, 60),
		Sheriff = Color3.fromRGB(60, 120, 255),
		Innocent = Color3.fromRGB(60, 255, 120),
		Box = Color3.fromRGB(255, 60, 60),
		Tracer = Color3.fromRGB(255, 60, 60),
	};
local l = {
		BoxEnabled = true,
		BoxThickness = 2,
		TracerEnabled = false,
		DistanceEnabled = true,
	};
local S = {
		FlyEnabled = false,
		FlySpeed = 10,
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
	};
local U = { track = nil };
local a = {
		bv = nil,
		bg = nil,
		conn = nil,
		bindConn = nil,
		ctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		},
		lastctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		},
		speed = 0,
		maxspeed = 10,
		nowe = false,
		tpwalking = false,
		savedAnimDisabled = false,
	};
local O = { av = nil };
local K = { conn = nil };
local u = { running = false };
local q = {};
local D = {};
local function Q(...)
	print("[MENU-V71]", ...);
end;
local function P(e, V)
	local p = Instance.new(e);
	for e, V in pairs(V or {}) do
		p[e] = V;
	end;
	return p;
end;
local function L(e, V)
	return P("UICorner", { CornerRadius = UDim.new(0, V or 8), Parent = e });
end;
local function H(e, V, p, I)
	return P("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, V), ColorSequenceKeypoint.new(1, p) }), Rotation = I or 90, Parent = e });
end;
local function z(e, V, p, I)
	return P("UIStroke", {
		Color = V or i.Border,
		Thickness = p or 1,
		Transparency = I or 0,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = e,
	});
end;
local function h(e, V, p, I)
	I = I or 8;
	local c = P("Frame", { Size = UDim2.new(0, I + 2, 0, I + 2), BackgroundTransparency = 1, Parent = e });
	local n, x = (V == "right") and 45 or -45, (V == "right") and -45 or 45;
	local w = P("Frame", {
			Size = UDim2.new(0, I, 0, 2),
			Position = UDim2.new(.5, -1, .5, -3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = p or i.TextMuted,
			BorderSizePixel = 0,
			Rotation = n,
			Parent = c,
		});
	L(w, 1);
	local Y = P("Frame", {
			Size = UDim2.new(0, I, 0, 2),
			Position = UDim2.new(.5, -1, .5, 3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = p or i.TextMuted,
			BorderSizePixel = 0,
			Rotation = x,
			Parent = c,
		});
	L(Y, 1);
	return c, w, Y;
end;
local function j(e, p)
	p = p or .45;
	local I = e.Size;
	e.Size = UDim2.new(0, I.X.Offset * .85, 0, I.Y.Offset * .85);
	e.BackgroundTransparency = 1;
	(V:Create(e, TweenInfo.new(p, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = I, BackgroundTransparency = 0 })):Play();
end;
local function f(e, p, I)
	p = p or .32;
	local c = e.Size;
	(V:Create(e, TweenInfo.new(p, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Size = UDim2.new(0, c.X.Offset * .85, 0, c.Y.Offset * .85), BackgroundTransparency = 1 })):Play();
	for e, I in ipairs(e:GetDescendants()) do
		if I:IsA("TextLabel") or I:IsA("TextBox") then
			(V:Create(I, TweenInfo.new(p * .85), { TextTransparency = 1 })):Play();
		elseif I:IsA("TextButton") then
			(V:Create(I, TweenInfo.new(p * .85), { BackgroundTransparency = 1 })):Play();
		elseif I:IsA("Frame") and I.Name ~= "ParticleZone" then
			if I.BackgroundTransparency < 1 then
				(V:Create(I, TweenInfo.new(p * .85), { BackgroundTransparency = 1 })):Play();
			end;
		elseif I:IsA("ImageLabel") then
			(V:Create(I, TweenInfo.new(p * .85), { ImageTransparency = 1 })):Play();
		elseif I:IsA("UIStroke") then
			(V:Create(I, TweenInfo.new(p * .85), { Transparency = 1 })):Play();
		end;
	end;
	local n = e.Parent and e.Parent:FindFirstChild(e.Name .. "_ShadowHolder");
	if n then
		for e, I in ipairs(n:GetChildren()) do
			if I:IsA("Frame") then
				(V:Create(I, TweenInfo.new(p * .85), { BackgroundTransparency = 1 })):Play();
			end;
		end;
	end;
	task.delay(p + .05, function()
		if n and n.Parent then
			n:Destroy();
		end;
		if e and e.Parent then
			e:Destroy();
		end;
		if I then
			I();
		end;
	end);
end;
local function W(e, p)
	p = p or .5;
	local I = e.Size;
	e.Size = UDim2.new(0, I.X.Offset * .85, 0, I.Y.Offset * .85);
	e.BackgroundTransparency = 1;
	for e, I in ipairs(e:GetDescendants()) do
		if I:IsA("TextLabel") or I:IsA("TextBox") then
			I.TextTransparency = 1;
			(V:Create(I, TweenInfo.new(p), { TextTransparency = 0 })):Play();
		elseif I:IsA("TextButton") then
			I.BackgroundTransparency = 1;
		elseif I:IsA("ImageLabel") then
			I.ImageTransparency = 1;
			(V:Create(I, TweenInfo.new(p), { ImageTransparency = 0 })):Play();
		end;
	end;
	(V:Create(e, TweenInfo.new(p, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = I, BackgroundTransparency = 0 })):Play();
end;
local function N()
	local e = n.Character;
	if not e then
		return;
	end;
	local V = e:FindFirstChildOfClass("Humanoid");
	if not V then
		return;
	end;
	local p = "rbxassetid://77643987647373";
	local I = Instance.new("Animation");
	I.AnimationId = p;
	pcall(function()
		local e = V:LoadAnimation(I);
		e.Priority = Enum.AnimationPriority.Action4;
		e.Looped = true;
		e:Play();
		U.track = e;
	end);
end;
local function m()
	if U.track then
		pcall(function()
			U.track:Stop();
		end);
		U.track = nil;
	end;
end;
local function A()
	if not S.FlyEnabled and not a.nowe then
		return;
	end;
	S.FlyEnabled = false;
	a.nowe = false;
	a.tpwalking = false;
	if a.conn then
		a.conn:Disconnect();
		a.conn = nil;
	end;
	if a.bg then
		pcall(function()
			a.bg:Destroy();
		end);
		a.bg = nil;
	end;
	if a.bv then
		pcall(function()
			a.bv:Destroy();
		end);
		a.bv = nil;
	end;
	a.ctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		};
	a.lastctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		};
	a.speed = 0;
	m();
	local e = n.Character;
	if not e then
		return;
	end;
	local V = e:FindFirstChildOfClass("Humanoid");
	if V then
		pcall(function()
			V.PlatformStand = false;
			V:SetStateEnabled(Enum.HumanoidStateType.Climbing, true);
			V:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true);
			V:SetStateEnabled(Enum.HumanoidStateType.Flying, true);
			V:SetStateEnabled(Enum.HumanoidStateType.Freefall, true);
			V:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true);
			V:SetStateEnabled(Enum.HumanoidStateType.Jumping, true);
			V:SetStateEnabled(Enum.HumanoidStateType.Landed, true);
			V:SetStateEnabled(Enum.HumanoidStateType.Physics, true);
			V:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true);
			V:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true);
			V:SetStateEnabled(Enum.HumanoidStateType.Running, true);
			V:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true);
			V:SetStateEnabled(Enum.HumanoidStateType.Seated, true);
			V:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true);
			V:SetStateEnabled(Enum.HumanoidStateType.Swimming, true);
		end);
	end;
	local p = e:FindFirstChild("Animate");
	if p then
		p.Disabled = a.savedAnimDisabled or false;
	end;
end;
local function J()
	local e = n.Character;
	if not e then
		return;
	end;
	local V = e:FindFirstChildOfClass("Humanoid");
	if not V then
		return;
	end;
	S.FlyEnabled = true;
	a.nowe = true;
	a.tpwalking = true;
	a.savedAnimDisabled = e:FindFirstChild("Animate") and e.Animate.Disabled or false;
	local c = math.clamp(math.floor(S.FlySpeed / 10), 1, 50);
	for e = 1, c, 1 do
		task.spawn(function()
			local e = p.Heartbeat;
			while a.tpwalking and e:Wait() do
				local e = n.Character;
				local V = e and e:FindFirstChildOfClass("Humanoid");
				if not ((e and (V and V.Parent))) then
					break;
				end;
				if V.MoveDirection.Magnitude > 0 then
					pcall(function()
						e:TranslateBy(V.MoveDirection);
					end);
				end;
			end;
		end);
	end;
	local x = e:FindFirstChild("Animate");
	if x then
		x.Disabled = true;
	end;
	for e, V in next, V:GetPlayingAnimationTracks() do
		pcall(function()
			V:AdjustSpeed(0);
		end);
	end;
	pcall(function()
		V:SetStateEnabled(Enum.HumanoidStateType.Climbing, false);
		V:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false);
		V:SetStateEnabled(Enum.HumanoidStateType.Flying, false);
		V:SetStateEnabled(Enum.HumanoidStateType.Freefall, false);
		V:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false);
		V:SetStateEnabled(Enum.HumanoidStateType.Jumping, false);
		V:SetStateEnabled(Enum.HumanoidStateType.Landed, false);
		V:SetStateEnabled(Enum.HumanoidStateType.Physics, false);
		V:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false);
		V:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false);
		V:SetStateEnabled(Enum.HumanoidStateType.Running, false);
		V:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false);
		V:SetStateEnabled(Enum.HumanoidStateType.Seated, false);
		V:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false);
		V:SetStateEnabled(Enum.HumanoidStateType.Swimming, false);
		V:ChangeState(Enum.HumanoidStateType.Swimming);
	end);
	local w = (V.RigType == Enum.HumanoidRigType.R6);
	local Y = w and e:FindFirstChild("Torso") or e:FindFirstChild("UpperTorso");
	if not Y then
		Y = e:FindFirstChild("HumanoidRootPart");
	end;
	if not Y then
		A();
		return;
	end;
	local v = Instance.new("BodyGyro");
	v.P = 90000;
	v.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000);
	v.CFrame = Y.CFrame;
	v.Parent = Y;
	a.bg = v;
	local X = Instance.new("BodyVelocity");
	X.Velocity = Vector3.new(0, .1, 0);
	X.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000);
	X.Parent = Y;
	a.bv = X;
	pcall(function()
		V.PlatformStand = true;
	end);
	task.wait(.15);
	N();
	a.conn = p.RenderStepped:Connect(function()
			if not a.nowe then
				return;
			end;
			local e = n.Character;
			if not e then
				return;
			end;
			local V = e:FindFirstChildOfClass("Humanoid");
			if not V or V.Health <= 0 then
				return;
			end;
			local p = workspace.CurrentCamera;
			if not p then
				return;
			end;
			local c = a.ctrl;
			c.f = I:IsKeyDown(Enum.KeyCode.W) and 1 or 0;
			c.b = I:IsKeyDown(Enum.KeyCode.S) and 1 or 0;
			c.l = I:IsKeyDown(Enum.KeyCode.A) and 1 or 0;
			c.r = I:IsKeyDown(Enum.KeyCode.D) and 1 or 0;
			local x = a.maxspeed;
			if c.l + c.r ~= 0 or c.f + c.b ~= 0 then
				a.speed = (a.speed + .5) + (a.speed / x);
				if a.speed > x then
					a.speed = x;
				end;
			elseif not ((c.l + c.r ~= 0 or c.f + c.b ~= 0)) and a.speed ~= 0 then
				a.speed = a.speed - 1;
				if a.speed < 0 then
					a.speed = 0;
				end;
			end;
			if a.bv then
				if (c.l + c.r) ~= 0 or (c.f + c.b) ~= 0 then
					a.bv.Velocity = (((p.CFrame.LookVector * ((c.f + c.b))) + (((p.CFrame * (CFrame.new(c.l + c.r, ((c.f + c.b)) * .2, 0)).p) - p.CFrame.p)))) * a.speed;
					a.lastctrl = {
							f = c.f,
							b = c.b,
							l = c.l,
							r = c.r,
						};
				elseif (c.l + c.r) == 0 and ((c.f + c.b) == 0 and a.speed ~= 0) then
					a.bv.Velocity = (((p.CFrame.LookVector * ((a.lastctrl.f + a.lastctrl.b))) + (((p.CFrame * (CFrame.new(a.lastctrl.l + a.lastctrl.r, ((a.lastctrl.f + a.lastctrl.b)) * .2, 0)).p) - p.CFrame.p)))) * a.speed;
				else
					a.bv.Velocity = Vector3.new(0, 0, 0);
				end;
			end;
			if a.bg then
				a.bg.CFrame = p.CFrame * CFrame.Angles(-math.rad(((((c.f + c.b)) * 50) * a.speed) / x), 0, 0);
			end;
		end);
end;
local function o()
	if S.FlyEnabled or a.nowe then
		A();
	else
		J();
	end;
end;
local function G()
	if a.bindConn then
		a.bindConn:Disconnect();
		a.bindConn = nil;
	end;
	if not S.FlyBind then
		return;
	end;
	a.bindConn = I.InputBegan:Connect(function(e, V)
			if V then
				return;
			end;
			if e.UserInputType ~= Enum.UserInputType.Keyboard then
				return;
			end;
			if e.KeyCode == S.FlyBind then
				o();
			end;
		end);
end;
local function d(e)
	S.FlyBind = e;
	G();
end;
local function k()
	S.SpinEnabled = false;
	if O.av then
		O.av:Destroy();
		O.av = nil;
	end;
end;
local function b()
	local e = n.Character;
	if not e then
		return;
	end;
	local V = e:FindFirstChild("HumanoidRootPart");
	if not V then
		return;
	end;
	S.SpinEnabled = true;
	local p = Instance.new("BodyAngularVelocity");
	p.AngularVelocity = Vector3.new(0, S.SpinSpeed, 0);
	p.MaxTorque = Vector3.new(0, 9000000000, 0);
	p.P = 1250;
	p.Parent = V;
	O.av = p;
end;
local function C()
	if S.SpinEnabled then
		k();
	else
		b();
	end;
end;
local function r(e)
	S.SpinSpeed = e;
	if O.av then
		O.av.AngularVelocity = Vector3.new(0, e, 0);
	end;
end;
local function M()
	S.JerkEnabled = false;
	if K.conn then
		K.conn:Disconnect();
		K.conn = nil;
	end;
	local e = n.Character;
	local V = e and e:FindFirstChild("HumanoidRootPart");
	if V then
		pcall(function()
			V.AssemblyLinearVelocity = Vector3.zero;
			V.Velocity = Vector3.zero;
		end);
	end;
end;
local function ea()
	local e = n.Character;
	if not e then
		return;
	end;
	local V = e:FindFirstChild("HumanoidRootPart");
	if not V then
		return;
	end;
	S.JerkEnabled = true;
	K.conn = p.Heartbeat:Connect(function()
			if not S.JerkEnabled then
				return;
			end;
			local e = n.Character;
			local V = e and e:FindFirstChild("HumanoidRootPart");
			if not V then
				return;
			end;
			local p = S.JerkIntensity;
			local I = Vector3.new((((math.random() - .5)) * p) * 8, (((math.random() - .5)) * p) * 8, (((math.random() - .5)) * p) * 8);
			pcall(function()
				V.AssemblyLinearVelocity = V.AssemblyLinearVelocity + I;
				V.Velocity = V.Velocity + I;
			end);
		end);
end;
local function Va()
	if S.JerkEnabled then
		M();
	else
		ea();
	end;
end;
local function pa(e)
	S.JerkIntensity = e;
end;
local function Ia()
	S.Sitting = not S.Sitting;
	local e = n.Character;
	local V = e and e:FindFirstChildOfClass("Humanoid");
	if not V then
		return;
	end;
	V.Sit = S.Sitting;
end;
task.spawn(function()
	while true do
		task.wait(.15);
		if S.NoclipEnabled and not S.FlyEnabled then
			local e = n.Character;
			if e then
				for e, V in ipairs(e:GetDescendants()) do
					if V:IsA("BasePart") and V.CanCollide then
						V.CanCollide = false;
					end;
				end;
			end;
		end;
	end;
end);
local function ca()
	S.NoclipEnabled = not S.NoclipEnabled;
	local e = n.Character;
	if e and not S.NoclipEnabled then
		for e, V in ipairs(e:GetDescendants()) do
			if V:IsA("BasePart") then
				V.CanCollide = true;
			end;
		end;
	end;
end;
local function na(e)
	S.WalkSpeed = e;
	local V = n.Character;
	local p = V and V:FindFirstChildOfClass("Humanoid");
	if p then
		p.WalkSpeed = e;
	end;
end;
local function xa(e)
	S.JumpPower = e;
	local V = n.Character;
	local p = V and V:FindFirstChildOfClass("Humanoid");
	if p then
		p.UseJumpPower = true;
		p.JumpPower = e;
	end;
end;
local function wa(e)
	S.Gravity = e;
	workspace.Gravity = e;
end;
local Ya = nil;
local function va()
	S.InfiniteJump = not S.InfiniteJump;
	if S.InfiniteJump then
		if Ya then
			Ya:Disconnect();
		end;
		Ya = I.JumpRequest:Connect(function()
				local e = n.Character;
				local V = e and e:FindFirstChildOfClass("Humanoid");
				if V then
					V:ChangeState(Enum.HumanoidStateType.Jumping);
				end;
			end);
	else
		if Ya then
			Ya:Disconnect();
			Ya = nil;
		end;
	end;
end;
local Xa = nil;
local function ia()
	S.AntiAFK = not S.AntiAFK;
	if S.AntiAFK then
		if Xa then
			Xa:Disconnect();
		end;
		Xa = n.Idled:Connect(function()
				local e = game:GetService("VirtualUser");
				e:CaptureController();
				e:ClickButton2(Vector2.new());
			end);
	else
		if Xa then
			Xa:Disconnect();
			Xa = nil;
		end;
	end;
end;
local Ra = {};
local function Za()
	S.Fullbright = not S.Fullbright;
	if S.Fullbright then
		Ra.Ambient = c.Ambient;
		Ra.OutdoorAmbient = c.OutdoorAmbient;
		Ra.Brightness = c.Brightness;
		Ra.ClockTime = c.ClockTime;
		c.Ambient = Color3.fromRGB(255, 255, 255);
		c.OutdoorAmbient = Color3.fromRGB(255, 255, 255);
		c.Brightness = 3;
		c.ClockTime = 14;
		local e = c:FindFirstChild("MulbaFullbright");
		if not e then
			e = Instance.new("ColorCorrectionEffect");
			e.Name = "MulbaFullbright";
			e.Parent = c;
		end;
	else
		if Ra.Ambient then
			c.Ambient = Ra.Ambient;
		end;
		if Ra.OutdoorAmbient then
			c.OutdoorAmbient = Ra.OutdoorAmbient;
		end;
		if Ra.Brightness then
			c.Brightness = Ra.Brightness;
		end;
		if Ra.ClockTime then
			c.ClockTime = Ra.ClockTime;
		end;
		local e = c:FindFirstChild("MulbaFullbright");
		if e then
			e:Destroy();
		end;
	end;
end;
local function ta()
	S.AntiFling = not S.AntiFling;
end;
task.spawn(function()
	while true do
		task.wait(.1);
		if S.AntiFling then
			local e = n.Character;
			local V = e and e:FindFirstChild("HumanoidRootPart");
			if V then
				for e, V in ipairs(V:GetChildren()) do
					if V:IsA("BodyVelocity") then
						if V.Velocity.Magnitude > 500 then
							V.Velocity = V.Velocity.Unit * 500;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local function sa()
	local e = n.Character;
	local V = e and e:FindFirstChildOfClass("Humanoid");
	if V then
		V.Health = 0;
	end;
end;
local function Fa()
	local e = n.Character;
	local V = e and e:FindFirstChild("HumanoidRootPart");
	if not V then
		return;
	end;
	for e, p in ipairs(workspace:GetDescendants()) do
		if p:IsA("SpawnLocation") then
			pcall(function()
				V.CFrame = p.CFrame + Vector3.new(0, 3, 0);
			end);
			return;
		end;
	end;
end;
local ga = { running = false, conn = nil };
local function ya()
	if ga.running then
		return;
	end;
	ga.running = true;
	ga.conn = p.Heartbeat:Connect(function()
			if not ga.running then
				return;
			end;
			local V = n.Character;
			if not V then
				return;
			end;
			local p = V:FindFirstChild("HumanoidRootPart");
			if not p then
				return;
			end;
			local I = p.CFrame;
			local c = 6;
			local x = I.Position + (I.LookVector * c);
			local w = {};
			for e, V in ipairs(e:GetPlayers()) do
				if V ~= n and V.Character then
					local e = V.Character:FindFirstChild("HumanoidRootPart");
					if e then
						table.insert(w, e);
					end;
				end;
			end;
			local Y = #w;
			if Y == 0 then
				return;
			end;
			local v = 4;
			for e, V in ipairs(w) do
				local p = ((e - 1)) * (((math.pi * 2) / Y));
				local c = Vector3.new(math.cos(p) * v, 0, math.sin(p) * v);
				pcall(function()
					V.CFrame = CFrame.new(x + c, (x + c) + I.LookVector);
					V.AssemblyLinearVelocity = Vector3.zero;
					V.Velocity = Vector3.zero;
				end);
			end;
		end);
end;
local function Ea()
	ga.running = false;
	if ga.conn then
		ga.conn:Disconnect();
		ga.conn = nil;
	end;
end;
local function Ba()
	if ga.running then
		Ea();
	else
		ya();
	end;
end;
local function Ta(e)
	if not e then
		return "Innocent";
	end;
	if e:FindFirstChild("Role") then
		local V, p = pcall(function()
				return tostring(e.Role.Value);
			end);
		if V and (p and p ~= "") then
			return p;
		end;
	end;
	local V = e.Character;
	local p = e:FindFirstChild("Backpack");
	if V then
		if V:FindFirstChild("Knife") then
			return "Murderer";
		end;
		if V:FindFirstChild("Gun") then
			return "Sheriff";
		end;
	end;
	if p then
		if p:FindFirstChild("Knife") then
			return "Murderer";
		end;
		if p:FindFirstChild("Gun") then
			return "Sheriff";
		end;
	end;
	return "Innocent";
end;
local function la()
	for e, V in ipairs(e:GetPlayers()) do
		if V == n then
			continue;
		end;
		if Ta(V) == "Murderer" then
			return V;
		end;
	end;
	return nil;
end;
local function Sa(e)
	if e == "Murderer" then
		return T.Murderer;
	end;
	if e == "Sheriff" then
		return T.Sheriff;
	end;
	return T.Innocent;
end;
local function Ua(e)
	if e == "Murderer" then
		return B.EspShowMurder;
	end;
	if e == "Sheriff" then
		return B.EspShowSheriff;
	end;
	return B.EspShowInnocent;
end;
local function aa(e, V)
	if not e then
		return;
	end;
	if D[V] and D[V].Parent then
		return;
	end;
	local p = P("Highlight", {
			FillColor = Color3.fromRGB(255, 255, 255),
			FillTransparency = .85,
			OutlineColor = Color3.fromRGB(255, 255, 255),
			OutlineTransparency = 0,
			DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
			Adornee = e,
			Parent = e,
		});
	D[V] = p;
end;
local function Oa(e)
	local V = D[e];
	if V and V.Parent then
		V:Destroy();
	end;
	D[e] = nil;
end;
local function Ka()
	if B.XRayEnabled then
		for e, V in ipairs(e:GetPlayers()) do
			if V.Character then
				aa(V.Character, V);
			end;
		end;
	else
		for e in pairs(D) do
			Oa(e);
		end;
	end;
end;
local function ua(e)
	if e == n then
		return;
	end;
	if q[e] then
		local V = pcall(function()
				q[e].Box.Visible = q[e].Box.Visible;
			end);
		if V then
			return;
		end;
		removeESP(e);
	end;
	local V = Drawing.new("Square");
	V.Thickness = l.BoxThickness;
	V.Filled = false;
	V.Visible = false;
	local p = Drawing.new("Text");
	p.Center = true;
	p.Outline = true;
	p.Size = 16;
	p.Visible = false;
	local I = Drawing.new("Text");
	I.Center = true;
	I.Outline = true;
	I.Size = 13;
	I.Visible = false;
	local c = Drawing.new("Line");
	c.Thickness = 1;
	c.Visible = false;
	q[e] = {
			Box = V,
			Text = p,
			DistanceText = I,
			Tracer = c,
		};
end;
local function qa(e)
	local V = q[e];
	if V then
		for e, V in pairs(V) do
			pcall(function()
				V:Remove();
			end);
		end;
		q[e] = nil;
	end;
end;
local function Da(e)
	local V, p = w:WorldToViewportPoint(e);
	return Vector2.new(V.X, V.Y), p;
end;
p.RenderStepped:Connect(function()
	if not B.EspEnabled then
		for e, V in pairs(q) do
			pcall(function()
				V.Box.Visible = false;
				V.Text.Visible = false;
				V.DistanceText.Visible = false;
				V.Tracer.Visible = false;
			end);
		end;
		return;
	end;
	local e = workspace.CurrentCamera;
	if e then
		w = e;
	end;
	local V = n.Character;
	local p = V and V:FindFirstChild("HumanoidRootPart");
	local I = p and p.Position;
	for e, V in pairs(q) do
		local p = pcall(function()
				return V.Box.Visible;
			end);
		if not p then
			q[e] = nil;
			continue;
		end;
		local c = e.Character;
		local n = c and c:FindFirstChild("HumanoidRootPart");
		local x = c and c:FindFirstChild("Head");
		local Y = c and c:FindFirstChildOfClass("Humanoid");
		local v = function()
				pcall(function()
					V.Box.Visible = false;
					V.Text.Visible = false;
					V.DistanceText.Visible = false;
					V.Tracer.Visible = false;
				end);
			end;
		if not ((n and (x and (Y and Y.Health > 0)))) then
			v();
			continue;
		end;
		local X = Ta(e);
		if not Ua(X) then
			v();
			continue;
		end;
		local i, R = Da(x.Position + Vector3.new(0, .5, 0));
		local Z, t = Da(n.Position - Vector3.new(0, 3, 0));
		if R or t then
			local p = math.abs(i.Y - Z.Y);
			local c = p / 2;
			local x = Sa(X);
			if l.BoxEnabled then
				pcall(function()
					V.Box.Size = Vector2.new(c, p);
					V.Box.Position = Vector2.new(i.X - c / 2, i.Y);
					V.Box.Color = T.Box;
					V.Box.Thickness = l.BoxThickness;
					V.Box.Visible = true;
				end);
			else
				pcall(function()
					V.Box.Visible = false;
				end);
			end;
			pcall(function()
				V.Text.Text = e.DisplayName .. (" [" .. (X .. "]"));
				V.Text.Position = Vector2.new(i.X, i.Y - 18);
				V.Text.Color = x;
				V.Text.Visible = true;
			end);
			if l.DistanceEnabled and I then
				pcall(function()
					local e = ((n.Position - I)).Magnitude;
					V.DistanceText.Text = string.format("%.1f m", e * .28);
					V.DistanceText.Position = Vector2.new(i.X, Z.Y + 2);
					V.DistanceText.Color = x;
					V.DistanceText.Visible = true;
				end);
			else
				pcall(function()
					V.DistanceText.Visible = false;
				end);
			end;
			if l.TracerEnabled then
				pcall(function()
					V.Tracer.From = Vector2.new(w.ViewportSize.X / 2, w.ViewportSize.Y);
					V.Tracer.To = Vector2.new(i.X, i.Y);
					V.Tracer.Color = T.Tracer;
					V.Tracer.Thickness = 1;
					V.Tracer.Visible = true;
				end);
			else
				pcall(function()
					V.Tracer.Visible = false;
				end);
			end;
		else
			v();
		end;
	end;
end);
e.PlayerAdded:Connect(function(e)
	task.wait(1);
	ua(e);
	if B.XRayEnabled and e.Character then
		aa(e.Character, e);
	end;
end);
e.PlayerRemoving:Connect(function(e)
	qa(e);
	Oa(e);
end);
for e, V in ipairs(e:GetPlayers()) do
	ua(V);
end;
local function Qa(e)
	local p = e.AbsoluteSize;
	if p.X < 5 or p.Y < 5 then
		return;
	end;
	local I = math.random(y.ParticleMinSize, y.ParticleMaxSize);
	local c = math.random(0, math.max(1, p.X - I));
	local n = ((p.Y + 40)) / y.ParticleFallSpeed;
	local x = P("Frame", {
			Size = UDim2.new(0, I, 0, I),
			Position = UDim2.new(0, c, 0, -I),
			BackgroundColor3 = i.Particle,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 5,
			Parent = e,
		});
	L(x, math.floor(I / 2));
	local w = V:Create(x, TweenInfo.new(n, Enum.EasingStyle.Linear), { Position = UDim2.new(0, c + math.random(-40, 40), 0, p.Y + 20), BackgroundTransparency = .85 + math.random() * .1 });
	w:Play();
	w.Completed:Connect(function()
		x:Destroy();
	end);
end;
local function Pa(e)
	task.spawn(function()
		while e and e.Parent do
			for V = 1, y.ParticlesPerTick, 1 do
				Qa(e);
			end;
			task.wait(y.ParticleSpawnRate);
		end;
	end);
end;
local function La(e, V, I)
	local c = P("Frame", {
			Name = e .. "_ShadowHolder",
			Size = V,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ZIndex = 1,
			Parent = I,
		});
	for e = 1, 6, 1 do
		local V = P("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				BackgroundTransparency = .88 + (e * .008),
				BorderSizePixel = 0,
				ZIndex = 1,
				Parent = c,
			});
		L(V, 20 + e * 5);
	end;
	local n = P("Frame", {
			Name = e,
			Size = V,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundColor3 = i.BgTop,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Active = true,
			Draggable = true,
			ZIndex = 2,
			Parent = I,
		});
	L(n, 20);
	z(n, i.Border, 1, .4);
	H(n, i.BgTop, i.BgBottom, 90);
	p.Heartbeat:Connect(function()
		if c.Parent and n.Parent then
			c.Position = n.Position + UDim2.new(0, 0, 0, 12);
			c.Size = n.Size;
			c.Visible = n.Visible;
		end;
	end);
	local x = P("Frame", {
			Name = "ParticleZone",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			ZIndex = 5,
			Parent = n,
		});
	L(x, 20);
	Pa(x);
	return n;
end;
local function Ha(e, V)
	f(e, .35, V);
end;
local function za()
	if not ((E.Shell and E.Shell.Parent)) then
		return;
	end;
	f(E.Shell, .35, function()
		E.Shell = nil;
		E.Sidebar = nil;
		E.Content = nil;
		E.Scroll = nil;
		E.NavItems = {};
		E.CurrentPage = nil;
		E.MenuOpen = false;
	end);
end;
local function ha(e, p, I)
	local c = n:FindFirstChild("PlayerGui");
	if not c then
		return;
	end;
	local x = c:FindFirstChild("MulbaNotif");
	if x then
		x:Destroy();
	end;
	local w = P("ScreenGui", {
			Name = "MulbaNotif",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 1000,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Parent = c,
		});
	local Y = P("Frame", {
			Size = UDim2.new(0, 320, 0, 80),
			Position = UDim2.new(1, 20, 0, 100),
			BackgroundColor3 = i.BgTop,
			BackgroundTransparency = .05,
			BorderSizePixel = 0,
			ZIndex = 1000,
			Parent = w,
		});
	L(Y, 14);
	H(Y, i.BgTop, i.BgBottom, 90);
	P("UIStroke", {
		Color = I and Color3.fromRGB(255, 100, 100) or i.Accent,
		Thickness = 2,
		Transparency = .2,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = Y,
	});
	P("TextLabel", {
		Size = UDim2.new(1, -60, 0, 20),
		Position = UDim2.new(0, 20, 0, 14),
		BackgroundTransparency = 1,
		Text = e,
		TextColor3 = I and Color3.fromRGB(255, 120, 120) or i.Accent,
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 1001,
		Parent = Y,
	});
	P("TextLabel", {
		Size = UDim2.new(1, -60, 0, 30),
		Position = UDim2.new(0, 20, 0, 36),
		BackgroundTransparency = 1,
		Text = p,
		TextColor3 = i.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		ZIndex = 1001,
		Parent = Y,
	});
	(V:Create(Y, TweenInfo.new(.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.new(1, -340, 0, 100) })):Play();
	task.delay(5, function()
		if not Y.Parent then
			return;
		end;
		(V:Create(Y, TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(1, 20, 0, 100), BackgroundTransparency = 1 })):Play();
		for e, p in ipairs(Y:GetDescendants()) do
			if p:IsA("TextLabel") then
				(V:Create(p, TweenInfo.new(.4), { TextTransparency = 1 })):Play();
			end;
		end;
		task.wait(.5);
		w:Destroy();
	end);
end;
task.spawn(function()
	while true do
		task.wait(B.AutoShootDelay);
		if not B.AutoShootEnabled then
			continue;
		end;
		local e = Ta(n);
		if e ~= "Sheriff" then
			continue;
		end;
		local V = n.Character;
		if not V then
			continue;
		end;
		local p = V:FindFirstChild("Gun");
		if not p then
			local e = n:FindFirstChild("Backpack");
			if e then
				local p = e:FindFirstChild("Gun");
				if p then
					pcall(function()
						V.Humanoid:EquipTool(p);
					end);
				end;
			end;
			continue;
		end;
		local I = la();
		if not I then
			continue;
		end;
		local c = I.Character;
		if not c then
			continue;
		end;
		local x = c:FindFirstChild("HumanoidRootPart");
		local w = c:FindFirstChild("Head");
		if not x then
			continue;
		end;
		local Y = V:FindFirstChild("HumanoidRootPart");
		if not Y then
			continue;
		end;
		local v = ((x.Position - Y.Position)).Magnitude;
		if v > B.AutoShootRange then
			continue;
		end;
		local X = workspace.CurrentCamera;
		if X then
			pcall(function()
				X.CFrame = CFrame.new(X.CFrame.Position, w and w.Position or x.Position);
			end);
		end;
		pcall(function()
			p:Activate();
		end);
	end;
end);
local ja, fa, Wa;
local Na, ma, Aa, Ja, oa, Ga;
local da, ka, ba, Ca, ra;
local Ma, e8, V8, p8, I8, c8, n8;
fa = function()
		local I = n:FindFirstChild("PlayerGui");
		if I then
			local e = I:FindFirstChild("MulbaHeadGui");
			if e then
				e:Destroy();
			end;
		end;
		local c = n.Character;
		if not c or not c:FindFirstChild("Head") then
			task.delay(1, function()
				if fa then
					fa();
				end;
			end);
			return;
		end;
		local x = c:FindFirstChild("Head");
		if not x then
			return;
		end;
		local w = P("ScreenGui", {
				Name = "MulbaHeadGui",
				ResetOnSpawn = false,
				IgnoreGuiInset = true,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				DisplayOrder = 997,
				Parent = I,
			});
		local Y, v = 200, 50;
		local i = P("TextButton", {
				Size = UDim2.new(0, Y, 0, v),
				Position = UDim2.new(0, 0, 0, 0),
				AnchorPoint = Vector2.new(.5, 1),
				BackgroundColor3 = Color3.fromRGB(12, 16, 28),
				BackgroundTransparency = .05,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				Active = true,
				ZIndex = 1,
				Parent = w,
			});
		L(i, 25);
		H(i, Color3.fromRGB(16, 22, 38), Color3.fromRGB(8, 10, 18), 90);
		P("UIStroke", {
			Color = Color3.fromRGB(90, 150, 255),
			Thickness = 1.5,
			Transparency = .15,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = i,
		});
		local R = P("Frame", {
				Size = UDim2.new(0, 36, 0, 36),
				Position = UDim2.new(0, 8, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = i,
			});
		L(R, 18);
		local Z = P("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 7,
				Parent = R,
			});
		L(Z, 16);
		local t = P("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 8,
				Parent = Z,
			});
		L(t, 16);
		task.spawn(function()
			local V, p = pcall(function()
					return e:GetUserThumbnailAsync(n.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if V and p then
				t.Image = p;
			end;
		end);
		local s = P("TextLabel", {
				Size = UDim2.new(1, -90, 0, 16),
				Position = UDim2.new(0, 52, 0, 8),
				BackgroundTransparency = 1,
				Text = "Mulba Menu",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = i,
			});
		local F = P("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 180, 255)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(170, 120, 255)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 120, 200)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(255, 180, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 255, 180)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 180, 255)),
				}), Rotation = 0, Parent = s });
		task.spawn(function()
			while F.Parent do
				F.Rotation = ((F.Rotation + 3)) % 360;
				task.wait(.03);
			end;
		end);
		P("TextLabel", {
			Size = UDim2.new(1, -90, 0, 12),
			Position = UDim2.new(0, 52, 0, 23),
			BackgroundTransparency = 1,
			Text = n.DisplayName .. " / lifetime",
			TextColor3 = Color3.fromRGB(220, 225, 235),
			Font = Enum.Font.GothamMedium,
			TextSize = 9,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 9,
			Parent = i,
		});
		local g = P("TextLabel", {
				Size = UDim2.new(1, -90, 0, 14),
				Position = UDim2.new(0, 52, 0, 35),
				BackgroundTransparency = 1,
				Text = "Cr\195\169ateur",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = i,
			});
		local y = P("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 80, 80)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(255, 180, 80)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 255, 80)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(120, 255, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 200, 255)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 80, 80)),
				}), Rotation = 0, Parent = g });
		task.spawn(function()
			while y.Parent do
				y.Rotation = ((y.Rotation + 4)) % 360;
				task.wait(.03);
			end;
		end);
		local B = P("Frame", {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -38, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = i,
			});
		L(B, 15);
		local T = P("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Text = "M",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 15,
				ZIndex = 8,
				Parent = B,
			});
		P("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 230, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(90, 150, 255)) }), Rotation = 90, Parent = T });
		i.BackgroundTransparency = 1;
		i.Size = UDim2.new(0, Y * .7, 0, v * .7);
		for e, p in ipairs(i:GetDescendants()) do
			if p:IsA("TextLabel") then
				p.TextTransparency = 1;
				(V:Create(p, TweenInfo.new(.5), { TextTransparency = 0 })):Play();
			end;
			if p:IsA("ImageLabel") then
				p.ImageTransparency = 1;
				(V:Create(p, TweenInfo.new(.5), { ImageTransparency = 0 })):Play();
			end;
		end;
		(V:Create(i, TweenInfo.new(.55, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, Y, 0, v), BackgroundTransparency = .05 })):Play();
		p.RenderStepped:Connect(function()
			if not w.Parent then
				return;
			end;
			if not ((i and i.Parent)) then
				return;
			end;
			local e = n.Character;
			if not e then
				i.Visible = false;
				return;
			end;
			local V = e:FindFirstChild("Head");
			if not V then
				i.Visible = false;
				return;
			end;
			local p = workspace.CurrentCamera;
			if not p then
				return;
			end;
			local I = V.Position + Vector3.new(0, X, 0);
			local c, x = p:WorldToViewportPoint(I);
			if not x then
				i.Visible = false;
				return;
			end;
			i.Visible = true;
			i.Position = UDim2.new(0, c.X, 0, c.Y);
		end);
		i.MouseButton1Click:Connect(function()
			if not E.Authenticated then
				return;
			end;
			if E.Shell and E.Shell.Parent then
				return;
			end;
			if ja then
				ja();
			end;
		end);
		E.BillboardRef = w;
	end;
Na = function(e)
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 42),
			BackgroundTransparency = 1,
			Text = "Bienvenue sur Mulba",
			TextColor3 = i.TextPrimary,
			Font = Enum.Font.GothamBlack,
			TextSize = 30,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 46),
			BackgroundTransparency = 1,
			Text = "Menu premium \226\128\162 Murder Mystery 2",
			TextColor3 = i.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		local V = P("Frame", {
				Size = UDim2.new(0, 140, 0, 58),
				Position = UDim2.new(1, -140, 0, 0),
				BackgroundColor3 = i.Surface,
				BackgroundTransparency = .35,
				BorderSizePixel = 0,
				ZIndex = 26,
				Parent = e,
			});
		L(V, 10);
		z(V, i.Border, 1, .5);
		local I = P("TextLabel", {
				Size = UDim2.new(1, -16, 0, 20),
				Position = UDim2.new(0, 8, 0, 8),
				BackgroundTransparency = 1,
				Text = "FPS: 0",
				TextColor3 = i.Success,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = V,
			});
		local c = P("TextLabel", {
				Size = UDim2.new(1, -16, 0, 20),
				Position = UDim2.new(0, 8, 0, 30),
				BackgroundTransparency = 1,
				Text = "MS: 0",
				TextColor3 = i.Accent,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = V,
			});
		task.spawn(function()
			local e = 0;
			local x = tick();
			p.RenderStepped:Connect(function()
				e = e + 1;
			end);
			while V.Parent do
				local V = tick();
				local p = V - x;
				if p >= .5 then
					local w = math.floor(e / p);
					e = 0;
					x = V;
					local Y, v = pcall(function()
							return math.floor(n:GetNetworkPing() * 1000);
						end);
					local X = Y and v or 0;
					pcall(function()
						I.Text = "FPS: " .. w;
						I.TextColor3 = w >= 50 and i.Success or (w >= 30 and Color3.fromRGB(240, 200, 120) or i.Error);
						c.Text = "MS: " .. X;
						c.TextColor3 = X <= 80 and i.Success or (X <= 150 and Color3.fromRGB(240, 200, 120) or i.Error);
					end);
				end;
				task.wait(.1);
			end;
		end);
		P("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundColor3 = i.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = e,
		});
		local x = 100;
		local function w(V, p)
			P("TextLabel", {
				Size = UDim2.new(1, 0, 0, 20),
				Position = UDim2.new(0, 0, 0, x),
				BackgroundTransparency = 1,
				Text = V,
				TextColor3 = i.Accent,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 25,
				Parent = e,
			});
			x = x + 26;
			P("TextLabel", {
				Size = UDim2.new(1, -8, 0, 0),
				Position = UDim2.new(0, 0, 0, x),
				BackgroundTransparency = 1,
				Text = p,
				TextColor3 = i.TextSecondary,
				Font = Enum.Font.Gotham,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextWrapped = true,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = e,
			});
			x = (x + #p * 5) + 30;
		end;
		w("\226\150\186 ESP", "Affiche les r\195\180les (Tueur / Sh\195\169rif / Innocent) avec box, tracer et x-ray pour voir \195\160 travers les murs.");
		w("\226\150\186 PLAYER", "Fly (emote zen), Spin, Jerk, Noclip, WalkSpeed, JumpPower, Gravity, Infinite Jump.");
		w("\226\150\186 MURDER", "TP ALL IN FRONT (garde les joueurs devant toi), TP vers le tueur.");
		w("\226\150\186 SHERIFF", "Auto Shoot : si tu es sh\195\169rif, tire automatiquement sur le tueur.");
		w("\226\150\186 T\195\137L\195\137PORT\195\137", "Te t\195\169l\195\169porte au spawn de la map en un clic.");
		w("\226\150\186 TROLL", "Cible un joueur : TP vers lui ou spectate sa cam\195\169ra.");
		w("\226\150\186 ANIMATION", "Sit : ton personnage s\'assoit (visible par tous les joueurs).");
		P("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, x),
			BackgroundColor3 = i.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = e,
		});
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 24),
			Position = UDim2.new(0, 0, 0, x + 10),
			BackgroundTransparency = 1,
			Text = "\240\159\146\161 Appuie sur M pour ouvrir ou fermer le menu",
			TextColor3 = i.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
	end;
ma = function(e)
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Param\195\168tres",
			TextColor3 = i.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 16),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundTransparency = 1,
			Text = "COULEUR D\'ACCENT",
			TextColor3 = i.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		local p = P("Frame", {
				Size = UDim2.new(1, 0, 0, 140),
				Position = UDim2.new(0, 0, 0, 104),
				BackgroundTransparency = 1,
				ZIndex = 25,
				Parent = e,
			});
		P("UIGridLayout", {
			CellSize = UDim2.new(0, 58, 0, 58),
			CellPadding = UDim2.new(0, 14, 0, 14),
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Parent = p,
		});
		local I = {};
		for e, c in ipairs(R) do
			local n = P("TextButton", {
					BackgroundColor3 = c.Accent,
					BorderSizePixel = 0,
					Text = "",
					AutoButtonColor = false,
					LayoutOrder = e,
					ZIndex = 26,
					Parent = p,
				});
			L(n, 29);
			local x = P("UIStroke", {
					Color = i.TextPrimary,
					Thickness = 2,
					Transparency = (c.name == E.CurrentPreset) and 0 or 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Parent = n,
				});
			I[c.name] = x;
			n.MouseButton1Click:Connect(function()
				if E.CurrentPreset == c.name then
					return;
				end;
				E.CurrentPreset = c.name;
				g(c);
				for e, p in pairs(I) do
					(V:Create(p, TweenInfo.new(.2), { Transparency = (e == c.name) and 0 or 1 })):Play();
				end;
			end);
		end;
	end;
I8 = function(e, V, p)
		local I = P("Frame", {
				Size = UDim2.new(1, 0, 0, 26),
				BackgroundTransparency = 1,
				LayoutOrder = V,
				ZIndex = 19,
				Parent = e,
			});
		P("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 4, 0, 0),
			BackgroundTransparency = 1,
			Text = string.upper(p),
			TextColor3 = i.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 19,
			Parent = I,
		});
		P("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 1, -1),
			BackgroundColor3 = i.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 19,
			Parent = I,
		});
	end;
Ma = function(e, p, I, c, n, x, w)
		local Y = P("Frame", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = i.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = p,
				ZIndex = 26,
				Parent = e,
			});
		L(Y, 12);
		z(Y, i.Border, 1, .5);
		local v = P("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = w,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = Y,
			});
		L(v, 2);
		P("TextLabel", {
			Size = UDim2.new(1, -100, 0, 18),
			Position = UDim2.new(0, 26, 0, 10),
			BackgroundTransparency = 1,
			Text = I,
			TextColor3 = i.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = Y,
		});
		P("TextLabel", {
			Size = UDim2.new(1, -100, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = c,
			TextColor3 = i.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = Y,
		});
		local X = P("TextButton", {
				Size = UDim2.new(0, 46, 0, 24),
				Position = UDim2.new(1, -58, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = n() and w or i.SurfaceHi,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 28,
				Parent = Y,
			});
		L(X, 12);
		local R = P("Frame", {
				Size = UDim2.new(0, 18, 0, 18),
				Position = n() and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = X,
			});
		L(R, 9);
		X.MouseButton1Click:Connect(function()
			x();
			local e = n();
			(V:Create(X, TweenInfo.new(.2), { BackgroundColor3 = e and w or i.SurfaceHi })):Play();
			(V:Create(R, TweenInfo.new(.2, Enum.EasingStyle.Quad), { Position = e and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0) })):Play();
		end);
		return Y;
	end;
e8 = function(e, V, p, c, n, x, w, Y)
		local v = P("Frame", {
				Size = UDim2.new(1, 0, 0, 52),
				BackgroundColor3 = i.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = V,
				ZIndex = 26,
				Parent = e,
			});
		L(v, 12);
		z(v, i.Border, 1, .5);
		P("TextLabel", {
			Size = UDim2.new(0, 130, 0, 14),
			Position = UDim2.new(0, 26, 0, 8),
			BackgroundTransparency = 1,
			Text = p,
			TextColor3 = i.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = v,
		});
		local X = P("TextLabel", {
				Size = UDim2.new(0, 60, 0, 14),
				Position = UDim2.new(1, -70, 0, 8),
				BackgroundTransparency = 1,
				Text = tostring(x()),
				TextColor3 = i.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Right,
				ZIndex = 27,
				Parent = v,
			});
		local R = P("Frame", {
				Size = UDim2.new(1, -52, 0, 8),
				Position = UDim2.new(0, 26, 0, 32),
				BackgroundColor3 = i.SurfaceHi,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = v,
			});
		L(R, 4);
		local Z = ((x() - c)) / ((n - c));
		local t = P("Frame", {
				Size = UDim2.new(Z, 0, 1, 0),
				BackgroundColor3 = Y,
				BorderSizePixel = 0,
				ZIndex = 28,
				Parent = R,
			});
		L(t, 4);
		local s = P("Frame", {
				Size = UDim2.new(0, 14, 0, 14),
				Position = UDim2.new(Z, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = R,
			});
		L(s, 7);
		z(s, Color3.fromRGB(0, 0, 0), 2, .3);
		local F = P("TextButton", {
				Size = UDim2.new(1, -52, 0, 22),
				Position = UDim2.new(0, 26, 0, 20),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = v,
			});
		local g = false;
		local function y(e)
			local V = R.AbsolutePosition.X;
			local p = R.AbsoluteSize.X;
			if p <= 0 then
				return;
			end;
			local I = math.clamp(((e - V)) / p, 0, 1);
			local x = c + I * ((n - c));
			x = math.floor(x * 10 + .5) / 10;
			w(x);
			s.Position = UDim2.new(I, 0, .5, 0);
			t.Size = UDim2.new(I, 0, 1, 0);
			X.Text = tostring(x);
		end;
		F.InputBegan:Connect(function(e)
			if e.UserInputType == Enum.UserInputType.MouseButton1 or e.UserInputType == Enum.UserInputType.Touch then
				g = true;
				y(e.Position.X);
			end;
		end);
		F.InputChanged:Connect(function(e)
			if not g then
				return;
			end;
			if e.UserInputType == Enum.UserInputType.MouseMovement or e.UserInputType == Enum.UserInputType.Touch then
				y(e.Position.X);
			end;
		end);
		I.InputEnded:Connect(function(e)
			if e.UserInputType == Enum.UserInputType.MouseButton1 or e.UserInputType == Enum.UserInputType.Touch then
				g = false;
			end;
		end);
	end;
V8 = function(e, p, I, c, n, x)
		local w = P("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = i.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = p,
				ZIndex = 26,
				Parent = e,
			});
		L(w, 12);
		z(w, i.Border, 1, .5);
		local Y = P("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = n,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = w,
			});
		L(Y, 2);
		local v = P("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = I,
				TextColor3 = i.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = w,
			});
		P("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = c,
			TextColor3 = i.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = w,
		});
		local X, R, Z = h(w, "right", i.TextMuted, 7);
		X.Position = UDim2.new(1, -26, .5, 0);
		X.AnchorPoint = Vector2.new(.5, .5);
		w.MouseEnter:Connect(function()
			(V:Create(w, TweenInfo.new(.18), { BackgroundColor3 = i.SurfaceHi, BackgroundTransparency = .1 })):Play();
			(V:Create(v, TweenInfo.new(.18), { TextColor3 = n })):Play();
			(V:Create(R, TweenInfo.new(.18), { BackgroundColor3 = n })):Play();
			(V:Create(Z, TweenInfo.new(.18), { BackgroundColor3 = n })):Play();
		end);
		w.MouseLeave:Connect(function()
			(V:Create(w, TweenInfo.new(.18), { BackgroundColor3 = i.Surface, BackgroundTransparency = .25 })):Play();
			(V:Create(v, TweenInfo.new(.18), { TextColor3 = i.TextPrimary })):Play();
			(V:Create(R, TweenInfo.new(.18), { BackgroundColor3 = i.TextMuted })):Play();
			(V:Create(Z, TweenInfo.new(.18), { BackgroundColor3 = i.TextMuted })):Play();
		end);
		w.MouseButton1Click:Connect(x);
		return w;
	end;
n8 = function(e, p, I, c, n, x, w)
		local Y = P("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = i.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = p,
				ZIndex = 26,
				Parent = e,
			});
		L(Y, 12);
		z(Y, i.Border, 1, .5);
		local v = P("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = n() and w or i.TextMuted,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = Y,
			});
		L(v, 2);
		local X = P("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = I,
				TextColor3 = i.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = Y,
			});
		P("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = c,
			TextColor3 = i.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = Y,
		});
		local R, Z, t = h(Y, "right", n() and w or i.TextMuted, 7);
		R.Position = UDim2.new(1, -26, .5, 0);
		R.AnchorPoint = Vector2.new(.5, .5);
		local function s()
			local e = n();
			v.BackgroundColor3 = e and w or i.TextMuted;
			Z.BackgroundColor3 = e and w or i.TextMuted;
			t.BackgroundColor3 = e and w or i.TextMuted;
			X.TextColor3 = e and w or i.TextPrimary;
		end;
		Y.MouseEnter:Connect(function()
			(V:Create(Y, TweenInfo.new(.18), { BackgroundColor3 = i.SurfaceHi, BackgroundTransparency = .1 })):Play();
		end);
		Y.MouseLeave:Connect(function()
			(V:Create(Y, TweenInfo.new(.18), { BackgroundColor3 = i.Surface, BackgroundTransparency = .25 })):Play();
		end);
		Y.MouseButton1Click:Connect(function()
			x(not n());
			s();
		end);
		return Y;
	end;
c8 = function(e, p, I, c, n, x, w, Y)
		local v = P("Frame", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundTransparency = 1,
				LayoutOrder = p,
				ZIndex = 26,
				Parent = e,
				AutomaticSize = Enum.AutomaticSize.Y,
			});
		P("UIListLayout", { Padding = UDim.new(0, 0), SortOrder = Enum.SortOrder.LayoutOrder, Parent = v });
		local X = P("Frame", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = i.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = 1,
				ZIndex = 26,
				Parent = v,
			});
		L(X, 12);
		z(X, i.Border, 1, .5);
		local R = P("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = n() and w or i.TextMuted,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = X,
			});
		L(R, 2);
		local Z = P("TextLabel", {
				Size = UDim2.new(1, -100, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = I,
				TextColor3 = i.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = X,
			});
		P("TextLabel", {
			Size = UDim2.new(1, -100, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = c,
			TextColor3 = i.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = X,
		});
		local t = P("TextButton", {
				Size = UDim2.new(0, 46, 0, 24),
				Position = UDim2.new(1, -80, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = n() and w or i.SurfaceHi,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 28,
				Parent = X,
			});
		L(t, 12);
		local s = P("Frame", {
				Size = UDim2.new(0, 18, 0, 18),
				Position = n() and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = t,
			});
		L(s, 9);
		local F = P("Frame", {
				Size = UDim2.new(0, 10, 0, 10),
				Position = UDim2.new(1, -26, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				ZIndex = 27,
				Parent = X,
			});
		local g = P("Frame", {
				Size = UDim2.new(0, 7, 0, 2),
				Position = UDim2.new(.5, 0, .5, -2),
				AnchorPoint = Vector2.new(1, .5),
				BackgroundColor3 = i.TextMuted,
				BorderSizePixel = 0,
				Rotation = 45,
				ZIndex = 28,
				Parent = F,
			});
		L(g, 1);
		local y = P("Frame", {
				Size = UDim2.new(0, 7, 0, 2),
				Position = UDim2.new(.5, 0, .5, 2),
				AnchorPoint = Vector2.new(1, .5),
				BackgroundColor3 = i.TextMuted,
				BorderSizePixel = 0,
				Rotation = -45,
				ZIndex = 28,
				Parent = F,
			});
		L(y, 1);
		local E = P("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				LayoutOrder = 2,
				ZIndex = 25,
				Parent = v,
			});
		t.MouseButton1Click:Connect(function()
			x(not n());
			local e = n();
			(V:Create(t, TweenInfo.new(.2), { BackgroundColor3 = e and w or i.SurfaceHi })):Play();
			(V:Create(s, TweenInfo.new(.2, Enum.EasingStyle.Quad), { Position = e and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0) })):Play();
			R.BackgroundColor3 = e and w or i.TextMuted;
			Z.TextColor3 = e and w or i.TextPrimary;
		end);
		local B = P("TextButton", {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -42, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 29,
				Parent = X,
			});
		local T = false;
		B.MouseButton1Click:Connect(function()
			T = not T;
			if T then
				for e, V in ipairs(E:GetChildren()) do
					V:Destroy();
				end;
				Y(E);
				(V:Create(E, TweenInfo.new(.28, Enum.EasingStyle.Quad), { Size = UDim2.new(1, 0, 0, 64) })):Play();
				(V:Create(g, TweenInfo.new(.2), { Rotation = -45 })):Play();
				(V:Create(y, TweenInfo.new(.2), { Rotation = 45 })):Play();
			else
				(V:Create(E, TweenInfo.new(.24, Enum.EasingStyle.Quad), { Size = UDim2.new(1, 0, 0, 0) })):Play();
				(V:Create(g, TweenInfo.new(.2), { Rotation = 45 })):Play();
				(V:Create(y, TweenInfo.new(.2), { Rotation = -45 })):Play();
			end;
		end);
		X.MouseEnter:Connect(function()
			(V:Create(X, TweenInfo.new(.18), { BackgroundColor3 = i.SurfaceHi, BackgroundTransparency = .1 })):Play();
		end);
		X.MouseLeave:Connect(function()
			(V:Create(X, TweenInfo.new(.18), { BackgroundColor3 = i.Surface, BackgroundTransparency = .25 })):Play();
		end);
		return v;
	end;
p8 = function()
		return;
	end;
da = function(e)
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Player",
			TextColor3 = i.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Mouvement & statistiques",
			TextColor3 = i.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		local V = P("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = e,
			});
		P("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = V });
		local p = 0;
		local function I()
			p = p + 1;
			return p;
		end;
		I8(V, I(), "Mouvement");
		n8(V, I(), "FLY", "Vol (W/A/S/D) + emote zen", function()
			return S.FlyEnabled;
		end, function(e)
			if e ~= S.FlyEnabled then
				o();
			end;
		end, Color3.fromRGB(115, 155, 240));
		Ma(V, I(), "SPIN", "Tourne sur toi-m\195\170me", function()
			return S.SpinEnabled;
		end, function()
			C();
		end, Color3.fromRGB(170, 130, 235));
		e8(V, I(), "VITESSE SPIN", 2, 50, function()
			return S.SpinSpeed;
		end, function(e)
			r(e);
		end, Color3.fromRGB(170, 130, 235));
		Ma(V, I(), "JERK", "Secousse rapide", function()
			return S.JerkEnabled;
		end, function()
			Va();
		end, Color3.fromRGB(240, 165, 95));
		e8(V, I(), "INTENSIT\195\137 JERK", .5, 10, function()
			return S.JerkIntensity;
		end, function(e)
			pa(e);
		end, Color3.fromRGB(240, 165, 95));
		Ma(V, I(), "NOCLIP", "Traverse les murs", function()
			return S.NoclipEnabled;
		end, function()
			ca();
		end, Color3.fromRGB(130, 205, 155));
		I8(V, I(), "Stats");
		e8(V, I(), "WALKSPEED", 16, 200, function()
			return S.WalkSpeed;
		end, function(e)
			na(e);
		end, Color3.fromRGB(115, 155, 240));
		e8(V, I(), "JUMPPOWER", 50, 500, function()
			return S.JumpPower;
		end, function(e)
			xa(e);
		end, Color3.fromRGB(130, 205, 155));
		e8(V, I(), "GRAVITY", 0, 196, function()
			return S.Gravity;
		end, function(e)
			wa(e);
		end, Color3.fromRGB(170, 130, 235));
		I8(V, I(), "Extras");
		Ma(V, I(), "INFINITE JUMP", "Saut infini", function()
			return S.InfiniteJump;
		end, function()
			va();
		end, Color3.fromRGB(240, 165, 95));
		Ma(V, I(), "ANTI-AFK", "\195\137vite le kick inactivit\195\169", function()
			return S.AntiAFK;
		end, function()
			ia();
		end, Color3.fromRGB(140, 200, 155));
		Ma(V, I(), "FULLBRIGHT", "\195\137claire toute la map", function()
			return S.Fullbright;
		end, function()
			Za();
		end, Color3.fromRGB(255, 215, 120));
		Ma(V, I(), "ANTI-FLING", "Bloque les tentatives de fling", function()
			return S.AntiFling;
		end, function()
			ta();
		end, Color3.fromRGB(220, 115, 115));
		V8(V, I(), "RESET CHARACTER", "Respawn imm\195\169diat", Color3.fromRGB(255, 80, 80), function()
			sa();
			ha("Player", "Reset en cours...", false);
		end);
	end;
ra = function(e)
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169port\195\169",
			TextColor3 = i.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169portation rapide",
			TextColor3 = i.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		local V = P("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = e,
			});
		P("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = V });
		V8(V, 1, "TP SPAWN", "Te t\195\169l\195\169porte au spawn", Color3.fromRGB(115, 155, 240), function()
			Fa();
		end);
	end;
Ca = function(e)
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Animation",
			TextColor3 = i.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Animations visibles par tous",
			TextColor3 = i.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		local V = P("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = e,
			});
		P("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = V });
		Ma(V, 1, "SIT", "Assieds ton personnage", function()
			return S.Sitting;
		end, function()
			Ia();
		end, Color3.fromRGB(140, 200, 155));
	end;
ka = function(e)
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Combat",
			TextColor3 = i.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Section \195\160 venir",
			TextColor3 = i.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
	end;
ba = function(e)
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Auto Farm",
			TextColor3 = i.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Section \195\160 venir",
			TextColor3 = i.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
	end;
Aa = function(e)
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "ESP",
			TextColor3 = i.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Affichage des r\195\180les MM2",
			TextColor3 = i.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundTransparency = 1,
			Text = "R\195\148LES",
			TextColor3 = i.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		local V = P("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 102),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = e,
			});
		P("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = V });
		n8(V, 1, "ESP Murderer", "Voir le tueur", function()
			return B.EspShowMurder;
		end, function(e)
			B.EspShowMurder = e;
		end, T.Murderer);
		n8(V, 2, "ESP Sheriff", "Voir le sh\195\169rif", function()
			return B.EspShowSheriff;
		end, function(e)
			B.EspShowSheriff = e;
		end, T.Sheriff);
		n8(V, 3, "ESP Innocent", "Voir les innocents", function()
			return B.EspShowInnocent;
		end, function(e)
			B.EspShowInnocent = e;
		end, T.Innocent);
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 290),
			BackgroundTransparency = 1,
			Text = "OPTIONS",
			TextColor3 = i.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		local p = P("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 312),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = e,
			});
		P("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = p });
		n8(p, 1, "X-RAY", "Voir \195\160 travers les murs", function()
			return B.XRayEnabled;
		end, function(e)
			B.XRayEnabled = e;
			Ka();
		end, Color3.fromRGB(255, 215, 120));
		c8(p, 2, "Box", "Cadre autour du joueur", function()
			return l.BoxEnabled;
		end, function(e)
			l.BoxEnabled = e;
		end, T.Box, function(e)
			local V = P("Frame", {
					Size = UDim2.new(1, -16, 0, 54),
					Position = UDim2.new(0, 8, 0, 5),
					BackgroundColor3 = i.Surface,
					BackgroundTransparency = .25,
					BorderSizePixel = 0,
					ZIndex = 26,
					Parent = e,
				});
			L(V, 10);
			z(V, i.Border, 1, .5);
			P("TextLabel", {
				Size = UDim2.new(1, -140, 0, 14),
				Position = UDim2.new(0, 14, 0, 8),
				BackgroundTransparency = 1,
				Text = "\195\137PAISSEUR BOX",
				TextColor3 = i.TextMuted,
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = V,
			});
			local p = P("TextLabel", {
					Size = UDim2.new(0, 50, 0, 20),
					Position = UDim2.new(1, -60, .5, 0),
					AnchorPoint = Vector2.new(0, .5),
					BackgroundTransparency = 1,
					Text = l.BoxThickness .. " px",
					TextColor3 = i.TextPrimary,
					Font = Enum.Font.GothamBold,
					TextSize = 11,
					TextXAlignment = Enum.TextXAlignment.Right,
					ZIndex = 27,
					Parent = V,
				});
			local c = P("Frame", {
					Size = UDim2.new(1, -84, 0, 8),
					Position = UDim2.new(0, 14, 0, 34),
					BackgroundColor3 = i.SurfaceHi,
					BorderSizePixel = 0,
					ZIndex = 27,
					Parent = V,
				});
			L(c, 4);
			local n = ((l.BoxThickness - 1)) / 9;
			local x = P("Frame", {
					Size = UDim2.new(n, 0, 1, 0),
					BackgroundColor3 = T.Box,
					BorderSizePixel = 0,
					ZIndex = 28,
					Parent = c,
				});
			L(x, 4);
			local w = P("Frame", {
					Size = UDim2.new(0, 12, 0, 12),
					Position = UDim2.new(n, 0, .5, 0),
					AnchorPoint = Vector2.new(.5, .5),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BorderSizePixel = 0,
					ZIndex = 29,
					Parent = c,
				});
			L(w, 6);
			z(w, Color3.fromRGB(0, 0, 0), 2, .3);
			local Y = P("TextButton", {
					Size = UDim2.new(1, -84, 0, 22),
					Position = UDim2.new(0, 14, 0, 28),
					BackgroundTransparency = 1,
					Text = "",
					AutoButtonColor = false,
					ZIndex = 30,
					Parent = V,
				});
			local v = false;
			local function X(e)
				local V = c.AbsolutePosition.X;
				local I = c.AbsoluteSize.X;
				if I <= 0 then
					return;
				end;
				local n = math.clamp(((e - V)) / I, 0, 1);
				local Y = math.floor((1 + n * 9) + .5);
				l.BoxThickness = Y;
				w.Position = UDim2.new(((Y - 1)) / 9, 0, .5, 0);
				x.Size = UDim2.new(((Y - 1)) / 9, 0, 1, 0);
				p.Text = Y .. " px";
			end;
			Y.InputBegan:Connect(function(e)
				if e.UserInputType == Enum.UserInputType.MouseButton1 or e.UserInputType == Enum.UserInputType.Touch then
					v = true;
					X(e.Position.X);
				end;
			end);
			Y.InputChanged:Connect(function(e)
				if not v then
					return;
				end;
				if e.UserInputType == Enum.UserInputType.MouseMovement or e.UserInputType == Enum.UserInputType.Touch then
					X(e.Position.X);
				end;
			end);
			I.InputEnded:Connect(function(e)
				if e.UserInputType == Enum.UserInputType.MouseButton1 or e.UserInputType == Enum.UserInputType.Touch then
					v = false;
				end;
			end);
		end);
		n8(p, 3, "TRACER", "Ligne du bas vers le joueur", function()
			return l.TracerEnabled;
		end, function(e)
			l.TracerEnabled = e;
		end, T.Tracer);
	end;
Ja = function(e)
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Murder",
			TextColor3 = i.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 tueur",
			TextColor3 = i.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		local V = P("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = e,
			});
		P("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = V });
		n8(V, 1, "TP ALL IN FRONT", "Garde tous les joueurs devant toi (toggle)", function()
			return ga.running;
		end, function(e)
			Ba();
		end, Color3.fromRGB(240, 165, 95));
		V8(V, 2, "TP MURDERER", "Te t\195\169l\195\169porte au tueur", Color3.fromRGB(255, 80, 80), function()
			local e = la();
			if not e then
				ha("Erreur", "Tueur introuvable", true);
				return;
			end;
			local V = n.Character;
			local p = V and V:FindFirstChild("HumanoidRootPart");
			local I = e.Character and e.Character:FindFirstChild("HumanoidRootPart");
			if p and I then
				pcall(function()
					p.CFrame = I.CFrame + Vector3.new(0, 3, 3);
				end);
				ha("TP", "TP vers " .. e.Name, false);
			end;
		end);
	end;
oa = function(e)
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Sheriff",
			TextColor3 = i.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 sh\195\169rif",
			TextColor3 = i.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = e,
		});
		local V = P("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = e,
			});
		P("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = V });
		n8(V, 1, "AUTO SHOOT MURDERER", "Tire auto sur le tueur (si Sheriff)", function()
			return B.AutoShootEnabled;
		end, function(e)
			B.AutoShootEnabled = e;
		end, Color3.fromRGB(70, 130, 240));
	end;
Ga = function(p)
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Troll",
			TextColor3 = i.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Cible un joueur, puis utilise les actions",
			TextColor3 = i.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 76),
			BackgroundTransparency = 1,
			Text = "JOUEUR CIBL\195\137",
			TextColor3 = i.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		local I = P("TextButton", {
				Size = UDim2.new(1, 0, 0, 44),
				Position = UDim2.new(0, 0, 0, 96),
				BackgroundColor3 = i.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = p,
			});
		L(I, 10);
		z(I, i.Border, 1, .4);
		local c = P("TextLabel", {
				Size = UDim2.new(1, -70, 1, 0),
				Position = UDim2.new(0, 16, 0, 0),
				BackgroundTransparency = 1,
				Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148",
				TextColor3 = i.TextMuted,
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 31,
				Parent = I,
			});
		local x, w, Y = h(I, "right", i.TextMuted, 8);
		x.Position = UDim2.new(1, -24, .5, 0);
		x.AnchorPoint = Vector2.new(.5, .5);
		local v = P("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 148),
				BackgroundColor3 = i.Surface,
				BackgroundTransparency = .05,
				BorderSizePixel = 0,
				Visible = false,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 40,
				Parent = p,
			});
		L(v, 12);
		z(v, i.Border, 1, .3);
		local X = P("Frame", {
				Size = UDim2.new(1, -12, 0, 6),
				Position = UDim2.new(0, 6, 0, 6),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 41,
				Parent = v,
			});
		P("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = X });
		local function R()
			for e, V in ipairs(X:GetChildren()) do
				if V:IsA("TextButton") or (V:IsA("TextLabel") and V.Name == "EmptyLbl") then
					V:Destroy();
				end;
			end;
			local p = 0;
			for e, I in ipairs(e:GetPlayers()) do
				if I == n then
					continue;
				end;
				p = p + 1;
				local x = P("TextButton", {
						Size = UDim2.new(1, 0, 0, 34),
						BackgroundColor3 = i.SurfaceHi,
						BackgroundTransparency = .6,
						BorderSizePixel = 0,
						Text = "",
						AutoButtonColor = false,
						LayoutOrder = p,
						ZIndex = 42,
						Parent = X,
					});
				L(x, 8);
				local R = Ta(I);
				local Z = Sa(R);
				P("TextLabel", {
					Size = UDim2.new(1, -50, 1, 0),
					Position = UDim2.new(0, 12, 0, 0),
					BackgroundTransparency = 1,
					Text = I.Name .. ("  (" .. (R .. ")")),
					TextColor3 = i.TextPrimary,
					Font = Enum.Font.GothamMedium,
					TextSize = 13,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 43,
					Parent = x,
				});
				P("Frame", {
					Size = UDim2.new(0, 4, 0, 18),
					Position = UDim2.new(1, -14, .5, 0),
					AnchorPoint = Vector2.new(0, .5),
					BackgroundColor3 = Z,
					BorderSizePixel = 0,
					ZIndex = 43,
					Parent = x,
				});
				x.MouseEnter:Connect(function()
					(V:Create(x, TweenInfo.new(.15), { BackgroundTransparency = .25 })):Play();
				end);
				x.MouseLeave:Connect(function()
					(V:Create(x, TweenInfo.new(.15), { BackgroundTransparency = .6 })):Play();
				end);
				x.MouseButton1Click:Connect(function()
					E.TrollSelected = I;
					c.Text = I.Name;
					c.TextColor3 = i.Accent;
					v.Visible = false;
					(V:Create(w, TweenInfo.new(.15), { Rotation = 45 })):Play();
					(V:Create(Y, TweenInfo.new(.15), { Rotation = -45 })):Play();
				end);
			end;
			if p == 0 then
				P("TextLabel", {
					Name = "EmptyLbl",
					Size = UDim2.new(1, 0, 0, 34),
					BackgroundTransparency = 1,
					Text = "Aucun autre joueur",
					TextColor3 = i.TextMuted,
					Font = Enum.Font.Gotham,
					TextSize = 12,
					ZIndex = 42,
					Parent = X,
				});
			end;
		end;
		local Z = false;
		I.MouseButton1Click:Connect(function()
			Z = not Z;
			if Z then
				R();
			end;
			v.Visible = Z;
			(V:Create(w, TweenInfo.new(.15), { Rotation = Z and -45 or 45 })):Play();
			(V:Create(Y, TweenInfo.new(.15), { Rotation = Z and 45 or -45 })):Play();
		end);
		e.PlayerAdded:Connect(function()
			if Z then
				R();
			end;
		end);
		e.PlayerRemoving:Connect(function(e)
			if E.TrollSelected == e then
				E.TrollSelected = nil;
				c.Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148";
				c.TextColor3 = i.TextMuted;
			end;
			if Z then
				R();
			end;
		end);
		P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 164),
			BackgroundTransparency = 1,
			Text = "ACTIONS",
			TextColor3 = i.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		local t = P("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 186),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = p,
			});
		P("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = t });
		V8(t, 1, "TP \195\128 LA CIBLE", "Te t\195\169l\195\169porte sur le joueur s\195\169lectionn\195\169", Color3.fromRGB(255, 80, 80), function()
			local e = E.TrollSelected;
			if not e or not e.Character then
				ha("Troll", "Aucune cible valide", true);
				return;
			end;
			local V = e.Character:FindFirstChild("HumanoidRootPart");
			local p = n.Character;
			local I = p and p:FindFirstChild("HumanoidRootPart");
			if V and I then
				pcall(function()
					I.CFrame = V.CFrame + Vector3.new(0, 3, 3);
				end);
				ha("Troll", "TP \226\134\146 " .. e.Name, false);
			end;
		end);
		V8(t, 2, "SPECTATE CIBLE", "Ta cam\195\169ra suit le joueur s\195\169lectionn\195\169", Color3.fromRGB(170, 130, 235), function()
			local e = E.TrollSelected;
			local V = workspace.CurrentCamera;
			if not e or not e.Character then
				ha("Troll", "Aucune cible valide", true);
				return;
			end;
			V.CameraSubject = e.Character:FindFirstChildOfClass("Humanoid") or e.Character;
			ha("Troll", "Cam\195\169ra \226\134\146 " .. e.Name, false);
		end);
	end;
Wa = function(e)
		if E.CurrentPage == e then
			return;
		end;
		E.CurrentPage = e;
		for V, p in pairs(E.NavItems) do
			p.setActive(V == e);
		end;
		local p = E.Scroll;
		if not p then
			return;
		end;
		local I = p:FindFirstChild("PageBody");
		if I then
			for e, p in ipairs(I:GetChildren()) do
				if p:IsA("GuiObject") then
					(V:Create(p, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
					if p:IsA("TextLabel") then
						(V:Create(p, TweenInfo.new(.15), { TextTransparency = 1 })):Play();
					end;
				end;
			end;
			task.wait(.18);
			I:Destroy();
		end;
		p.CanvasPosition = Vector2.new(0, 0);
		local c = P("Frame", {
				Name = "PageBody",
				Size = UDim2.new(1, -48, 0, 0),
				Position = UDim2.new(0, 24, 0, 20),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 24,
				Parent = p,
			});
		if e == "home" then
			Na(c);
		elseif e == "esp" then
			Aa(c);
		elseif e == "murder" then
			Ja(c);
		elseif e == "sheriff" then
			oa(c);
		elseif e == "player" then
			da(c);
		elseif e == "combat" then
			ka(c);
		elseif e == "autofarm" then
			ba(c);
		elseif e == "troll" then
			Ga(c);
		elseif e == "animation" then
			Ca(c);
		elseif e == "teleport" then
			ra(c);
		elseif e == "settings" then
			ma(c);
		end;
	end;
local function x8(e, p, I, c)
	local n = P("TextButton", {
			Size = UDim2.new(1, 0, 0, 38),
			BackgroundColor3 = i.Surface,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			LayoutOrder = c,
			ZIndex = 20,
			Parent = e,
		});
	L(n, 8);
	local x = P("Frame", {
			Size = UDim2.new(0, 3, 0, 0),
			Position = UDim2.new(0, 0, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = i.Accent,
			BorderSizePixel = 0,
			ZIndex = 22,
			Parent = n,
		});
	L(x, 2);
	local w = P("TextLabel", {
			Size = UDim2.new(1, -20, 1, 0),
			Position = UDim2.new(0, 18, 0, 0),
			BackgroundTransparency = 1,
			Text = p,
			TextColor3 = i.TextSecondary,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 21,
			Parent = n,
		});
	local Y = { active = false };
	local function v(e)
		Y.active = e;
		if e then
			(V:Create(n, TweenInfo.new(.2), { BackgroundTransparency = .7 })):Play();
			(V:Create(x, TweenInfo.new(.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 3, 0, 22) })):Play();
			(V:Create(w, TweenInfo.new(.2), { TextColor3 = i.Accent, TextSize = 14 })):Play();
		else
			(V:Create(n, TweenInfo.new(.2), { BackgroundTransparency = 1 })):Play();
			(V:Create(x, TweenInfo.new(.2), { Size = UDim2.new(0, 3, 0, 0) })):Play();
			(V:Create(w, TweenInfo.new(.2), { TextColor3 = i.TextSecondary, TextSize = 13 })):Play();
		end;
	end;
	n.MouseEnter:Connect(function()
		if not Y.active then
			(V:Create(n, TweenInfo.new(.15), { BackgroundTransparency = .85 })):Play();
			(V:Create(w, TweenInfo.new(.15), { TextColor3 = i.TextPrimary })):Play();
		end;
	end);
	n.MouseLeave:Connect(function()
		if not Y.active then
			(V:Create(n, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
			(V:Create(w, TweenInfo.new(.15), { TextColor3 = i.TextSecondary })):Play();
		end;
	end);
	E.NavItems[I] = { btn = n, setActive = v, state = Y };
	return n, v;
end;
local function w8(e, V, p)
	local I = P("Frame", {
			Size = UDim2.new(1, -4, 0, 22),
			BackgroundTransparency = 1,
			LayoutOrder = p,
			ZIndex = 19,
			Parent = e,
		});
	P("TextLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 8, 0, 0),
		BackgroundTransparency = 1,
		Text = string.upper(V),
		TextColor3 = i.TextMuted,
		Font = Enum.Font.GothamBold,
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 19,
		Parent = I,
	});
end;
local function Y8()
	local e = P("ScreenGui", {
			Name = "MenuV71_GUI",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			DisplayOrder = 999,
			Parent = x,
		});
	E.Gui = e;
	local p = La("LoadingContainer", UDim2.new(0, 460, 0, 240), e);
	E.LoadingFrame = p;
	p.BackgroundTransparency = 1;
	(V:Create(p, TweenInfo.new(.5), { BackgroundTransparency = 0 })):Play();
	local I = P("Frame", {
			Size = UDim2.new(0, 60, 0, 60),
			Position = UDim2.new(.5, 0, 0, 30),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundTransparency = 1,
			ZIndex = 8,
			Parent = p,
		});
	for e = 1, 14, 1 do
		local V = ((e - 1)) * (((math.pi * 2) / 14));
		local p = P("Frame", {
				Size = UDim2.new(0, 5, 0, 5),
				Position = UDim2.new(.5, math.cos(V) * 22, .5, math.sin(V) * 22),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = i.Accent,
				BackgroundTransparency = 1 - ((e / 14)) * .75,
				BorderSizePixel = 0,
				ZIndex = 9,
				Parent = I,
			});
		L(p, 2);
		t(p, "BackgroundColor3", "Accent");
	end;
	task.spawn(function()
		while I.Parent do
			I.Rotation = ((I.Rotation + 5)) % 360;
			task.wait(.02);
		end;
	end);
	P("TextLabel", {
		Size = UDim2.new(1, 0, 0, 32),
		Position = UDim2.new(0, 0, 0, 98),
		BackgroundTransparency = 1,
		Text = "Chargement",
		TextColor3 = i.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 24,
		ZIndex = 8,
		Parent = p,
	});
	local c = P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 134),
			BackgroundTransparency = 1,
			Text = "Initialisation...",
			TextColor3 = i.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 8,
			Parent = p,
		});
	local n = P("Frame", {
			Size = UDim2.new(.7, 0, 0, 8),
			Position = UDim2.new(.5, 0, 0, 172),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = i.SurfaceHi,
			BackgroundTransparency = .4,
			BorderSizePixel = 0,
			ZIndex = 8,
			Parent = p,
		});
	L(n, 4);
	local w = P("Frame", {
			Size = UDim2.new(0, 0, 1, 0),
			BackgroundColor3 = i.Accent,
			BorderSizePixel = 0,
			ZIndex = 9,
			Parent = n,
			ClipsDescendants = true,
		});
	L(w, 4);
	t(w, "BackgroundColor3", "Accent");
	local Y = P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 192),
			BackgroundTransparency = 1,
			Text = "0 %",
			TextColor3 = i.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 8,
			Parent = p,
		});
	local v = tick();
	task.spawn(function()
		while tick() - v < y.LoadingDuration do
			local e = math.clamp(((tick() - v)) / y.LoadingDuration, 0, 1);
			w.Size = UDim2.new(e, 0, 1, 0);
			Y.Text = math.floor(e * 100) .. " %";
			if e < .3 then
				c.Text = "Initialisation...";
			elseif e < .6 then
				c.Text = "Chargement...";
			elseif e < .9 then
				c.Text = "Pr\195\169paration...";
			else
				c.Text = "Finalisation...";
			end;
			task.wait(.03);
		end;
		w.Size = UDim2.new(1, 0, 1, 0);
		Y.Text = "100 %";
	end);
	return p;
end;
local function v8(e)
	local V = E.Gui;
	local p = La("CodeContainer", UDim2.new(0, 500, 0, 380), V);
	E.CodeFrame = p;
	p.BackgroundTransparency = 1;
	local I = P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 36),
			BackgroundTransparency = 1,
			Text = "ACC\195\136S S\195\137CURIS\195\137",
			TextColor3 = i.Accent,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 12,
			Parent = p,
		});
	t(I, "TextColor3", "Accent");
	P("TextLabel", {
		Size = UDim2.new(1, 0, 0, 38),
		Position = UDim2.new(0, 0, 0, 60),
		BackgroundTransparency = 1,
		Text = "V\195\169rification requise",
		TextColor3 = i.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 26,
		ZIndex = 12,
		Parent = p,
	});
	P("TextLabel", {
		Size = UDim2.new(1, -60, 0, 34),
		Position = UDim2.new(0, 30, 0, 104),
		BackgroundTransparency = 1,
		Text = "Entre le code d\'acc\195\168s",
		TextColor3 = i.TextSecondary,
		Font = Enum.Font.Gotham,
		TextSize = 13,
		TextWrapped = true,
		ZIndex = 12,
		Parent = p,
	});
	local c = P("TextBox", {
			Size = UDim2.new(.82, 0, 0, 54),
			Position = UDim2.new(.5, 0, 0, 154),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = i.Surface,
			BackgroundTransparency = .3,
			BorderSizePixel = 0,
			Text = "",
			PlaceholderText = "Code d\'acc\195\168s...",
			PlaceholderColor3 = i.TextMuted,
			TextColor3 = i.TextPrimary,
			Font = Enum.Font.GothamMedium,
			TextSize = 16,
			TextXAlignment = Enum.TextXAlignment.Center,
			ClearTextOnFocus = false,
			ZIndex = 13,
			Parent = p,
		});
	L(c, 12);
	local n = z(c, i.Border, 1.5, .3);
	c.Focused:Connect(function()
		n.Color = i.Accent;
		n.Transparency = .2;
	end);
	c.FocusLost:Connect(function()
		n.Color = i.Border;
		n.Transparency = .3;
	end);
	local x = P("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 216),
			BackgroundTransparency = 1,
			Text = "",
			TextColor3 = i.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 12,
			Parent = p,
		});
	local w = P("TextButton", {
			Size = UDim2.new(.82, 0, 0, 48),
			Position = UDim2.new(.5, 0, 0, 248),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = i.Accent,
			BorderSizePixel = 0,
			Text = "VALIDER",
			TextColor3 = i.TextOnAccent,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			AutoButtonColor = false,
			ZIndex = 13,
			Parent = p,
		});
	L(w, 12);
	t(w, "BackgroundColor3", "Accent");
	t(w, "TextColor3", "TextOnAccent");
	local v, X, R = 0, 5, false;
	local function Z()
		if R then
			return;
		end;
		if c.Text == Y then
			R = true;
			E.Authenticated = true;
			x.Text = "Acc\195\168s autoris\195\169";
			x.TextColor3 = i.Success;
			n.Color = i.Success;
			task.wait(.4);
			f(p, .35, function()
				E.CodeFrame = nil;
				if e then
					e();
				end;
			end);
		else
			v = v + 1;
			x.Text = string.format("Code incorrect \226\128\148 %d/%d", v, X);
			x.TextColor3 = i.Error;
			n.Color = i.Error;
			if v >= X then
				R = true;
				x.Text = "Acc\195\168s bloqu\195\169";
				task.wait(1.5);
				if V then
					V:Destroy();
				end;
				return;
			end;
			c.Text = "";
			pcall(function()
				c:CaptureFocus();
			end);
		end;
	end;
	w.MouseButton1Click:Connect(Z);
	c.FocusLost:Connect(function(e)
		if e then
			Z();
		end;
	end);
	task.spawn(function()
		task.wait(.6);
		pcall(function()
			c:CaptureFocus();
		end);
	end);
	W(p, .5);
	return p;
end;
ja = function()
		local p = E.Gui;
		if not p then
			return;
		end;
		if E.Shell and E.Shell.Parent then
			return;
		end;
		E.NavItems = {};
		E.CurrentPage = nil;
		local I = La("Shell", UDim2.new(0, 820, 0, 540), p);
		E.Shell = I;
		E.MenuOpen = true;
		I.BackgroundTransparency = 1;
		j(I, .55);
		local c = P("TextButton", {
				Size = UDim2.new(0, 28, 0, 28),
				Position = UDim2.new(1, -40, 0, 16),
				BackgroundColor3 = Color3.fromRGB(36, 38, 48),
				BackgroundTransparency = .15,
				BorderSizePixel = 0,
				Text = "\226\156\149",
				TextColor3 = Color3.fromRGB(220, 225, 235),
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				AutoButtonColor = false,
				ZIndex = 60,
				Parent = I,
			});
		L(c, 8);
		z(c, i.Border, 1, .4);
		c.MouseEnter:Connect(function()
			(V:Create(c, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(200, 60, 60), BackgroundTransparency = 0 })):Play();
			(V:Create(c, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
		end);
		c.MouseLeave:Connect(function()
			(V:Create(c, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(36, 38, 48), BackgroundTransparency = .15 })):Play();
			(V:Create(c, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(220, 225, 235) })):Play();
		end);
		c.MouseButton1Click:Connect(za);
		local x = P("Frame", {
				Name = "Sidebar",
				Size = UDim2.new(0, 240, 1, 0),
				BackgroundColor3 = i.SurfaceSide,
				BackgroundTransparency = .35,
				BorderSizePixel = 0,
				ZIndex = 8,
				Parent = I,
			});
		L(x, 20);
		E.Sidebar = x;
		local w = P("Frame", {
				Size = UDim2.new(1, 0, 0, 90),
				BackgroundColor3 = i.BgTop,
				BackgroundTransparency = .65,
				BorderSizePixel = 0,
				ZIndex = 15,
				Parent = x,
			});
		L(w, 20);
		P("Frame", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 1, -20),
			BackgroundColor3 = i.BgTop,
			BackgroundTransparency = .65,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = w,
		});
		local Y = P("Frame", {
				Size = UDim2.new(0, 52, 0, 52),
				Position = UDim2.new(0, 18, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 16,
				Parent = w,
			});
		L(Y, 26);
		local v = P("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 17,
				Parent = Y,
			});
		L(v, 24);
		local X = P("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 18,
				Parent = v,
			});
		L(X, 24);
		task.spawn(function()
			local V, p = pcall(function()
					return e:GetUserThumbnailAsync(n.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if V and p then
				X.Image = p;
			end;
		end);
		P("TextLabel", {
			Size = UDim2.new(1, -90, 0, 22),
			Position = UDim2.new(0, 80, 0, 24),
			BackgroundTransparency = 1,
			Text = n.DisplayName,
			TextColor3 = i.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 15,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 16,
			Parent = w,
		});
		P("TextLabel", {
			Size = UDim2.new(1, -90, 0, 16),
			Position = UDim2.new(0, 80, 0, 46),
			BackgroundTransparency = 1,
			Text = "Premium",
			TextColor3 = i.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 16,
			Parent = w,
		});
		P("Frame", {
			Size = UDim2.new(1, -32, 0, 1),
			Position = UDim2.new(0, 16, 0, 90),
			BackgroundColor3 = i.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = x,
		});
		local R = P("ScrollingFrame", {
				Size = UDim2.new(1, -16, 1, -110),
				Position = UDim2.new(0, 8, 0, 100),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 3,
				ScrollBarImageColor3 = i.SurfaceHi,
				ScrollBarImageTransparency = .5,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ZIndex = 18,
				Parent = x,
			});
		P("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = R });
		w8(R, "G\195\169n\195\169ral", 1);
		x8(R, "Accueil", "home", 2);
		x8(R, "ESP", "esp", 3);
		w8(R, "Personnage", 4);
		x8(R, "Player", "player", 5);
		x8(R, "Combat", "combat", 6);
		x8(R, "Troll", "troll", 7);
		x8(R, "T\195\169l\195\169port\195\169", "teleport", 8);
		x8(R, "Animation", "animation", 9);
		x8(R, "Auto Farm", "autofarm", 10);
		w8(R, "MM2", 11);
		x8(R, "Murder", "murder", 12);
		x8(R, "Sheriff", "sheriff", 13);
		w8(R, "Autre", 14);
		x8(R, "Param\195\168tres", "settings", 15);
		E.NavItems.home.btn.MouseButton1Click:Connect(function()
			Wa("home");
		end);
		E.NavItems.esp.btn.MouseButton1Click:Connect(function()
			Wa("esp");
		end);
		E.NavItems.murder.btn.MouseButton1Click:Connect(function()
			Wa("murder");
		end);
		E.NavItems.sheriff.btn.MouseButton1Click:Connect(function()
			Wa("sheriff");
		end);
		E.NavItems.player.btn.MouseButton1Click:Connect(function()
			Wa("player");
		end);
		E.NavItems.combat.btn.MouseButton1Click:Connect(function()
			Wa("combat");
		end);
		E.NavItems.autofarm.btn.MouseButton1Click:Connect(function()
			Wa("autofarm");
		end);
		E.NavItems.teleport.btn.MouseButton1Click:Connect(function()
			Wa("teleport");
		end);
		E.NavItems.troll.btn.MouseButton1Click:Connect(function()
			Wa("troll");
		end);
		E.NavItems.animation.btn.MouseButton1Click:Connect(function()
			Wa("animation");
		end);
		E.NavItems.settings.btn.MouseButton1Click:Connect(function()
			Wa("settings");
		end);
		local Z = P("Frame", {
				Name = "Content",
				Size = UDim2.new(1, -240, 1, 0),
				Position = UDim2.new(0, 240, 0, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				ZIndex = 14,
				Parent = I,
			});
		E.Content = Z;
		local t = P("ScrollingFrame", {
				Name = "Scroll",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 6,
				ScrollBarImageColor3 = i.SurfaceHi,
				ScrollBarImageTransparency = .3,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ClipsDescendants = true,
				ZIndex = 24,
				Parent = Z,
			});
		E.Scroll = t;
		task.wait(.1);
		Wa("home");
	end;
n.CharacterAdded:Connect(function(e)
	e:WaitForChild("Humanoid", 10);
	task.wait(.6);
	a.nowe = false;
	a.tpwalking = false;
	m();
	fa();
	if B.XRayEnabled then
		task.wait(.5);
		if e then
			aa(e, n);
		end;
	end;
	if S.FlyEnabled then
		A();
	end;
	if S.SpinEnabled then
		k();
	end;
	if S.JerkEnabled then
		M();
	end;
	S.Sitting = false;
	local V = e:FindFirstChildOfClass("Humanoid");
	if V then
		V.WalkSpeed = S.WalkSpeed;
		V.UseJumpPower = true;
		V.JumpPower = S.JumpPower;
	end;
	workspace.Gravity = S.Gravity;
end);
I.InputBegan:Connect(function(e, V)
	if V then
		return;
	end;
	if e.KeyCode ~= Enum.KeyCode.M then
		return;
	end;
	if not E.Authenticated then
		return;
	end;
	if E.Shell and E.Shell.Parent then
		za();
	else
		if ja then
			ja();
		end;
	end;
end);
local function X8()
	Q("Initialisation...");
	local e = x:FindFirstChild("MenuV70_GUI") or x:FindFirstChild("MenuV71_GUI");
	if e then
		e:Destroy();
	end;
	Y8();
	task.wait(y.LoadingDuration + .4);
	Ha(E.LoadingFrame, function()
		E.LoadingFrame = nil;
	end);
	task.wait(.5);
	v8(function()
		E.Authenticated = true;
		fa();
		ja();
	end);
end;
X8();
