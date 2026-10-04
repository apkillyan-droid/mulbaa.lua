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

local T = game:GetService("Players");
local l = game:GetService("TweenService");
local p = game:GetService("RunService");
local a = game:GetService("UserInputService");
local u = game:GetService("Lighting");
local O = T.LocalPlayer;
local Y = O:WaitForChild("PlayerGui");
local L = workspace.CurrentCamera;
local b = "Fdvo2669";
local R = "rbxassetid://126785640171935";
local V = 2.6;
local x = {
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
local D = {
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
local i = {};
local function U(T, l, p)
	table.insert(i, { instance = T, property = l, themeKey = p });
	return T;
end;
local function c(T, l, p)
	table.insert(i, {
		isGradient = true,
		gradient = T,
		topKey = l,
		bottomKey = p,
	});
	return T;
end;
local function H()
	local T = {};
	for p, a in ipairs(i) do
		if a.isGradient then
			if a.gradient and a.gradient.Parent then
				a.gradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, x[a.topKey]), ColorSequenceKeypoint.new(1, x[a.bottomKey]) });
				table.insert(T, a);
			end;
		else
			if a.instance and a.instance.Parent then
				local p = x[a.themeKey];
				if p then
					(l:Create(a.instance, TweenInfo.new(.35), { [a.property] = p })):Play();
				end;
				table.insert(T, a);
			end;
		end;
	end;
	i = T;
	for T, l in pairs(State.NavItems) do
		l.setActive(l.state.active);
	end;
end;
local function m(T)
	x.Accent = T.Accent;
	x.AccentDim = T.AccentDim;
	x.AccentGlow = T.AccentGlow;
	x.AccentSoft = T.AccentSoft;
	x.TextOnAccent = T.TextOnAccent;
	H();
end;
local F = {
		LoadingDuration = 3.5,
		ParticleSpawnRate = .1,
		ParticleMinSize = 2,
		ParticleMaxSize = 4,
		ParticleFallSpeed = 120,
		ParticlesPerTick = 2,
	};
local o = {
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
local P = {
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
local M = {
		Murderer = Color3.fromRGB(255, 60, 60),
		Sheriff = Color3.fromRGB(60, 120, 255),
		Innocent = Color3.fromRGB(60, 255, 120),
		Box = Color3.fromRGB(255, 60, 60),
		Tracer = Color3.fromRGB(255, 60, 60),
	};
local Q = {
		BoxEnabled = true,
		BoxThickness = 2,
		TracerEnabled = false,
		DistanceEnabled = true,
	};
local K = {
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
	};
local G = {
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
		maxspeed = 50,
		nowe = false,
		tpwalking = false,
		savedAnimDisabled = false,
	};
local j = false;
local r = false;
local S = { av = nil };
local z = { conn = nil };
local h = { running = false };
local A = {};
local B = {};
local function E(...)
	print("[MENU-V71]", ...);
end;
local function v(T, l)
	local p = Instance.new(T);
	for T, l in pairs(l or {}) do
		p[T] = l;
	end;
	return p;
end;
local function t(T, l)
	return v("UICorner", { CornerRadius = UDim.new(0, l or 8), Parent = T });
end;
local function X(T, l, p, a)
	return v("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, l), ColorSequenceKeypoint.new(1, p) }), Rotation = a or 90, Parent = T });
end;
local function f(T, l, p, a)
	return v("UIStroke", {
		Color = l or x.Border,
		Thickness = p or 1,
		Transparency = a or 0,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = T,
	});
end;
local function g(T, l, p, a)
	a = a or 8;
	local u = v("Frame", { Size = UDim2.new(0, a + 2, 0, a + 2), BackgroundTransparency = 1, Parent = T });
	local O, Y = (l == "right") and 45 or -45, (l == "right") and -45 or 45;
	local L = v("Frame", {
			Size = UDim2.new(0, a, 0, 2),
			Position = UDim2.new(.5, -1, .5, -3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = p or x.TextMuted,
			BorderSizePixel = 0,
			Rotation = O,
			Parent = u,
		});
	t(L, 1);
	local b = v("Frame", {
			Size = UDim2.new(0, a, 0, 2),
			Position = UDim2.new(.5, -1, .5, 3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = p or x.TextMuted,
			BorderSizePixel = 0,
			Rotation = Y,
			Parent = u,
		});
	t(b, 1);
	return u, L, b;
end;
local function e(T, p)
	p = p or .45;
	local a = T.Size;
	T.Size = UDim2.new(0, a.X.Offset * .85, 0, a.Y.Offset * .85);
	T.BackgroundTransparency = 1;
	(l:Create(T, TweenInfo.new(p, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = a, BackgroundTransparency = 0 })):Play();
end;
local function C(T, p, a)
	p = p or .32;
	local u = T.Size;
	(l:Create(T, TweenInfo.new(p, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Size = UDim2.new(0, u.X.Offset * .85, 0, u.Y.Offset * .85), BackgroundTransparency = 1 })):Play();
	for T, a in ipairs(T:GetDescendants()) do
		if a:IsA("TextLabel") or a:IsA("TextBox") then
			(l:Create(a, TweenInfo.new(p * .85), { TextTransparency = 1 })):Play();
		elseif a:IsA("TextButton") then
			(l:Create(a, TweenInfo.new(p * .85), { BackgroundTransparency = 1 })):Play();
		elseif a:IsA("Frame") and a.Name ~= "ParticleZone" then
			if a.BackgroundTransparency < 1 then
				(l:Create(a, TweenInfo.new(p * .85), { BackgroundTransparency = 1 })):Play();
			end;
		elseif a:IsA("ImageLabel") then
			(l:Create(a, TweenInfo.new(p * .85), { ImageTransparency = 1 })):Play();
		elseif a:IsA("UIStroke") then
			(l:Create(a, TweenInfo.new(p * .85), { Transparency = 1 })):Play();
		end;
	end;
	local O = T.Parent and T.Parent:FindFirstChild(T.Name .. "_ShadowHolder");
	if O then
		for T, a in ipairs(O:GetChildren()) do
			if a:IsA("Frame") then
				(l:Create(a, TweenInfo.new(p * .85), { BackgroundTransparency = 1 })):Play();
			end;
		end;
	end;
	task.delay(p + .05, function()
		if O and O.Parent then
			O:Destroy();
		end;
		if T and T.Parent then
			T:Destroy();
		end;
		if a then
			a();
		end;
	end);
end;
local function I(T, p)
	p = p or .5;
	local a = T.Size;
	T.Size = UDim2.new(0, a.X.Offset * .85, 0, a.Y.Offset * .85);
	T.BackgroundTransparency = 1;
	for T, a in ipairs(T:GetDescendants()) do
		if a:IsA("TextLabel") or a:IsA("TextBox") then
			a.TextTransparency = 1;
			(l:Create(a, TweenInfo.new(p), { TextTransparency = 0 })):Play();
		elseif a:IsA("TextButton") then
			a.BackgroundTransparency = 1;
		elseif a:IsA("ImageLabel") then
			a.ImageTransparency = 1;
			(l:Create(a, TweenInfo.new(p), { ImageTransparency = 0 })):Play();
		end;
	end;
	(l:Create(T, TweenInfo.new(p, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = a, BackgroundTransparency = 0 })):Play();
end;
local function d()
	if not K.FlyEnabled and not G.nowe then
		return;
	end;
	K.FlyEnabled = false;
	G.nowe = false;
	G.tpwalking = false;
	if G.conn then
		G.conn:Disconnect();
		G.conn = nil;
	end;
	if G.bg then
		pcall(function()
			G.bg:Destroy();
		end);
		G.bg = nil;
	end;
	if G.bv then
		pcall(function()
			G.bv:Destroy();
		end);
		G.bv = nil;
	end;
	G.ctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		};
	G.lastctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		};
	G.speed = 0;
	local T = O.Character;
	if not T then
		return;
	end;
	local l = T:FindFirstChildOfClass("Humanoid");
	if l then
		pcall(function()
			l.PlatformStand = false;
			l:SetStateEnabled(Enum.HumanoidStateType.Climbing, true);
			l:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true);
			l:SetStateEnabled(Enum.HumanoidStateType.Flying, true);
			l:SetStateEnabled(Enum.HumanoidStateType.Freefall, true);
			l:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true);
			l:SetStateEnabled(Enum.HumanoidStateType.Jumping, true);
			l:SetStateEnabled(Enum.HumanoidStateType.Landed, true);
			l:SetStateEnabled(Enum.HumanoidStateType.Physics, true);
			l:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true);
			l:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true);
			l:SetStateEnabled(Enum.HumanoidStateType.Running, true);
			l:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true);
			l:SetStateEnabled(Enum.HumanoidStateType.Seated, true);
			l:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true);
			l:SetStateEnabled(Enum.HumanoidStateType.Swimming, true);
		end);
	end;
	local p = T:FindFirstChild("Animate");
	if p then
		p.Disabled = G.savedAnimDisabled or false;
	end;
end;
local function w()
	local T = O.Character;
	if not T then
		return;
	end;
	local l = T:FindFirstChildOfClass("Humanoid");
	if not l then
		return;
	end;
	K.FlyEnabled = true;
	G.nowe = true;
	G.tpwalking = true;
	G.savedAnimDisabled = T:FindFirstChild("Animate") and T.Animate.Disabled or false;
	local u = math.clamp(math.floor(K.FlySpeed / 10), 1, 50);
	for T = 1, u, 1 do
		task.spawn(function()
			local T = p.Heartbeat;
			while G.tpwalking and T:Wait() do
				local T = O.Character;
				local l = T and T:FindFirstChildOfClass("Humanoid");
				if not ((T and (l and l.Parent))) then
					break;
				end;
				if l.MoveDirection.Magnitude > 0 then
					pcall(function()
						T:TranslateBy(l.MoveDirection);
					end);
				end;
			end;
		end);
	end;
	local Y = T:FindFirstChild("Animate");
	if Y then
		Y.Disabled = true;
	end;
	for T, l in next, l:GetPlayingAnimationTracks() do
		pcall(function()
			l:AdjustSpeed(0);
		end);
	end;
	pcall(function()
		l:SetStateEnabled(Enum.HumanoidStateType.Climbing, false);
		l:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false);
		l:SetStateEnabled(Enum.HumanoidStateType.Flying, false);
		l:SetStateEnabled(Enum.HumanoidStateType.Freefall, false);
		l:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false);
		l:SetStateEnabled(Enum.HumanoidStateType.Jumping, false);
		l:SetStateEnabled(Enum.HumanoidStateType.Landed, false);
		l:SetStateEnabled(Enum.HumanoidStateType.Physics, false);
		l:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false);
		l:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false);
		l:SetStateEnabled(Enum.HumanoidStateType.Running, false);
		l:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false);
		l:SetStateEnabled(Enum.HumanoidStateType.Seated, false);
		l:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false);
		l:SetStateEnabled(Enum.HumanoidStateType.Swimming, false);
		l:ChangeState(Enum.HumanoidStateType.Swimming);
	end);
	local L = (l.RigType == Enum.HumanoidRigType.R6);
	local b = L and T:FindFirstChild("Torso") or T:FindFirstChild("UpperTorso");
	if not b then
		b = T:FindFirstChild("HumanoidRootPart");
	end;
	if not b then
		d();
		return;
	end;
	local R = Instance.new("BodyGyro");
	R.P = 90000;
	R.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000);
	R.CFrame = b.CFrame;
	R.Parent = b;
	G.bg = R;
	local V = Instance.new("BodyVelocity");
	V.Velocity = Vector3.new(0, .1, 0);
	V.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000);
	V.Parent = b;
	G.bv = V;
	pcall(function()
		l.PlatformStand = true;
	end);
	G.conn = p.RenderStepped:Connect(function()
			if not G.nowe then
				return;
			end;
			local T = O.Character;
			if not T then
				return;
			end;
			local l = T:FindFirstChildOfClass("Humanoid");
			if not l or l.Health <= 0 then
				return;
			end;
			local p = workspace.CurrentCamera;
			if not p then
				return;
			end;
			local u = G.ctrl;
			u.f = a:IsKeyDown(Enum.KeyCode.W) and 1 or 0;
			u.b = a:IsKeyDown(Enum.KeyCode.S) and 1 or 0;
			u.l = a:IsKeyDown(Enum.KeyCode.A) and 1 or 0;
			u.r = a:IsKeyDown(Enum.KeyCode.D) and 1 or 0;
			local Y = G.maxspeed;
			if u.l + u.r ~= 0 or u.f + u.b ~= 0 then
				G.speed = (G.speed + .5) + (G.speed / Y);
				if G.speed > Y then
					G.speed = Y;
				end;
			elseif not ((u.l + u.r ~= 0 or u.f + u.b ~= 0)) and G.speed ~= 0 then
				G.speed = G.speed - 1;
				if G.speed < 0 then
					G.speed = 0;
				end;
			end;
			if G.bv then
				if (u.l + u.r) ~= 0 or (u.f + u.b) ~= 0 then
					G.bv.Velocity = (((p.CFrame.LookVector * ((u.f + u.b))) + (((p.CFrame * (CFrame.new(u.l + u.r, ((u.f + u.b)) * .2, 0)).p) - p.CFrame.p)))) * G.speed;
					G.lastctrl = {
							f = u.f,
							b = u.b,
							l = u.l,
							r = u.r,
						};
				elseif (u.l + u.r) == 0 and ((u.f + u.b) == 0 and G.speed ~= 0) then
					G.bv.Velocity = (((p.CFrame.LookVector * ((G.lastctrl.f + G.lastctrl.b))) + (((p.CFrame * (CFrame.new(G.lastctrl.l + G.lastctrl.r, ((G.lastctrl.f + G.lastctrl.b)) * .2, 0)).p) - p.CFrame.p)))) * G.speed;
				else
					G.bv.Velocity = Vector3.new(0, 0, 0);
				end;
			end;
			if G.bg then
				G.bg.CFrame = p.CFrame * CFrame.Angles(-math.rad(((((u.f + u.b)) * 50) * G.speed) / Y), 0, 0);
			end;
			if j then
				local l = T:FindFirstChild("HumanoidRootPart");
				if l then
					l.CFrame = l.CFrame * CFrame.new(0, 2, 0);
				end;
			end;
			if r then
				local l = T:FindFirstChild("HumanoidRootPart");
				if l then
					l.CFrame = l.CFrame * CFrame.new(0, -2, 0);
				end;
			end;
		end);
