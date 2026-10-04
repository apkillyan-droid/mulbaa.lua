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

local A = game:GetService("Players");
local f = game:GetService("TweenService");
local w = game:GetService("RunService");
local t = game:GetService("UserInputService");
local H = game:GetService("Lighting");
local a = A.LocalPlayer;
local l = a:WaitForChild("PlayerGui");
local R = workspace.CurrentCamera;
local K = "Fdvo2669";
local O = "rbxassetid://126785640171935";
local g = 2.6;
local k = {
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
local d = {
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
local j = {};
local function E(A, f, w)
	table.insert(j, { instance = A, property = f, themeKey = w });
	return A;
end;
local function r(A, f, w)
	table.insert(j, {
		isGradient = true,
		gradient = A,
		topKey = f,
		bottomKey = w,
	});
	return A;
end;
local function o()
	local A = {};
	for w, t in ipairs(j) do
		if t.isGradient then
			if t.gradient and t.gradient.Parent then
				t.gradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, k[t.topKey]), ColorSequenceKeypoint.new(1, k[t.bottomKey]) });
				table.insert(A, t);
			end;
		else
			if t.instance and t.instance.Parent then
				local w = k[t.themeKey];
				if w then
					(f:Create(t.instance, TweenInfo.new(.35), { [t.property] = w })):Play();
				end;
				table.insert(A, t);
			end;
		end;
	end;
	j = A;
	for A, f in pairs(State.NavItems) do
		f.setActive(f.state.active);
	end;
end;
local function v(A)
	k.Accent = A.Accent;
	k.AccentDim = A.AccentDim;
	k.AccentGlow = A.AccentGlow;
	k.AccentSoft = A.AccentSoft;
	k.TextOnAccent = A.TextOnAccent;
	o();
end;
local M = {
		LoadingDuration = 3.5,
		ParticleSpawnRate = .1,
		ParticleMinSize = 2,
		ParticleMaxSize = 4,
		ParticleFallSpeed = 120,
		ParticlesPerTick = 2,
	};
local G = {
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
local U = {
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
local Y = {
		Murderer = Color3.fromRGB(255, 60, 60),
		Sheriff = Color3.fromRGB(60, 120, 255),
		Innocent = Color3.fromRGB(60, 255, 120),
		Box = Color3.fromRGB(255, 60, 60),
		Tracer = Color3.fromRGB(255, 60, 60),
	};
local h = {
		BoxEnabled = true,
		BoxThickness = 2,
		TracerEnabled = false,
		DistanceEnabled = true,
	};
local L = {
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
local c = {
		bv = nil,
		bg = nil,
		conn = nil,
		lastVel = Vector3.zero,
		bindConn = nil,
		savedCollide = {},
	};
local x = { av = nil };
local m = { conn = nil };
local P = { running = false };
local V = {};
local p = {};
local function b(...)
	print("[MENU-V71]", ...);
end;
local function S(A, f)
	local w = Instance.new(A);
	for A, f in pairs(f or {}) do
		w[A] = f;
	end;
	return w;
end;
local function W(A, f)
	return S("UICorner", { CornerRadius = UDim.new(0, f or 8), Parent = A });
end;
local function z(A, f, w, t)
	return S("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, f), ColorSequenceKeypoint.new(1, w) }), Rotation = t or 90, Parent = A });
end;
local function q(A, f, w, t)
	return S("UIStroke", {
		Color = f or k.Border,
		Thickness = w or 1,
		Transparency = t or 0,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = A,
	});
end;
local function y(A, f, w, t)
	t = t or 8;
	local H = S("Frame", { Size = UDim2.new(0, t + 2, 0, t + 2), BackgroundTransparency = 1, Parent = A });
	local a, l = (f == "right") and 45 or -45, (f == "right") and -45 or 45;
	local R = S("Frame", {
			Size = UDim2.new(0, t, 0, 2),
			Position = UDim2.new(.5, -1, .5, -3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = w or k.TextMuted,
			BorderSizePixel = 0,
			Rotation = a,
			Parent = H,
		});
	W(R, 1);
	local K = S("Frame", {
			Size = UDim2.new(0, t, 0, 2),
			Position = UDim2.new(.5, -1, .5, 3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = w or k.TextMuted,
			BorderSizePixel = 0,
			Rotation = l,
			Parent = H,
		});
	W(K, 1);
	return H, R, K;
end;
local function u(A, w)
	w = w or .45;
	local t = A.Size;
	A.Size = UDim2.new(0, t.X.Offset * .85, 0, t.Y.Offset * .85);
	A.BackgroundTransparency = 1;
	(f:Create(A, TweenInfo.new(w, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = t, BackgroundTransparency = 0 })):Play();
end;
local function X(A, w, t)
	w = w or .32;
	local H = A.Size;
	(f:Create(A, TweenInfo.new(w, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Size = UDim2.new(0, H.X.Offset * .85, 0, H.Y.Offset * .85), BackgroundTransparency = 1 })):Play();
	for A, t in ipairs(A:GetDescendants()) do
		if t:IsA("TextLabel") or t:IsA("TextBox") then
			(f:Create(t, TweenInfo.new(w * .85), { TextTransparency = 1 })):Play();
		elseif t:IsA("TextButton") then
			(f:Create(t, TweenInfo.new(w * .85), { BackgroundTransparency = 1 })):Play();
		elseif t:IsA("Frame") and t.Name ~= "ParticleZone" then
			if t.BackgroundTransparency < 1 then
				(f:Create(t, TweenInfo.new(w * .85), { BackgroundTransparency = 1 })):Play();
			end;
		elseif t:IsA("ImageLabel") then
			(f:Create(t, TweenInfo.new(w * .85), { ImageTransparency = 1 })):Play();
		elseif t:IsA("UIStroke") then
			(f:Create(t, TweenInfo.new(w * .85), { Transparency = 1 })):Play();
		end;
	end;
	local a = A.Parent and A.Parent:FindFirstChild(A.Name .. "_ShadowHolder");
	if a then
		for A, t in ipairs(a:GetChildren()) do
			if t:IsA("Frame") then
				(f:Create(t, TweenInfo.new(w * .85), { BackgroundTransparency = 1 })):Play();
			end;
		end;
	end;
	task.delay(w + .05, function()
		if a and a.Parent then
			a:Destroy();
		end;
		if A and A.Parent then
			A:Destroy();
		end;
		if t then
			t();
		end;
	end);
end;
local function C(A, w)
	w = w or .5;
	local t = A.Size;
	A.Size = UDim2.new(0, t.X.Offset * .85, 0, t.Y.Offset * .85);
	A.BackgroundTransparency = 1;
	for A, t in ipairs(A:GetDescendants()) do
		if t:IsA("TextLabel") or t:IsA("TextBox") then
			t.TextTransparency = 1;
			(f:Create(t, TweenInfo.new(w), { TextTransparency = 0 })):Play();
		elseif t:IsA("TextButton") then
			t.BackgroundTransparency = 1;
		elseif t:IsA("ImageLabel") then
			t.ImageTransparency = 1;
			(f:Create(t, TweenInfo.new(w), { ImageTransparency = 0 })):Play();
		end;
	end;
	(f:Create(A, TweenInfo.new(w, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = t, BackgroundTransparency = 0 })):Play();
end;
local function T()
	L.FlyEnabled = false;
	if c.bv then
		c.bv:Destroy();
		c.bv = nil;
	end;
	if c.bg then
		c.bg:Destroy();
		c.bg = nil;
	end;
	if c.conn then
		c.conn:Disconnect();
		c.conn = nil;
	end;
	c.lastVel = Vector3.zero;
	local A = a.Character;
	if A then
		for A, f in pairs(c.savedCollide) do
			if A and A.Parent then
				pcall(function()
					A.CanCollide = f;
				end);
			end;
		end;
	end;
	c.savedCollide = {};
	local f = A and A:FindFirstChildOfClass("Humanoid");
	if f then
		f.PlatformStand = false;
	end;
end;
local function Q()
	local A = a.Character;
	if not A then
		return;
	end;
	local f = A:FindFirstChild("HumanoidRootPart");
	if not f then
		return;
	end;
	L.FlyEnabled = true;
	c.savedCollide = {};
	for A, f in ipairs(A:GetDescendants()) do
		if f:IsA("BasePart") then
			c.savedCollide[f] = f.CanCollide;
			f.CanCollide = false;
		end;
	end;
	local H = Instance.new("BodyVelocity");
	H.Velocity = Vector3.zero;
	H.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000);
	H.P = 1250;
	H.Parent = f;
	c.bv = H;
	local l = Instance.new("BodyGyro");
	l.D = 50;
	l.P = 3000;
	l.MaxTorque = Vector3.new(0, 0, 0);
	l.CFrame = f.CFrame;
	l.Parent = f;
	c.bg = l;
	local R = A:FindFirstChildOfClass("Humanoid");
	if R then
		R.PlatformStand = true;
		R:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false);
		R:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false);
	end;
	local K = t;
	c.lastVel = Vector3.zero;
	c.conn = w.RenderStepped:Connect(function(A)
			if not L.FlyEnabled then
				return;
			end;
			local f = a.Character;
			local w = f and f:FindFirstChild("HumanoidRootPart");
			if not w then
				return;
			end;
			local t = workspace.CurrentCamera;
			if not t then
				return;
			end;
			local H = K:IsKeyDown(Enum.KeyCode.W) or K:IsKeyDown(Enum.KeyCode.A) or K:IsKeyDown(Enum.KeyCode.S) or K:IsKeyDown(Enum.KeyCode.D) or K:IsKeyDown(Enum.KeyCode.Space) or K:IsKeyDown(Enum.KeyCode.LeftControl);
			if c.bg then
				if H then
					c.bg.MaxTorque = Vector3.new(0, 9000000000, 0);
					local A = t.CFrame.LookVector;
					local f = math.atan2(-A.X, -A.Z);
					c.bg.CFrame = CFrame.new(w.Position) * CFrame.Angles(0, f, 0);
				else
					c.bg.MaxTorque = Vector3.new(0, 0, 0);
				end;
			end;
			local l = Vector3.zero;
			if K:IsKeyDown(Enum.KeyCode.W) then
				l = l + t.CFrame.LookVector;
			end;
			if K:IsKeyDown(Enum.KeyCode.S) then
				l = l - t.CFrame.LookVector;
			end;
			if K:IsKeyDown(Enum.KeyCode.A) then
				l = l - t.CFrame.RightVector;
			end;
			if K:IsKeyDown(Enum.KeyCode.D) then
				l = l + t.CFrame.RightVector;
			end;
			if K:IsKeyDown(Enum.KeyCode.Space) then
				l = l + Vector3.new(0, 1, 0);
			end;
			if K:IsKeyDown(Enum.KeyCode.LeftControl) then
				l = l - Vector3.new(0, 1, 0);
			end;
			if l.Magnitude > 0 then
				l = l.Unit;
			end;
			local R = l * L.FlySpeed;
			local O = math.clamp(A * 12, 0, 1);
			c.lastVel = c.lastVel:Lerp(R, O);
			if c.bv then
				c.bv.Velocity = c.lastVel;
			end;
		end);
end;
local function J()
	if L.FlyEnabled then
		T();
	else
		Q();
	end;
end;
local function I()
	if c.bindConn then
		c.bindConn:Disconnect();
		c.bindConn = nil;
	end;
	if not L.FlyBind then
		return;
	end;
	c.bindConn = t.InputBegan:Connect(function(A, f)
			if A.UserInputType ~= Enum.UserInputType.Keyboard then
				return;
			end;
			if A.KeyCode == L.FlyBind then
				J();
			end;
		end);
end;
local function F(A)
	L.FlyBind = A;
	I();
end;
local function N()
	L.SpinEnabled = false;
	if x.av then
		x.av:Destroy();
		x.av = nil;
	end;
end;
local function B()
	local A = a.Character;
	if not A then
		return;
	end;
	local f = A:FindFirstChild("HumanoidRootPart");
	if not f then
		return;
	end;
	L.SpinEnabled = true;
	local w = Instance.new("BodyAngularVelocity");
	w.AngularVelocity = Vector3.new(0, L.SpinSpeed, 0);
	w.MaxTorque = Vector3.new(0, 9000000000, 0);
	w.P = 1250;
	w.Parent = f;
	x.av = w;
end;
local function e()
	if L.SpinEnabled then
		N();
	else
		B();
	end;
end;
local function i(A)
	L.SpinSpeed = A;
	if x.av then
		x.av.AngularVelocity = Vector3.new(0, A, 0);
	end;
end;
local function n()
	L.JerkEnabled = false;
	if m.conn then
		m.conn:Disconnect();
		m.conn = nil;
	end;
	local A = a.Character;
	local f = A and A:FindFirstChild("HumanoidRootPart");
	if f then
		pcall(function()
			f.AssemblyLinearVelocity = Vector3.zero;
			f.Velocity = Vector3.zero;
		end);
	end;
end;
local function Z()
	local A = a.Character;
	if not A then
		return;
	end;
	local f = A:FindFirstChild("HumanoidRootPart");
	if not f then
		return;
	end;
	L.JerkEnabled = true;
	m.conn = w.Heartbeat:Connect(function()
			if not L.JerkEnabled then
				return;
			end;
			local A = a.Character;
			local f = A and A:FindFirstChild("HumanoidRootPart");
			if not f then
				return;
			end;
			local w = L.JerkIntensity;
			local t = Vector3.new((((math.random() - .5)) * w) * 8, (((math.random() - .5)) * w) * 8, (((math.random() - .5)) * w) * 8);
			pcall(function()
				f.AssemblyLinearVelocity = f.AssemblyLinearVelocity + t;
				f.Velocity = f.Velocity + t;
			end);
		end);
end;
local function s()
	if L.JerkEnabled then
		n();
	else
		Z();
	end;
end;
local function D(A)
	L.JerkIntensity = A;
end;
local function AA()
	L.Sitting = not L.Sitting;
	local A = a.Character;
	local f = A and A:FindFirstChildOfClass("Humanoid");
	if not f then
		return;
	end;
	f.Sit = L.Sitting;
end;
task.spawn(function()
	while true do
		task.wait(.15);
		if L.NoclipEnabled and not L.FlyEnabled then
			local A = a.Character;
			if A then
				for A, f in ipairs(A:GetDescendants()) do
					if f:IsA("BasePart") and f.CanCollide then
						f.CanCollide = false;
					end;
				end;
			end;
		end;
	end;
end);
local function fA()
	L.NoclipEnabled = not L.NoclipEnabled;
	local A = a.Character;
	if A and not L.NoclipEnabled then
		for A, f in ipairs(A:GetDescendants()) do
			if f:IsA("BasePart") then
				f.CanCollide = true;
			end;
		end;
	end;
end;
local function wA(A)
	L.WalkSpeed = A;
	local f = a.Character;
	local w = f and f:FindFirstChildOfClass("Humanoid");
	if w then
		w.WalkSpeed = A;
	end;
end;
local function tA(A)
	L.JumpPower = A;
	local f = a.Character;
	local w = f and f:FindFirstChildOfClass("Humanoid");
	if w then
		w.UseJumpPower = true;
		w.JumpPower = A;
	end;
end;
local function HA(A)
	L.Gravity = A;
	workspace.Gravity = A;
end;
local aA = nil;
local function lA()
	L.InfiniteJump = not L.InfiniteJump;
	if L.InfiniteJump then
		if aA then
			aA:Disconnect();
		end;
		aA = t.JumpRequest:Connect(function()
				local A = a.Character;
				local f = A and A:FindFirstChildOfClass("Humanoid");
				if f then
					f:ChangeState(Enum.HumanoidStateType.Jumping);
				end;
			end);
	else
		if aA then
			aA:Disconnect();
			aA = nil;
		end;
	end;
end;
local RA = nil;
local function KA()
	L.AntiAFK = not L.AntiAFK;
	if L.AntiAFK then
		if RA then
			RA:Disconnect();
		end;
		RA = a.Idled:Connect(function()
				local A = game:GetService("VirtualUser");
				A:CaptureController();
				A:ClickButton2(Vector2.new());
			end);
	else
		if RA then
			RA:Disconnect();
			RA = nil;
		end;
	end;
end;
local OA = {};
local function gA()
	L.Fullbright = not L.Fullbright;
	if L.Fullbright then
		OA.Ambient = H.Ambient;
		OA.OutdoorAmbient = H.OutdoorAmbient;
		OA.Brightness = H.Brightness;
		OA.ClockTime = H.ClockTime;
		H.Ambient = Color3.fromRGB(255, 255, 255);
		H.OutdoorAmbient = Color3.fromRGB(255, 255, 255);
		H.Brightness = 3;
		H.ClockTime = 14;
		local A = H:FindFirstChild("MulbaFullbright");
		if not A then
			A = Instance.new("ColorCorrectionEffect");
			A.Name = "MulbaFullbright";
			A.Parent = H;
		end;
	else
		if OA.Ambient then
			H.Ambient = OA.Ambient;
		end;
		if OA.OutdoorAmbient then
			H.OutdoorAmbient = OA.OutdoorAmbient;
		end;
		if OA.Brightness then
			H.Brightness = OA.Brightness;
		end;
		if OA.ClockTime then
			H.ClockTime = OA.ClockTime;
		end;
		local A = H:FindFirstChild("MulbaFullbright");
		if A then
			A:Destroy();
		end;
	end;
end;
local function kA()
	L.AntiFling = not L.AntiFling;
end;
task.spawn(function()
	while true do
		task.wait(.1);
		if L.AntiFling then
			local A = a.Character;
			local f = A and A:FindFirstChild("HumanoidRootPart");
			if f then
				for A, f in ipairs(f:GetChildren()) do
					if f:IsA("BodyVelocity") then
						if f.Velocity.Magnitude > 500 then
							f.Velocity = f.Velocity.Unit * 500;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local function dA()
	local A = a.Character;
	local f = A and A:FindFirstChildOfClass("Humanoid");
	if f then
		f.Health = 0;
	end;
end;
local function jA()
	local A = a.Character;
	local f = A and A:FindFirstChild("HumanoidRootPart");
	if not f then
		return;
	end;
	for A, w in ipairs(workspace:GetDescendants()) do
		if w:IsA("SpawnLocation") then
			pcall(function()
				f.CFrame = w.CFrame + Vector3.new(0, 3, 0);
			end);
			if sendNotification then
				sendNotification("TP Spawn", "T\195\169l\195\169port\195\169 au spawn", false);
			end;
			return;
		end;
	end;
	if sendNotification then
		sendNotification("TP Spawn", "Aucun spawn trouv\195\169", true);
	end;
end;
local function EA()
	local f = a.Character;
	if not f then
		return;
	end;
	local w = f:FindFirstChild("HumanoidRootPart");
	if not w then
		return;
	end;
	local t = w.CFrame;
	local H = 6;
	local l = t.Position + (t.LookVector * H);
	local R = 0;
	for A, f in ipairs(A:GetPlayers()) do
		if f ~= a and f.Character then
			local A = f.Character:FindFirstChild("HumanoidRootPart");
			if A then
				R = R + 1;
				local f = ((R - 1)) * (((math.pi * 2) / 8));
				local w = 4;
				local t = Vector3.new(math.cos(f) * w, 0, math.sin(f) * w);
				pcall(function()
					A.CFrame = CFrame.new(l + t);
					A.Velocity = Vector3.new(0, 0, 0);
				end);
			end;
		end;
	end;
end;
local function rA()
	if P.running then
		P.running = false;
		sendNotification("Kill All", "D\195\169sactiv\195\169", false);
		return;
	end;
	P.running = true;
	sendNotification("Kill All", "Activ\195\169 (5 sec)", false);
	task.spawn(function()
		local f = tick();
		while P.running and (tick() - f) < 5 do
			local f = a.Character;
			if not f then
				break;
			end;
			local w = f:FindFirstChild("HumanoidRootPart");
			if not w then
				break;
			end;
			EA();
			local t = f:FindFirstChild("Knife");
			if not t then
				local A = a:FindFirstChild("Backpack");
				if A then
					local w = A:FindFirstChild("Knife");
					if w and f.Humanoid then
						pcall(function()
							f.Humanoid:EquipTool(w);
						end);
						t = w;
					end;
				end;
			end;
			if t then
				for A, f in ipairs(A:GetPlayers()) do
					if f ~= a and f.Character then
						local A = f.Character:FindFirstChild("HumanoidRootPart");
						local H = f.Character:FindFirstChildOfClass("Humanoid");
						if A and (H and H.Health > 0) then
							local f = ((A.Position - w.Position)).Magnitude;
							if f <= 15 then
								pcall(function()
									w.CFrame = CFrame.new(w.Position, A.Position);
								end);
								pcall(function()
									t:Activate();
								end);
							end;
						end;
					end;
				end;
			end;
			task.wait(.05);
		end;
		P.running = false;
	end);
end;
local function oA(A)
	if not A then
		return "Innocent";
	end;
	if A:FindFirstChild("Role") then
		local f, w = pcall(function()
				return tostring(A.Role.Value);
			end);
		if f and (w and w ~= "") then
			return w;
		end;
	end;
	local f = A.Character;
	local w = A:FindFirstChild("Backpack");
	if f then
		if f:FindFirstChild("Knife") then
			return "Murderer";
		end;
		if f:FindFirstChild("Gun") then
			return "Sheriff";
		end;
	end;
	if w then
		if w:FindFirstChild("Knife") then
			return "Murderer";
		end;
		if w:FindFirstChild("Gun") then
			return "Sheriff";
		end;
	end;
	return "Innocent";
end;
local function vA()
	for A, f in ipairs(A:GetPlayers()) do
		if f == a then
			continue;
		end;
		if oA(f) == "Murderer" then
			return f;
		end;
	end;
	return nil;
end;
local function MA(A)
	if A == "Murderer" then
		return Y.Murderer;
	end;
	if A == "Sheriff" then
		return Y.Sheriff;
	end;
	return Y.Innocent;
end;
local function GA(A)
	if A == "Murderer" then
		return U.EspShowMurder;
	end;
	if A == "Sheriff" then
		return U.EspShowSheriff;
	end;
	return U.EspShowInnocent;
end;
local function UA(A, f)
	if not A then
		return;
	end;
	if p[f] and p[f].Parent then
		return;
	end;
	local w = S("Highlight", {
			FillColor = Color3.fromRGB(255, 255, 255),
			FillTransparency = .85,
			OutlineColor = Color3.fromRGB(255, 255, 255),
			OutlineTransparency = 0,
			DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
			Adornee = A,
			Parent = A,
		});
	p[f] = w;
end;
local function YA(A)
	local f = p[A];
	if f and f.Parent then
		f:Destroy();
	end;
	p[A] = nil;
end;
local function hA()
	if U.XRayEnabled then
		for A, f in ipairs(A:GetPlayers()) do
			if f.Character then
				UA(f.Character, f);
			end;
		end;
	else
		for A in pairs(p) do
			YA(A);
		end;
	end;
end;
local function LA(A)
	if A == a then
		return;
	end;
	if V[A] then
		local f = pcall(function()
				V[A].Box.Visible = V[A].Box.Visible;
			end);
		if f then
			return;
		end;
		removeESP(A);
	end;
	local f = Drawing.new("Square");
	f.Thickness = h.BoxThickness;
	f.Filled = false;
	f.Visible = false;
	local w = Drawing.new("Text");
	w.Center = true;
	w.Outline = true;
	w.Size = 16;
	w.Visible = false;
	local t = Drawing.new("Text");
	t.Center = true;
	t.Outline = true;
	t.Size = 13;
	t.Visible = false;
	local H = Drawing.new("Line");
	H.Thickness = 1;
	H.Visible = false;
	V[A] = {
			Box = f,
			Text = w,
			DistanceText = t,
			Tracer = H,
		};
end;
local function cA(A)
	local f = V[A];
	if f then
		for A, f in pairs(f) do
			pcall(function()
				f:Remove();
			end);
		end;
		V[A] = nil;
	end;
end;
local function xA(A)
	local f, w = R:WorldToViewportPoint(A);
	return Vector2.new(f.X, f.Y), w;
end;
w.RenderStepped:Connect(function()
	if not U.EspEnabled then
		for A, f in pairs(V) do
			pcall(function()
				f.Box.Visible = false;
				f.Text.Visible = false;
				f.DistanceText.Visible = false;
				f.Tracer.Visible = false;
			end);
		end;
		return;
	end;
	local A = workspace.CurrentCamera;
	if A then
		R = A;
	end;
	local f = a.Character;
	local w = f and f:FindFirstChild("HumanoidRootPart");
	local t = w and w.Position;
	for A, f in pairs(V) do
		local w = pcall(function()
				return f.Box.Visible;
			end);
		if not w then
			V[A] = nil;
			continue;
		end;
		local H = A.Character;
		local a = H and H:FindFirstChild("HumanoidRootPart");
		local l = H and H:FindFirstChild("Head");
		local K = H and H:FindFirstChildOfClass("Humanoid");
		local O = function()
				pcall(function()
					f.Box.Visible = false;
					f.Text.Visible = false;
					f.DistanceText.Visible = false;
					f.Tracer.Visible = false;
				end);
			end;
		if not ((a and (l and (K and K.Health > 0)))) then
			O();
			continue;
		end;
		local g = oA(A);
		if not GA(g) then
			O();
			continue;
		end;
		local k, d = xA(l.Position + Vector3.new(0, .5, 0));
		local j, E = xA(a.Position - Vector3.new(0, 3, 0));
		if d or E then
			local w = math.abs(k.Y - j.Y);
			local H = w / 2;
			local l = MA(g);
			if h.BoxEnabled then
				pcall(function()
					f.Box.Size = Vector2.new(H, w);
					f.Box.Position = Vector2.new(k.X - H / 2, k.Y);
					f.Box.Color = Y.Box;
					f.Box.Thickness = h.BoxThickness;
					f.Box.Visible = true;
				end);
			else
				pcall(function()
					f.Box.Visible = false;
				end);
			end;
			pcall(function()
				f.Text.Text = A.DisplayName .. (" [" .. (g .. "]"));
				f.Text.Position = Vector2.new(k.X, k.Y - 18);
				f.Text.Color = l;
				f.Text.Visible = true;
			end);
			if h.DistanceEnabled and t then
				pcall(function()
					local A = ((a.Position - t)).Magnitude;
					f.DistanceText.Text = string.format("%.1f m", A * .28);
					f.DistanceText.Position = Vector2.new(k.X, j.Y + 2);
					f.DistanceText.Color = l;
					f.DistanceText.Visible = true;
				end);
			else
				pcall(function()
					f.DistanceText.Visible = false;
				end);
			end;
			if h.TracerEnabled then
				pcall(function()
					f.Tracer.From = Vector2.new(R.ViewportSize.X / 2, R.ViewportSize.Y);
					f.Tracer.To = Vector2.new(k.X, k.Y);
					f.Tracer.Color = Y.Tracer;
					f.Tracer.Thickness = 1;
					f.Tracer.Visible = true;
				end);
			else
				pcall(function()
					f.Tracer.Visible = false;
				end);
			end;
		else
			O();
		end;
	end;
end);
A.PlayerAdded:Connect(function(A)
	task.wait(1);
	LA(A);
	if U.XRayEnabled and A.Character then
		UA(A.Character, A);
	end;
end);
A.PlayerRemoving:Connect(function(A)
	cA(A);
	YA(A);
end);
for A, f in ipairs(A:GetPlayers()) do
	LA(f);
end;
local function mA(A)
	local w = A.AbsoluteSize;
	if w.X < 5 or w.Y < 5 then
		return;
	end;
	local t = math.random(M.ParticleMinSize, M.ParticleMaxSize);
	local H = math.random(0, math.max(1, w.X - t));
	local a = ((w.Y + 40)) / M.ParticleFallSpeed;
	local l = S("Frame", {
			Size = UDim2.new(0, t, 0, t),
			Position = UDim2.new(0, H, 0, -t),
			BackgroundColor3 = k.Particle,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 5,
			Parent = A,
		});
	W(l, math.floor(t / 2));
	local R = f:Create(l, TweenInfo.new(a, Enum.EasingStyle.Linear), { Position = UDim2.new(0, H + math.random(-40, 40), 0, w.Y + 20), BackgroundTransparency = .85 + math.random() * .1 });
	R:Play();
	R.Completed:Connect(function()
		l:Destroy();
	end);
end;
local function PA(A)
	task.spawn(function()
		while A and A.Parent do
			for f = 1, M.ParticlesPerTick, 1 do
				mA(A);
			end;
			task.wait(M.ParticleSpawnRate);
		end;
	end);
end;
local function VA(A, f, t)
	local H = S("Frame", {
			Name = A .. "_ShadowHolder",
			Size = f,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ZIndex = 1,
			Parent = t,
		});
	for A = 1, 6, 1 do
		local f = S("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				BackgroundTransparency = .88 + (A * .008),
				BorderSizePixel = 0,
				ZIndex = 1,
				Parent = H,
			});
		W(f, 20 + A * 5);
	end;
	local a = S("Frame", {
			Name = A,
			Size = f,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundColor3 = k.BgTop,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Active = true,
			Draggable = true,
			ZIndex = 2,
			Parent = t,
		});
	W(a, 20);
	q(a, k.Border, 1, .4);
	z(a, k.BgTop, k.BgBottom, 90);
	w.Heartbeat:Connect(function()
		if H.Parent and a.Parent then
			H.Position = a.Position + UDim2.new(0, 0, 0, 12);
			H.Size = a.Size;
			H.Visible = a.Visible;
		end;
	end);
	local l = S("Frame", {
			Name = "ParticleZone",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			ZIndex = 5,
			Parent = a,
		});
	W(l, 20);
	PA(l);
	return a;
end;
local function pA(A, f)
	X(A, .35, f);
end;
local function bA()
	if not ((G.Shell and G.Shell.Parent)) then
		return;
	end;
	X(G.Shell, .35, function()
		G.Shell = nil;
		G.Sidebar = nil;
		G.Content = nil;
		G.Scroll = nil;
		G.NavItems = {};
		G.CurrentPage = nil;
		G.MenuOpen = false;
	end);
end;
local function SA(A, w, t)
	local H = a:FindFirstChild("PlayerGui");
	if not H then
		return;
	end;
	local l = H:FindFirstChild("MulbaNotif");
	if l then
		l:Destroy();
	end;
	local R = S("ScreenGui", {
			Name = "MulbaNotif",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 1000,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Parent = H,
		});
	local K = S("Frame", {
			Size = UDim2.new(0, 320, 0, 80),
			Position = UDim2.new(1, 20, 0, 100),
			BackgroundColor3 = k.BgTop,
			BackgroundTransparency = .05,
			BorderSizePixel = 0,
			ZIndex = 1000,
			Parent = R,
		});
	W(K, 14);
	z(K, k.BgTop, k.BgBottom, 90);
	S("UIStroke", {
		Color = t and Color3.fromRGB(255, 100, 100) or k.Accent,
		Thickness = 2,
		Transparency = .2,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = K,
	});
	S("TextLabel", {
		Size = UDim2.new(1, -60, 0, 20),
		Position = UDim2.new(0, 20, 0, 14),
		BackgroundTransparency = 1,
		Text = A,
		TextColor3 = t and Color3.fromRGB(255, 120, 120) or k.Accent,
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 1001,
		Parent = K,
	});
	S("TextLabel", {
		Size = UDim2.new(1, -60, 0, 30),
		Position = UDim2.new(0, 20, 0, 36),
		BackgroundTransparency = 1,
		Text = w,
		TextColor3 = k.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		ZIndex = 1001,
		Parent = K,
	});
	(f:Create(K, TweenInfo.new(.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.new(1, -340, 0, 100) })):Play();
	task.delay(5, function()
		if not K.Parent then
			return;
		end;
		(f:Create(K, TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(1, 20, 0, 100), BackgroundTransparency = 1 })):Play();
		for A, w in ipairs(K:GetDescendants()) do
			if w:IsA("TextLabel") then
				(f:Create(w, TweenInfo.new(.4), { TextTransparency = 1 })):Play();
			end;
		end;
		task.wait(.5);
		R:Destroy();
	end);
end;
task.spawn(function()
	while true do
		task.wait(U.AutoShootDelay);
		if not U.AutoShootEnabled then
			continue;
		end;
		local A = oA(a);
		if A ~= "Sheriff" then
			continue;
		end;
		local f = a.Character;
		if not f then
			continue;
		end;
		local w = f:FindFirstChild("Gun");
		if not w then
			local A = a:FindFirstChild("Backpack");
			if A then
				local w = A:FindFirstChild("Gun");
				if w then
					pcall(function()
						f.Humanoid:EquipTool(w);
					end);
				end;
			end;
			continue;
		end;
		local t = vA();
		if not t then
			continue;
		end;
		local H = t.Character;
		if not H then
			continue;
		end;
		local l = H:FindFirstChild("HumanoidRootPart");
		local R = H:FindFirstChild("Head");
		if not l then
			continue;
		end;
		local K = f:FindFirstChild("HumanoidRootPart");
		if not K then
			continue;
		end;
		local O = ((l.Position - K.Position)).Magnitude;
		if O > U.AutoShootRange then
			continue;
		end;
		local g = workspace.CurrentCamera;
		if g then
			pcall(function()
				g.CFrame = CFrame.new(g.CFrame.Position, R and R.Position or l.Position);
			end);
		end;
		pcall(function()
			w:Activate();
		end);
	end;
end);
local function WA()
	local f = a.Character;
	if not f then
		SA("TP", "Personnage introuvable", true);
		return;
	end;
	local w = f:FindFirstChild("HumanoidRootPart");
	if not w then
		SA("TP", "Position introuvable", true);
		return;
	end;
	SA("TP All", "T\195\169l\195\169portation...", false);
	task.spawn(function()
		for A, f in ipairs(A:GetPlayers()) do
			if f == a then
				continue;
			end;
			if not f.Character then
				continue;
			end;
			local t = f.Character:FindFirstChild("HumanoidRootPart");
			if not t then
				continue;
			end;
			pcall(function()
				w.CFrame = t.CFrame + Vector3.new(0, 3, 3);
				w.Velocity = Vector3.new(0, 0, 0);
			end);
			task.wait(U.TpAllDelay);
		end;
		SA("TP All", "Termin\195\169", false);
	end);
end;
local zA, qA, yA;
local uA, XA, CA, TA, QA, JA;
local IA, FA, NA, BA, eA;
local iA, nA, ZA, sA, DA, Al, fl;
qA = function()
		local t = a:FindFirstChild("PlayerGui");
		if t then
			local A = t:FindFirstChild("MulbaHeadGui");
			if A then
				A:Destroy();
			end;
		end;
		local H = a.Character;
		if not H or not H:FindFirstChild("Head") then
			task.delay(1, function()
				if qA then
					qA();
				end;
			end);
			return;
		end;
		local l = H:FindFirstChild("Head");
		if not l then
			return;
		end;
		local R = S("ScreenGui", {
				Name = "MulbaHeadGui",
				ResetOnSpawn = false,
				IgnoreGuiInset = true,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				DisplayOrder = 997,
				Parent = t,
			});
		local K, O = 200, 50;
		local k = S("TextButton", {
				Size = UDim2.new(0, K, 0, O),
				Position = UDim2.new(0, 0, 0, 0),
				AnchorPoint = Vector2.new(.5, 1),
				BackgroundColor3 = Color3.fromRGB(12, 16, 28),
				BackgroundTransparency = .05,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				Active = true,
				ZIndex = 1,
				Parent = R,
			});
		W(k, 25);
		z(k, Color3.fromRGB(16, 22, 38), Color3.fromRGB(8, 10, 18), 90);
		S("UIStroke", {
			Color = Color3.fromRGB(90, 150, 255),
			Thickness = 1.5,
			Transparency = .15,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = k,
		});
		local d = S("Frame", {
				Size = UDim2.new(0, 36, 0, 36),
				Position = UDim2.new(0, 8, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = k,
			});
		W(d, 18);
		local j = S("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 7,
				Parent = d,
			});
		W(j, 16);
		local E = S("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 8,
				Parent = j,
			});
		W(E, 16);
		task.spawn(function()
			local f, w = pcall(function()
					return A:GetUserThumbnailAsync(a.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if f and w then
				E.Image = w;
			end;
		end);
		local r = S("TextLabel", {
				Size = UDim2.new(1, -90, 0, 16),
				Position = UDim2.new(0, 52, 0, 8),
				BackgroundTransparency = 1,
				Text = "Mulba Menu",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = k,
			});
		local o = S("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 180, 255)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(170, 120, 255)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 120, 200)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(255, 180, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 255, 180)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 180, 255)),
				}), Rotation = 0, Parent = r });
		task.spawn(function()
			while o.Parent do
				o.Rotation = ((o.Rotation + 3)) % 360;
				task.wait(.03);
			end;
		end);
		S("TextLabel", {
			Size = UDim2.new(1, -90, 0, 12),
			Position = UDim2.new(0, 52, 0, 23),
			BackgroundTransparency = 1,
			Text = a.DisplayName .. " / lifetime",
			TextColor3 = Color3.fromRGB(220, 225, 235),
			Font = Enum.Font.GothamMedium,
			TextSize = 9,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 9,
			Parent = k,
		});
		local v = S("TextLabel", {
				Size = UDim2.new(1, -90, 0, 14),
				Position = UDim2.new(0, 52, 0, 35),
				BackgroundTransparency = 1,
				Text = "Cr\195\169ateur",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = k,
			});
		local M = S("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 80, 80)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(255, 180, 80)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 255, 80)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(120, 255, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 200, 255)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 80, 80)),
				}), Rotation = 0, Parent = v });
		task.spawn(function()
			while M.Parent do
				M.Rotation = ((M.Rotation + 4)) % 360;
				task.wait(.03);
			end;
		end);
		local U = S("Frame", {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -38, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = k,
			});
		W(U, 15);
		local Y = S("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Text = "M",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 15,
				ZIndex = 8,
				Parent = U,
			});
		S("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 230, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(90, 150, 255)) }), Rotation = 90, Parent = Y });
		k.BackgroundTransparency = 1;
		k.Size = UDim2.new(0, K * .7, 0, O * .7);
		for A, w in ipairs(k:GetDescendants()) do
			if w:IsA("TextLabel") then
				w.TextTransparency = 1;
				(f:Create(w, TweenInfo.new(.5), { TextTransparency = 0 })):Play();
			end;
			if w:IsA("ImageLabel") then
				w.ImageTransparency = 1;
				(f:Create(w, TweenInfo.new(.5), { ImageTransparency = 0 })):Play();
			end;
		end;
		(f:Create(k, TweenInfo.new(.55, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, K, 0, O), BackgroundTransparency = .05 })):Play();
		w.RenderStepped:Connect(function()
			if not R.Parent then
				return;
			end;
			if not ((k and k.Parent)) then
				return;
			end;
			local A = a.Character;
			if not A then
				k.Visible = false;
				return;
			end;
			local f = A:FindFirstChild("Head");
			if not f then
				k.Visible = false;
				return;
			end;
			local w = workspace.CurrentCamera;
			if not w then
				return;
			end;
			local t = f.Position + Vector3.new(0, g, 0);
			local H, l = w:WorldToViewportPoint(t);
			if not l then
				k.Visible = false;
				return;
			end;
			k.Visible = true;
			k.Position = UDim2.new(0, H.X, 0, H.Y);
		end);
		k.MouseButton1Click:Connect(function()
			if not G.Authenticated then
				return;
			end;
			if G.Shell and G.Shell.Parent then
				return;
			end;
			if zA then
				zA();
			end;
		end);
		G.BillboardRef = R;
	end;