end;
local function s()
	if K.FlyEnabled or G.nowe then
		d();
	else
		w();
	end;
end;
local function q()
	if G.bindConn then
		G.bindConn:Disconnect();
		G.bindConn = nil;
	end;
	if not K.FlyBind then
		return;
	end;
	G.bindConn = a.InputBegan:Connect(function(T, l)
			if l then
				return;
			end;
			if T.UserInputType ~= Enum.UserInputType.Keyboard then
				return;
			end;
			if T.KeyCode == K.FlyBind then
				s();
			end;
		end);
end;
local function k(T)
	K.FlyBind = T;
	q();
end;
local function n()
	K.SpinEnabled = false;
	if S.av then
		S.av:Destroy();
		S.av = nil;
	end;
end;
local function Z()
	local T = O.Character;
	if not T then
		return;
	end;
	local l = T:FindFirstChild("HumanoidRootPart");
	if not l then
		return;
	end;
	K.SpinEnabled = true;
	local p = Instance.new("BodyAngularVelocity");
	p.AngularVelocity = Vector3.new(0, K.SpinSpeed, 0);
	p.MaxTorque = Vector3.new(0, 9000000000, 0);
	p.P = 1250;
	p.Parent = l;
	S.av = p;
end;
local function y()
	if K.SpinEnabled then
		n();
	else
		Z();
	end;
end;
local function J(T)
	K.SpinSpeed = T;
	if S.av then
		S.av.AngularVelocity = Vector3.new(0, T, 0);
	end;
end;
local function N()
	K.JerkEnabled = false;
	if z.conn then
		z.conn:Disconnect();
		z.conn = nil;
	end;
	local T = O.Character;
	local l = T and T:FindFirstChild("HumanoidRootPart");
	if l then
		pcall(function()
			l.AssemblyLinearVelocity = Vector3.zero;
			l.Velocity = Vector3.zero;
		end);
	end;
end;
local function W()
	local T = O.Character;
	if not T then
		return;
	end;
	local l = T:FindFirstChild("HumanoidRootPart");
	if not l then
		return;
	end;
	K.JerkEnabled = true;
	z.conn = p.Heartbeat:Connect(function()
			if not K.JerkEnabled then
				return;
			end;
			local T = O.Character;
			local l = T and T:FindFirstChild("HumanoidRootPart");
			if not l then
				return;
			end;
			local p = K.JerkIntensity;
			local a = Vector3.new((((math.random() - .5)) * p) * 8, (((math.random() - .5)) * p) * 8, (((math.random() - .5)) * p) * 8);
			pcall(function()
				l.AssemblyLinearVelocity = l.AssemblyLinearVelocity + a;
				l.Velocity = l.Velocity + a;
			end);
		end);
end;
local function Tz()
	if K.JerkEnabled then
		N();
	else
		W();
	end;
end;
local function lz(T)
	K.JerkIntensity = T;
end;
local function pz()
	K.Sitting = not K.Sitting;
	local T = O.Character;
	local l = T and T:FindFirstChildOfClass("Humanoid");
	if not l then
		return;
	end;
	l.Sit = K.Sitting;
end;
task.spawn(function()
	while true do
		task.wait(.15);
		if K.NoclipEnabled and not K.FlyEnabled then
			local T = O.Character;
			if T then
				for T, l in ipairs(T:GetDescendants()) do
					if l:IsA("BasePart") and l.CanCollide then
						l.CanCollide = false;
					end;
				end;
			end;
		end;
	end;
end);
local function az()
	K.NoclipEnabled = not K.NoclipEnabled;
	local T = O.Character;
	if T and not K.NoclipEnabled then
		for T, l in ipairs(T:GetDescendants()) do
			if l:IsA("BasePart") then
				l.CanCollide = true;
			end;
		end;
	end;
end;
local function uz(T)
	K.WalkSpeed = T;
	local l = O.Character;
	local p = l and l:FindFirstChildOfClass("Humanoid");
	if p then
		p.WalkSpeed = T;
	end;
end;
local function Oz(T)
	K.JumpPower = T;
	local l = O.Character;
	local p = l and l:FindFirstChildOfClass("Humanoid");
	if p then
		p.UseJumpPower = true;
		p.JumpPower = T;
	end;
end;
local function Yz(T)
	K.Gravity = T;
	workspace.Gravity = T;
end;
local Lz = nil;
local function bz()
	K.InfiniteJump = not K.InfiniteJump;
	if K.InfiniteJump then
		if Lz then
			Lz:Disconnect();
		end;
		Lz = a.JumpRequest:Connect(function()
				local T = O.Character;
				local l = T and T:FindFirstChildOfClass("Humanoid");
				if l then
					l:ChangeState(Enum.HumanoidStateType.Jumping);
				end;
			end);
	else
		if Lz then
			Lz:Disconnect();
			Lz = nil;
		end;
	end;
end;
local Rz = nil;
local function Vz()
	K.AntiAFK = not K.AntiAFK;
	if K.AntiAFK then
		if Rz then
			Rz:Disconnect();
		end;
		Rz = O.Idled:Connect(function()
				local T = game:GetService("VirtualUser");
				T:CaptureController();
				T:ClickButton2(Vector2.new());
			end);
	else
		if Rz then
			Rz:Disconnect();
			Rz = nil;
		end;
	end;
end;
local xz = {};
local function Dz()
	K.Fullbright = not K.Fullbright;
	if K.Fullbright then
		xz.Ambient = u.Ambient;
		xz.OutdoorAmbient = u.OutdoorAmbient;
		xz.Brightness = u.Brightness;
		xz.ClockTime = u.ClockTime;
		u.Ambient = Color3.fromRGB(255, 255, 255);
		u.OutdoorAmbient = Color3.fromRGB(255, 255, 255);
		u.Brightness = 3;
		u.ClockTime = 14;
		local T = u:FindFirstChild("MulbaFullbright");
		if not T then
			T = Instance.new("ColorCorrectionEffect");
			T.Name = "MulbaFullbright";
			T.Parent = u;
		end;
	else
		if xz.Ambient then
			u.Ambient = xz.Ambient;
		end;
		if xz.OutdoorAmbient then
			u.OutdoorAmbient = xz.OutdoorAmbient;
		end;
		if xz.Brightness then
			u.Brightness = xz.Brightness;
		end;
		if xz.ClockTime then
			u.ClockTime = xz.ClockTime;
		end;
		local T = u:FindFirstChild("MulbaFullbright");
		if T then
			T:Destroy();
		end;
	end;
end;
local function iz()
	K.AntiFling = not K.AntiFling;
end;
task.spawn(function()
	while true do
		task.wait(.1);
		if K.AntiFling then
			local T = O.Character;
			local l = T and T:FindFirstChild("HumanoidRootPart");
			if l then
				for T, l in ipairs(l:GetChildren()) do
					if l:IsA("BodyVelocity") then
						if l.Velocity.Magnitude > 500 then
							l.Velocity = l.Velocity.Unit * 500;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local function Uz()
	local T = O.Character;
	local l = T and T:FindFirstChildOfClass("Humanoid");
	if l then
		l.Health = 0;
	end;
end;
local function cz()
	local T = O.Character;
	local l = T and T:FindFirstChild("HumanoidRootPart");
	if not l then
		return;
	end;
	for T, p in ipairs(workspace:GetDescendants()) do
		if p:IsA("SpawnLocation") then
			pcall(function()
				l.CFrame = p.CFrame + Vector3.new(0, 3, 0);
			end);
			return;
		end;
	end;
end;
local function Hz()
	local l = O.Character;
	if not l then
		return;
	end;
	local p = l:FindFirstChild("HumanoidRootPart");
	if not p then
		return;
	end;
	local a = p.CFrame;
	local u = 6;
	local Y = a.Position + (a.LookVector * u);
	local L = 0;
	for T, l in ipairs(T:GetPlayers()) do
		if l ~= O and l.Character then
			local T = l.Character:FindFirstChild("HumanoidRootPart");
			if T then
				L = L + 1;
				local l = ((L - 1)) * (((math.pi * 2) / 8));
				local p = 4;
				local a = Vector3.new(math.cos(l) * p, 0, math.sin(l) * p);
				pcall(function()
					T.CFrame = CFrame.new(Y + a);
					T.Velocity = Vector3.new(0, 0, 0);
				end);
			end;
		end;
	end;
end;
local function mz()
	if h.running then
		h.running = false;
		return;
	end;
	h.running = true;
	task.spawn(function()
		local l = tick();
		while h.running and (tick() - l) < 5 do
			local l = O.Character;
			if not l then
				break;
			end;
			local p = l:FindFirstChild("HumanoidRootPart");
			if not p then
				break;
			end;
			Hz();
			local a = l:FindFirstChild("Knife");
			if not a then
				local T = O:FindFirstChild("Backpack");
				if T then
					local p = T:FindFirstChild("Knife");
					if p and l.Humanoid then
						pcall(function()
							l.Humanoid:EquipTool(p);
						end);
						a = p;
					end;
				end;
			end;
			if a then
				for T, l in ipairs(T:GetPlayers()) do
					if l ~= O and l.Character then
						local T = l.Character:FindFirstChild("HumanoidRootPart");
						local u = l.Character:FindFirstChildOfClass("Humanoid");
						if T and (u and u.Health > 0) then
							local l = ((T.Position - p.Position)).Magnitude;
							if l <= 15 then
								pcall(function()
									p.CFrame = CFrame.new(p.Position, T.Position);
								end);
								pcall(function()
									a:Activate();
								end);
							end;
						end;
					end;
				end;
			end;
			task.wait(.05);
		end;
		h.running = false;
	end);
end;
local function Fz(T)
	if not T then
		return "Innocent";
	end;
	if T:FindFirstChild("Role") then
		local l, p = pcall(function()
				return tostring(T.Role.Value);
			end);
		if l and (p and p ~= "") then
			return p;
		end;
	end;
	local l = T.Character;
	local p = T:FindFirstChild("Backpack");
	if l then
		if l:FindFirstChild("Knife") then
			return "Murderer";
		end;
		if l:FindFirstChild("Gun") then
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
local function oz()
	for T, l in ipairs(T:GetPlayers()) do
		if l == O then
			continue;
		end;
		if Fz(l) == "Murderer" then
			return l;
		end;
	end;
	return nil;
end;
local function Pz(T)
	if T == "Murderer" then
		return M.Murderer;
	end;
	if T == "Sheriff" then
		return M.Sheriff;
	end;
	return M.Innocent;
end;
local function Mz(T)
	if T == "Murderer" then
		return P.EspShowMurder;
	end;
	if T == "Sheriff" then
		return P.EspShowSheriff;
	end;
	return P.EspShowInnocent;
end;
local function Qz(T, l)
	if not T then
		return;
	end;
	if B[l] and B[l].Parent then
		return;
	end;
	local p = v("Highlight", {
			FillColor = Color3.fromRGB(255, 255, 255),
			FillTransparency = .85,
			OutlineColor = Color3.fromRGB(255, 255, 255),
			OutlineTransparency = 0,
			DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
			Adornee = T,
			Parent = T,
		});
	B[l] = p;
end;
local function Kz(T)
	local l = B[T];
	if l and l.Parent then
		l:Destroy();
	end;
	B[T] = nil;
end;
local function Gz()
	if P.XRayEnabled then
		for T, l in ipairs(T:GetPlayers()) do
			if l.Character then
				Qz(l.Character, l);
			end;
		end;
	else
		for T in pairs(B) do
			Kz(T);
		end;
	end;
end;
local function jz(T)
	if T == O then
		return;
	end;
	if A[T] then
		local l = pcall(function()
				A[T].Box.Visible = A[T].Box.Visible;
			end);
		if l then
			return;
		end;
		removeESP(T);
	end;
	local l = Drawing.new("Square");
	l.Thickness = Q.BoxThickness;
	l.Filled = false;
	l.Visible = false;
	local p = Drawing.new("Text");
	p.Center = true;
	p.Outline = true;
	p.Size = 16;
	p.Visible = false;
	local a = Drawing.new("Text");
	a.Center = true;
	a.Outline = true;
	a.Size = 13;
	a.Visible = false;
	local u = Drawing.new("Line");
	u.Thickness = 1;
	u.Visible = false;
	A[T] = {
			Box = l,
			Text = p,
			DistanceText = a,
			Tracer = u,
		};
end;
local function rz(T)
	local l = A[T];
	if l then
		for T, l in pairs(l) do
			pcall(function()
				l:Remove();
			end);
		end;
		A[T] = nil;
	end;
end;
local function Sz(T)
	local l, p = L:WorldToViewportPoint(T);
	return Vector2.new(l.X, l.Y), p;
end;
p.RenderStepped:Connect(function()
	if not P.EspEnabled then
		for T, l in pairs(A) do
			pcall(function()
				l.Box.Visible = false;
				l.Text.Visible = false;
				l.DistanceText.Visible = false;
				l.Tracer.Visible = false;
			end);
		end;
		return;
	end;
	local T = workspace.CurrentCamera;
	if T then
		L = T;
	end;
	local l = O.Character;
	local p = l and l:FindFirstChild("HumanoidRootPart");
	local a = p and p.Position;
	for T, l in pairs(A) do
		local p = pcall(function()
				return l.Box.Visible;
			end);
		if not p then
			A[T] = nil;
			continue;
		end;
		local u = T.Character;
		local O = u and u:FindFirstChild("HumanoidRootPart");
		local Y = u and u:FindFirstChild("Head");
		local b = u and u:FindFirstChildOfClass("Humanoid");
		local R = function()
				pcall(function()
					l.Box.Visible = false;
					l.Text.Visible = false;
					l.DistanceText.Visible = false;
					l.Tracer.Visible = false;
				end);
			end;
		if not ((O and (Y and (b and b.Health > 0)))) then
			R();
			continue;
		end;
		local V = Fz(T);
		if not Mz(V) then
			R();
			continue;
		end;
		local x, D = Sz(Y.Position + Vector3.new(0, .5, 0));
		local i, U = Sz(O.Position - Vector3.new(0, 3, 0));
		if D or U then
			local p = math.abs(x.Y - i.Y);
			local u = p / 2;
			local Y = Pz(V);
			if Q.BoxEnabled then
				pcall(function()
					l.Box.Size = Vector2.new(u, p);
					l.Box.Position = Vector2.new(x.X - u / 2, x.Y);
					l.Box.Color = M.Box;
					l.Box.Thickness = Q.BoxThickness;
					l.Box.Visible = true;
				end);
			else
				pcall(function()
					l.Box.Visible = false;
				end);
			end;
			pcall(function()
				l.Text.Text = T.DisplayName .. (" [" .. (V .. "]"));
				l.Text.Position = Vector2.new(x.X, x.Y - 18);
				l.Text.Color = Y;
				l.Text.Visible = true;
			end);
			if Q.DistanceEnabled and a then
				pcall(function()
					local T = ((O.Position - a)).Magnitude;
					l.DistanceText.Text = string.format("%.1f m", T * .28);
					l.DistanceText.Position = Vector2.new(x.X, i.Y + 2);
					l.DistanceText.Color = Y;
					l.DistanceText.Visible = true;
				end);
			else
				pcall(function()
					l.DistanceText.Visible = false;
				end);
			end;
			if Q.TracerEnabled then
				pcall(function()
					l.Tracer.From = Vector2.new(L.ViewportSize.X / 2, L.ViewportSize.Y);
					l.Tracer.To = Vector2.new(x.X, x.Y);
					l.Tracer.Color = M.Tracer;
					l.Tracer.Thickness = 1;
					l.Tracer.Visible = true;
				end);
			else
				pcall(function()
					l.Tracer.Visible = false;
				end);
			end;
		else
			R();
		end;
	end;
end);
T.PlayerAdded:Connect(function(T)
	task.wait(1);
	jz(T);
	if P.XRayEnabled and T.Character then
		Qz(T.Character, T);
	end;
end);
T.PlayerRemoving:Connect(function(T)
	rz(T);
	Kz(T);
end);
for T, l in ipairs(T:GetPlayers()) do
	jz(l);
end;
local function zz(T)
	local p = T.AbsoluteSize;
	if p.X < 5 or p.Y < 5 then
		return;
	end;
	local a = math.random(F.ParticleMinSize, F.ParticleMaxSize);
	local u = math.random(0, math.max(1, p.X - a));
	local O = ((p.Y + 40)) / F.ParticleFallSpeed;
	local Y = v("Frame", {
			Size = UDim2.new(0, a, 0, a),
			Position = UDim2.new(0, u, 0, -a),
			BackgroundColor3 = x.Particle,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 5,
			Parent = T,
		});
	t(Y, math.floor(a / 2));
	local L = l:Create(Y, TweenInfo.new(O, Enum.EasingStyle.Linear), { Position = UDim2.new(0, u + math.random(-40, 40), 0, p.Y + 20), BackgroundTransparency = .85 + math.random() * .1 });
	L:Play();
	L.Completed:Connect(function()
		Y:Destroy();
	end);
end;
local function hz(T)
	task.spawn(function()
		while T and T.Parent do
			for l = 1, F.ParticlesPerTick, 1 do
				zz(T);
			end;
			task.wait(F.ParticleSpawnRate);
		end;
	end);
end;
local function Az(T, l, a)
	local u = v("Frame", {
			Name = T .. "_ShadowHolder",
			Size = l,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ZIndex = 1,
			Parent = a,
		});
	for T = 1, 6, 1 do
		local l = v("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				BackgroundTransparency = .88 + (T * .008),
				BorderSizePixel = 0,
				ZIndex = 1,
				Parent = u,
			});
		t(l, 20 + T * 5);
	end;
	local O = v("Frame", {
			Name = T,
			Size = l,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundColor3 = x.BgTop,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Active = true,
			Draggable = true,
			ZIndex = 2,
			Parent = a,
		});
	t(O, 20);
	f(O, x.Border, 1, .4);
	X(O, x.BgTop, x.BgBottom, 90);
	p.Heartbeat:Connect(function()
		if u.Parent and O.Parent then
			u.Position = O.Position + UDim2.new(0, 0, 0, 12);
			u.Size = O.Size;
			u.Visible = O.Visible;
		end;
	end);
	local Y = v("Frame", {
			Name = "ParticleZone",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			ZIndex = 5,
			Parent = O,
		});
	t(Y, 20);
	hz(Y);
	return O;