uA = function(A)
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 42),
			BackgroundTransparency = 1,
			Text = "Bienvenue sur Mulba",
			TextColor3 = k.TextPrimary,
			Font = Enum.Font.GothamBlack,
			TextSize = 30,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 46),
			BackgroundTransparency = 1,
			Text = "Menu premium \226\128\162 Murder Mystery 2",
			TextColor3 = k.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		local f = S("Frame", {
				Size = UDim2.new(0, 140, 0, 58),
				Position = UDim2.new(1, -140, 0, 0),
				BackgroundColor3 = k.Surface,
				BackgroundTransparency = .35,
				BorderSizePixel = 0,
				ZIndex = 26,
				Parent = A,
			});
		W(f, 10);
		q(f, k.Border, 1, .5);
		local t = S("TextLabel", {
				Size = UDim2.new(1, -16, 0, 20),
				Position = UDim2.new(0, 8, 0, 8),
				BackgroundTransparency = 1,
				Text = "FPS: 0",
				TextColor3 = k.Success,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = f,
			});
		local H = S("TextLabel", {
				Size = UDim2.new(1, -16, 0, 20),
				Position = UDim2.new(0, 8, 0, 30),
				BackgroundTransparency = 1,
				Text = "MS: 0",
				TextColor3 = k.Accent,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = f,
			});
		task.spawn(function()
			local A = 0;
			local l = tick();
			w.RenderStepped:Connect(function()
				A = A + 1;
			end);
			while f.Parent do
				local f = tick();
				local w = f - l;
				if w >= .5 then
					local R = math.floor(A / w);
					A = 0;
					l = f;
					local K, O = pcall(function()
							return math.floor(a:GetNetworkPing() * 1000);
						end);
					local g = K and O or 0;
					pcall(function()
						t.Text = "FPS: " .. R;
						t.TextColor3 = R >= 50 and k.Success or (R >= 30 and Color3.fromRGB(240, 200, 120) or k.Error);
						H.Text = "MS: " .. g;
						H.TextColor3 = g <= 80 and k.Success or (g <= 150 and Color3.fromRGB(240, 200, 120) or k.Error);
					end);
				end;
				task.wait(.1);
			end;
		end);
		S("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundColor3 = k.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = A,
		});
		local l = 100;
		local function R(f, w)
			S("TextLabel", {
				Size = UDim2.new(1, 0, 0, 20),
				Position = UDim2.new(0, 0, 0, l),
				BackgroundTransparency = 1,
				Text = f,
				TextColor3 = k.Accent,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 25,
				Parent = A,
			});
			l = l + 26;
			S("TextLabel", {
				Size = UDim2.new(1, -8, 0, 0),
				Position = UDim2.new(0, 0, 0, l),
				BackgroundTransparency = 1,
				Text = w,
				TextColor3 = k.TextSecondary,
				Font = Enum.Font.Gotham,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextWrapped = true,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = A,
			});
			l = (l + #w * 5) + 30;
		end;
		R("\226\150\186 ESP", "Affiche les r\195\180les (Tueur / Sh\195\169rif / Innocent) avec box, tracer et x-ray pour voir \195\160 travers les murs.");
		R("\226\150\186 PLAYER", "Fly, Spin, Jerk, Noclip, WalkSpeed, JumpPower, Gravity, Infinite Jump et plus pour ton personnage.");
		R("\226\150\186 MURDER", "Kill All, TP tous les joueurs devant toi, TP vers le tueur.");
		R("\226\150\186 SHERIFF", "Auto Shoot : si tu es sh\195\169rif, tire automatiquement sur le tueur.");
		R("\226\150\186 T\195\137L\195\137PORT\195\137", "Te t\195\169l\195\169porte au spawn de la map en un clic.");
		R("\226\150\186 TROLL", "Cible un joueur : TP vers lui ou spectate sa cam\195\169ra.");
		R("\226\150\186 ANIMATION", "Sit : ton personnage s\'assoit (visible par tous les joueurs).");
		S("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, l),
			BackgroundColor3 = k.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = A,
		});
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 24),
			Position = UDim2.new(0, 0, 0, l + 10),
			BackgroundTransparency = 1,
			Text = "\240\159\146\161 Appuie sur M pour ouvrir ou fermer le menu",
			TextColor3 = k.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
	end;
XA = function(A)
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Param\195\168tres",
			TextColor3 = k.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 16),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundTransparency = 1,
			Text = "COULEUR D\'ACCENT",
			TextColor3 = k.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		local w = S("Frame", {
				Size = UDim2.new(1, 0, 0, 140),
				Position = UDim2.new(0, 0, 0, 104),
				BackgroundTransparency = 1,
				ZIndex = 25,
				Parent = A,
			});
		S("UIGridLayout", {
			CellSize = UDim2.new(0, 58, 0, 58),
			CellPadding = UDim2.new(0, 14, 0, 14),
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Parent = w,
		});
		local t = {};
		for A, H in ipairs(d) do
			local a = S("TextButton", {
					BackgroundColor3 = H.Accent,
					BorderSizePixel = 0,
					Text = "",
					AutoButtonColor = false,
					LayoutOrder = A,
					ZIndex = 26,
					Parent = w,
				});
			W(a, 29);
			local l = S("UIStroke", {
					Color = k.TextPrimary,
					Thickness = 2,
					Transparency = (H.name == G.CurrentPreset) and 0 or 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Parent = a,
				});
			t[H.name] = l;
			a.MouseButton1Click:Connect(function()
				if G.CurrentPreset == H.name then
					return;
				end;
				G.CurrentPreset = H.name;
				v(H);
				for A, w in pairs(t) do
					(f:Create(w, TweenInfo.new(.2), { Transparency = (A == H.name) and 0 or 1 })):Play();
				end;
			end);
		end;
	end;
DA = function(A, f, w)
		local t = S("Frame", {
				Size = UDim2.new(1, 0, 0, 26),
				BackgroundTransparency = 1,
				LayoutOrder = f,
				ZIndex = 19,
				Parent = A,
			});
		S("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 4, 0, 0),
			BackgroundTransparency = 1,
			Text = string.upper(w),
			TextColor3 = k.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 19,
			Parent = t,
		});
		S("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 1, -1),
			BackgroundColor3 = k.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 19,
			Parent = t,
		});
	end;
iA = function(A, w, t, H, a, l, R)
		local K = S("Frame", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = k.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = w,
				ZIndex = 26,
				Parent = A,
			});
		W(K, 12);
		q(K, k.Border, 1, .5);
		local O = S("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = R,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = K,
			});
		W(O, 2);
		S("TextLabel", {
			Size = UDim2.new(1, -100, 0, 18),
			Position = UDim2.new(0, 26, 0, 10),
			BackgroundTransparency = 1,
			Text = t,
			TextColor3 = k.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = K,
		});
		S("TextLabel", {
			Size = UDim2.new(1, -100, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = H,
			TextColor3 = k.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = K,
		});
		local g = S("TextButton", {
				Size = UDim2.new(0, 46, 0, 24),
				Position = UDim2.new(1, -58, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = a() and R or k.SurfaceHi,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 28,
				Parent = K,
			});
		W(g, 12);
		local d = S("Frame", {
				Size = UDim2.new(0, 18, 0, 18),
				Position = a() and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = g,
			});
		W(d, 9);
		g.MouseButton1Click:Connect(function()
			l();
			local A = a();
			(f:Create(g, TweenInfo.new(.2), { BackgroundColor3 = A and R or k.SurfaceHi })):Play();
			(f:Create(d, TweenInfo.new(.2, Enum.EasingStyle.Quad), { Position = A and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0) })):Play();
		end);
		return K;
	end;
nA = function(A, f, w, H, a, l, R, K)
		local O = S("Frame", {
				Size = UDim2.new(1, 0, 0, 52),
				BackgroundColor3 = k.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = f,
				ZIndex = 26,
				Parent = A,
			});
		W(O, 12);
		q(O, k.Border, 1, .5);
		S("TextLabel", {
			Size = UDim2.new(0, 130, 0, 14),
			Position = UDim2.new(0, 26, 0, 8),
			BackgroundTransparency = 1,
			Text = w,
			TextColor3 = k.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = O,
		});
		local g = S("TextLabel", {
				Size = UDim2.new(0, 60, 0, 14),
				Position = UDim2.new(1, -70, 0, 8),
				BackgroundTransparency = 1,
				Text = tostring(l()),
				TextColor3 = k.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Right,
				ZIndex = 27,
				Parent = O,
			});
		local d = S("Frame", {
				Size = UDim2.new(1, -52, 0, 8),
				Position = UDim2.new(0, 26, 0, 32),
				BackgroundColor3 = k.SurfaceHi,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = O,
			});
		W(d, 4);
		local j = ((l() - H)) / ((a - H));
		local E = S("Frame", {
				Size = UDim2.new(j, 0, 1, 0),
				BackgroundColor3 = K,
				BorderSizePixel = 0,
				ZIndex = 28,
				Parent = d,
			});
		W(E, 4);
		local r = S("Frame", {
				Size = UDim2.new(0, 14, 0, 14),
				Position = UDim2.new(j, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = d,
			});
		W(r, 7);
		q(r, Color3.fromRGB(0, 0, 0), 2, .3);
		local o = S("TextButton", {
				Size = UDim2.new(1, -52, 0, 22),
				Position = UDim2.new(0, 26, 0, 20),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = O,
			});
		local v = false;
		local function M(A)
			local f = d.AbsolutePosition.X;
			local w = d.AbsoluteSize.X;
			if w <= 0 then
				return;
			end;
			local t = math.clamp(((A - f)) / w, 0, 1);
			local l = H + t * ((a - H));
			l = math.floor(l * 10 + .5) / 10;
			R(l);
			r.Position = UDim2.new(t, 0, .5, 0);
			E.Size = UDim2.new(t, 0, 1, 0);
			g.Text = tostring(l);
		end;
		o.InputBegan:Connect(function(A)
			if A.UserInputType == Enum.UserInputType.MouseButton1 or A.UserInputType == Enum.UserInputType.Touch then
				v = true;
				M(A.Position.X);
			end;
		end);
		o.InputChanged:Connect(function(A)
			if not v then
				return;
			end;
			if A.UserInputType == Enum.UserInputType.MouseMovement or A.UserInputType == Enum.UserInputType.Touch then
				M(A.Position.X);
			end;
		end);
		t.InputEnded:Connect(function(A)
			if A.UserInputType == Enum.UserInputType.MouseButton1 or A.UserInputType == Enum.UserInputType.Touch then
				v = false;
			end;
		end);
	end;
ZA = function(A, w, t, H, a, l)
		local R = S("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = k.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = w,
				ZIndex = 26,
				Parent = A,
			});
		W(R, 12);
		q(R, k.Border, 1, .5);
		local K = S("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = a,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = R,
			});
		W(K, 2);
		local O = S("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = t,
				TextColor3 = k.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = R,
			});
		S("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = H,
			TextColor3 = k.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = R,
		});
		local g, d, j = y(R, "right", k.TextMuted, 7);
		g.Position = UDim2.new(1, -26, .5, 0);
		g.AnchorPoint = Vector2.new(.5, .5);
		R.MouseEnter:Connect(function()
			(f:Create(R, TweenInfo.new(.18), { BackgroundColor3 = k.SurfaceHi, BackgroundTransparency = .1 })):Play();
			(f:Create(O, TweenInfo.new(.18), { TextColor3 = a })):Play();
			(f:Create(d, TweenInfo.new(.18), { BackgroundColor3 = a })):Play();
			(f:Create(j, TweenInfo.new(.18), { BackgroundColor3 = a })):Play();
		end);
		R.MouseLeave:Connect(function()
			(f:Create(R, TweenInfo.new(.18), { BackgroundColor3 = k.Surface, BackgroundTransparency = .25 })):Play();
			(f:Create(O, TweenInfo.new(.18), { TextColor3 = k.TextPrimary })):Play();
			(f:Create(d, TweenInfo.new(.18), { BackgroundColor3 = k.TextMuted })):Play();
			(f:Create(j, TweenInfo.new(.18), { BackgroundColor3 = k.TextMuted })):Play();
		end);
		R.MouseButton1Click:Connect(l);
		return R;
	end;
fl = function(A, w, t, H, a, l, R)
		local K = S("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = k.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = w,
				ZIndex = 26,
				Parent = A,
			});
		W(K, 12);
		q(K, k.Border, 1, .5);
		local O = S("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = a() and R or k.TextMuted,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = K,
			});
		W(O, 2);
		local g = S("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = t,
				TextColor3 = k.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = K,
			});
		S("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = H,
			TextColor3 = k.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = K,
		});
		local d, j, E = y(K, "right", a() and R or k.TextMuted, 7);
		d.Position = UDim2.new(1, -26, .5, 0);
		d.AnchorPoint = Vector2.new(.5, .5);
		local function r()
			local A = a();
			O.BackgroundColor3 = A and R or k.TextMuted;
			j.BackgroundColor3 = A and R or k.TextMuted;
			E.BackgroundColor3 = A and R or k.TextMuted;
			g.TextColor3 = A and R or k.TextPrimary;
		end;
		K.MouseEnter:Connect(function()
			(f:Create(K, TweenInfo.new(.18), { BackgroundColor3 = k.SurfaceHi, BackgroundTransparency = .1 })):Play();
		end);
		K.MouseLeave:Connect(function()
			(f:Create(K, TweenInfo.new(.18), { BackgroundColor3 = k.Surface, BackgroundTransparency = .25 })):Play();
		end);
		K.MouseButton1Click:Connect(function()
			l(not a());
			r();
		end);
		return K;
	end;