end;
local function Bz(T, l)
	C(T, .35, l);
end;
local function Ez()
	if not ((o.Shell and o.Shell.Parent)) then
		return;
	end;
	C(o.Shell, .35, function()
		o.Shell = nil;
		o.Sidebar = nil;
		o.Content = nil;
		o.Scroll = nil;
		o.NavItems = {};
		o.CurrentPage = nil;
		o.MenuOpen = false;
	end);
end;
local function vz(T, p, a)
	local u = O:FindFirstChild("PlayerGui");
	if not u then
		return;
	end;
	local Y = u:FindFirstChild("MulbaNotif");
	if Y then
		Y:Destroy();
	end;
	local L = v("ScreenGui", {
			Name = "MulbaNotif",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 1000,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Parent = u,
		});
	local b = v("Frame", {
			Size = UDim2.new(0, 320, 0, 80),
			Position = UDim2.new(1, 20, 0, 100),
			BackgroundColor3 = x.BgTop,
			BackgroundTransparency = .05,
			BorderSizePixel = 0,
			ZIndex = 1000,
			Parent = L,
		});
	t(b, 14);
	X(b, x.BgTop, x.BgBottom, 90);
	v("UIStroke", {
		Color = a and Color3.fromRGB(255, 100, 100) or x.Accent,
		Thickness = 2,
		Transparency = .2,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = b,
	});
	v("TextLabel", {
		Size = UDim2.new(1, -60, 0, 20),
		Position = UDim2.new(0, 20, 0, 14),
		BackgroundTransparency = 1,
		Text = T,
		TextColor3 = a and Color3.fromRGB(255, 120, 120) or x.Accent,
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 1001,
		Parent = b,
	});
	v("TextLabel", {
		Size = UDim2.new(1, -60, 0, 30),
		Position = UDim2.new(0, 20, 0, 36),
		BackgroundTransparency = 1,
		Text = p,
		TextColor3 = x.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		ZIndex = 1001,
		Parent = b,
	});
	(l:Create(b, TweenInfo.new(.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.new(1, -340, 0, 100) })):Play();
	task.delay(5, function()
		if not b.Parent then
			return;
		end;
		(l:Create(b, TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(1, 20, 0, 100), BackgroundTransparency = 1 })):Play();
		for T, p in ipairs(b:GetDescendants()) do
			if p:IsA("TextLabel") then
				(l:Create(p, TweenInfo.new(.4), { TextTransparency = 1 })):Play();
			end;
		end;
		task.wait(.5);
		L:Destroy();
	end);
end;
task.spawn(function()
	while true do
		task.wait(P.AutoShootDelay);
		if not P.AutoShootEnabled then
			continue;
		end;
		local T = Fz(O);
		if T ~= "Sheriff" then
			continue;
		end;
		local l = O.Character;
		if not l then
			continue;
		end;
		local p = l:FindFirstChild("Gun");
		if not p then
			local T = O:FindFirstChild("Backpack");
			if T then
				local p = T:FindFirstChild("Gun");
				if p then
					pcall(function()
						l.Humanoid:EquipTool(p);
					end);
				end;
			end;
			continue;
		end;
		local a = oz();
		if not a then
			continue;
		end;
		local u = a.Character;
		if not u then
			continue;
		end;
		local Y = u:FindFirstChild("HumanoidRootPart");
		local L = u:FindFirstChild("Head");
		if not Y then
			continue;
		end;
		local b = l:FindFirstChild("HumanoidRootPart");
		if not b then
			continue;
		end;
		local R = ((Y.Position - b.Position)).Magnitude;
		if R > P.AutoShootRange then
			continue;
		end;
		local V = workspace.CurrentCamera;
		if V then
			pcall(function()
				V.CFrame = CFrame.new(V.CFrame.Position, L and L.Position or Y.Position);
			end);
		end;
		pcall(function()
			p:Activate();
		end);
	end;
end);
local function tz()
	local l = O.Character;
	if not l then
		vz("TP", "Personnage introuvable", true);
		return;
	end;
	local p = l:FindFirstChild("HumanoidRootPart");
	if not p then
		vz("TP", "Position introuvable", true);
		return;
	end;
	vz("TP All", "T\195\169l\195\169portation...", false);
	task.spawn(function()
		for T, l in ipairs(T:GetPlayers()) do
			if l == O then
				continue;
			end;
			if not l.Character then
				continue;
			end;
			local a = l.Character:FindFirstChild("HumanoidRootPart");
			if not a then
				continue;
			end;
			pcall(function()
				p.CFrame = a.CFrame + Vector3.new(0, 3, 3);
				p.Velocity = Vector3.new(0, 0, 0);
			end);
			task.wait(P.TpAllDelay);
		end;
		vz("TP All", "Termin\195\169", false);
	end);
end;
local Xz, fz, gz;
local ez, Cz, Iz, dz, wz, sz;
local qz, kz, nz, Zz, yz;
local Jz, Nz, Wz, TL, lL, pL, aL;
fz = function()
		local a = O:FindFirstChild("PlayerGui");
		if a then
			local T = a:FindFirstChild("MulbaHeadGui");
			if T then
				T:Destroy();
			end;
		end;
		local u = O.Character;
		if not u or not u:FindFirstChild("Head") then
			task.delay(1, function()
				if fz then
					fz();
				end;
			end);
			return;
		end;
		local Y = u:FindFirstChild("Head");
		if not Y then
			return;
		end;
		local L = v("ScreenGui", {
				Name = "MulbaHeadGui",
				ResetOnSpawn = false,
				IgnoreGuiInset = true,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				DisplayOrder = 997,
				Parent = a,
			});
		local b, R = 200, 50;
		local x = v("TextButton", {
				Size = UDim2.new(0, b, 0, R),
				Position = UDim2.new(0, 0, 0, 0),
				AnchorPoint = Vector2.new(.5, 1),
				BackgroundColor3 = Color3.fromRGB(12, 16, 28),
				BackgroundTransparency = .05,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				Active = true,
				ZIndex = 1,
				Parent = L,
			});
		t(x, 25);
		X(x, Color3.fromRGB(16, 22, 38), Color3.fromRGB(8, 10, 18), 90);
		v("UIStroke", {
			Color = Color3.fromRGB(90, 150, 255),
			Thickness = 1.5,
			Transparency = .15,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = x,
		});
		local D = v("Frame", {
				Size = UDim2.new(0, 36, 0, 36),
				Position = UDim2.new(0, 8, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = x,
			});
		t(D, 18);
		local i = v("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 7,
				Parent = D,
			});
		t(i, 16);
		local U = v("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 8,
				Parent = i,
			});
		t(U, 16);
		task.spawn(function()
			local l, p = pcall(function()
					return T:GetUserThumbnailAsync(O.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if l and p then
				U.Image = p;
			end;
		end);
		local c = v("TextLabel", {
				Size = UDim2.new(1, -90, 0, 16),
				Position = UDim2.new(0, 52, 0, 8),
				BackgroundTransparency = 1,
				Text = "Mulba Menu",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = x,
			});
		local H = v("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 180, 255)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(170, 120, 255)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 120, 200)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(255, 180, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 255, 180)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 180, 255)),
				}), Rotation = 0, Parent = c });
		task.spawn(function()
			while H.Parent do
				H.Rotation = ((H.Rotation + 3)) % 360;
				task.wait(.03);
			end;
		end);
		v("TextLabel", {
			Size = UDim2.new(1, -90, 0, 12),
			Position = UDim2.new(0, 52, 0, 23),
			BackgroundTransparency = 1,
			Text = O.DisplayName .. " / lifetime",
			TextColor3 = Color3.fromRGB(220, 225, 235),
			Font = Enum.Font.GothamMedium,
			TextSize = 9,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 9,
			Parent = x,
		});
		local m = v("TextLabel", {
				Size = UDim2.new(1, -90, 0, 14),
				Position = UDim2.new(0, 52, 0, 35),
				BackgroundTransparency = 1,
				Text = "Cr\195\169ateur",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = x,
			});
		local F = v("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 80, 80)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(255, 180, 80)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 255, 80)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(120, 255, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 200, 255)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 80, 80)),
				}), Rotation = 0, Parent = m });
		task.spawn(function()
			while F.Parent do
				F.Rotation = ((F.Rotation + 4)) % 360;
				task.wait(.03);
			end;
		end);
		local P = v("Frame", {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -38, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = x,
			});
		t(P, 15);
		local M = v("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Text = "M",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 15,
				ZIndex = 8,
				Parent = P,
			});
		v("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 230, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(90, 150, 255)) }), Rotation = 90, Parent = M });
		x.BackgroundTransparency = 1;
		x.Size = UDim2.new(0, b * .7, 0, R * .7);
		for T, p in ipairs(x:GetDescendants()) do
			if p:IsA("TextLabel") then
				p.TextTransparency = 1;
				(l:Create(p, TweenInfo.new(.5), { TextTransparency = 0 })):Play();
			end;
			if p:IsA("ImageLabel") then
				p.ImageTransparency = 1;
				(l:Create(p, TweenInfo.new(.5), { ImageTransparency = 0 })):Play();
			end;
		end;
		(l:Create(x, TweenInfo.new(.55, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, b, 0, R), BackgroundTransparency = .05 })):Play();
		p.RenderStepped:Connect(function()
			if not L.Parent then
				return;
			end;
			if not ((x and x.Parent)) then
				return;
			end;
			local T = O.Character;
			if not T then
				x.Visible = false;
				return;
			end;
			local l = T:FindFirstChild("Head");
			if not l then
				x.Visible = false;
				return;
			end;
			local p = workspace.CurrentCamera;
			if not p then
				return;
			end;
			local a = l.Position + Vector3.new(0, V, 0);
			local u, Y = p:WorldToViewportPoint(a);
			if not Y then
				x.Visible = false;
				return;
			end;
			x.Visible = true;
			x.Position = UDim2.new(0, u.X, 0, u.Y);
		end);
		x.MouseButton1Click:Connect(function()
			if not o.Authenticated then
				return;
			end;
			if o.Shell and o.Shell.Parent then
				return;
			end;
			if Xz then
				Xz();
			end;
		end);
		o.BillboardRef = L;
	end;