Al = function(A, w, t, H, a, l, R, K)
		local O = S("Frame", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundTransparency = 1,
				LayoutOrder = w,
				ZIndex = 26,
				Parent = A,
				AutomaticSize = Enum.AutomaticSize.Y,
			});
		S("UIListLayout", { Padding = UDim.new(0, 0), SortOrder = Enum.SortOrder.LayoutOrder, Parent = O });
		local g = S("Frame", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = k.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = 1,
				ZIndex = 26,
				Parent = O,
			});
		W(g, 12);
		q(g, k.Border, 1, .5);
		local d = S("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = a() and R or k.TextMuted,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = g,
			});
		W(d, 2);
		local j = S("TextLabel", {
				Size = UDim2.new(1, -100, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = t,
				TextColor3 = k.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = g,
			});
		S("TextLabel", {
			Size = UDim2.new(1, -100, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = H,
			TextColor3 = k.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = g,
		});
		local E = S("TextButton", {
				Size = UDim2.new(0, 46, 0, 24),
				Position = UDim2.new(1, -80, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = a() and R or k.SurfaceHi,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 28,
				Parent = g,
			});
		W(E, 12);
		local r = S("Frame", {
				Size = UDim2.new(0, 18, 0, 18),
				Position = a() and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = E,
			});
		W(r, 9);
		local o = S("Frame", {
				Size = UDim2.new(0, 10, 0, 10),
				Position = UDim2.new(1, -26, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				ZIndex = 27,
				Parent = g,
			});
		local v = S("Frame", {
				Size = UDim2.new(0, 7, 0, 2),
				Position = UDim2.new(.5, 0, .5, -2),
				AnchorPoint = Vector2.new(1, .5),
				BackgroundColor3 = k.TextMuted,
				BorderSizePixel = 0,
				Rotation = 45,
				ZIndex = 28,
				Parent = o,
			});
		W(v, 1);
		local M = S("Frame", {
				Size = UDim2.new(0, 7, 0, 2),
				Position = UDim2.new(.5, 0, .5, 2),
				AnchorPoint = Vector2.new(1, .5),
				BackgroundColor3 = k.TextMuted,
				BorderSizePixel = 0,
				Rotation = -45,
				ZIndex = 28,
				Parent = o,
			});
		W(M, 1);
		local G = S("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				LayoutOrder = 2,
				ZIndex = 25,
				Parent = O,
			});
		E.MouseButton1Click:Connect(function()
			l(not a());
			local A = a();
			(f:Create(E, TweenInfo.new(.2), { BackgroundColor3 = A and R or k.SurfaceHi })):Play();
			(f:Create(r, TweenInfo.new(.2, Enum.EasingStyle.Quad), { Position = A and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0) })):Play();
			d.BackgroundColor3 = A and R or k.TextMuted;
			j.TextColor3 = A and R or k.TextPrimary;
		end);
		local U = S("TextButton", {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -42, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 29,
				Parent = g,
			});
		local Y = false;
		U.MouseButton1Click:Connect(function()
			Y = not Y;
			if Y then
				for A, f in ipairs(G:GetChildren()) do
					f:Destroy();
				end;
				K(G);
				(f:Create(G, TweenInfo.new(.28, Enum.EasingStyle.Quad), { Size = UDim2.new(1, 0, 0, 64) })):Play();
				(f:Create(v, TweenInfo.new(.2), { Rotation = -45 })):Play();
				(f:Create(M, TweenInfo.new(.2), { Rotation = 45 })):Play();
			else
				(f:Create(G, TweenInfo.new(.24, Enum.EasingStyle.Quad), { Size = UDim2.new(1, 0, 0, 0) })):Play();
				(f:Create(v, TweenInfo.new(.2), { Rotation = 45 })):Play();
				(f:Create(M, TweenInfo.new(.2), { Rotation = -45 })):Play();
			end;
		end);
		g.MouseEnter:Connect(function()
			(f:Create(g, TweenInfo.new(.18), { BackgroundColor3 = k.SurfaceHi, BackgroundTransparency = .1 })):Play();
		end);
		g.MouseLeave:Connect(function()
			(f:Create(g, TweenInfo.new(.18), { BackgroundColor3 = k.Surface, BackgroundTransparency = .25 })):Play();
		end);
		return O;
	end;
sA = function()
		if G.FlyPopup and G.FlyPopup.Parent then
			G.FlyPopup:Destroy();
			G.FlyPopup = nil;
			return;
		end;
		local A = G.Shell;
		if not A then
			return;
		end;
		local w = S("TextButton", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				BackgroundTransparency = .5,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 490,
				Parent = A,
			});
		w.MouseButton1Click:Connect(function()
			if G.FlyPopup then
				G.FlyPopup:Destroy();
				G.FlyPopup = nil;
			end;
			w:Destroy();
		end);
		local H = S("Frame", {
				Name = "FlyPopup",
				Size = UDim2.new(0, 340, 0, 340),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = k.BgTop,
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				Active = true,
				ClipsDescendants = true,
				ZIndex = 500,
				Parent = A,
			});
		W(H, 18);
		z(H, Color3.fromRGB(30, 32, 42), Color3.fromRGB(16, 17, 24), 90);
		S("UIStroke", {
			Color = k.Accent,
			Thickness = 2,
			Transparency = .4,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			ZIndex = 500,
			Parent = H,
		});
		S("UIStroke", {
			Color = k.AccentGlow,
			Thickness = 1,
			Transparency = .75,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			ZIndex = 500,
			Parent = H,
		});
		S("TextButton", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Text = "",
			AutoButtonColor = false,
			ZIndex = 501,
			Parent = H,
		});
		local a = S("Frame", {
				Size = UDim2.new(1, 0, 0, 3),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundColor3 = k.Accent,
				BorderSizePixel = 0,
				ZIndex = 502,
				Parent = H,
			});
		local l = z(a, k.Accent, k.AccentGlow, 0);
		r(l, "AccentDim", "AccentGlow");
		S("TextLabel", {
			Size = UDim2.new(1, -90, 0, 22),
			Position = UDim2.new(0, 24, 0, 22),
			BackgroundTransparency = 1,
			Text = "Fly",
			TextColor3 = k.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 20,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 503,
			Parent = H,
		});
		S("TextLabel", {
			Size = UDim2.new(1, -90, 0, 16),
			Position = UDim2.new(0, 24, 0, 46),
			BackgroundTransparency = 1,
			Text = "Contr\195\180le du vol",
			TextColor3 = k.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 503,
			Parent = H,
		});
		local R = S("Frame", {
				Size = UDim2.new(0, 10, 0, 10),
				Position = UDim2.new(1, -110, 0, 28),
				BackgroundColor3 = L.FlyEnabled and k.Success or k.TextMuted,
				BorderSizePixel = 0,
				ZIndex = 503,
				Parent = H,
			});
		W(R, 5);
		local K = S("TextLabel", {
				Size = UDim2.new(0, 60, 0, 14),
				Position = UDim2.new(1, -94, 0, 26),
				BackgroundTransparency = 1,
				Text = L.FlyEnabled and "Actif" or "Inactif",
				TextColor3 = L.FlyEnabled and k.Success or k.TextMuted,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 503,
				Parent = H,
			});
		local O = S("TextButton", {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -42, 0, 22),
				BackgroundColor3 = k.SurfaceHi,
				BackgroundTransparency = .3,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 504,
				Parent = H,
			});
		W(O, 10);
		local g = S("Frame", {
				Size = UDim2.new(0, 8, 0, 8),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = k.CloseDot,
				BorderSizePixel = 0,
				ZIndex = 505,
				Parent = O,
			});
		W(g, 4);
		O.MouseButton1Click:Connect(function()
			if G.FlyPopup then
				G.FlyPopup:Destroy();
				G.FlyPopup = nil;
			end;
			w:Destroy();
		end);
		S("Frame", {
			Size = UDim2.new(1, -48, 0, 1),
			Position = UDim2.new(0, 24, 0, 84),
			BackgroundColor3 = k.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 502,
			Parent = H,
		});
		local d = S("Frame", {
				Size = UDim2.new(1, -48, 0, 60),
				Position = UDim2.new(0, 24, 0, 100),
				BackgroundColor3 = k.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				ZIndex = 502,
				Parent = H,
			});
		W(d, 12);
		S("UIStroke", {
			Color = k.Border,
			Thickness = 1,
			Transparency = .5,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = d,
		});
		S("Frame", {
			Size = UDim2.new(0, 3, 0, 36),
			Position = UDim2.new(0, 12, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = k.Accent,
			BorderSizePixel = 0,
			ZIndex = 503,
			Parent = d,
		});
		S("TextLabel", {
			Size = UDim2.new(1, -100, 0, 18),
			Position = UDim2.new(0, 26, 0, 12),
			BackgroundTransparency = 1,
			Text = "Activer le Fly",
			TextColor3 = k.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 503,
			Parent = d,
		});
		S("TextLabel", {
			Size = UDim2.new(1, -100, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = "W/A/S/D + Espace / Ctrl",
			TextColor3 = k.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 503,
			Parent = d,
		});
		local j = S("TextButton", {
				Size = UDim2.new(0, 46, 0, 24),
				Position = UDim2.new(1, -58, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = L.FlyEnabled and k.Accent or k.SurfaceHi,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 503,
				Parent = d,
			});
		W(j, 12);
		local E = S("Frame", {
				Size = UDim2.new(0, 18, 0, 18),
				Position = L.FlyEnabled and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 504,
				Parent = j,
			});
		W(E, 9);
		local function o()
			local A = L.FlyEnabled;
			R.BackgroundColor3 = A and k.Success or k.TextMuted;
			K.Text = A and "Actif" or "Inactif";
			K.TextColor3 = A and k.Success or k.TextMuted;
			(f:Create(j, TweenInfo.new(.2), { BackgroundColor3 = A and k.Accent or k.SurfaceHi })):Play();
			(f:Create(E, TweenInfo.new(.2, Enum.EasingStyle.Quad), { Position = A and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0) })):Play();
		end;
		j.MouseButton1Click:Connect(function()
			J();
			o();
		end);
		local v = S("Frame", {
				Size = UDim2.new(1, -48, 0, 60),
				Position = UDim2.new(0, 24, 0, 172),
				BackgroundColor3 = k.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				ZIndex = 502,
				Parent = H,
			});
		W(v, 12);
		S("UIStroke", {
			Color = k.Border,
			Thickness = 1,
			Transparency = .5,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = v,
		});
		S("Frame", {
			Size = UDim2.new(0, 3, 0, 36),
			Position = UDim2.new(0, 12, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = Color3.fromRGB(170, 130, 235),
			BorderSizePixel = 0,
			ZIndex = 503,
			Parent = v,
		});
		S("TextLabel", {
			Size = UDim2.new(1, -100, 0, 14),
			Position = UDim2.new(0, 26, 0, 10),
			BackgroundTransparency = 1,
			Text = "VITESSE",
			TextColor3 = k.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 503,
			Parent = v,
		});
		local M = S("TextLabel", {
				Size = UDim2.new(0, 80, 0, 16),
				Position = UDim2.new(1, -94, 0, 8),
				BackgroundTransparency = 1,
				Text = tostring(L.FlySpeed) .. " u/s",
				TextColor3 = k.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Right,
				ZIndex = 503,
				Parent = v,
			});
		local U = S("Frame", {
				Size = UDim2.new(1, -52, 0, 8),
				Position = UDim2.new(0, 26, 0, 36),
				BackgroundColor3 = k.SurfaceHi,
				BorderSizePixel = 0,
				ZIndex = 503,
				Parent = v,
			});
		W(U, 4);
		local Y = ((L.FlySpeed - 10)) / (190);
		local h = S("Frame", {
				Size = UDim2.new(Y, 0, 1, 0),
				BackgroundColor3 = Color3.fromRGB(170, 130, 235),
				BorderSizePixel = 0,
				ZIndex = 504,
				Parent = U,
			});
		W(h, 4);
		local c = S("Frame", {
				Size = UDim2.new(0, 14, 0, 14),
				Position = UDim2.new(Y, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 505,
				Parent = U,
			});
		W(c, 7);
		q(c, Color3.fromRGB(0, 0, 0), 2, .3);
		local x = S("TextButton", {
				Size = UDim2.new(1, -52, 0, 20),
				Position = UDim2.new(0, 26, 0, 26),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 506,
				Parent = v,
			});
		local m = false;
		local function P(A)
			local f = U.AbsolutePosition.X;
			local w = U.AbsoluteSize.X;
			if w <= 0 then
				return;
			end;
			local t = math.clamp(((A - f)) / w, 0, 1);
			local H = math.floor((10 + t * (190)) + .5);
			L.FlySpeed = H;
			c.Position = UDim2.new(t, 0, .5, 0);
			h.Size = UDim2.new(t, 0, 1, 0);
			M.Text = tostring(H) .. " u/s";
		end;
		x.InputBegan:Connect(function(A)
			if A.UserInputType == Enum.UserInputType.MouseButton1 or A.UserInputType == Enum.UserInputType.Touch then
				m = true;
				P(A.Position.X);
			end;
		end);
		x.InputChanged:Connect(function(A)
			if not m then
				return;
			end;
			if A.UserInputType == Enum.UserInputType.MouseMovement or A.UserInputType == Enum.UserInputType.Touch then
				P(A.Position.X);
			end;
		end);
		t.InputEnded:Connect(function(A)
			if A.UserInputType == Enum.UserInputType.MouseButton1 or A.UserInputType == Enum.UserInputType.Touch then
				m = false;
			end;
		end);
		local V = S("Frame", {
				Size = UDim2.new(1, -48, 0, 64),
				Position = UDim2.new(0, 24, 0, 244),
				BackgroundColor3 = k.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				ZIndex = 502,
				Parent = H,
			});
		W(V, 12);
		S("UIStroke", {
			Color = k.Border,
			Thickness = 1,
			Transparency = .5,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = V,
		});
		S("Frame", {
			Size = UDim2.new(0, 3, 0, 40),
			Position = UDim2.new(0, 12, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = Color3.fromRGB(240, 165, 95),
			BorderSizePixel = 0,
			ZIndex = 503,
			Parent = V,
		});
		S("TextLabel", {
			Size = UDim2.new(1, -120, 0, 14),
			Position = UDim2.new(0, 26, 0, 8),
			BackgroundTransparency = 1,
			Text = "BIND TOUCHE",
			TextColor3 = k.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 503,
			Parent = V,
		});
		local p = S("TextLabel", {
				Size = UDim2.new(1, -120, 0, 18),
				Position = UDim2.new(0, 26, 0, 28),
				BackgroundTransparency = 1,
				Text = L.FlyBind and L.FlyBind.Name or "Aucune",
				TextColor3 = L.FlyBind and k.Accent or k.TextMuted,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 503,
				Parent = V,
			});
		local b = S("TextButton", {
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
				Parent = V,
			});
		W(b, 10);
		local y = S("TextButton", {
				Size = UDim2.new(0, 60, 0, 16),
				Position = UDim2.new(1, -92, 0, 10),
				BackgroundTransparency = 1,
				Text = "Reset",
				TextColor3 = k.TextMuted,
				Font = Enum.Font.Gotham,
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Center,
				AutoButtonColor = false,
				ZIndex = 504,
				Parent = V,
			});
		y.MouseEnter:Connect(function()
			y.TextColor3 = k.Error;
		end);
		y.MouseLeave:Connect(function()
			y.TextColor3 = k.TextMuted;
		end);
		y.MouseButton1Click:Connect(function()
			F(nil);
			p.Text = "Aucune";
			p.TextColor3 = k.TextMuted;
			SA("Fly", "Bind retir\195\169", false);
		end);
		local u = false;
		local X;
		b.MouseButton1Click:Connect(function()
			if u then
				return;
			end;
			u = true;
			b.Text = "...";
			p.Text = "Appuie sur une touche...";
			p.TextColor3 = k.Accent;
			X = t.InputBegan:Connect(function(A, f)
					if A.UserInputType ~= Enum.UserInputType.Keyboard then
						return;
					end;
					if A.KeyCode == Enum.KeyCode.Unknown then
						return;
					end;
					F(A.KeyCode);
					p.Text = A.KeyCode.Name;
					p.TextColor3 = k.Accent;
					b.Text = "BIND";
					u = false;
					if X then
						X:Disconnect();
						X = nil;
					end;
					SA("Fly", "Bind : " .. A.KeyCode.Name, false);
				end);
		end);
		H.Size = UDim2.new(0, 240, 0, 240);
		H.BackgroundTransparency = 1;
		(f:Create(H, TweenInfo.new(.38, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 340, 0, 340), BackgroundTransparency = 0 })):Play();
		G.FlyPopup = H;
		H.Destroying:Connect(function()
			if w and w.Parent then
				w:Destroy();
			end;
		end);
	end;
IA = function(A)
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Player",
			TextColor3 = k.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Mouvement & statistiques",
			TextColor3 = k.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		local f = S("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = A,
			});
		S("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = f });
		local w = 0;
		local function t()
			w = w + 1;
			return w;
		end;
		DA(f, t(), "Mouvement");
		local H = ZA(f, t(), "FLY", "Ouvrir le panneau Fly", Color3.fromRGB(115, 155, 240), function()
				sA();
			end);
		local a = S("Frame", {
				Size = UDim2.new(0, 6, 0, 6),
				Position = UDim2.new(1, -16, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = L.FlyEnabled and k.Success or k.TextMuted,
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = H,
			});
		W(a, 3);
		task.spawn(function()
			while H.Parent do
				a.BackgroundColor3 = L.FlyEnabled and k.Success or k.TextMuted;
				task.wait(.3);
			end;
		end);
		iA(f, t(), "SPIN", "Tourne sur toi-m\195\170me", function()
			return L.SpinEnabled;
		end, function()
			e();
		end, Color3.fromRGB(170, 130, 235));
		nA(f, t(), "VITESSE SPIN", 2, 50, function()
			return L.SpinSpeed;
		end, function(A)
			i(A);
		end, Color3.fromRGB(170, 130, 235));
		iA(f, t(), "JERK", "Secousse rapide", function()
			return L.JerkEnabled;
		end, function()
			s();
		end, Color3.fromRGB(240, 165, 95));
		nA(f, t(), "INTENSIT\195\137 JERK", .5, 10, function()
			return L.JerkIntensity;
		end, function(A)
			D(A);
		end, Color3.fromRGB(240, 165, 95));
		iA(f, t(), "NOCLIP", "Traverse les murs", function()
			return L.NoclipEnabled;
		end, function()
			fA();
		end, Color3.fromRGB(130, 205, 155));
		DA(f, t(), "Stats");
		nA(f, t(), "WALKSPEED", 16, 200, function()
			return L.WalkSpeed;
		end, function(A)
			wA(A);
		end, Color3.fromRGB(115, 155, 240));
		nA(f, t(), "JUMPPOWER", 50, 500, function()
			return L.JumpPower;
		end, function(A)
			tA(A);
		end, Color3.fromRGB(130, 205, 155));
		nA(f, t(), "GRAVITY", 0, 196, function()
			return L.Gravity;
		end, function(A)
			HA(A);
		end, Color3.fromRGB(170, 130, 235));
		DA(f, t(), "Extras");
		iA(f, t(), "INFINITE JUMP", "Saut infini", function()
			return L.InfiniteJump;
		end, function()
			lA();
		end, Color3.fromRGB(240, 165, 95));
		iA(f, t(), "ANTI-AFK", "\195\137vite le kick inactivit\195\169", function()
			return L.AntiAFK;
		end, function()
			KA();
		end, Color3.fromRGB(140, 200, 155));
		iA(f, t(), "FULLBRIGHT", "\195\137claire toute la map", function()
			return L.Fullbright;
		end, function()
			gA();
		end, Color3.fromRGB(255, 215, 120));
		iA(f, t(), "ANTI-FLING", "Bloque les tentatives de fling", function()
			return L.AntiFling;
		end, function()
			kA();
		end, Color3.fromRGB(220, 115, 115));
		ZA(f, t(), "RESET CHARACTER", "Respawn imm\195\169diat", Color3.fromRGB(255, 80, 80), function()
			dA();
			SA("Player", "Reset en cours...", false);
		end);
	end;
eA = function(A)
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169port\195\169",
			TextColor3 = k.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169portation rapide",
			TextColor3 = k.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		local f = S("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = A,
			});
		S("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = f });
		ZA(f, 1, "TP SPAWN", "Te t\195\169l\195\169porte au spawn", Color3.fromRGB(115, 155, 240), function()
			jA();
		end);
	end;
BA = function(A)
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Animation",
			TextColor3 = k.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Animations visibles par tous",
			TextColor3 = k.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		local f = S("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = A,
			});
		S("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = f });
		iA(f, 1, "SIT", "Assieds ton personnage", function()
			return L.Sitting;
		end, function()
			AA();
		end, Color3.fromRGB(140, 200, 155));
	end;
FA = function(A)
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Combat",
			TextColor3 = k.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Section \195\160 venir",
			TextColor3 = k.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
	end;
NA = function(A)
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Auto Farm",
			TextColor3 = k.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Section \195\160 venir",
			TextColor3 = k.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
	end;
CA = function(A)
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "ESP",
			TextColor3 = k.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Affichage des r\195\180les MM2",
			TextColor3 = k.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundTransparency = 1,
			Text = "R\195\148LES",
			TextColor3 = k.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		local f = S("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 102),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = A,
			});
		S("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = f });
		fl(f, 1, "ESP Murderer", "Voir le tueur", function()
			return U.EspShowMurder;
		end, function(A)
			U.EspShowMurder = A;
		end, Y.Murderer);
		fl(f, 2, "ESP Sheriff", "Voir le sh\195\169rif", function()
			return U.EspShowSheriff;
		end, function(A)
			U.EspShowSheriff = A;
		end, Y.Sheriff);
		fl(f, 3, "ESP Innocent", "Voir les innocents", function()
			return U.EspShowInnocent;
		end, function(A)
			U.EspShowInnocent = A;
		end, Y.Innocent);
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 290),
			BackgroundTransparency = 1,
			Text = "OPTIONS",
			TextColor3 = k.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		local w = S("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 312),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = A,
			});
		S("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = w });
		fl(w, 1, "X-RAY", "Voir \195\160 travers les murs", function()
			return U.XRayEnabled;
		end, function(A)
			U.XRayEnabled = A;
			hA();
		end, Color3.fromRGB(255, 215, 120));
		Al(w, 2, "Box", "Cadre autour du joueur", function()
			return h.BoxEnabled;
		end, function(A)
			h.BoxEnabled = A;
		end, Y.Box, function(A)
			local f = S("Frame", {
					Size = UDim2.new(1, -16, 0, 54),
					Position = UDim2.new(0, 8, 0, 5),
					BackgroundColor3 = k.Surface,
					BackgroundTransparency = .25,
					BorderSizePixel = 0,
					ZIndex = 26,
					Parent = A,
				});
			W(f, 10);
			q(f, k.Border, 1, .5);
			S("TextLabel", {
				Size = UDim2.new(1, -140, 0, 14),
				Position = UDim2.new(0, 14, 0, 8),
				BackgroundTransparency = 1,
				Text = "\195\137PAISSEUR BOX",
				TextColor3 = k.TextMuted,
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = f,
			});
			local w = S("TextLabel", {
					Size = UDim2.new(0, 50, 0, 20),
					Position = UDim2.new(1, -60, .5, 0),
					AnchorPoint = Vector2.new(0, .5),
					BackgroundTransparency = 1,
					Text = h.BoxThickness .. " px",
					TextColor3 = k.TextPrimary,
					Font = Enum.Font.GothamBold,
					TextSize = 11,
					TextXAlignment = Enum.TextXAlignment.Right,
					ZIndex = 27,
					Parent = f,
				});
			local H = S("Frame", {
					Size = UDim2.new(1, -84, 0, 8),
					Position = UDim2.new(0, 14, 0, 34),
					BackgroundColor3 = k.SurfaceHi,
					BorderSizePixel = 0,
					ZIndex = 27,
					Parent = f,
				});
			W(H, 4);
			local a = ((h.BoxThickness - 1)) / 9;
			local l = S("Frame", {
					Size = UDim2.new(a, 0, 1, 0),
					BackgroundColor3 = Y.Box,
					BorderSizePixel = 0,
					ZIndex = 28,
					Parent = H,
				});
			W(l, 4);
			local R = S("Frame", {
					Size = UDim2.new(0, 12, 0, 12),
					Position = UDim2.new(a, 0, .5, 0),
					AnchorPoint = Vector2.new(.5, .5),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BorderSizePixel = 0,
					ZIndex = 29,
					Parent = H,
				});
			W(R, 6);
			q(R, Color3.fromRGB(0, 0, 0), 2, .3);
			local K = S("TextButton", {
					Size = UDim2.new(1, -84, 0, 22),
					Position = UDim2.new(0, 14, 0, 28),
					BackgroundTransparency = 1,
					Text = "",
					AutoButtonColor = false,
					ZIndex = 30,
					Parent = f,
				});
			local O = false;
			local function g(A)
				local f = H.AbsolutePosition.X;
				local t = H.AbsoluteSize.X;
				if t <= 0 then
					return;
				end;
				local a = math.clamp(((A - f)) / t, 0, 1);
				local K = math.floor((1 + a * 9) + .5);
				h.BoxThickness = K;
				R.Position = UDim2.new(((K - 1)) / 9, 0, .5, 0);
				l.Size = UDim2.new(((K - 1)) / 9, 0, 1, 0);
				w.Text = K .. " px";
			end;
			K.InputBegan:Connect(function(A)
				if A.UserInputType == Enum.UserInputType.MouseButton1 or A.UserInputType == Enum.UserInputType.Touch then
					O = true;
					g(A.Position.X);
				end;
			end);
			K.InputChanged:Connect(function(A)
				if not O then
					return;
				end;
				if A.UserInputType == Enum.UserInputType.MouseMovement or A.UserInputType == Enum.UserInputType.Touch then
					g(A.Position.X);
				end;
			end);
			t.InputEnded:Connect(function(A)
				if A.UserInputType == Enum.UserInputType.MouseButton1 or A.UserInputType == Enum.UserInputType.Touch then
					O = false;
				end;
			end);
		end);
		fl(w, 3, "TRACER", "Ligne du bas vers le joueur", function()
			return h.TracerEnabled;
		end, function(A)
			h.TracerEnabled = A;
		end, Y.Tracer);
	end;
TA = function(A)
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Murder",
			TextColor3 = k.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 tueur",
			TextColor3 = k.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		local f = S("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = A,
			});
		S("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = f });
		ZA(f, 1, "KILL ALL", "TP tous les joueurs devant toi + couteau auto", Color3.fromRGB(255, 60, 60), function()
			rA();
		end);
		ZA(f, 2, "TP ALL IN FRONT", "TP tous les joueurs devant toi", Color3.fromRGB(240, 165, 95), function()
			EA();
		end);
		ZA(f, 3, "TP ALL PLAYERS", "Te t\195\169l\195\169porte vers chaque joueur", Color3.fromRGB(115, 155, 240), function()
			WA();
		end);
		ZA(f, 4, "TP MURDERER", "Te t\195\169l\195\169porte au tueur", Color3.fromRGB(255, 80, 80), function()
			local A = vA();
			if not A then
				SA("Erreur", "Tueur introuvable", true);
				return;
			end;
			local f = a.Character;
			local w = f and f:FindFirstChild("HumanoidRootPart");
			local t = A.Character and A.Character:FindFirstChild("HumanoidRootPart");
			if w and t then
				pcall(function()
					w.CFrame = t.CFrame + Vector3.new(0, 3, 3);
				end);
				SA("TP", "TP vers " .. A.Name, false);
			end;
		end);
	end;
QA = function(A)
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Sheriff",
			TextColor3 = k.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 sh\195\169rif",
			TextColor3 = k.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = A,
		});
		local f = S("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = A,
			});
		S("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = f });
		fl(f, 1, "AUTO SHOOT MURDERER", "Tire auto sur le tueur (si Sheriff)", function()
			return U.AutoShootEnabled;
		end, function(A)
			U.AutoShootEnabled = A;
		end, Color3.fromRGB(70, 130, 240));
	end;
JA = function(w)
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Troll",
			TextColor3 = k.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Cible un joueur, puis utilise les actions",
			TextColor3 = k.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 76),
			BackgroundTransparency = 1,
			Text = "JOUEUR CIBL\195\137",
			TextColor3 = k.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		local t = S("TextButton", {
				Size = UDim2.new(1, 0, 0, 44),
				Position = UDim2.new(0, 0, 0, 96),
				BackgroundColor3 = k.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = w,
			});
		W(t, 10);
		q(t, k.Border, 1, .4);
		local H = S("TextLabel", {
				Size = UDim2.new(1, -70, 1, 0),
				Position = UDim2.new(0, 16, 0, 0),
				BackgroundTransparency = 1,
				Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148",
				TextColor3 = k.TextMuted,
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 31,
				Parent = t,
			});
		local l, R, K = y(t, "right", k.TextMuted, 8);
		l.Position = UDim2.new(1, -24, .5, 0);
		l.AnchorPoint = Vector2.new(.5, .5);
		local O = S("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 148),
				BackgroundColor3 = k.Surface,
				BackgroundTransparency = .05,
				BorderSizePixel = 0,
				Visible = false,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 40,
				Parent = w,
			});
		W(O, 12);
		q(O, k.Border, 1, .3);
		local g = S("Frame", {
				Size = UDim2.new(1, -12, 0, 6),
				Position = UDim2.new(0, 6, 0, 6),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 41,
				Parent = O,
			});
		S("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = g });
		local function d()
			for A, f in ipairs(g:GetChildren()) do
				if f:IsA("TextButton") or (f:IsA("TextLabel") and f.Name == "EmptyLbl") then
					f:Destroy();
				end;
			end;
			local w = 0;
			for A, t in ipairs(A:GetPlayers()) do
				if t == a then
					continue;
				end;
				w = w + 1;
				local l = S("TextButton", {
						Size = UDim2.new(1, 0, 0, 34),
						BackgroundColor3 = k.SurfaceHi,
						BackgroundTransparency = .6,
						BorderSizePixel = 0,
						Text = "",
						AutoButtonColor = false,
						LayoutOrder = w,
						ZIndex = 42,
						Parent = g,
					});
				W(l, 8);
				local d = oA(t);
				local j = MA(d);
				S("TextLabel", {
					Size = UDim2.new(1, -50, 1, 0),
					Position = UDim2.new(0, 12, 0, 0),
					BackgroundTransparency = 1,
					Text = t.Name .. ("  (" .. (d .. ")")),
					TextColor3 = k.TextPrimary,
					Font = Enum.Font.GothamMedium,
					TextSize = 13,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 43,
					Parent = l,
				});
				S("Frame", {
					Size = UDim2.new(0, 4, 0, 18),
					Position = UDim2.new(1, -14, .5, 0),
					AnchorPoint = Vector2.new(0, .5),
					BackgroundColor3 = j,
					BorderSizePixel = 0,
					ZIndex = 43,
					Parent = l,
				});
				l.MouseEnter:Connect(function()
					(f:Create(l, TweenInfo.new(.15), { BackgroundTransparency = .25 })):Play();
				end);
				l.MouseLeave:Connect(function()
					(f:Create(l, TweenInfo.new(.15), { BackgroundTransparency = .6 })):Play();
				end);
				l.MouseButton1Click:Connect(function()
					G.TrollSelected = t;
					H.Text = t.Name;
					H.TextColor3 = k.Accent;
					O.Visible = false;
					(f:Create(R, TweenInfo.new(.15), { Rotation = 45 })):Play();
					(f:Create(K, TweenInfo.new(.15), { Rotation = -45 })):Play();
				end);
			end;
			if w == 0 then
				S("TextLabel", {
					Name = "EmptyLbl",
					Size = UDim2.new(1, 0, 0, 34),
					BackgroundTransparency = 1,
					Text = "Aucun autre joueur",
					TextColor3 = k.TextMuted,
					Font = Enum.Font.Gotham,
					TextSize = 12,
					ZIndex = 42,
					Parent = g,
				});
			end;
		end;
		local j = false;
		t.MouseButton1Click:Connect(function()
			j = not j;
			if j then
				d();
			end;
			O.Visible = j;
			(f:Create(R, TweenInfo.new(.15), { Rotation = j and -45 or 45 })):Play();
			(f:Create(K, TweenInfo.new(.15), { Rotation = j and 45 or -45 })):Play();
		end);
		A.PlayerAdded:Connect(function()
			if j then
				d();
			end;
		end);
		A.PlayerRemoving:Connect(function(A)
			if G.TrollSelected == A then
				G.TrollSelected = nil;
				H.Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148";
				H.TextColor3 = k.TextMuted;
			end;
			if j then
				d();
			end;
		end);
		S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 164),
			BackgroundTransparency = 1,
			Text = "ACTIONS",
			TextColor3 = k.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		local E = S("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 186),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = w,
			});
		S("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = E });
		ZA(E, 1, "TP \195\128 LA CIBLE", "Te t\195\169l\195\169porte sur le joueur s\195\169lectionn\195\169", Color3.fromRGB(255, 80, 80), function()
			local A = G.TrollSelected;
			if not A or not A.Character then
				SA("Troll", "Aucune cible valide", true);
				return;
			end;
			local f = A.Character:FindFirstChild("HumanoidRootPart");
			local w = a.Character;
			local t = w and w:FindFirstChild("HumanoidRootPart");
			if f and t then
				pcall(function()
					t.CFrame = f.CFrame + Vector3.new(0, 3, 3);
				end);
				SA("Troll", "TP \226\134\146 " .. A.Name, false);
			end;
		end);
		ZA(E, 2, "SPECTATE CIBLE", "Ta cam\195\169ra suit le joueur s\195\169lectionn\195\169", Color3.fromRGB(170, 130, 235), function()
			local A = G.TrollSelected;
			local f = workspace.CurrentCamera;
			if not A or not A.Character then
				SA("Troll", "Aucune cible valide", true);
				return;
			end;
			f.CameraSubject = A.Character:FindFirstChildOfClass("Humanoid") or A.Character;
			SA("Troll", "Cam\195\169ra \226\134\146 " .. A.Name, false);
		end);
	end;
yA = function(A)
		if G.CurrentPage == A then
			return;
		end;
		G.CurrentPage = A;
		for f, w in pairs(G.NavItems) do
			w.setActive(f == A);
		end;
		local w = G.Scroll;
		if not w then
			return;
		end;
		local t = w:FindFirstChild("PageBody");
		if t then
			for A, w in ipairs(t:GetChildren()) do
				if w:IsA("GuiObject") then
					(f:Create(w, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
					if w:IsA("TextLabel") then
						(f:Create(w, TweenInfo.new(.15), { TextTransparency = 1 })):Play();
					end;
				end;
			end;
			task.wait(.18);
			t:Destroy();
		end;
		w.CanvasPosition = Vector2.new(0, 0);
		local H = S("Frame", {
				Name = "PageBody",
				Size = UDim2.new(1, -48, 0, 0),
				Position = UDim2.new(0, 24, 0, 20),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 24,
				Parent = w,
			});
		if A == "home" then
			uA(H);
		elseif A == "esp" then
			CA(H);
		elseif A == "murder" then
			TA(H);
		elseif A == "sheriff" then
			QA(H);
		elseif A == "player" then
			IA(H);
		elseif A == "combat" then
			FA(H);
		elseif A == "autofarm" then
			NA(H);
		elseif A == "troll" then
			JA(H);
		elseif A == "animation" then
			BA(H);
		elseif A == "teleport" then
			eA(H);
		elseif A == "settings" then
			XA(H);
		end;
	end;
local function wl(A, w, t, H)
	local a = S("TextButton", {
			Size = UDim2.new(1, 0, 0, 38),
			BackgroundColor3 = k.Surface,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			LayoutOrder = H,
			ZIndex = 20,
			Parent = A,
		});
	W(a, 8);
	local l = S("Frame", {
			Size = UDim2.new(0, 3, 0, 0),
			Position = UDim2.new(0, 0, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = k.Accent,
			BorderSizePixel = 0,
			ZIndex = 22,
			Parent = a,
		});
	W(l, 2);
	local R = S("TextLabel", {
			Size = UDim2.new(1, -20, 1, 0),
			Position = UDim2.new(0, 18, 0, 0),
			BackgroundTransparency = 1,
			Text = w,
			TextColor3 = k.TextSecondary,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 21,
			Parent = a,
		});
	local K = { active = false };
	local function O(A)
		K.active = A;
		if A then
			(f:Create(a, TweenInfo.new(.2), { BackgroundTransparency = .7 })):Play();
			(f:Create(l, TweenInfo.new(.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 3, 0, 22) })):Play();
			(f:Create(R, TweenInfo.new(.2), { TextColor3 = k.Accent, TextSize = 14 })):Play();
		else
			(f:Create(a, TweenInfo.new(.2), { BackgroundTransparency = 1 })):Play();
			(f:Create(l, TweenInfo.new(.2), { Size = UDim2.new(0, 3, 0, 0) })):Play();
			(f:Create(R, TweenInfo.new(.2), { TextColor3 = k.TextSecondary, TextSize = 13 })):Play();
		end;
	end;
	a.MouseEnter:Connect(function()
		if not K.active then
			(f:Create(a, TweenInfo.new(.15), { BackgroundTransparency = .85 })):Play();
			(f:Create(R, TweenInfo.new(.15), { TextColor3 = k.TextPrimary })):Play();
		end;
	end);
	a.MouseLeave:Connect(function()
		if not K.active then
			(f:Create(a, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
			(f:Create(R, TweenInfo.new(.15), { TextColor3 = k.TextSecondary })):Play();
		end;
	end);
	G.NavItems[t] = { btn = a, setActive = O, state = K };
	return a, O;
end;
local function tl(A, f, w)
	local t = S("Frame", {
			Size = UDim2.new(1, -4, 0, 22),
			BackgroundTransparency = 1,
			LayoutOrder = w,
			ZIndex = 19,
			Parent = A,
		});
	S("TextLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 8, 0, 0),
		BackgroundTransparency = 1,
		Text = string.upper(f),
		TextColor3 = k.TextMuted,
		Font = Enum.Font.GothamBold,
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 19,
		Parent = t,
	});
end;
local function Hl()
	local A = S("ScreenGui", {
			Name = "MenuV71_GUI",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			DisplayOrder = 999,
			Parent = l,
		});
	G.Gui = A;
	local w = VA("LoadingContainer", UDim2.new(0, 460, 0, 240), A);
	G.LoadingFrame = w;
	w.BackgroundTransparency = 1;
	(f:Create(w, TweenInfo.new(.5), { BackgroundTransparency = 0 })):Play();
	local t = S("Frame", {
			Size = UDim2.new(0, 60, 0, 60),
			Position = UDim2.new(.5, 0, 0, 30),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundTransparency = 1,
			ZIndex = 8,
			Parent = w,
		});
	for A = 1, 14, 1 do
		local f = ((A - 1)) * (((math.pi * 2) / 14));
		local w = S("Frame", {
				Size = UDim2.new(0, 5, 0, 5),
				Position = UDim2.new(.5, math.cos(f) * 22, .5, math.sin(f) * 22),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = k.Accent,
				BackgroundTransparency = 1 - ((A / 14)) * .75,
				BorderSizePixel = 0,
				ZIndex = 9,
				Parent = t,
			});
		W(w, 2);
		E(w, "BackgroundColor3", "Accent");
	end;
	task.spawn(function()
		while t.Parent do
			t.Rotation = ((t.Rotation + 5)) % 360;
			task.wait(.02);
		end;
	end);
	S("TextLabel", {
		Size = UDim2.new(1, 0, 0, 32),
		Position = UDim2.new(0, 0, 0, 98),
		BackgroundTransparency = 1,
		Text = "Chargement",
		TextColor3 = k.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 24,
		ZIndex = 8,
		Parent = w,
	});
	local H = S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 134),
			BackgroundTransparency = 1,
			Text = "Initialisation...",
			TextColor3 = k.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 8,
			Parent = w,
		});
	local a = S("Frame", {
			Size = UDim2.new(.7, 0, 0, 8),
			Position = UDim2.new(.5, 0, 0, 172),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = k.SurfaceHi,
			BackgroundTransparency = .4,
			BorderSizePixel = 0,
			ZIndex = 8,
			Parent = w,
		});
	W(a, 4);
	local R = S("Frame", {
			Size = UDim2.new(0, 0, 1, 0),
			BackgroundColor3 = k.Accent,
			BorderSizePixel = 0,
			ZIndex = 9,
			Parent = a,
			ClipsDescendants = true,
		});
	W(R, 4);
	E(R, "BackgroundColor3", "Accent");
	local K = S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 192),
			BackgroundTransparency = 1,
			Text = "0 %",
			TextColor3 = k.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 8,
			Parent = w,
		});
	local O = tick();
	task.spawn(function()
		while tick() - O < M.LoadingDuration do
			local A = math.clamp(((tick() - O)) / M.LoadingDuration, 0, 1);
			R.Size = UDim2.new(A, 0, 1, 0);
			K.Text = math.floor(A * 100) .. " %";
			if A < .3 then
				H.Text = "Initialisation...";
			elseif A < .6 then
				H.Text = "Chargement...";
			elseif A < .9 then
				H.Text = "Pr\195\169paration...";
			else
				H.Text = "Finalisation...";
			end;
			task.wait(.03);
		end;
		R.Size = UDim2.new(1, 0, 1, 0);
		K.Text = "100 %";
	end);
	return w;
end;
local function al(A)
	local f = G.Gui;
	local w = VA("CodeContainer", UDim2.new(0, 500, 0, 380), f);
	G.CodeFrame = w;
	w.BackgroundTransparency = 1;
	local t = S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 36),
			BackgroundTransparency = 1,
			Text = "ACC\195\136S S\195\137CURIS\195\137",
			TextColor3 = k.Accent,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 12,
			Parent = w,
		});
	E(t, "TextColor3", "Accent");
	S("TextLabel", {
		Size = UDim2.new(1, 0, 0, 38),
		Position = UDim2.new(0, 0, 0, 60),
		BackgroundTransparency = 1,
		Text = "V\195\169rification requise",
		TextColor3 = k.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 26,
		ZIndex = 12,
		Parent = w,
	});
	S("TextLabel", {
		Size = UDim2.new(1, -60, 0, 34),
		Position = UDim2.new(0, 30, 0, 104),
		BackgroundTransparency = 1,
		Text = "Entre le code d\'acc\195\168s",
		TextColor3 = k.TextSecondary,
		Font = Enum.Font.Gotham,
		TextSize = 13,
		TextWrapped = true,
		ZIndex = 12,
		Parent = w,
	});
	local H = S("TextBox", {
			Size = UDim2.new(.82, 0, 0, 54),
			Position = UDim2.new(.5, 0, 0, 154),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = k.Surface,
			BackgroundTransparency = .3,
			BorderSizePixel = 0,
			Text = "",
			PlaceholderText = "Code d\'acc\195\168s...",
			PlaceholderColor3 = k.TextMuted,
			TextColor3 = k.TextPrimary,
			Font = Enum.Font.GothamMedium,
			TextSize = 16,
			TextXAlignment = Enum.TextXAlignment.Center,
			ClearTextOnFocus = false,
			ZIndex = 13,
			Parent = w,
		});
	W(H, 12);
	local a = q(H, k.Border, 1.5, .3);
	H.Focused:Connect(function()
		a.Color = k.Accent;
		a.Transparency = .2;
	end);
	H.FocusLost:Connect(function()
		a.Color = k.Border;
		a.Transparency = .3;
	end);
	local l = S("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 216),
			BackgroundTransparency = 1,
			Text = "",
			TextColor3 = k.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 12,
			Parent = w,
		});
	local R = S("TextButton", {
			Size = UDim2.new(.82, 0, 0, 48),
			Position = UDim2.new(.5, 0, 0, 248),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = k.Accent,
			BorderSizePixel = 0,
			Text = "VALIDER",
			TextColor3 = k.TextOnAccent,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			AutoButtonColor = false,
			ZIndex = 13,
			Parent = w,
		});
	W(R, 12);
	E(R, "BackgroundColor3", "Accent");
	E(R, "TextColor3", "TextOnAccent");
	local O, g, d = 0, 5, false;
	local function j()
		if d then
			return;
		end;
		if H.Text == K then
			d = true;
			G.Authenticated = true;
			l.Text = "Acc\195\168s autoris\195\169";
			l.TextColor3 = k.Success;
			a.Color = k.Success;
			task.wait(.4);
			X(w, .35, function()
				G.CodeFrame = nil;
				if A then
					A();
				end;
			end);
		else
			O = O + 1;
			l.Text = string.format("Code incorrect \226\128\148 %d/%d", O, g);
			l.TextColor3 = k.Error;
			a.Color = k.Error;
			if O >= g then
				d = true;
				l.Text = "Acc\195\168s bloqu\195\169";
				task.wait(1.5);
				if f then
					f:Destroy();
				end;
				return;
			end;
			H.Text = "";
			pcall(function()
				H:CaptureFocus();
			end);
		end;
	end;
	R.MouseButton1Click:Connect(j);
	H.FocusLost:Connect(function(A)
		if A then
			j();
		end;
	end);
	task.spawn(function()
		task.wait(.6);
		pcall(function()
			H:CaptureFocus();
		end);
	end);
	C(w, .5);
	return w;