ez = function(T)
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 42),
			BackgroundTransparency = 1,
			Text = "Bienvenue sur Mulba",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBlack,
			TextSize = 30,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 46),
			BackgroundTransparency = 1,
			Text = "Menu premium \226\128\162 Murder Mystery 2",
			TextColor3 = x.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		local l = v("Frame", {
				Size = UDim2.new(0, 140, 0, 58),
				Position = UDim2.new(1, -140, 0, 0),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .35,
				BorderSizePixel = 0,
				ZIndex = 26,
				Parent = T,
			});
		t(l, 10);
		f(l, x.Border, 1, .5);
		local a = v("TextLabel", {
				Size = UDim2.new(1, -16, 0, 20),
				Position = UDim2.new(0, 8, 0, 8),
				BackgroundTransparency = 1,
				Text = "FPS: 0",
				TextColor3 = x.Success,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = l,
			});
		local u = v("TextLabel", {
				Size = UDim2.new(1, -16, 0, 20),
				Position = UDim2.new(0, 8, 0, 30),
				BackgroundTransparency = 1,
				Text = "MS: 0",
				TextColor3 = x.Accent,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = l,
			});
		task.spawn(function()
			local T = 0;
			local Y = tick();
			p.RenderStepped:Connect(function()
				T = T + 1;
			end);
			while l.Parent do
				local l = tick();
				local p = l - Y;
				if p >= .5 then
					local L = math.floor(T / p);
					T = 0;
					Y = l;
					local b, R = pcall(function()
							return math.floor(O:GetNetworkPing() * 1000);
						end);
					local V = b and R or 0;
					pcall(function()
						a.Text = "FPS: " .. L;
						a.TextColor3 = L >= 50 and x.Success or (L >= 30 and Color3.fromRGB(240, 200, 120) or x.Error);
						u.Text = "MS: " .. V;
						u.TextColor3 = V <= 80 and x.Success or (V <= 150 and Color3.fromRGB(240, 200, 120) or x.Error);
					end);
				end;
				task.wait(.1);
			end;
		end);
		v("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundColor3 = x.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = T,
		});
		local Y = 100;
		local function L(l, p)
			v("TextLabel", {
				Size = UDim2.new(1, 0, 0, 20),
				Position = UDim2.new(0, 0, 0, Y),
				BackgroundTransparency = 1,
				Text = l,
				TextColor3 = x.Accent,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 25,
				Parent = T,
			});
			Y = Y + 26;
			v("TextLabel", {
				Size = UDim2.new(1, -8, 0, 0),
				Position = UDim2.new(0, 0, 0, Y),
				BackgroundTransparency = 1,
				Text = p,
				TextColor3 = x.TextSecondary,
				Font = Enum.Font.Gotham,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextWrapped = true,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = T,
			});
			Y = (Y + #p * 5) + 30;
		end;
		L("\226\150\186 ESP", "Affiche les r\195\180les (Tueur / Sh\195\169rif / Innocent) avec box, tracer et x-ray pour voir \195\160 travers les murs.");
		L("\226\150\186 PLAYER", "Fly, Spin, Jerk, Noclip, WalkSpeed, JumpPower, Gravity, Infinite Jump et plus pour ton personnage.");
		L("\226\150\186 MURDER", "Kill All, TP tous les joueurs devant toi, TP vers le tueur.");
		L("\226\150\186 SHERIFF", "Auto Shoot : si tu es sh\195\169rif, tire automatiquement sur le tueur.");
		L("\226\150\186 T\195\137L\195\137PORT\195\137", "Te t\195\169l\195\169porte au spawn de la map en un clic.");
		L("\226\150\186 TROLL", "Cible un joueur : TP vers lui ou spectate sa cam\195\169ra.");
		L("\226\150\186 ANIMATION", "Sit : ton personnage s\'assoit (visible par tous les joueurs).");
		v("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, Y),
			BackgroundColor3 = x.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = T,
		});
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 24),
			Position = UDim2.new(0, 0, 0, Y + 10),
			BackgroundTransparency = 1,
			Text = "\240\159\146\161 Appuie sur M pour ouvrir ou fermer le menu",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
	end;
Cz = function(T)
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Param\195\168tres",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 16),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundTransparency = 1,
			Text = "COULEUR D\'ACCENT",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		local p = v("Frame", {
				Size = UDim2.new(1, 0, 0, 140),
				Position = UDim2.new(0, 0, 0, 104),
				BackgroundTransparency = 1,
				ZIndex = 25,
				Parent = T,
			});
		v("UIGridLayout", {
			CellSize = UDim2.new(0, 58, 0, 58),
			CellPadding = UDim2.new(0, 14, 0, 14),
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Parent = p,
		});
		local a = {};
		for T, u in ipairs(D) do
			local O = v("TextButton", {
					BackgroundColor3 = u.Accent,
					BorderSizePixel = 0,
					Text = "",
					AutoButtonColor = false,
					LayoutOrder = T,
					ZIndex = 26,
					Parent = p,
				});
			t(O, 29);
			local Y = v("UIStroke", {
					Color = x.TextPrimary,
					Thickness = 2,
					Transparency = (u.name == o.CurrentPreset) and 0 or 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Parent = O,
				});
			a[u.name] = Y;
			O.MouseButton1Click:Connect(function()
				if o.CurrentPreset == u.name then
					return;
				end;
				o.CurrentPreset = u.name;
				m(u);
				for T, p in pairs(a) do
					(l:Create(p, TweenInfo.new(.2), { Transparency = (T == u.name) and 0 or 1 })):Play();
				end;
			end);
		end;
	end;
lL = function(T, l, p)
		local a = v("Frame", {
				Size = UDim2.new(1, 0, 0, 26),
				BackgroundTransparency = 1,
				LayoutOrder = l,
				ZIndex = 19,
				Parent = T,
			});
		v("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 4, 0, 0),
			BackgroundTransparency = 1,
			Text = string.upper(p),
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 19,
			Parent = a,
		});
		v("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 1, -1),
			BackgroundColor3 = x.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 19,
			Parent = a,
		});
	end;
Jz = function(T, p, a, u, O, Y, L)
		local b = v("Frame", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = p,
				ZIndex = 26,
				Parent = T,
			});
		t(b, 12);
		f(b, x.Border, 1, .5);
		local R = v("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = L,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = b,
			});
		t(R, 2);
		v("TextLabel", {
			Size = UDim2.new(1, -100, 0, 18),
			Position = UDim2.new(0, 26, 0, 10),
			BackgroundTransparency = 1,
			Text = a,
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = b,
		});
		v("TextLabel", {
			Size = UDim2.new(1, -100, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = u,
			TextColor3 = x.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = b,
		});
		local V = v("TextButton", {
				Size = UDim2.new(0, 46, 0, 24),
				Position = UDim2.new(1, -58, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = O() and L or x.SurfaceHi,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 28,
				Parent = b,
			});
		t(V, 12);
		local D = v("Frame", {
				Size = UDim2.new(0, 18, 0, 18),
				Position = O() and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = V,
			});
		t(D, 9);
		V.MouseButton1Click:Connect(function()
			Y();
			local T = O();
			(l:Create(V, TweenInfo.new(.2), { BackgroundColor3 = T and L or x.SurfaceHi })):Play();
			(l:Create(D, TweenInfo.new(.2, Enum.EasingStyle.Quad), { Position = T and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0) })):Play();
		end);
		return b;
	end;
Nz = function(T, l, p, u, O, Y, L, b)
		local R = v("Frame", {
				Size = UDim2.new(1, 0, 0, 52),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = l,
				ZIndex = 26,
				Parent = T,
			});
		t(R, 12);
		f(R, x.Border, 1, .5);
		v("TextLabel", {
			Size = UDim2.new(0, 130, 0, 14),
			Position = UDim2.new(0, 26, 0, 8),
			BackgroundTransparency = 1,
			Text = p,
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = R,
		});
		local V = v("TextLabel", {
				Size = UDim2.new(0, 60, 0, 14),
				Position = UDim2.new(1, -70, 0, 8),
				BackgroundTransparency = 1,
				Text = tostring(Y()),
				TextColor3 = x.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Right,
				ZIndex = 27,
				Parent = R,
			});
		local D = v("Frame", {
				Size = UDim2.new(1, -52, 0, 8),
				Position = UDim2.new(0, 26, 0, 32),
				BackgroundColor3 = x.SurfaceHi,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = R,
			});
		t(D, 4);
		local i = ((Y() - u)) / ((O - u));
		local U = v("Frame", {
				Size = UDim2.new(i, 0, 1, 0),
				BackgroundColor3 = b,
				BorderSizePixel = 0,
				ZIndex = 28,
				Parent = D,
			});
		t(U, 4);
		local c = v("Frame", {
				Size = UDim2.new(0, 14, 0, 14),
				Position = UDim2.new(i, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = D,
			});
		t(c, 7);
		f(c, Color3.fromRGB(0, 0, 0), 2, .3);
		local H = v("TextButton", {
				Size = UDim2.new(1, -52, 0, 22),
				Position = UDim2.new(0, 26, 0, 20),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = R,
			});
		local m = false;
		local function F(T)
			local l = D.AbsolutePosition.X;
			local p = D.AbsoluteSize.X;
			if p <= 0 then
				return;
			end;
			local a = math.clamp(((T - l)) / p, 0, 1);
			local Y = u + a * ((O - u));
			Y = math.floor(Y * 10 + .5) / 10;
			L(Y);
			c.Position = UDim2.new(a, 0, .5, 0);
			U.Size = UDim2.new(a, 0, 1, 0);
			V.Text = tostring(Y);
		end;
		H.InputBegan:Connect(function(T)
			if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
				m = true;
				F(T.Position.X);
			end;
		end);
		H.InputChanged:Connect(function(T)
			if not m then
				return;
			end;
			if T.UserInputType == Enum.UserInputType.MouseMovement or T.UserInputType == Enum.UserInputType.Touch then
				F(T.Position.X);
			end;
		end);
		a.InputEnded:Connect(function(T)
			if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
				m = false;
			end;
		end);
	end;
Wz = function(T, p, a, u, O, Y)
		local L = v("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = p,
				ZIndex = 26,
				Parent = T,
			});
		t(L, 12);
		f(L, x.Border, 1, .5);
		local b = v("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = O,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = L,
			});
		t(b, 2);
		local R = v("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = a,
				TextColor3 = x.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = L,
			});
		v("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = u,
			TextColor3 = x.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = L,
		});
		local V, D, i = g(L, "right", x.TextMuted, 7);
		V.Position = UDim2.new(1, -26, .5, 0);
		V.AnchorPoint = Vector2.new(.5, .5);
		L.MouseEnter:Connect(function()
			(l:Create(L, TweenInfo.new(.18), { BackgroundColor3 = x.SurfaceHi, BackgroundTransparency = .1 })):Play();
			(l:Create(R, TweenInfo.new(.18), { TextColor3 = O })):Play();
			(l:Create(D, TweenInfo.new(.18), { BackgroundColor3 = O })):Play();
			(l:Create(i, TweenInfo.new(.18), { BackgroundColor3 = O })):Play();
		end);
		L.MouseLeave:Connect(function()
			(l:Create(L, TweenInfo.new(.18), { BackgroundColor3 = x.Surface, BackgroundTransparency = .25 })):Play();
			(l:Create(R, TweenInfo.new(.18), { TextColor3 = x.TextPrimary })):Play();
			(l:Create(D, TweenInfo.new(.18), { BackgroundColor3 = x.TextMuted })):Play();
			(l:Create(i, TweenInfo.new(.18), { BackgroundColor3 = x.TextMuted })):Play();
		end);
		L.MouseButton1Click:Connect(Y);
		return L;
	end;