end;
zA = function()
		local w = G.Gui;
		if not w then
			return;
		end;
		if G.Shell and G.Shell.Parent then
			return;
		end;
		G.NavItems = {};
		G.CurrentPage = nil;
		local t = VA("Shell", UDim2.new(0, 820, 0, 540), w);
		G.Shell = t;
		G.MenuOpen = true;
		t.BackgroundTransparency = 1;
		u(t, .55);
		local H = S("TextButton", {
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
				Parent = t,
			});
		W(H, 8);
		q(H, k.Border, 1, .4);
		H.MouseEnter:Connect(function()
			(f:Create(H, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(200, 60, 60), BackgroundTransparency = 0 })):Play();
			(f:Create(H, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
		end);
		H.MouseLeave:Connect(function()
			(f:Create(H, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(36, 38, 48), BackgroundTransparency = .15 })):Play();
			(f:Create(H, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(220, 225, 235) })):Play();
		end);
		H.MouseButton1Click:Connect(bA);
		local l = S("Frame", {
				Name = "Sidebar",
				Size = UDim2.new(0, 240, 1, 0),
				BackgroundColor3 = k.SurfaceSide,
				BackgroundTransparency = .35,
				BorderSizePixel = 0,
				ZIndex = 8,
				Parent = t,
			});
		W(l, 20);
		G.Sidebar = l;
		local R = S("Frame", {
				Size = UDim2.new(1, 0, 0, 90),
				BackgroundColor3 = k.BgTop,
				BackgroundTransparency = .65,
				BorderSizePixel = 0,
				ZIndex = 15,
				Parent = l,
			});
		W(R, 20);
		S("Frame", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 1, -20),
			BackgroundColor3 = k.BgTop,
			BackgroundTransparency = .65,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = R,
		});
		local K = S("Frame", {
				Size = UDim2.new(0, 52, 0, 52),
				Position = UDim2.new(0, 18, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 16,
				Parent = R,
			});
		W(K, 26);
		local O = S("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 17,
				Parent = K,
			});
		W(O, 24);
		local g = S("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 18,
				Parent = O,
			});
		W(g, 24);
		task.spawn(function()
			local f, w = pcall(function()
					return A:GetUserThumbnailAsync(a.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if f and w then
				g.Image = w;
			end;
		end);
		S("TextLabel", {
			Size = UDim2.new(1, -90, 0, 22),
			Position = UDim2.new(0, 80, 0, 24),
			BackgroundTransparency = 1,
			Text = a.DisplayName,
			TextColor3 = k.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 15,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 16,
			Parent = R,
		});
		S("TextLabel", {
			Size = UDim2.new(1, -90, 0, 16),
			Position = UDim2.new(0, 80, 0, 46),
			BackgroundTransparency = 1,
			Text = "Premium",
			TextColor3 = k.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 16,
			Parent = R,
		});
		S("Frame", {
			Size = UDim2.new(1, -32, 0, 1),
			Position = UDim2.new(0, 16, 0, 90),
			BackgroundColor3 = k.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = l,
		});
		local d = S("ScrollingFrame", {
				Size = UDim2.new(1, -16, 1, -110),
				Position = UDim2.new(0, 8, 0, 100),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 3,
				ScrollBarImageColor3 = k.SurfaceHi,
				ScrollBarImageTransparency = .5,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ZIndex = 18,
				Parent = l,
			});
		S("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = d });
		tl(d, "G\195\169n\195\169ral", 1);
		wl(d, "Accueil", "home", 2);
		wl(d, "ESP", "esp", 3);
		tl(d, "Personnage", 4);
		wl(d, "Player", "player", 5);
		wl(d, "Combat", "combat", 6);
		wl(d, "Troll", "troll", 7);
		wl(d, "T\195\169l\195\169port\195\169", "teleport", 8);
		wl(d, "Animation", "animation", 9);
		wl(d, "Auto Farm", "autofarm", 10);
		tl(d, "MM2", 11);
		wl(d, "Murder", "murder", 12);
		wl(d, "Sheriff", "sheriff", 13);
		tl(d, "Autre", 14);
		wl(d, "Param\195\168tres", "settings", 15);
		G.NavItems.home.btn.MouseButton1Click:Connect(function()
			yA("home");
		end);
		G.NavItems.esp.btn.MouseButton1Click:Connect(function()
			yA("esp");
		end);
		G.NavItems.murder.btn.MouseButton1Click:Connect(function()
			yA("murder");
		end);
		G.NavItems.sheriff.btn.MouseButton1Click:Connect(function()
			yA("sheriff");
		end);
		G.NavItems.player.btn.MouseButton1Click:Connect(function()
			yA("player");
		end);
		G.NavItems.combat.btn.MouseButton1Click:Connect(function()
			yA("combat");
		end);
		G.NavItems.autofarm.btn.MouseButton1Click:Connect(function()
			yA("autofarm");
		end);
		G.NavItems.teleport.btn.MouseButton1Click:Connect(function()
			yA("teleport");
		end);
		G.NavItems.troll.btn.MouseButton1Click:Connect(function()
			yA("troll");
		end);
		G.NavItems.animation.btn.MouseButton1Click:Connect(function()
			yA("animation");
		end);
		G.NavItems.settings.btn.MouseButton1Click:Connect(function()
			yA("settings");
		end);
		local j = S("Frame", {
				Name = "Content",
				Size = UDim2.new(1, -240, 1, 0),
				Position = UDim2.new(0, 240, 0, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				ZIndex = 14,
				Parent = t,
			});
		G.Content = j;
		local E = S("ScrollingFrame", {
				Name = "Scroll",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 6,
				ScrollBarImageColor3 = k.SurfaceHi,
				ScrollBarImageTransparency = .3,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ClipsDescendants = true,
				ZIndex = 24,
				Parent = j,
			});
		G.Scroll = E;
		task.wait(.1);
		yA("home");
	end;
a.CharacterAdded:Connect(function(A)
	A:WaitForChild("Humanoid", 10);
	task.wait(.6);
	qA();
	if U.XRayEnabled then
		task.wait(.5);
		if A then
			UA(A, a);
		end;
	end;
	if L.FlyEnabled then
		T();
	end;
	if L.SpinEnabled then
		N();
	end;
	if L.JerkEnabled then
		n();
	end;
	L.Sitting = false;
	local f = A:FindFirstChildOfClass("Humanoid");
	if f then
		f.WalkSpeed = L.WalkSpeed;
		f.UseJumpPower = true;
		f.JumpPower = L.JumpPower;
	end;
	workspace.Gravity = L.Gravity;
end);
t.InputBegan:Connect(function(A, f)
	if f then
		return;
	end;
	if A.KeyCode ~= Enum.KeyCode.M then
		return;
	end;
	if not G.Authenticated then
		return;
	end;
	if G.Shell and G.Shell.Parent then
		bA();
	else
		if zA then
			zA();
		end;
	end;
end);
local function ll()
	b("Initialisation...");
	local A = l:FindFirstChild("MenuV70_GUI") or l:FindFirstChild("MenuV71_GUI");
	if A then
		A:Destroy();
	end;
	Hl();
	task.wait(M.LoadingDuration + .4);
	pA(G.LoadingFrame, function()
		G.LoadingFrame = nil;
	end);
	task.wait(.5);
	al(function()
		G.Authenticated = true;
		qA();
		zA();
	end);
end;
ll();