aL = function(T, p, a, u, O, Y, L)
		local b = v("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = p,
				ZIndex = 26,
				Parent = T,
			});
		t(b, 12);
		f(b, x.Border, 1, .5);
		local R = v("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = O() and L or x.TextMuted,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = b,
			});
		t(R, 2);
		local V = v("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = a,
				TextColor3 = x.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = b,
			});
		v("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = u,
			TextColor3 = x.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = b,
		});
		local D, i, U = g(b, "right", O() and L or x.TextMuted, 7);
		D.Position = UDim2.new(1, -26, .5, 0);
		D.AnchorPoint = Vector2.new(.5, .5);
		local function c()
			local T = O();
			R.BackgroundColor3 = T and L or x.TextMuted;
			i.BackgroundColor3 = T and L or x.TextMuted;
			U.BackgroundColor3 = T and L or x.TextMuted;
			V.TextColor3 = T and L or x.TextPrimary;
		end;
		b.MouseEnter:Connect(function()
			(l:Create(b, TweenInfo.new(.18), { BackgroundColor3 = x.SurfaceHi, BackgroundTransparency = .1 })):Play();
		end);
		b.MouseLeave:Connect(function()
			(l:Create(b, TweenInfo.new(.18), { BackgroundColor3 = x.Surface, BackgroundTransparency = .25 })):Play();
		end);
		b.MouseButton1Click:Connect(function()
			Y(not O());
			c();
		end);
		return b;
	end;
pL = function(T, p, a, u, O, Y, L, b)
		local R = v("Frame", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundTransparency = 1,
				LayoutOrder = p,
				ZIndex = 26,
				Parent = T,
				AutomaticSize = Enum.AutomaticSize.Y,
			});
		v("UIListLayout", { Padding = UDim.new(0, 0), SortOrder = Enum.SortOrder.LayoutOrder, Parent = R });
		local V = v("Frame", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = 1,
				ZIndex = 26,
				Parent = R,
			});
		t(V, 12);
		f(V, x.Border, 1, .5);
		local D = v("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = O() and L or x.TextMuted,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = V,
			});
		t(D, 2);
		local i = v("TextLabel", {
				Size = UDim2.new(1, -100, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = a,
				TextColor3 = x.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = V,
			});
		v("TextLabel", {
			Size = UDim2.new(1, -100, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = u,
			TextColor3 = x.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = V,
		});
		local U = v("TextButton", {
				Size = UDim2.new(0, 46, 0, 24),
				Position = UDim2.new(1, -80, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = O() and L or x.SurfaceHi,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 28,
				Parent = V,
			});
		t(U, 12);
		local c = v("Frame", {
				Size = UDim2.new(0, 18, 0, 18),
				Position = O() and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = U,
			});
		t(c, 9);
		local H = v("Frame", {
				Size = UDim2.new(0, 10, 0, 10),
				Position = UDim2.new(1, -26, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				ZIndex = 27,
				Parent = V,
			});
		local m = v("Frame", {
				Size = UDim2.new(0, 7, 0, 2),
				Position = UDim2.new(.5, 0, .5, -2),
				AnchorPoint = Vector2.new(1, .5),
				BackgroundColor3 = x.TextMuted,
				BorderSizePixel = 0,
				Rotation = 45,
				ZIndex = 28,
				Parent = H,
			});
		t(m, 1);
		local F = v("Frame", {
				Size = UDim2.new(0, 7, 0, 2),
				Position = UDim2.new(.5, 0, .5, 2),
				AnchorPoint = Vector2.new(1, .5),
				BackgroundColor3 = x.TextMuted,
				BorderSizePixel = 0,
				Rotation = -45,
				ZIndex = 28,
				Parent = H,
			});
		t(F, 1);
		local o = v("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				LayoutOrder = 2,
				ZIndex = 25,
				Parent = R,
			});
		U.MouseButton1Click:Connect(function()
			Y(not O());
			local T = O();
			(l:Create(U, TweenInfo.new(.2), { BackgroundColor3 = T and L or x.SurfaceHi })):Play();
			(l:Create(c, TweenInfo.new(.2, Enum.EasingStyle.Quad), { Position = T and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0) })):Play();
			D.BackgroundColor3 = T and L or x.TextMuted;
			i.TextColor3 = T and L or x.TextPrimary;
		end);
		local P = v("TextButton", {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -42, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 29,
				Parent = V,
			});
		local M = false;
		P.MouseButton1Click:Connect(function()
			M = not M;
			if M then
				for T, l in ipairs(o:GetChildren()) do
					l:Destroy();
				end;
				b(o);
				(l:Create(o, TweenInfo.new(.28, Enum.EasingStyle.Quad), { Size = UDim2.new(1, 0, 0, 64) })):Play();
				(l:Create(m, TweenInfo.new(.2), { Rotation = -45 })):Play();
				(l:Create(F, TweenInfo.new(.2), { Rotation = 45 })):Play();
			else
				(l:Create(o, TweenInfo.new(.24, Enum.EasingStyle.Quad), { Size = UDim2.new(1, 0, 0, 0) })):Play();
				(l:Create(m, TweenInfo.new(.2), { Rotation = 45 })):Play();
				(l:Create(F, TweenInfo.new(.2), { Rotation = -45 })):Play();
			end;
		end);
		V.MouseEnter:Connect(function()
			(l:Create(V, TweenInfo.new(.18), { BackgroundColor3 = x.SurfaceHi, BackgroundTransparency = .1 })):Play();
		end);
		V.MouseLeave:Connect(function()
			(l:Create(V, TweenInfo.new(.18), { BackgroundColor3 = x.Surface, BackgroundTransparency = .25 })):Play();
		end);
		return R;
	end;
TL = function()
		if o.FlyPopup and o.FlyPopup.Parent then
			o.FlyPopup:Destroy();
			o.FlyPopup = nil;
			return;
		end;
		local T = o.Shell;
		if not T then
			return;
		end;
		local p = v("TextButton", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				BackgroundTransparency = .5,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 490,
				Parent = T,
			});
		p.MouseButton1Click:Connect(function()
			if o.FlyPopup then
				o.FlyPopup:Destroy();
				o.FlyPopup = nil;
			end;
			p:Destroy();
		end);
		local u = v("Frame", {
				Name = "FlyPopup",
				Size = UDim2.new(0, 340, 0, 400),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = x.BgTop,
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				Active = true,
				ClipsDescendants = true,
				ZIndex = 500,
				Parent = T,
			});
		t(u, 18);
		X(u, Color3.fromRGB(30, 32, 42), Color3.fromRGB(16, 17, 24), 90);
		v("UIStroke", {
			Color = x.Accent,
			Thickness = 2,
			Transparency = .4,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			ZIndex = 500,
			Parent = u,
		});
		v("UIStroke", {
			Color = x.AccentGlow,
			Thickness = 1,
			Transparency = .75,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			ZIndex = 500,
			Parent = u,
		});
		v("TextButton", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Text = "",
			AutoButtonColor = false,
			ZIndex = 501,
			Parent = u,
		});
		local O = v("Frame", {
				Size = UDim2.new(1, 0, 0, 3),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundColor3 = x.Accent,
				BorderSizePixel = 0,
				ZIndex = 502,
				Parent = u,
			});
		local Y = X(O, x.Accent, x.AccentGlow, 0);
		c(Y, "AccentDim", "AccentGlow");
		v("TextLabel", {
			Size = UDim2.new(1, -90, 0, 22),
			Position = UDim2.new(0, 24, 0, 22),
			BackgroundTransparency = 1,
			Text = "Fly",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 20,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 503,
			Parent = u,
		});
		v("TextLabel", {
			Size = UDim2.new(1, -90, 0, 16),
			Position = UDim2.new(0, 24, 0, 46),
			BackgroundTransparency = 1,
			Text = "Contr\195\180le du vol (W/A/S/D)",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 503,
			Parent = u,
		});
		local L = v("Frame", {
				Size = UDim2.new(0, 10, 0, 10),
				Position = UDim2.new(1, -110, 0, 28),
				BackgroundColor3 = K.FlyEnabled and x.Success or x.TextMuted,
				BorderSizePixel = 0,
				ZIndex = 503,
				Parent = u,
			});
		t(L, 5);
		local b = v("TextLabel", {
				Size = UDim2.new(0, 60, 0, 14),
				Position = UDim2.new(1, -94, 0, 26),
				BackgroundTransparency = 1,
				Text = K.FlyEnabled and "Actif" or "Inactif",
				TextColor3 = K.FlyEnabled and x.Success or x.TextMuted,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 503,
				Parent = u,
			});
		local R = v("TextButton", {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -42, 0, 22),
				BackgroundColor3 = x.SurfaceHi,
				BackgroundTransparency = .3,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 504,
				Parent = u,
			});
		t(R, 10);
		local V = v("Frame", {
				Size = UDim2.new(0, 8, 0, 8),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = x.CloseDot,
				BorderSizePixel = 0,
				ZIndex = 505,
				Parent = R,
			});
		t(V, 4);
		R.MouseButton1Click:Connect(function()
			if o.FlyPopup then
				o.FlyPopup:Destroy();
				o.FlyPopup = nil;
			end;
			p:Destroy();
		end);
		v("Frame", {
			Size = UDim2.new(1, -48, 0, 1),
			Position = UDim2.new(0, 24, 0, 84),
			BackgroundColor3 = x.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 502,
			Parent = u,
		});
		local D = v("Frame", {
				Size = UDim2.new(1, -48, 0, 60),
				Position = UDim2.new(0, 24, 0, 100),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				ZIndex = 502,
				Parent = u,
			});
		t(D, 12);
		v("UIStroke", {
			Color = x.Border,
			Thickness = 1,
			Transparency = .5,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = D,
		});
		v("Frame", {
			Size = UDim2.new(0, 3, 0, 36),
			Position = UDim2.new(0, 12, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = x.Accent,
			BorderSizePixel = 0,
			ZIndex = 503,
			Parent = D,
		});
		v("TextLabel", {
			Size = UDim2.new(1, -100, 0, 18),
			Position = UDim2.new(0, 26, 0, 12),
			BackgroundTransparency = 1,
			Text = "Activer le Fly",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 503,
			Parent = D,
		});
		v("TextLabel", {
			Size = UDim2.new(1, -100, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = "W/A/S/D + UP/DOWN",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 503,
			Parent = D,
		});
		local i = v("TextButton", {
				Size = UDim2.new(0, 46, 0, 24),
				Position = UDim2.new(1, -58, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = K.FlyEnabled and x.Accent or x.SurfaceHi,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 503,
				Parent = D,
			});
		t(i, 12);
		local U = v("Frame", {
				Size = UDim2.new(0, 18, 0, 18),
				Position = K.FlyEnabled and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 504,
				Parent = i,
			});
		t(U, 9);
		local function H()
			local T = K.FlyEnabled;
			L.BackgroundColor3 = T and x.Success or x.TextMuted;
			b.Text = T and "Actif" or "Inactif";
			b.TextColor3 = T and x.Success or x.TextMuted;
			(l:Create(i, TweenInfo.new(.2), { BackgroundColor3 = T and x.Accent or x.SurfaceHi })):Play();
			(l:Create(U, TweenInfo.new(.2, Enum.EasingStyle.Quad), { Position = T and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0) })):Play();
		end;
		i.MouseButton1Click:Connect(function()
			s();
			H();
		end);
		local m = v("Frame", {
				Size = UDim2.new(1, -48, 0, 60),
				Position = UDim2.new(0, 24, 0, 172),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				ZIndex = 502,
				Parent = u,
			});
		t(m, 12);
		v("UIStroke", {
			Color = x.Border,
			Thickness = 1,
			Transparency = .5,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = m,
		});
		v("Frame", {
			Size = UDim2.new(0, 3, 0, 36),
			Position = UDim2.new(0, 12, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = Color3.fromRGB(170, 130, 235),
			BorderSizePixel = 0,
			ZIndex = 503,
			Parent = m,
		});
		v("TextLabel", {
			Size = UDim2.new(1, -100, 0, 14),
			Position = UDim2.new(0, 26, 0, 10),
			BackgroundTransparency = 1,
			Text = "VITESSE",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 503,
			Parent = m,
		});
		local F = v("TextLabel", {
				Size = UDim2.new(0, 80, 0, 16),
				Position = UDim2.new(1, -94, 0, 8),
				BackgroundTransparency = 1,
				Text = tostring(K.FlySpeed) .. " u/s",
				TextColor3 = x.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Right,
				ZIndex = 503,
				Parent = m,
			});
		local P = v("Frame", {
				Size = UDim2.new(1, -52, 0, 8),
				Position = UDim2.new(0, 26, 0, 36),
				BackgroundColor3 = x.SurfaceHi,
				BorderSizePixel = 0,
				ZIndex = 503,
				Parent = m,
			});
		t(P, 4);
		local M = ((K.FlySpeed - 10)) / (190);
		local Q = v("Frame", {
				Size = UDim2.new(M, 0, 1, 0),
				BackgroundColor3 = Color3.fromRGB(170, 130, 235),
				BorderSizePixel = 0,
				ZIndex = 504,
				Parent = P,
			});
		t(Q, 4);
		local S = v("Frame", {
				Size = UDim2.new(0, 14, 0, 14),
				Position = UDim2.new(M, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 505,
				Parent = P,
			});
		t(S, 7);
		f(S, Color3.fromRGB(0, 0, 0), 2, .3);
		local z = v("TextButton", {
				Size = UDim2.new(1, -52, 0, 20),
				Position = UDim2.new(0, 26, 0, 26),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 506,
				Parent = m,
			});
		local h = false;
		local function A(T)
			local l = P.AbsolutePosition.X;
			local p = P.AbsoluteSize.X;
			if p <= 0 then
				return;
			end;
			local a = math.clamp(((T - l)) / p, 0, 1);
			local u = math.floor((10 + a * (190)) + .5);
			K.FlySpeed = u;
			G.maxspeed = math.clamp(math.floor(u / 4), 10, 100);
			S.Position = UDim2.new(a, 0, .5, 0);
			Q.Size = UDim2.new(a, 0, 1, 0);
			F.Text = tostring(u) .. " u/s";
		end;
		z.InputBegan:Connect(function(T)
			if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
				h = true;
				A(T.Position.X);
			end;
		end);
		z.InputChanged:Connect(function(T)
			if not h then
				return;
			end;
			if T.UserInputType == Enum.UserInputType.MouseMovement or T.UserInputType == Enum.UserInputType.Touch then
				A(T.Position.X);
			end;
		end);
		a.InputEnded:Connect(function(T)
			if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
				h = false;
			end;
		end);
		local B = v("Frame", {
				Size = UDim2.new(1, -48, 0, 60),
				Position = UDim2.new(0, 24, 0, 244),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				ZIndex = 502,
				Parent = u,
			});
		t(B, 12);
		v("UIStroke", {
			Color = x.Border,
			Thickness = 1,
			Transparency = .5,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = B,
		});
		v("Frame", {
			Size = UDim2.new(0, 3, 0, 36),
			Position = UDim2.new(0, 12, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = Color3.fromRGB(240, 165, 95),
			BorderSizePixel = 0,
			ZIndex = 503,
			Parent = B,
		});
		v("TextLabel", {
			Size = UDim2.new(1, -120, 0, 14),
			Position = UDim2.new(0, 26, 0, 8),
			BackgroundTransparency = 1,
			Text = "BIND TOUCHE",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 503,
			Parent = B,
		});
		local E = v("TextLabel", {
				Size = UDim2.new(1, -120, 0, 16),
				Position = UDim2.new(0, 26, 0, 26),
				BackgroundTransparency = 1,
				Text = K.FlyBind and K.FlyBind.Name or "Aucune",
				TextColor3 = K.FlyBind and x.Accent or x.TextMuted,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 503,
				Parent = B,
			});
		local g = v("TextButton", {
				Size = UDim2.new(0, 80, 0, 32),
				Position = UDim2.new(1, -92, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(240, 165, 95),
				BorderSizePixel = 0,
				Text = "BIND",
				TextColor3 = Color3.fromRGB(30, 20, 10),
				Font = Enum.Font.GothamBold,
				TextSize = 12,
				AutoButtonColor = false,
				ZIndex = 503,
				Parent = B,
			});
		t(g, 10);
		local e = v("TextButton", {
				Size = UDim2.new(0, 60, 0, 14),
				Position = UDim2.new(1, -92, 0, 4),
				BackgroundTransparency = 1,
				Text = "Reset",
				TextColor3 = x.TextMuted,
				Font = Enum.Font.Gotham,
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Center,
				AutoButtonColor = false,
				ZIndex = 504,
				Parent = B,
			});
		e.MouseEnter:Connect(function()
			e.TextColor3 = x.Error;
		end);
		e.MouseLeave:Connect(function()
			e.TextColor3 = x.TextMuted;
		end);
		e.MouseButton1Click:Connect(function()
			k(nil);
			E.Text = "Aucune";
			E.TextColor3 = x.TextMuted;
		end);
		local C = false;
		local I;
		g.MouseButton1Click:Connect(function()
			if C then
				return;
			end;
			C = true;
			g.Text = "...";
			E.Text = "Appuie sur une touche...";
			E.TextColor3 = x.Accent;
			I = a.InputBegan:Connect(function(T, l)
					if T.UserInputType ~= Enum.UserInputType.Keyboard then
						return;
					end;
					if T.KeyCode == Enum.KeyCode.Unknown then
						return;
					end;
					k(T.KeyCode);
					E.Text = T.KeyCode.Name;
					E.TextColor3 = x.Accent;
					g.Text = "BIND";
					C = false;
					if I then
						I:Disconnect();
						I = nil;
					end;
				end);
		end);
		local d = v("TextButton", {
				Size = UDim2.new(.4, 0, 0, 36),
				Position = UDim2.new(0, 24, 0, 316),
				BackgroundColor3 = Color3.fromRGB(79, 255, 152),
				BorderSizePixel = 0,
				Text = "UP",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				AutoButtonColor = false,
				ZIndex = 503,
				Parent = u,
			});
		t(d, 8);
		local w = v("TextButton", {
				Size = UDim2.new(.4, 0, 0, 36),
				Position = UDim2.new(1, -140.8, 0, 316),
				AnchorPoint = Vector2.new(1, 0),
				BackgroundColor3 = Color3.fromRGB(215, 255, 121),
				BorderSizePixel = 0,
				Text = "DOWN",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				AutoButtonColor = false,
				ZIndex = 503,
				Parent = u,
			});
		t(w, 8);
		d.MouseButton1Down:Connect(function()
			j = true;
		end);
		d.MouseButton1Up:Connect(function()
			j = false;
		end);
		d.MouseLeave:Connect(function()
			j = false;
		end);
		w.MouseButton1Down:Connect(function()
			r = true;
		end);
		w.MouseButton1Up:Connect(function()
			r = false;
		end);
		w.MouseLeave:Connect(function()
			r = false;
		end);
		u.Size = UDim2.new(0, 260, 0, 300);
		u.BackgroundTransparency = 1;
		(l:Create(u, TweenInfo.new(.38, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 340, 0, 400), BackgroundTransparency = 0 })):Play();
		o.FlyPopup = u;
		u.Destroying:Connect(function()
			if p and p.Parent then
				p:Destroy();
			end;
		end);
	end;
qz = function(T)
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Player",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Mouvement & statistiques",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		local l = v("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = T,
			});
		v("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = l });
		local p = 0;
		local function a()
			p = p + 1;
			return p;
		end;
		lL(l, a(), "Mouvement");
		local u = Wz(l, a(), "FLY", "Ouvrir le panneau Fly", Color3.fromRGB(115, 155, 240), function()
				TL();
			end);
		local O = v("Frame", {
				Size = UDim2.new(0, 6, 0, 6),
				Position = UDim2.new(1, -16, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = K.FlyEnabled and x.Success or x.TextMuted,
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = u,
			});
		t(O, 3);
		task.spawn(function()
			while u.Parent do
				O.BackgroundColor3 = K.FlyEnabled and x.Success or x.TextMuted;
				task.wait(.3);
			end;
		end);
		Jz(l, a(), "SPIN", "Tourne sur toi-m\195\170me", function()
			return K.SpinEnabled;
		end, function()
			y();
		end, Color3.fromRGB(170, 130, 235));
		Nz(l, a(), "VITESSE SPIN", 2, 50, function()
			return K.SpinSpeed;
		end, function(T)
			J(T);
		end, Color3.fromRGB(170, 130, 235));
		Jz(l, a(), "JERK", "Secousse rapide", function()
			return K.JerkEnabled;
		end, function()
			Tz();
		end, Color3.fromRGB(240, 165, 95));
		Nz(l, a(), "INTENSIT\195\137 JERK", .5, 10, function()
			return K.JerkIntensity;
		end, function(T)
			lz(T);
		end, Color3.fromRGB(240, 165, 95));
		Jz(l, a(), "NOCLIP", "Traverse les murs", function()
			return K.NoclipEnabled;
		end, function()
			az();
		end, Color3.fromRGB(130, 205, 155));
		lL(l, a(), "Stats");
		Nz(l, a(), "WALKSPEED", 16, 200, function()
			return K.WalkSpeed;
		end, function(T)
			uz(T);
		end, Color3.fromRGB(115, 155, 240));
		Nz(l, a(), "JUMPPOWER", 50, 500, function()
			return K.JumpPower;
		end, function(T)
			Oz(T);
		end, Color3.fromRGB(130, 205, 155));
		Nz(l, a(), "GRAVITY", 0, 196, function()
			return K.Gravity;
		end, function(T)
			Yz(T);
		end, Color3.fromRGB(170, 130, 235));
		lL(l, a(), "Extras");
		Jz(l, a(), "INFINITE JUMP", "Saut infini", function()
			return K.InfiniteJump;
		end, function()
			bz();
		end, Color3.fromRGB(240, 165, 95));
		Jz(l, a(), "ANTI-AFK", "\195\137vite le kick inactivit\195\169", function()
			return K.AntiAFK;
		end, function()
			Vz();
		end, Color3.fromRGB(140, 200, 155));
		Jz(l, a(), "FULLBRIGHT", "\195\137claire toute la map", function()
			return K.Fullbright;
		end, function()
			Dz();
		end, Color3.fromRGB(255, 215, 120));
		Jz(l, a(), "ANTI-FLING", "Bloque les tentatives de fling", function()
			return K.AntiFling;
		end, function()
			iz();
		end, Color3.fromRGB(220, 115, 115));
		Wz(l, a(), "RESET CHARACTER", "Respawn imm\195\169diat", Color3.fromRGB(255, 80, 80), function()
			Uz();
			vz("Player", "Reset en cours...", false);
		end);
	end;
yz = function(T)
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169port\195\169",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169portation rapide",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		local l = v("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = T,
			});
		v("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = l });
		Wz(l, 1, "TP SPAWN", "Te t\195\169l\195\169porte au spawn", Color3.fromRGB(115, 155, 240), function()
			cz();
		end);
	end;
Zz = function(T)
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Animation",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Animations visibles par tous",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		local l = v("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = T,
			});
		v("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = l });
		Jz(l, 1, "SIT", "Assieds ton personnage", function()
			return K.Sitting;
		end, function()
			pz();
		end, Color3.fromRGB(140, 200, 155));
	end;
kz = function(T)
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Combat",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Section \195\160 venir",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
	end;
nz = function(T)
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Auto Farm",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Section \195\160 venir",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
	end;
Iz = function(T)
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "ESP",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Affichage des r\195\180les MM2",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundTransparency = 1,
			Text = "R\195\148LES",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		local l = v("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 102),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = T,
			});
		v("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = l });
		aL(l, 1, "ESP Murderer", "Voir le tueur", function()
			return P.EspShowMurder;
		end, function(T)
			P.EspShowMurder = T;
		end, M.Murderer);
		aL(l, 2, "ESP Sheriff", "Voir le sh\195\169rif", function()
			return P.EspShowSheriff;
		end, function(T)
			P.EspShowSheriff = T;
		end, M.Sheriff);
		aL(l, 3, "ESP Innocent", "Voir les innocents", function()
			return P.EspShowInnocent;
		end, function(T)
			P.EspShowInnocent = T;
		end, M.Innocent);
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 290),
			BackgroundTransparency = 1,
			Text = "OPTIONS",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		local p = v("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 312),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = T,
			});
		v("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = p });
		aL(p, 1, "X-RAY", "Voir \195\160 travers les murs", function()
			return P.XRayEnabled;
		end, function(T)
			P.XRayEnabled = T;
			Gz();
		end, Color3.fromRGB(255, 215, 120));
		pL(p, 2, "Box", "Cadre autour du joueur", function()
			return Q.BoxEnabled;
		end, function(T)
			Q.BoxEnabled = T;
		end, M.Box, function(T)
			local l = v("Frame", {
					Size = UDim2.new(1, -16, 0, 54),
					Position = UDim2.new(0, 8, 0, 5),
					BackgroundColor3 = x.Surface,
					BackgroundTransparency = .25,
					BorderSizePixel = 0,
					ZIndex = 26,
					Parent = T,
				});
			t(l, 10);
			f(l, x.Border, 1, .5);
			v("TextLabel", {
				Size = UDim2.new(1, -140, 0, 14),
				Position = UDim2.new(0, 14, 0, 8),
				BackgroundTransparency = 1,
				Text = "\195\137PAISSEUR BOX",
				TextColor3 = x.TextMuted,
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = l,
			});
			local p = v("TextLabel", {
					Size = UDim2.new(0, 50, 0, 20),
					Position = UDim2.new(1, -60, .5, 0),
					AnchorPoint = Vector2.new(0, .5),
					BackgroundTransparency = 1,
					Text = Q.BoxThickness .. " px",
					TextColor3 = x.TextPrimary,
					Font = Enum.Font.GothamBold,
					TextSize = 11,
					TextXAlignment = Enum.TextXAlignment.Right,
					ZIndex = 27,
					Parent = l,
				});
			local u = v("Frame", {
					Size = UDim2.new(1, -84, 0, 8),
					Position = UDim2.new(0, 14, 0, 34),
					BackgroundColor3 = x.SurfaceHi,
					BorderSizePixel = 0,
					ZIndex = 27,
					Parent = l,
				});
			t(u, 4);
			local O = ((Q.BoxThickness - 1)) / 9;
			local Y = v("Frame", {
					Size = UDim2.new(O, 0, 1, 0),
					BackgroundColor3 = M.Box,
					BorderSizePixel = 0,
					ZIndex = 28,
					Parent = u,
				});
			t(Y, 4);
			local L = v("Frame", {
					Size = UDim2.new(0, 12, 0, 12),
					Position = UDim2.new(O, 0, .5, 0),
					AnchorPoint = Vector2.new(.5, .5),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BorderSizePixel = 0,
					ZIndex = 29,
					Parent = u,
				});
			t(L, 6);
			f(L, Color3.fromRGB(0, 0, 0), 2, .3);
			local b = v("TextButton", {
					Size = UDim2.new(1, -84, 0, 22),
					Position = UDim2.new(0, 14, 0, 28),
					BackgroundTransparency = 1,
					Text = "",
					AutoButtonColor = false,
					ZIndex = 30,
					Parent = l,
				});
			local R = false;
			local function V(T)
				local l = u.AbsolutePosition.X;
				local a = u.AbsoluteSize.X;
				if a <= 0 then
					return;
				end;
				local O = math.clamp(((T - l)) / a, 0, 1);
				local b = math.floor((1 + O * 9) + .5);
				Q.BoxThickness = b;
				L.Position = UDim2.new(((b - 1)) / 9, 0, .5, 0);
				Y.Size = UDim2.new(((b - 1)) / 9, 0, 1, 0);
				p.Text = b .. " px";
			end;
			b.InputBegan:Connect(function(T)
				if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
					R = true;
					V(T.Position.X);
				end;
			end);
			b.InputChanged:Connect(function(T)
				if not R then
					return;
				end;
				if T.UserInputType == Enum.UserInputType.MouseMovement or T.UserInputType == Enum.UserInputType.Touch then
					V(T.Position.X);
				end;
			end);
			a.InputEnded:Connect(function(T)
				if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
					R = false;
				end;
			end);
		end);
		aL(p, 3, "TRACER", "Ligne du bas vers le joueur", function()
			return Q.TracerEnabled;
		end, function(T)
			Q.TracerEnabled = T;
		end, M.Tracer);
	end;
dz = function(T)
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Murder",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 tueur",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		local l = v("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = T,
			});
		v("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = l });
		Wz(l, 1, "KILL ALL", "TP tous les joueurs devant toi + couteau auto", Color3.fromRGB(255, 60, 60), function()
			mz();
		end);
		Wz(l, 2, "TP ALL IN FRONT", "TP tous les joueurs devant toi", Color3.fromRGB(240, 165, 95), function()
			Hz();
		end);
		Wz(l, 3, "TP ALL PLAYERS", "Te t\195\169l\195\169porte vers chaque joueur", Color3.fromRGB(115, 155, 240), function()
			tz();
		end);
		Wz(l, 4, "TP MURDERER", "Te t\195\169l\195\169porte au tueur", Color3.fromRGB(255, 80, 80), function()
			local T = oz();
			if not T then
				vz("Erreur", "Tueur introuvable", true);
				return;
			end;
			local l = O.Character;
			local p = l and l:FindFirstChild("HumanoidRootPart");
			local a = T.Character and T.Character:FindFirstChild("HumanoidRootPart");
			if p and a then
				pcall(function()
					p.CFrame = a.CFrame + Vector3.new(0, 3, 3);
				end);
				vz("TP", "TP vers " .. T.Name, false);
			end;
		end);
	end;
wz = function(T)
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Sheriff",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 sh\195\169rif",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = T,
		});
		local l = v("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = T,
			});
		v("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = l });
		aL(l, 1, "AUTO SHOOT MURDERER", "Tire auto sur le tueur (si Sheriff)", function()
			return P.AutoShootEnabled;
		end, function(T)
			P.AutoShootEnabled = T;
		end, Color3.fromRGB(70, 130, 240));
	end;
sz = function(p)
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Troll",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Cible un joueur, puis utilise les actions",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 76),
			BackgroundTransparency = 1,
			Text = "JOUEUR CIBL\195\137",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		local a = v("TextButton", {
				Size = UDim2.new(1, 0, 0, 44),
				Position = UDim2.new(0, 0, 0, 96),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = p,
			});
		t(a, 10);
		f(a, x.Border, 1, .4);
		local u = v("TextLabel", {
				Size = UDim2.new(1, -70, 1, 0),
				Position = UDim2.new(0, 16, 0, 0),
				BackgroundTransparency = 1,
				Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148",
				TextColor3 = x.TextMuted,
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 31,
				Parent = a,
			});
		local Y, L, b = g(a, "right", x.TextMuted, 8);
		Y.Position = UDim2.new(1, -24, .5, 0);
		Y.AnchorPoint = Vector2.new(.5, .5);
		local R = v("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 148),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .05,
				BorderSizePixel = 0,
				Visible = false,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 40,
				Parent = p,
			});
		t(R, 12);
		f(R, x.Border, 1, .3);
		local V = v("Frame", {
				Size = UDim2.new(1, -12, 0, 6),
				Position = UDim2.new(0, 6, 0, 6),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 41,
				Parent = R,
			});
		v("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = V });
		local function D()
			for T, l in ipairs(V:GetChildren()) do
				if l:IsA("TextButton") or (l:IsA("TextLabel") and l.Name == "EmptyLbl") then
					l:Destroy();
				end;
			end;
			local p = 0;
			for T, a in ipairs(T:GetPlayers()) do
				if a == O then
					continue;
				end;
				p = p + 1;
				local Y = v("TextButton", {
						Size = UDim2.new(1, 0, 0, 34),
						BackgroundColor3 = x.SurfaceHi,
						BackgroundTransparency = .6,
						BorderSizePixel = 0,
						Text = "",
						AutoButtonColor = false,
						LayoutOrder = p,
						ZIndex = 42,
						Parent = V,
					});
				t(Y, 8);
				local D = Fz(a);
				local i = Pz(D);
				v("TextLabel", {
					Size = UDim2.new(1, -50, 1, 0),
					Position = UDim2.new(0, 12, 0, 0),
					BackgroundTransparency = 1,
					Text = a.Name .. ("  (" .. (D .. ")")),
					TextColor3 = x.TextPrimary,
					Font = Enum.Font.GothamMedium,
					TextSize = 13,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 43,
					Parent = Y,
				});
				v("Frame", {
					Size = UDim2.new(0, 4, 0, 18),
					Position = UDim2.new(1, -14, .5, 0),
					AnchorPoint = Vector2.new(0, .5),
					BackgroundColor3 = i,
					BorderSizePixel = 0,
					ZIndex = 43,
					Parent = Y,
				});
				Y.MouseEnter:Connect(function()
					(l:Create(Y, TweenInfo.new(.15), { BackgroundTransparency = .25 })):Play();
				end);
				Y.MouseLeave:Connect(function()
					(l:Create(Y, TweenInfo.new(.15), { BackgroundTransparency = .6 })):Play();
				end);
				Y.MouseButton1Click:Connect(function()
					o.TrollSelected = a;
					u.Text = a.Name;
					u.TextColor3 = x.Accent;
					R.Visible = false;
					(l:Create(L, TweenInfo.new(.15), { Rotation = 45 })):Play();
					(l:Create(b, TweenInfo.new(.15), { Rotation = -45 })):Play();
				end);
			end;
			if p == 0 then
				v("TextLabel", {
					Name = "EmptyLbl",
					Size = UDim2.new(1, 0, 0, 34),
					BackgroundTransparency = 1,
					Text = "Aucun autre joueur",
					TextColor3 = x.TextMuted,
					Font = Enum.Font.Gotham,
					TextSize = 12,
					ZIndex = 42,
					Parent = V,
				});
			end;
		end;
		local i = false;
		a.MouseButton1Click:Connect(function()
			i = not i;
			if i then
				D();
			end;
			R.Visible = i;
			(l:Create(L, TweenInfo.new(.15), { Rotation = i and -45 or 45 })):Play();
			(l:Create(b, TweenInfo.new(.15), { Rotation = i and 45 or -45 })):Play();
		end);
		T.PlayerAdded:Connect(function()
			if i then
				D();
			end;
		end);
		T.PlayerRemoving:Connect(function(T)
			if o.TrollSelected == T then
				o.TrollSelected = nil;
				u.Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148";
				u.TextColor3 = x.TextMuted;
			end;
			if i then
				D();
			end;
		end);
		v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 164),
			BackgroundTransparency = 1,
			Text = "ACTIONS",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		local U = v("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 186),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = p,
			});
		v("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = U });
		Wz(U, 1, "TP \195\128 LA CIBLE", "Te t\195\169l\195\169porte sur le joueur s\195\169lectionn\195\169", Color3.fromRGB(255, 80, 80), function()
			local T = o.TrollSelected;
			if not T or not T.Character then
				vz("Troll", "Aucune cible valide", true);
				return;
			end;
			local l = T.Character:FindFirstChild("HumanoidRootPart");
			local p = O.Character;
			local a = p and p:FindFirstChild("HumanoidRootPart");
			if l and a then
				pcall(function()
					a.CFrame = l.CFrame + Vector3.new(0, 3, 3);
				end);
				vz("Troll", "TP \226\134\146 " .. T.Name, false);
			end;
		end);
		Wz(U, 2, "SPECTATE CIBLE", "Ta cam\195\169ra suit le joueur s\195\169lectionn\195\169", Color3.fromRGB(170, 130, 235), function()
			local T = o.TrollSelected;
			local l = workspace.CurrentCamera;
			if not T or not T.Character then
				vz("Troll", "Aucune cible valide", true);
				return;
			end;
			l.CameraSubject = T.Character:FindFirstChildOfClass("Humanoid") or T.Character;
			vz("Troll", "Cam\195\169ra \226\134\146 " .. T.Name, false);
		end);
	end;
gz = function(T)
		if o.CurrentPage == T then
			return;
		end;
		o.CurrentPage = T;
		for l, p in pairs(o.NavItems) do
			p.setActive(l == T);
		end;
		local p = o.Scroll;
		if not p then
			return;
		end;
		local a = p:FindFirstChild("PageBody");
		if a then
			for T, p in ipairs(a:GetChildren()) do
				if p:IsA("GuiObject") then
					(l:Create(p, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
					if p:IsA("TextLabel") then
						(l:Create(p, TweenInfo.new(.15), { TextTransparency = 1 })):Play();
					end;
				end;
			end;
			task.wait(.18);
			a:Destroy();
		end;
		p.CanvasPosition = Vector2.new(0, 0);
		local u = v("Frame", {
				Name = "PageBody",
				Size = UDim2.new(1, -48, 0, 0),
				Position = UDim2.new(0, 24, 0, 20),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 24,
				Parent = p,
			});
		if T == "home" then
			ez(u);
		elseif T == "esp" then
			Iz(u);
		elseif T == "murder" then
			dz(u);
		elseif T == "sheriff" then
			wz(u);
		elseif T == "player" then
			qz(u);
		elseif T == "combat" then
			kz(u);
		elseif T == "autofarm" then
			nz(u);
		elseif T == "troll" then
			sz(u);
		elseif T == "animation" then
			Zz(u);
		elseif T == "teleport" then
			yz(u);
		elseif T == "settings" then
			Cz(u);
		end;
	end;
local function uL(T, p, a, u)
	local O = v("TextButton", {
			Size = UDim2.new(1, 0, 0, 38),
			BackgroundColor3 = x.Surface,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			LayoutOrder = u,
			ZIndex = 20,
			Parent = T,
		});
	t(O, 8);
	local Y = v("Frame", {
			Size = UDim2.new(0, 3, 0, 0),
			Position = UDim2.new(0, 0, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = x.Accent,
			BorderSizePixel = 0,
			ZIndex = 22,
			Parent = O,
		});
	t(Y, 2);
	local L = v("TextLabel", {
			Size = UDim2.new(1, -20, 1, 0),
			Position = UDim2.new(0, 18, 0, 0),
			BackgroundTransparency = 1,
			Text = p,
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 21,
			Parent = O,
		});
	local b = { active = false };
	local function R(T)
		b.active = T;
		if T then
			(l:Create(O, TweenInfo.new(.2), { BackgroundTransparency = .7 })):Play();
			(l:Create(Y, TweenInfo.new(.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 3, 0, 22) })):Play();
			(l:Create(L, TweenInfo.new(.2), { TextColor3 = x.Accent, TextSize = 14 })):Play();
		else
			(l:Create(O, TweenInfo.new(.2), { BackgroundTransparency = 1 })):Play();
			(l:Create(Y, TweenInfo.new(.2), { Size = UDim2.new(0, 3, 0, 0) })):Play();
			(l:Create(L, TweenInfo.new(.2), { TextColor3 = x.TextSecondary, TextSize = 13 })):Play();
		end;
	end;
	O.MouseEnter:Connect(function()
		if not b.active then
			(l:Create(O, TweenInfo.new(.15), { BackgroundTransparency = .85 })):Play();
			(l:Create(L, TweenInfo.new(.15), { TextColor3 = x.TextPrimary })):Play();
		end;
	end);
	O.MouseLeave:Connect(function()
		if not b.active then
			(l:Create(O, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
			(l:Create(L, TweenInfo.new(.15), { TextColor3 = x.TextSecondary })):Play();
		end;
	end);
	o.NavItems[a] = { btn = O, setActive = R, state = b };
	return O, R;
end;
local function OL(T, l, p)
	local a = v("Frame", {
			Size = UDim2.new(1, -4, 0, 22),
			BackgroundTransparency = 1,
			LayoutOrder = p,
			ZIndex = 19,
			Parent = T,
		});
	v("TextLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 8, 0, 0),
		BackgroundTransparency = 1,
		Text = string.upper(l),
		TextColor3 = x.TextMuted,
		Font = Enum.Font.GothamBold,
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 19,
		Parent = a,
	});
end;
local function YL()
	local T = v("ScreenGui", {
			Name = "MenuV71_GUI",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			DisplayOrder = 999,
			Parent = Y,
		});
	o.Gui = T;
	local p = Az("LoadingContainer", UDim2.new(0, 460, 0, 240), T);
	o.LoadingFrame = p;
	p.BackgroundTransparency = 1;
	(l:Create(p, TweenInfo.new(.5), { BackgroundTransparency = 0 })):Play();
	local a = v("Frame", {
			Size = UDim2.new(0, 60, 0, 60),
			Position = UDim2.new(.5, 0, 0, 30),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundTransparency = 1,
			ZIndex = 8,
			Parent = p,
		});
	for T = 1, 14, 1 do
		local l = ((T - 1)) * (((math.pi * 2) / 14));
		local p = v("Frame", {
				Size = UDim2.new(0, 5, 0, 5),
				Position = UDim2.new(.5, math.cos(l) * 22, .5, math.sin(l) * 22),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = x.Accent,
				BackgroundTransparency = 1 - ((T / 14)) * .75,
				BorderSizePixel = 0,
				ZIndex = 9,
				Parent = a,
			});
		t(p, 2);
		U(p, "BackgroundColor3", "Accent");
	end;
	task.spawn(function()
		while a.Parent do
			a.Rotation = ((a.Rotation + 5)) % 360;
			task.wait(.02);
		end;
	end);
	v("TextLabel", {
		Size = UDim2.new(1, 0, 0, 32),
		Position = UDim2.new(0, 0, 0, 98),
		BackgroundTransparency = 1,
		Text = "Chargement",
		TextColor3 = x.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 24,
		ZIndex = 8,
		Parent = p,
	});
	local u = v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 134),
			BackgroundTransparency = 1,
			Text = "Initialisation...",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 8,
			Parent = p,
		});
	local O = v("Frame", {
			Size = UDim2.new(.7, 0, 0, 8),
			Position = UDim2.new(.5, 0, 0, 172),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = x.SurfaceHi,
			BackgroundTransparency = .4,
			BorderSizePixel = 0,
			ZIndex = 8,
			Parent = p,
		});
	t(O, 4);
	local L = v("Frame", {
			Size = UDim2.new(0, 0, 1, 0),
			BackgroundColor3 = x.Accent,
			BorderSizePixel = 0,
			ZIndex = 9,
			Parent = O,
			ClipsDescendants = true,
		});
	t(L, 4);
	U(L, "BackgroundColor3", "Accent");
	local b = v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 192),
			BackgroundTransparency = 1,
			Text = "0 %",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 8,
			Parent = p,
		});
	local R = tick();
	task.spawn(function()
		while tick() - R < F.LoadingDuration do
			local T = math.clamp(((tick() - R)) / F.LoadingDuration, 0, 1);
			L.Size = UDim2.new(T, 0, 1, 0);
			b.Text = math.floor(T * 100) .. " %";
			if T < .3 then
				u.Text = "Initialisation...";
			elseif T < .6 then
				u.Text = "Chargement...";
			elseif T < .9 then
				u.Text = "Pr\195\169paration...";
			else
				u.Text = "Finalisation...";
			end;
			task.wait(.03);
		end;
		L.Size = UDim2.new(1, 0, 1, 0);
		b.Text = "100 %";
	end);
	return p;
end;
local function LL(T)
	local l = o.Gui;
	local p = Az("CodeContainer", UDim2.new(0, 500, 0, 380), l);
	o.CodeFrame = p;
	p.BackgroundTransparency = 1;
	local a = v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 36),
			BackgroundTransparency = 1,
			Text = "ACC\195\136S S\195\137CURIS\195\137",
			TextColor3 = x.Accent,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 12,
			Parent = p,
		});
	U(a, "TextColor3", "Accent");
	v("TextLabel", {
		Size = UDim2.new(1, 0, 0, 38),
		Position = UDim2.new(0, 0, 0, 60),
		BackgroundTransparency = 1,
		Text = "V\195\169rification requise",
		TextColor3 = x.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 26,
		ZIndex = 12,
		Parent = p,
	});
	v("TextLabel", {
		Size = UDim2.new(1, -60, 0, 34),
		Position = UDim2.new(0, 30, 0, 104),
		BackgroundTransparency = 1,
		Text = "Entre le code d\'acc\195\168s",
		TextColor3 = x.TextSecondary,
		Font = Enum.Font.Gotham,
		TextSize = 13,
		TextWrapped = true,
		ZIndex = 12,
		Parent = p,
	});
	local u = v("TextBox", {
			Size = UDim2.new(.82, 0, 0, 54),
			Position = UDim2.new(.5, 0, 0, 154),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = x.Surface,
			BackgroundTransparency = .3,
			BorderSizePixel = 0,
			Text = "",
			PlaceholderText = "Code d\'acc\195\168s...",
			PlaceholderColor3 = x.TextMuted,
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamMedium,
			TextSize = 16,
			TextXAlignment = Enum.TextXAlignment.Center,
			ClearTextOnFocus = false,
			ZIndex = 13,
			Parent = p,
		});
	t(u, 12);
	local O = f(u, x.Border, 1.5, .3);
	u.Focused:Connect(function()
		O.Color = x.Accent;
		O.Transparency = .2;
	end);
	u.FocusLost:Connect(function()
		O.Color = x.Border;
		O.Transparency = .3;
	end);
	local Y = v("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 216),
			BackgroundTransparency = 1,
			Text = "",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 12,
			Parent = p,
		});
	local L = v("TextButton", {
			Size = UDim2.new(.82, 0, 0, 48),
			Position = UDim2.new(.5, 0, 0, 248),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = x.Accent,
			BorderSizePixel = 0,
			Text = "VALIDER",
			TextColor3 = x.TextOnAccent,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			AutoButtonColor = false,
			ZIndex = 13,
			Parent = p,
		});
	t(L, 12);
	U(L, "BackgroundColor3", "Accent");
	U(L, "TextColor3", "TextOnAccent");
	local R, V, D = 0, 5, false;
	local function i()
		if D then
			return;
		end;
		if u.Text == b then
			D = true;
			o.Authenticated = true;
			Y.Text = "Acc\195\168s autoris\195\169";
			Y.TextColor3 = x.Success;
			O.Color = x.Success;
			task.wait(.4);
			C(p, .35, function()
				o.CodeFrame = nil;
				if T then
					T();
				end;
			end);
		else
			R = R + 1;
			Y.Text = string.format("Code incorrect \226\128\148 %d/%d", R, V);
			Y.TextColor3 = x.Error;
			O.Color = x.Error;
			if R >= V then
				D = true;
				Y.Text = "Acc\195\168s bloqu\195\169";
				task.wait(1.5);
				if l then
					l:Destroy();
				end;
				return;
			end;
			u.Text = "";
			pcall(function()
				u:CaptureFocus();
			end);
		end;
	end;
	L.MouseButton1Click:Connect(i);
	u.FocusLost:Connect(function(T)
		if T then
			i();
		end;
	end);
	task.spawn(function()
		task.wait(.6);
		pcall(function()
			u:CaptureFocus();
		end);
	end);
	I(p, .5);
	return p;
end;
Xz = function()
		local p = o.Gui;
		if not p then
			return;
		end;
		if o.Shell and o.Shell.Parent then
			return;
		end;
		o.NavItems = {};
		o.CurrentPage = nil;
		local a = Az("Shell", UDim2.new(0, 820, 0, 540), p);
		o.Shell = a;
		o.MenuOpen = true;
		a.BackgroundTransparency = 1;
		e(a, .55);
		local u = v("TextButton", {
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
				Parent = a,
			});
		t(u, 8);
		f(u, x.Border, 1, .4);
		u.MouseEnter:Connect(function()
			(l:Create(u, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(200, 60, 60), BackgroundTransparency = 0 })):Play();
			(l:Create(u, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
		end);
		u.MouseLeave:Connect(function()
			(l:Create(u, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(36, 38, 48), BackgroundTransparency = .15 })):Play();
			(l:Create(u, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(220, 225, 235) })):Play();
		end);
		u.MouseButton1Click:Connect(Ez);
		local Y = v("Frame", {
				Name = "Sidebar",
				Size = UDim2.new(0, 240, 1, 0),
				BackgroundColor3 = x.SurfaceSide,
				BackgroundTransparency = .35,
				BorderSizePixel = 0,
				ZIndex = 8,
				Parent = a,
			});
		t(Y, 20);
		o.Sidebar = Y;
		local L = v("Frame", {
				Size = UDim2.new(1, 0, 0, 90),
				BackgroundColor3 = x.BgTop,
				BackgroundTransparency = .65,
				BorderSizePixel = 0,
				ZIndex = 15,
				Parent = Y,
			});
		t(L, 20);
		v("Frame", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 1, -20),
			BackgroundColor3 = x.BgTop,
			BackgroundTransparency = .65,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = L,
		});
		local b = v("Frame", {
				Size = UDim2.new(0, 52, 0, 52),
				Position = UDim2.new(0, 18, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 16,
				Parent = L,
			});
		t(b, 26);
		local R = v("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 17,
				Parent = b,
			});
		t(R, 24);
		local V = v("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 18,
				Parent = R,
			});
		t(V, 24);
		task.spawn(function()
			local l, p = pcall(function()
					return T:GetUserThumbnailAsync(O.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if l and p then
				V.Image = p;
			end;
		end);
		v("TextLabel", {
			Size = UDim2.new(1, -90, 0, 22),
			Position = UDim2.new(0, 80, 0, 24),
			BackgroundTransparency = 1,
			Text = O.DisplayName,
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 15,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 16,
			Parent = L,
		});
		v("TextLabel", {
			Size = UDim2.new(1, -90, 0, 16),
			Position = UDim2.new(0, 80, 0, 46),
			BackgroundTransparency = 1,
			Text = "Premium",
			TextColor3 = x.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 16,
			Parent = L,
		});
		v("Frame", {
			Size = UDim2.new(1, -32, 0, 1),
			Position = UDim2.new(0, 16, 0, 90),
			BackgroundColor3 = x.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = Y,
		});
		local D = v("ScrollingFrame", {
				Size = UDim2.new(1, -16, 1, -110),
				Position = UDim2.new(0, 8, 0, 100),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 3,
				ScrollBarImageColor3 = x.SurfaceHi,
				ScrollBarImageTransparency = .5,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ZIndex = 18,
				Parent = Y,
			});
		v("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = D });
		OL(D, "G\195\169n\195\169ral", 1);
		uL(D, "Accueil", "home", 2);
		uL(D, "ESP", "esp", 3);
		OL(D, "Personnage", 4);
		uL(D, "Player", "player", 5);
		uL(D, "Combat", "combat", 6);
		uL(D, "Troll", "troll", 7);
		uL(D, "T\195\169l\195\169port\195\169", "teleport", 8);
		uL(D, "Animation", "animation", 9);
		uL(D, "Auto Farm", "autofarm", 10);
		OL(D, "MM2", 11);
		uL(D, "Murder", "murder", 12);
		uL(D, "Sheriff", "sheriff", 13);
		OL(D, "Autre", 14);
		uL(D, "Param\195\168tres", "settings", 15);
		o.NavItems.home.btn.MouseButton1Click:Connect(function()
			gz("home");
		end);
		o.NavItems.esp.btn.MouseButton1Click:Connect(function()
			gz("esp");
		end);
		o.NavItems.murder.btn.MouseButton1Click:Connect(function()
			gz("murder");
		end);
		o.NavItems.sheriff.btn.MouseButton1Click:Connect(function()
			gz("sheriff");
		end);
		o.NavItems.player.btn.MouseButton1Click:Connect(function()
			gz("player");
		end);
		o.NavItems.combat.btn.MouseButton1Click:Connect(function()
			gz("combat");
		end);
		o.NavItems.autofarm.btn.MouseButton1Click:Connect(function()
			gz("autofarm");
		end);
		o.NavItems.teleport.btn.MouseButton1Click:Connect(function()
			gz("teleport");
		end);
		o.NavItems.troll.btn.MouseButton1Click:Connect(function()
			gz("troll");
		end);
		o.NavItems.animation.btn.MouseButton1Click:Connect(function()
			gz("animation");
		end);
		o.NavItems.settings.btn.MouseButton1Click:Connect(function()
			gz("settings");
		end);
		local i = v("Frame", {
				Name = "Content",
				Size = UDim2.new(1, -240, 1, 0),
				Position = UDim2.new(0, 240, 0, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				ZIndex = 14,
				Parent = a,
			});
		o.Content = i;
		local U = v("ScrollingFrame", {
				Name = "Scroll",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 6,
				ScrollBarImageColor3 = x.SurfaceHi,
				ScrollBarImageTransparency = .3,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ClipsDescendants = true,
				ZIndex = 24,
				Parent = i,
			});
		o.Scroll = U;
		task.wait(.1);
		gz("home");
	end;
O.CharacterAdded:Connect(function(T)
	T:WaitForChild("Humanoid", 10);
	task.wait(.6);
	j = false;
	r = false;
	G.nowe = false;
	G.tpwalking = false;
	fz();
	if P.XRayEnabled then
		task.wait(.5);
		if T then
			Qz(T, O);
		end;
	end;
	if K.FlyEnabled then
		d();
	end;
	if K.SpinEnabled then
		n();
	end;
	if K.JerkEnabled then
		N();
	end;
	K.Sitting = false;
	local l = T:FindFirstChildOfClass("Humanoid");
	if l then
		l.WalkSpeed = K.WalkSpeed;
		l.UseJumpPower = true;
		l.JumpPower = K.JumpPower;
	end;
	workspace.Gravity = K.Gravity;
end);
a.InputBegan:Connect(function(T, l)
	if l then
		return;
	end;
	if T.KeyCode ~= Enum.KeyCode.M then
		return;
	end;
	if not o.Authenticated then
		return;
	end;
	if o.Shell and o.Shell.Parent then
		Ez();
	else
		if Xz then
			Xz();
		end;
	end;
end);
local function bL()
	E("Initialisation...");
	local T = Y:FindFirstChild("MenuV70_GUI") or Y:FindFirstChild("MenuV71_GUI");
	if T then
		T:Destroy();
	end;
	YL();
	task.wait(F.LoadingDuration + .4);
	Bz(o.LoadingFrame, function()
		o.LoadingFrame = nil;
	end);
	task.wait(.5);
	LL(function()
		o.Authenticated = true;
		fz();
		Xz();
	end);
end;
bL();
