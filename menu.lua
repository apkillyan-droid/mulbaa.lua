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

local q = game:GetService("Players");
local o = game:GetService("TweenService");
local m = game:GetService("RunService");
local K = game:GetService("UserInputService");
local r = game:GetService("Lighting");
local I = game:GetService("Debris");
local S = q.LocalPlayer;
local d = S:WaitForChild("PlayerGui");
local v = workspace.CurrentCamera;
local N = "Fdvo2669";
local D = "rbxassetid://126785640171935";
local l = 2.6;
local F = {
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
		ToggleOff = Color3.fromRGB(120, 120, 130),
		BubbleMine = Color3.fromRGB(115, 155, 240),
		BubbleOther = Color3.fromRGB(40, 42, 52),
	};
local f = {
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
local Q = {};
local function A(q, o, m)
	table.insert(Q, { instance = q, property = o, themeKey = m });
	return q;
end;
local function y(q, o, m)
	table.insert(Q, {
		isGradient = true,
		gradient = q,
		topKey = o,
		bottomKey = m,
	});
	return q;
end;
local function Y()
	local q = {};
	for m, K in ipairs(Q) do
		if K.isGradient then
			if K.gradient and K.gradient.Parent then
				K.gradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, F[K.topKey]), ColorSequenceKeypoint.new(1, F[K.bottomKey]) });
				table.insert(q, K);
			end;
		else
			if K.instance and K.instance.Parent then
				local m = F[K.themeKey];
				if m then
					(o:Create(K.instance, TweenInfo.new(.35), { [K.property] = m })):Play();
				end;
				table.insert(q, K);
			end;
		end;
	end;
	Q = q;
	for q, o in pairs(State.NavItems) do
		o.setActive(o.state.active);
	end;
end;
local function h(q)
	F.Accent = q.Accent;
	F.AccentDim = q.AccentDim;
	F.AccentGlow = q.AccentGlow;
	F.AccentSoft = q.AccentSoft;
	F.TextOnAccent = q.TextOnAccent;
	F.BubbleMine = q.Accent;
	Y();
end;
local O = {
		LoadingDuration = 3.5,
		ParticleSpawnRate = .1,
		ParticleMinSize = 2,
		ParticleMaxSize = 4,
		ParticleFallSpeed = 120,
		ParticlesPerTick = 2,
	};
local U = {
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
		CommunityFrame = nil,
		CommunityOpen = false,
		AIFrame = nil,
		AIOpen = false,
	};
local u = {
		EspEnabled = true,
		EspShowMurder = true,
		EspShowSheriff = true,
		EspShowInnocent = false,
		EspShowCoins = false,
		AutoShootEnabled = false,
		AutoShootRange = 500,
		AutoShootDelay = .15,
		TpAllDelay = .8,
		XRayEnabled = false,
		NotifKillFeed = true,
		NotifChatMsg = false,
	};
local s = {
		Murderer = Color3.fromRGB(255, 60, 60),
		Sheriff = Color3.fromRGB(60, 120, 255),
		Innocent = Color3.fromRGB(60, 255, 120),
		Box = Color3.fromRGB(255, 60, 60),
		Tracer = Color3.fromRGB(255, 60, 60),
	};
local H = {
		BoxEnabled = true,
		BoxThickness = 2,
		TracerEnabled = false,
		DistanceEnabled = true,
	};
local E = {
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
		Invisible = false,
	};
local e = {
		{ name = "Mulba_Owner", userId = 1, online = true },
		{ name = "ZenoX", userId = 156, online = true },
		{ name = "Lunar", userId = 261, online = false },
		{ name = "Nyx", userId = 1347, online = true },
		{ name = "Kaido", userId = 2163, online = false },
		{ name = "Sora", userId = 5072, online = true },
		{ name = "Akira", userId = 7065, online = true },
		{ name = "Rei", userId = 9288, online = false },
		{ name = "Void", userId = 11195, online = true },
		{ name = "Ghost", userId = 13607, online = false },
		{ name = "Blaze", userId = 19852, online = true },
		{ name = "Neko", userId = 25090, online = true },
	};
local j = { track = nil };
local t = {
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
local c = { av = nil };
local w = { conn = nil };
local R = {};
local M = {};
local J = {};
local Z = { knownRoles = {}, seenGroundGuns = {} };
local G = { lastRoles = {} };
local P = { savedCFrame = nil };
local X = { running = false, coinsCollected = 0, startTime = 0 };
local b = {
		FlySpeed = 120,
		CollectRadius = 200,
		AntiKickDelay = .25,
		CollectDistance = 2,
		GoUnderMap = true,
		UnderMapDepth = 6,
		RemonterApres = true,
		IgnoreIfMurderNear = false,
		MurderDistance = 50,
		OnlyInRound = true,
		TpDirect = false,
		ReturnSpawn = false,
		AutoSetMap = false,
	};
local C = { conn = nil, saved = {} };
local function a()
	local q = S.Character;
	if not q then
		return;
	end;
	for q, o in ipairs(q:GetDescendants()) do
		if o:IsA("BasePart") then
			if C.saved[o] == nil then
				C.saved[o] = { Transparency = o.Transparency, LocalTransparencyModifier = o.LocalTransparencyModifier };
			end;
			o.Transparency = 1;
			o.LocalTransparencyModifier = 1;
		elseif o:IsA("Decal") or o:IsA("Texture") then
			if C.saved[o] == nil then
				C.saved[o] = { Transparency = o.Transparency };
			end;
			o.Transparency = 1;
		elseif o:IsA("BillboardGui") then
			if C.saved[o] == nil then
				C.saved[o] = { Enabled = o.Enabled };
			end;
			o.Enabled = false;
		elseif o:IsA("Accessory") or o:IsA("Accoutrement") then
			if C.saved[o] == nil then
				C.saved[o] = { handled = true };
			end;
			local q = o:FindFirstChild("Handle");
			if q and q:IsA("BasePart") then
				q.Transparency = 1;
				q.LocalTransparencyModifier = 1;
			end;
		end;
	end;
	local o = q:FindFirstChildOfClass("Humanoid");
	if o then
		if C.saved[o] == nil then
			C.saved[o] = { DisplayDistanceType = o.DisplayDistanceType, NameDisplayDistance = o.NameDisplayDistance, HealthDisplayDistance = o.HealthDisplayDistance };
		end;
		o.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None;
		o.NameDisplayDistance = 0;
		o.HealthDisplayDistance = 0;
	end;
	if M[S] then
		local q = M[S];
		if q and q.Parent then
			q:Destroy();
		end;
		M[S] = nil;
	end;
	local m = S:FindFirstChild("PlayerGui");
	if m then
		local q = m:FindFirstChild("MulbaHeadGui");
		if q then
			if C.saved[q] == nil then
				C.saved[q] = { Enabled = q.Enabled };
			end;
			q.Enabled = false;
		end;
	end;
	for q, o in ipairs(q:GetChildren()) do
		if o:IsA("Tool") then
			for q, o in ipairs(o:GetDescendants()) do
				if o:IsA("BasePart") then
					if C.saved[o] == nil then
						C.saved[o] = { Transparency = o.Transparency, LocalTransparencyModifier = o.LocalTransparencyModifier };
					end;
					o.Transparency = 1;
					o.LocalTransparencyModifier = 1;
				elseif o:IsA("Decal") or o:IsA("Texture") then
					if C.saved[o] == nil then
						C.saved[o] = { Transparency = o.Transparency };
					end;
					o.Transparency = 1;
				end;
			end;
		end;
	end;
end;
local function L()
	for q, o in pairs(C.saved) do
		if q and q.Parent then
			pcall(function()
				if o.Transparency ~= nil and q.Transparency ~= nil then
					q.Transparency = o.Transparency;
				end;
				if o.LocalTransparencyModifier ~= nil and q.LocalTransparencyModifier ~= nil then
					q.LocalTransparencyModifier = o.LocalTransparencyModifier;
				end;
				if o.Enabled ~= nil and q.Enabled ~= nil then
					q.Enabled = o.Enabled;
				end;
				if o.DisplayDistanceType ~= nil then
					q.DisplayDistanceType = o.DisplayDistanceType;
				end;
				if o.NameDisplayDistance ~= nil then
					q.NameDisplayDistance = o.NameDisplayDistance;
				end;
				if o.HealthDisplayDistance ~= nil then
					q.HealthDisplayDistance = o.HealthDisplayDistance;
				end;
			end);
		end;
	end;
	C.saved = {};
	local q = S:FindFirstChild("PlayerGui");
	if q then
		local o = q:FindFirstChild("MulbaHeadGui");
		if o then
			o.Enabled = true;
		end;
	end;
end;
local function k()
	E.Invisible = true;
	C.saved = {};
	a();
	if C.conn then
		C.conn:Disconnect();
	end;
	C.conn = m.Heartbeat:Connect(function()
			if not E.Invisible then
				return;
			end;
			local q = S.Character;
			if not q then
				return;
			end;
			for q, o in ipairs(q:GetDescendants()) do
				if o:IsA("BasePart") then
					o.LocalTransparencyModifier = 1;
					if o.Transparency ~= 1 then
						o.Transparency = 1;
					end;
				end;
			end;
			local o = q:FindFirstChildOfClass("Humanoid");
			if o then
				o.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None;
			end;
		end);
end;
local function z()
	E.Invisible = false;
	if C.conn then
		C.conn:Disconnect();
		C.conn = nil;
	end;
	L();
end;
local function T()
	if E.Invisible then
		z();
	else
		k();
	end;
end;
local function W(...)
	print("[MENU-V72]", ...);
end;
local function B(q, o)
	local m = Instance.new(q);
	for q, o in pairs(o or {}) do
		m[q] = o;
	end;
	return m;
end;
local function i(q, o)
	return B("UICorner", { CornerRadius = UDim.new(0, o or 8), Parent = q });
end;
local function V(q, o, m, K)
	return B("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, o), ColorSequenceKeypoint.new(1, m) }), Rotation = K or 90, Parent = q });
end;
local function p(q, o, m, K)
	return B("UIStroke", {
		Color = o or F.Border,
		Thickness = m or 1,
		Transparency = K or 0,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = q,
	});
end;
local function x(q, o, m, K)
	K = K or 8;
	local r = B("Frame", { Size = UDim2.new(0, K + 2, 0, K + 2), BackgroundTransparency = 1, Parent = q });
	local I, S = (o == "right") and 45 or -45, (o == "right") and -45 or 45;
	local d = B("Frame", {
			Size = UDim2.new(0, K, 0, 2),
			Position = UDim2.new(.5, -1, .5, -3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = m or F.TextMuted,
			BorderSizePixel = 0,
			Rotation = I,
			Parent = r,
		});
	i(d, 1);
	local v = B("Frame", {
			Size = UDim2.new(0, K, 0, 2),
			Position = UDim2.new(.5, -1, .5, 3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = m or F.TextMuted,
			BorderSizePixel = 0,
			Rotation = S,
			Parent = r,
		});
	i(v, 1);
	return r, d, v;
end;
local function n(q, m)
	m = m or .45;
	local K = q.Size;
	q.Size = UDim2.new(0, K.X.Offset * .85, 0, K.Y.Offset * .85);
	q.BackgroundTransparency = 1;
	(o:Create(q, TweenInfo.new(m, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = K, BackgroundTransparency = 0 })):Play();
end;
local function g(q, m, K)
	m = m or .32;
	local r = q.Size;
	(o:Create(q, TweenInfo.new(m, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Size = UDim2.new(0, r.X.Offset * .85, 0, r.Y.Offset * .85), BackgroundTransparency = 1 })):Play();
	for q, K in ipairs(q:GetDescendants()) do
		if K:IsA("TextLabel") or K:IsA("TextBox") then
			(o:Create(K, TweenInfo.new(m * .85), { TextTransparency = 1 })):Play();
		elseif K:IsA("TextButton") then
			(o:Create(K, TweenInfo.new(m * .85), { BackgroundTransparency = 1 })):Play();
		elseif K:IsA("Frame") and K.Name ~= "ParticleZone" then
			if K.BackgroundTransparency < 1 then
				(o:Create(K, TweenInfo.new(m * .85), { BackgroundTransparency = 1 })):Play();
			end;
		elseif K:IsA("ImageLabel") then
			(o:Create(K, TweenInfo.new(m * .85), { ImageTransparency = 1 })):Play();
		elseif K:IsA("UIStroke") then
			(o:Create(K, TweenInfo.new(m * .85), { Transparency = 1 })):Play();
		end;
	end;
	local I = q.Parent and q.Parent:FindFirstChild(q.Name .. "_ShadowHolder");
	if I then
		for q, K in ipairs(I:GetChildren()) do
			if K:IsA("Frame") then
				(o:Create(K, TweenInfo.new(m * .85), { BackgroundTransparency = 1 })):Play();
			end;
		end;
	end;
	task.delay(m + .05, function()
		if I and I.Parent then
			I:Destroy();
		end;
		if q and q.Parent then
			q:Destroy();
		end;
		if K then
			K();
		end;
	end);
end;
local function qq(q, m)
	m = m or .5;
	local K = q.Size;
	q.Size = UDim2.new(0, K.X.Offset * .85, 0, K.Y.Offset * .85);
	q.BackgroundTransparency = 1;
	for q, K in ipairs(q:GetDescendants()) do
		if K:IsA("TextLabel") or K:IsA("TextBox") then
			K.TextTransparency = 1;
			(o:Create(K, TweenInfo.new(m), { TextTransparency = 0 })):Play();
		elseif K:IsA("TextButton") then
			K.BackgroundTransparency = 1;
		elseif K:IsA("ImageLabel") then
			K.ImageTransparency = 1;
			(o:Create(K, TweenInfo.new(m), { ImageTransparency = 0 })):Play();
		end;
	end;
	(o:Create(q, TweenInfo.new(m, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = K, BackgroundTransparency = 0 })):Play();
end;
local function oq(q, m, K)
	local r = S:FindFirstChild("PlayerGui");
	if not r then
		return;
	end;
	local I = r:FindFirstChild("MulbaNotif");
	if I then
		I:Destroy();
	end;
	local d = B("ScreenGui", {
			Name = "MulbaNotif",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 1000,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Parent = r,
		});
	local v = B("Frame", {
			Size = UDim2.new(0, 320, 0, 80),
			Position = UDim2.new(1, 20, 0, 100),
			BackgroundColor3 = F.BgTop,
			BackgroundTransparency = .05,
			BorderSizePixel = 0,
			ZIndex = 1000,
			Parent = d,
		});
	i(v, 14);
	V(v, F.BgTop, F.BgBottom, 90);
	B("UIStroke", {
		Color = K and Color3.fromRGB(255, 100, 100) or F.Accent,
		Thickness = 2,
		Transparency = .2,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = v,
	});
	B("TextLabel", {
		Size = UDim2.new(1, -60, 0, 20),
		Position = UDim2.new(0, 20, 0, 14),
		BackgroundTransparency = 1,
		Text = q,
		TextColor3 = K and Color3.fromRGB(255, 120, 120) or F.Accent,
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 1001,
		Parent = v,
	});
	B("TextLabel", {
		Size = UDim2.new(1, -60, 0, 30),
		Position = UDim2.new(0, 20, 0, 36),
		BackgroundTransparency = 1,
		Text = m,
		TextColor3 = F.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		ZIndex = 1001,
		Parent = v,
	});
	(o:Create(v, TweenInfo.new(.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.new(1, -340, 0, 100) })):Play();
	task.delay(5, function()
		if not v.Parent then
			return;
		end;
		(o:Create(v, TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(1, 20, 0, 100), BackgroundTransparency = 1 })):Play();
		for q, m in ipairs(v:GetDescendants()) do
			if m:IsA("TextLabel") then
				(o:Create(m, TweenInfo.new(.4), { TextTransparency = 1 })):Play();
			end;
		end;
		task.wait(.5);
		d:Destroy();
	end);
end;
local mq = nil;
local Kq = nil;
local function rq()
	local q = S:FindFirstChild("PlayerGui");
	if not q then
		return;
	end;
	if mq and mq.Parent then
		return;
	end;
	mq = B("ScreenGui", {
			Name = "MulbaKillFeed",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 950,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Parent = q,
		});
	local o = B("Frame", {
			Size = UDim2.new(0, 340, 0, 500),
			Position = UDim2.new(1, -360, 1, -520),
			BackgroundTransparency = 1,
			ZIndex = 950,
			Parent = mq,
		});
	Kq = B("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ZIndex = 951,
			Parent = o,
		});
	B("UIListLayout", {
		Padding = UDim.new(0, 6),
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Bottom,
		Parent = Kq,
	});
end;
local function Iq(q, m)
	if not u.NotifKillFeed then
		return;
	end;
	rq();
	if not Kq then
		return;
	end;
	local K = B("Frame", {
			Size = UDim2.new(1, 0, 0, 42),
			BackgroundColor3 = F.Surface,
			BackgroundTransparency = .15,
			BorderSizePixel = 0,
			ZIndex = 952,
			Parent = Kq,
		});
	i(K, 10);
	B("UIStroke", {
		Color = F.Border,
		Thickness = 1,
		Transparency = .5,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = K,
	});
	local r = B("Frame", {
			Size = UDim2.new(0, 3, 0, 26),
			Position = UDim2.new(0, 10, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = m or Color3.fromRGB(255, 80, 80),
			BorderSizePixel = 0,
			ZIndex = 953,
			Parent = K,
		});
	i(r, 2);
	B("TextLabel", {
		Size = UDim2.new(1, -30, 1, 0),
		Position = UDim2.new(0, 22, 0, 0),
		BackgroundTransparency = 1,
		Text = q,
		TextColor3 = m or F.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 953,
		Parent = K,
	});
	task.delay(6, function()
		if not K.Parent then
			return;
		end;
		(o:Create(K, TweenInfo.new(.4), { BackgroundTransparency = 1 })):Play();
		for q, m in ipairs(K:GetDescendants()) do
			if m:IsA("TextLabel") then
				(o:Create(m, TweenInfo.new(.4), { TextTransparency = 1 })):Play();
			end;
			if m:IsA("Frame") then
				(o:Create(m, TweenInfo.new(.4), { BackgroundTransparency = 1 })):Play();
			end;
		end;
		task.wait(.5);
		K:Destroy();
	end);
end;
local function Sq(q)
	if not q then
		return "Innocent";
	end;
	if q:FindFirstChild("Role") then
		local o, m = pcall(function()
				return tostring(q.Role.Value);
			end);
		if o and (m and m ~= "") then
			return m;
		end;
	end;
	local o = q.Character;
	local m = q:FindFirstChild("Backpack");
	if o then
		if o:FindFirstChild("Knife") then
			return "Murderer";
		end;
		if o:FindFirstChild("Gun") then
			return "Sheriff";
		end;
	end;
	if m then
		if m:FindFirstChild("Knife") then
			return "Murderer";
		end;
		if m:FindFirstChild("Gun") then
			return "Sheriff";
		end;
	end;
	return "Innocent";
end;
local function dq()
	for q, o in ipairs(q:GetPlayers()) do
		if o == S then
			continue;
		end;
		if Sq(o) == "Murderer" then
			return o;
		end;
	end;
	return nil;
end;
local function vq()
	for q, o in ipairs(q:GetPlayers()) do
		if o == S then
			continue;
		end;
		if Sq(o) == "Sheriff" then
			return o;
		end;
	end;
	return nil;
end;
local function Nq(q)
	if q == "Murderer" then
		return s.Murderer;
	end;
	if q == "Sheriff" then
		return s.Sheriff;
	end;
	return s.Innocent;
end;
local function Dq(q)
	if q == "Murderer" then
		return u.EspShowMurder;
	end;
	if q == "Sheriff" then
		return u.EspShowSheriff;
	end;
	return u.EspShowInnocent;
end;
task.spawn(function()
	while true do
		task.wait(.5);
		if u.NotifKillFeed then
			for q, o in ipairs(q:GetPlayers()) do
				if o == S then
					continue;
				end;
				local m = Sq(o);
				local K = Z.knownRoles[o];
				if m ~= K then
					Z.knownRoles[o] = m;
					if m == "Murderer" then
						Iq("\240\159\148\170 " .. (o.Name .. " est Murderer"), Color3.fromRGB(255, 80, 80));
					elseif m == "Sheriff" then
						Iq("\240\159\148\171 " .. (o.Name .. " est Sheriff"), Color3.fromRGB(80, 140, 255));
					elseif K == "Murderer" or K == "Sheriff" then
						Iq("\240\159\146\128 " .. (o.Name .. (" n\'est plus " .. ((K or "?")))), Color3.fromRGB(200, 200, 200));
					end;
				end;
			end;
			for q, o in ipairs(workspace:GetChildren()) do
				if o:IsA("Tool") and (o.Name == "Gun" and o:FindFirstChild("Handle")) then
					if not Z.seenGroundGuns[o] then
						Z.seenGroundGuns[o] = true;
						Iq("\240\159\148\171 Gun au sol !", Color3.fromRGB(255, 180, 80));
					end;
				end;
			end;
		end;
	end;
end);
local function lq(q)
	pcall(function()
		(game:GetService("StarterGui")):SetCore("ChatMakeSystemMessage", { Text = "[Mulba] " .. q, Color = Color3.fromRGB(115, 155, 240), Font = Enum.Font.GothamBold });
	end);
end;
local function Fq()
	local o, m = {}, {};
	for q, K in ipairs(q:GetPlayers()) do
		if K == S then
			continue;
		end;
		local r = Sq(K);
		if r == "Murderer" then
			table.insert(o, K.Name);
		end;
		if r == "Sheriff" then
			table.insert(m, K.Name);
		end;
	end;
	local K = #o > 0 and table.concat(o, ", ") or "?";
	local r = #m > 0 and table.concat(m, ", ") or "?";
	lq("Murder : " .. (K .. (" | Sheriff : " .. r)));
end;
task.spawn(function()
	while true do
		task.wait(1);
		if u.NotifChatMsg then
			local o = false;
			for q, m in ipairs(q:GetPlayers()) do
				if m == S then
					continue;
				end;
				local K = Sq(m);
				if K ~= G.lastRoles[m] then
					G.lastRoles[m] = K;
					o = true;
				end;
			end;
			if o then
				Fq();
			end;
		end;
	end;
end);
local function fq()
	local q = S.Character;
	if not q then
		return;
	end;
	local o = q:FindFirstChildOfClass("Humanoid");
	if not o then
		return;
	end;
	local m = Instance.new("Animation");
	m.AnimationId = "rbxassetid://77643987647373";
	pcall(function()
		local q = o:LoadAnimation(m);
		q.Priority = Enum.AnimationPriority.Action4;
		q.Looped = true;
		q:Play();
		j.track = q;
	end);
end;
local function Qq()
	if j.track then
		pcall(function()
			j.track:Stop();
		end);
		j.track = nil;
	end;
end;
local function Aq()
	if not E.FlyEnabled and not t.nowe then
		return;
	end;
	E.FlyEnabled = false;
	t.nowe = false;
	t.tpwalking = false;
	if t.conn then
		t.conn:Disconnect();
		t.conn = nil;
	end;
	if t.bg then
		pcall(function()
			t.bg:Destroy();
		end);
		t.bg = nil;
	end;
	if t.bv then
		pcall(function()
			t.bv:Destroy();
		end);
		t.bv = nil;
	end;
	t.ctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		};
	t.lastctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		};
	t.speed = 0;
	Qq();
	local q = S.Character;
	if not q then
		return;
	end;
	local o = q:FindFirstChildOfClass("Humanoid");
	if o then
		pcall(function()
			o.PlatformStand = false;
			o:SetStateEnabled(Enum.HumanoidStateType.Climbing, true);
			o:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true);
			o:SetStateEnabled(Enum.HumanoidStateType.Flying, true);
			o:SetStateEnabled(Enum.HumanoidStateType.Freefall, true);
			o:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true);
			o:SetStateEnabled(Enum.HumanoidStateType.Jumping, true);
			o:SetStateEnabled(Enum.HumanoidStateType.Landed, true);
			o:SetStateEnabled(Enum.HumanoidStateType.Physics, true);
			o:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true);
			o:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true);
			o:SetStateEnabled(Enum.HumanoidStateType.Running, true);
			o:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true);
			o:SetStateEnabled(Enum.HumanoidStateType.Seated, true);
			o:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true);
			o:SetStateEnabled(Enum.HumanoidStateType.Swimming, true);
		end);
	end;
	local m = q:FindFirstChild("Animate");
	if m then
		m.Disabled = t.savedAnimDisabled or false;
	end;
end;
local function yq()
	local q = S.Character;
	if not q then
		return;
	end;
	local o = q:FindFirstChildOfClass("Humanoid");
	if not o then
		return;
	end;
	E.FlyEnabled = true;
	t.nowe = true;
	t.tpwalking = true;
	t.savedAnimDisabled = q:FindFirstChild("Animate") and q.Animate.Disabled or false;
	local r = math.clamp(math.floor(E.FlySpeed / 10), 1, 50);
	for q = 1, r, 1 do
		task.spawn(function()
			local q = m.Heartbeat;
			while t.tpwalking and q:Wait() do
				local q = S.Character;
				local o = q and q:FindFirstChildOfClass("Humanoid");
				if not ((q and (o and o.Parent))) then
					break;
				end;
				if o.MoveDirection.Magnitude > 0 then
					pcall(function()
						q:TranslateBy(o.MoveDirection);
					end);
				end;
			end;
		end);
	end;
	local I = q:FindFirstChild("Animate");
	if I then
		I.Disabled = true;
	end;
	for q, o in next, o:GetPlayingAnimationTracks() do
		pcall(function()
			o:AdjustSpeed(0);
		end);
	end;
	pcall(function()
		o:SetStateEnabled(Enum.HumanoidStateType.Climbing, false);
		o:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false);
		o:SetStateEnabled(Enum.HumanoidStateType.Flying, false);
		o:SetStateEnabled(Enum.HumanoidStateType.Freefall, false);
		o:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false);
		o:SetStateEnabled(Enum.HumanoidStateType.Jumping, false);
		o:SetStateEnabled(Enum.HumanoidStateType.Landed, false);
		o:SetStateEnabled(Enum.HumanoidStateType.Physics, false);
		o:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false);
		o:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false);
		o:SetStateEnabled(Enum.HumanoidStateType.Running, false);
		o:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false);
		o:SetStateEnabled(Enum.HumanoidStateType.Seated, false);
		o:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false);
		o:SetStateEnabled(Enum.HumanoidStateType.Swimming, false);
		o:ChangeState(Enum.HumanoidStateType.Swimming);
	end);
	local d = (o.RigType == Enum.HumanoidRigType.R6);
	local v = d and q:FindFirstChild("Torso") or q:FindFirstChild("UpperTorso");
	if not v then
		v = q:FindFirstChild("HumanoidRootPart");
	end;
	if not v then
		Aq();
		return;
	end;
	local N = Instance.new("BodyGyro");
	N.P = 90000;
	N.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000);
	N.CFrame = v.CFrame;
	N.Parent = v;
	t.bg = N;
	local D = Instance.new("BodyVelocity");
	D.Velocity = Vector3.new(0, .1, 0);
	D.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000);
	D.Parent = v;
	t.bv = D;
	pcall(function()
		o.PlatformStand = true;
	end);
	task.wait(.15);
	fq();
	t.conn = m.RenderStepped:Connect(function()
			if not t.nowe then
				return;
			end;
			local q = S.Character;
			if not q then
				return;
			end;
			local o = q:FindFirstChildOfClass("Humanoid");
			if not o or o.Health <= 0 then
				return;
			end;
			local m = workspace.CurrentCamera;
			if not m then
				return;
			end;
			local r = t.ctrl;
			r.f = K:IsKeyDown(Enum.KeyCode.W) and 1 or 0;
			r.b = K:IsKeyDown(Enum.KeyCode.S) and 1 or 0;
			r.l = K:IsKeyDown(Enum.KeyCode.A) and 1 or 0;
			r.r = K:IsKeyDown(Enum.KeyCode.D) and 1 or 0;
			local I = t.maxspeed;
			if r.l + r.r ~= 0 or r.f + r.b ~= 0 then
				t.speed = (t.speed + .5) + (t.speed / I);
				if t.speed > I then
					t.speed = I;
				end;
			elseif not ((r.l + r.r ~= 0 or r.f + r.b ~= 0)) and t.speed ~= 0 then
				t.speed = t.speed - 1;
				if t.speed < 0 then
					t.speed = 0;
				end;
			end;
			if t.bv then
				if (r.l + r.r) ~= 0 or (r.f + r.b) ~= 0 then
					t.bv.Velocity = (((m.CFrame.LookVector * ((r.f + r.b))) + (((m.CFrame * (CFrame.new(r.l + r.r, ((r.f + r.b)) * .2, 0)).p) - m.CFrame.p)))) * t.speed;
					t.lastctrl = {
							f = r.f,
							b = r.b,
							l = r.l,
							r = r.r,
						};
				elseif (r.l + r.r) == 0 and ((r.f + r.b) == 0 and t.speed ~= 0) then
					t.bv.Velocity = (((m.CFrame.LookVector * ((t.lastctrl.f + t.lastctrl.b))) + (((m.CFrame * (CFrame.new(t.lastctrl.l + t.lastctrl.r, ((t.lastctrl.f + t.lastctrl.b)) * .2, 0)).p) - m.CFrame.p)))) * t.speed;
				else
					t.bv.Velocity = Vector3.new(0, 0, 0);
				end;
			end;
			if t.bg then
				t.bg.CFrame = m.CFrame * CFrame.Angles(-math.rad(((((r.f + r.b)) * 50) * t.speed) / I), 0, 0);
			end;
		end);
end;
local function Yq()
	if E.FlyEnabled or t.nowe then
		Aq();
	else
		yq();
	end;
end;
local function hq()
	if t.bindConn then
		t.bindConn:Disconnect();
		t.bindConn = nil;
	end;
	if not E.FlyBind then
		return;
	end;
	t.bindConn = K.InputBegan:Connect(function(q, o)
			if o then
				return;
			end;
			if q.UserInputType ~= Enum.UserInputType.Keyboard then
				return;
			end;
			if q.KeyCode == E.FlyBind then
				Yq();
			end;
		end);
end;
local function Oq(q)
	E.FlyBind = q;
	hq();
end;
local function Uq()
	E.SpinEnabled = false;
	if c.av then
		c.av:Destroy();
		c.av = nil;
	end;
end;
local function uq()
	local q = S.Character;
	if not q then
		return;
	end;
	local o = q:FindFirstChild("HumanoidRootPart");
	if not o then
		return;
	end;
	E.SpinEnabled = true;
	local m = Instance.new("BodyAngularVelocity");
	m.AngularVelocity = Vector3.new(0, E.SpinSpeed, 0);
	m.MaxTorque = Vector3.new(0, 9000000000, 0);
	m.P = 1250;
	m.Parent = o;
	c.av = m;
end;
local function sq()
	if E.SpinEnabled then
		Uq();
	else
		uq();
	end;
end;
local function Hq(q)
	E.SpinSpeed = q;
	if c.av then
		c.av.AngularVelocity = Vector3.new(0, q, 0);
	end;
end;
local function Eq()
	E.JerkEnabled = false;
	if w.conn then
		w.conn:Disconnect();
		w.conn = nil;
	end;
	local q = S.Character;
	local o = q and q:FindFirstChild("HumanoidRootPart");
	if o then
		pcall(function()
			o.AssemblyLinearVelocity = Vector3.zero;
			o.Velocity = Vector3.zero;
		end);
	end;
end;
local function eq()
	local q = S.Character;
	if not q then
		return;
	end;
	local o = q:FindFirstChild("HumanoidRootPart");
	if not o then
		return;
	end;
	E.JerkEnabled = true;
	w.conn = m.Heartbeat:Connect(function()
			if not E.JerkEnabled then
				return;
			end;
			local q = S.Character;
			local o = q and q:FindFirstChild("HumanoidRootPart");
			if not o then
				return;
			end;
			local m = E.JerkIntensity;
			local K = Vector3.new((((math.random() - .5)) * m) * 8, (((math.random() - .5)) * m) * 8, (((math.random() - .5)) * m) * 8);
			pcall(function()
				o.AssemblyLinearVelocity = o.AssemblyLinearVelocity + K;
				o.Velocity = o.Velocity + K;
			end);
		end);
end;
local function jq()
	if E.JerkEnabled then
		Eq();
	else
		eq();
	end;
end;
local function tq(q)
	E.JerkIntensity = q;
end;
local function cq()
	E.Sitting = not E.Sitting;
	local q = S.Character;
	local o = q and q:FindFirstChildOfClass("Humanoid");
	if not o then
		return;
	end;
	o.Sit = E.Sitting;
end;
task.spawn(function()
	while true do
		task.wait(.15);
		if E.NoclipEnabled and not E.FlyEnabled then
			local q = S.Character;
			if q then
				for q, o in ipairs(q:GetDescendants()) do
					if o:IsA("BasePart") and o.CanCollide then
						o.CanCollide = false;
					end;
				end;
			end;
		end;
	end;
end);
local function wq()
	E.NoclipEnabled = not E.NoclipEnabled;
	local q = S.Character;
	if q and not E.NoclipEnabled then
		for q, o in ipairs(q:GetDescendants()) do
			if o:IsA("BasePart") then
				o.CanCollide = true;
			end;
		end;
	end;
end;
local function Rq(q)
	E.WalkSpeed = q;
	local o = S.Character;
	local m = o and o:FindFirstChildOfClass("Humanoid");
	if m then
		m.WalkSpeed = q;
	end;
end;
local function Mq(q)
	E.JumpPower = q;
	local o = S.Character;
	local m = o and o:FindFirstChildOfClass("Humanoid");
	if m then
		m.UseJumpPower = true;
		m.JumpPower = q;
	end;
end;
local function Jq(q)
	E.Gravity = q;
	workspace.Gravity = q;
end;
local Zq = nil;
local function Gq()
	E.InfiniteJump = not E.InfiniteJump;
	if E.InfiniteJump then
		if Zq then
			Zq:Disconnect();
		end;
		Zq = K.JumpRequest:Connect(function()
				local q = S.Character;
				local o = q and q:FindFirstChildOfClass("Humanoid");
				if o then
					o:ChangeState(Enum.HumanoidStateType.Jumping);
				end;
			end);
	else
		if Zq then
			Zq:Disconnect();
			Zq = nil;
		end;
	end;
end;
local Pq = nil;
local function Xq()
	E.AntiAFK = not E.AntiAFK;
	if E.AntiAFK then
		if Pq then
			Pq:Disconnect();
		end;
		Pq = S.Idled:Connect(function()
				local q = game:GetService("VirtualUser");
				q:CaptureController();
				q:ClickButton2(Vector2.new());
			end);
	else
		if Pq then
			Pq:Disconnect();
			Pq = nil;
		end;
	end;
end;
local bq = {};
local function Cq()
	E.Fullbright = not E.Fullbright;
	if E.Fullbright then
		bq.Ambient = r.Ambient;
		bq.OutdoorAmbient = r.OutdoorAmbient;
		bq.Brightness = r.Brightness;
		bq.ClockTime = r.ClockTime;
		r.Ambient = Color3.fromRGB(255, 255, 255);
		r.OutdoorAmbient = Color3.fromRGB(255, 255, 255);
		r.Brightness = 3;
		r.ClockTime = 14;
		local q = r:FindFirstChild("MulbaFullbright");
		if not q then
			q = Instance.new("ColorCorrectionEffect");
			q.Name = "MulbaFullbright";
			q.Parent = r;
		end;
	else
		if bq.Ambient then
			r.Ambient = bq.Ambient;
		end;
		if bq.OutdoorAmbient then
			r.OutdoorAmbient = bq.OutdoorAmbient;
		end;
		if bq.Brightness then
			r.Brightness = bq.Brightness;
		end;
		if bq.ClockTime then
			r.ClockTime = bq.ClockTime;
		end;
		local q = r:FindFirstChild("MulbaFullbright");
		if q then
			q:Destroy();
		end;
	end;
end;
local function aq()
	E.AntiFling = not E.AntiFling;
end;
task.spawn(function()
	while true do
		task.wait(.1);
		if E.AntiFling then
			local q = S.Character;
			local o = q and q:FindFirstChild("HumanoidRootPart");
			if o then
				for q, o in ipairs(o:GetChildren()) do
					if o:IsA("BodyVelocity") then
						if o.Velocity.Magnitude > 500 then
							o.Velocity = o.Velocity.Unit * 500;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local function Lq()
	local q = S.Character;
	local o = q and q:FindFirstChildOfClass("Humanoid");
	if o then
		o.Health = 0;
	end;
end;
local function kq()
	local q = S.Character;
	local o = q and q:FindFirstChild("HumanoidRootPart");
	if not o then
		return;
	end;
	for q, m in ipairs(workspace:GetDescendants()) do
		if m:IsA("SpawnLocation") then
			pcall(function()
				o.CFrame = m.CFrame + Vector3.new(0, 3, 0);
			end);
			return;
		end;
	end;
end;
local function zq(q)
	local o = S.Character;
	local m = o and o:FindFirstChild("HumanoidRootPart");
	if not m then
		return;
	end;
	P.savedCFrame = m.CFrame;
	if not q then
		oq("MAP", "Position sauvegard\195\169e", false);
	end;
end;
local function Tq()
	if not P.savedCFrame then
		oq("MAP", "Aucune position sauvegard\195\169e", true);
		return;
	end;
	local q = S.Character;
	local o = q and q:FindFirstChild("HumanoidRootPart");
	if not o then
		return;
	end;
	pcall(function()
		o.CFrame = P.savedCFrame + Vector3.new(0, 3, 0);
	end);
	oq("MAP", "TP \195\160 la position sauvegard\195\169e", false);
end;
local function Wq()
	local q = {};
	for o, m in ipairs(workspace:GetDescendants()) do
		if m:IsA("BasePart") then
			local o = m.Name;
			if o == "Coin" or o:find("Coin") or o:find("coin") then
				if m.Transparency < 1 then
					table.insert(q, m);
				end;
			end;
		end;
	end;
	return q;
end;
local function Bq()
	local q = S.Character;
	return q and q:FindFirstChild("HumanoidRootPart");
end;
local function iq(q, o)
	local m = Bq();
	if not m then
		return;
	end;
	o = o or b.FlySpeed;
	local K = m.Position;
	local r = q - K;
	local I = r.Magnitude;
	if I < 1 then
		return;
	end;
	local S = 5;
	local d = math.max(1, math.floor(I / S));
	local v = math.max(.015, ((I / o)) / d);
	for q = 1, d, 1 do
		if not X.running then
			return;
		end;
		local o = q / d;
		local I = K + r * o;
		pcall(function()
			m.CFrame = CFrame.new(I);
			m.AssemblyLinearVelocity = Vector3.zero;
			m.Velocity = Vector3.zero;
		end);
		task.wait(v);
	end;
end;
local function Vq(q, o, m)
	local K = Bq();
	if not K then
		return;
	end;
	local r = ((m or K.Position.Y)) - b.UnderMapDepth;
	local I = Vector3.new(q or K.Position.X, r, o or K.Position.Z);
	iq(I, b.FlySpeed * 1.5);
end;
local function pq()
	local o = Bq();
	if not o then
		return false;
	end;
	for q, m in ipairs(q:GetPlayers()) do
		if m == S then
			continue;
		end;
		if Sq(m) == "Murderer" then
			local q = m.Character and m.Character:FindFirstChild("HumanoidRootPart");
			if q then
				local m = ((q.Position - o.Position)).Magnitude;
				if m <= b.MurderDistance then
					return true;
				end;
			end;
		end;
	end;
	return false;
end;
local function xq()
	if X.running then
		return;
	end;
	X.running = true;
	X.coinsCollected = 0;
	X.startTime = tick();
	task.spawn(function()
		while X.running do
			local q = S.Character;
			local o = q and q:FindFirstChild("HumanoidRootPart");
			if not o then
				task.wait(.3);
				continue;
			end;
			if b.IgnoreIfMurderNear and pq() then
				if b.GoUnderMap then
					Vq(o.Position.X, o.Position.Z, o.Position.Y);
				end;
				task.wait(1);
				continue;
			end;
			local m = Wq();
			if #m == 0 then
				if b.GoUnderMap then
					Vq(o.Position.X, o.Position.Z, o.Position.Y);
				end;
				task.wait(1.5);
				continue;
			end;
			local K, r = nil, math.huge;
			for q, m in ipairs(m) do
				if m and m.Parent then
					local q = ((m.Position - o.Position)).Magnitude;
					if q < r and q <= b.CollectRadius then
						r = q;
						K = m;
					end;
				end;
			end;
			if not K then
				if b.GoUnderMap then
					Vq(o.Position.X, o.Position.Z, o.Position.Y);
				end;
				task.wait(1);
				continue;
			end;
			local I = K.Position + Vector3.new(0, b.CollectDistance, 0);
			if b.TpDirect then
				pcall(function()
					o.CFrame = CFrame.new(I);
					o.AssemblyLinearVelocity = Vector3.zero;
					o.Velocity = Vector3.zero;
				end);
				task.wait(.15);
			else
				iq(I, b.FlySpeed);
				task.wait(.1);
			end;
			X.coinsCollected = X.coinsCollected + 1;
			if b.GoUnderMap then
				Vq(K.Position.X, K.Position.Z, K.Position.Y);
			end;
			task.wait(b.AntiKickDelay);
		end;
	end);
end;
local function nq()
	X.running = false;
	local q = S.Character;
	local o = q and q:FindFirstChildOfClass("Humanoid");
	if o then
		o.WalkSpeed = E.WalkSpeed;
	end;
end;
local function gq()
	if X.running then
		nq();
	else
		xq();
	end;
end;
local qY = { running = false, conn = nil };
local function oY()
	if qY.running then
		return;
	end;
	qY.running = true;
	qY.conn = m.Heartbeat:Connect(function()
			if not qY.running then
				return;
			end;
			local o = S.Character;
			if not o then
				return;
			end;
			local m = o:FindFirstChild("HumanoidRootPart");
			if not m then
				return;
			end;
			local K = m.CFrame;
			local r = 4;
			local I = K.Position + (K.LookVector * r);
			for q, o in ipairs(q:GetPlayers()) do
				if o ~= S and o.Character then
					local q = o.Character:FindFirstChild("HumanoidRootPart");
					if q then
						pcall(function()
							q.CFrame = CFrame.new(I, I + K.LookVector);
							q.AssemblyLinearVelocity = Vector3.zero;
							q.Velocity = Vector3.zero;
						end);
					end;
				end;
			end;
		end);
end;
local function mY()
	qY.running = false;
	if qY.conn then
		qY.conn:Disconnect();
		qY.conn = nil;
	end;
end;
local function KY()
	if qY.running then
		mY();
	else
		oY();
	end;
end;
local rY = { conn = nil, weld = nil, target = nil };
local function IY()
	if rY.conn then
		rY.conn:Disconnect();
		rY.conn = nil;
	end;
	if rY.weld and rY.weld.Parent then
		rY.weld:Destroy();
	end;
	rY.weld = nil;
	rY.target = nil;
	local q = S.Character;
	local o = q and q:FindFirstChildOfClass("Humanoid");
	if o then
		pcall(function()
			o.PlatformStand = false;
			o.Sit = false;
		end);
	end;
end;
local function SY()
	local q = U.TrollSelected;
	if not q or not q.Character then
		oq("Attach", "Aucune cible valide", true);
		return;
	end;
	local o = q.Character:FindFirstChild("Head");
	local K = S.Character;
	local r = K and K:FindFirstChild("HumanoidRootPart");
	if not o or not r then
		oq("Attach", "Impossible de s\'accrocher", true);
		return;
	end;
	local I = o:FindFirstChild("MulbaAttachPoint");
	if not I then
		I = Instance.new("Attachment");
		I.Name = "MulbaAttachPoint";
		I.CFrame = CFrame.new(0, .7, 0);
		I.Parent = o;
	end;
	local d = Instance.new("WeldConstraint");
	d.Part0 = r;
	d.Part1 = o;
	d.Parent = r;
	rY.weld = d;
	rY.target = q;
	r.CFrame = o.CFrame * CFrame.new(0, 2, 0);
	local v = K:FindFirstChildOfClass("Humanoid");
	if v then
		pcall(function()
			v.PlatformStand = true;
		end);
	end;
	rY.conn = m.Heartbeat:Connect(function()
			local q = rY.target;
			if not q or not q.Character then
				IY();
				return;
			end;
			local o = q.Character:FindFirstChild("Head");
			if not o then
				IY();
				return;
			end;
			local m = S.Character;
			local K = m and m:FindFirstChild("HumanoidRootPart");
			if not K then
				return;
			end;
			if not rY.weld or not rY.weld.Parent then
				local q = Instance.new("WeldConstraint");
				q.Part0 = K;
				q.Part1 = o;
				q.Parent = K;
				rY.weld = q;
			end;
			pcall(function()
				K.CFrame = o.CFrame * CFrame.new(0, 2, 0);
				K.AssemblyLinearVelocity = Vector3.zero;
				K.Velocity = Vector3.zero;
			end);
		end);
	oq("Attach", "Accroch\195\169 \195\160 " .. q.Name, false);
end;
local function dY()
	if rY.conn then
		IY();
	else
		SY();
	end;
end;
local function vY(q, o)
	if not q then
		return;
	end;
	if M[o] and M[o].Parent then
		return;
	end;
	local m = B("Highlight", {
			FillColor = Color3.fromRGB(255, 255, 255),
			FillTransparency = .85,
			OutlineColor = Color3.fromRGB(255, 255, 255),
			OutlineTransparency = 0,
			DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
			Adornee = q,
			Parent = q,
		});
	M[o] = m;
end;
local function NY(q)
	local o = M[q];
	if o and o.Parent then
		o:Destroy();
	end;
	M[q] = nil;
end;
local function DY()
	if u.XRayEnabled then
		for q, o in ipairs(q:GetPlayers()) do
			if o.Character then
				vY(o.Character, o);
			end;
		end;
	else
		for q in pairs(M) do
			NY(q);
		end;
	end;
end;
local function lY(q)
	if q == S then
		return;
	end;
	if R[q] then
		local o = pcall(function()
				R[q].Box.Visible = R[q].Box.Visible;
			end);
		if o then
			return;
		end;
		removeESP(q);
	end;
	local o = Drawing.new("Square");
	o.Thickness = H.BoxThickness;
	o.Filled = false;
	o.Visible = false;
	local m = Drawing.new("Text");
	m.Center = true;
	m.Outline = true;
	m.Size = 16;
	m.Visible = false;
	local K = Drawing.new("Text");
	K.Center = true;
	K.Outline = true;
	K.Size = 13;
	K.Visible = false;
	local r = Drawing.new("Line");
	r.Thickness = 1;
	r.Visible = false;
	R[q] = {
			Box = o,
			Text = m,
			DistanceText = K,
			Tracer = r,
		};
end;
local function FY(q)
	local o = R[q];
	if o then
		for q, o in pairs(o) do
			pcall(function()
				o:Remove();
			end);
		end;
		R[q] = nil;
	end;
end;
local function fY(q)
	if not q or not q:IsA("BasePart") then
		return false;
	end;
	local o = q.Name;
	if o == "Coin" or o:find("Coin") or o:find("coin") then
		return q.Transparency < 1;
	end;
	return false;
end;
local function QY(q)
	if J[q] then
		return;
	end;
	local o = Drawing.new("Square");
	o.Thickness = 1.5;
	o.Filled = false;
	o.Visible = false;
	o.Color = Color3.fromRGB(255, 215, 0);
	local m = Drawing.new("Text");
	m.Center = true;
	m.Outline = true;
	m.Size = 12;
	m.Color = Color3.fromRGB(255, 215, 0);
	m.Visible = false;
	J[q] = { Box = o, Text = m };
end;
local function AY(q)
	local o = J[q];
	if o then
		pcall(function()
			o.Box:Remove();
		end);
		pcall(function()
			o.Text:Remove();
		end);
		J[q] = nil;
	end;
end;
local function yY()
	for q in pairs(J) do
		AY(q);
	end;
end;
task.spawn(function()
	while true do
		task.wait(1);
		if u.EspShowCoins then
			for q, o in ipairs(workspace:GetDescendants()) do
				if fY(o) and not J[o] then
					QY(o);
				end;
			end;
			for q in pairs(J) do
				if not q or not q.Parent or not fY(q) then
					AY(q);
				end;
			end;
		elseif next(J) ~= nil then
			yY();
		end;
	end;
end);
m.RenderStepped:Connect(function()
	if not u.EspShowCoins then
		for q, o in pairs(J) do
			pcall(function()
				o.Box.Visible = false;
			end);
			pcall(function()
				o.Text.Visible = false;
			end);
		end;
		return;
	end;
	local q = workspace.CurrentCamera;
	if not q then
		return;
	end;
	for o, m in pairs(J) do
		local K = pcall(function()
				return m.Box.Visible;
			end);
		if not K or not o or not o.Parent then
			AY(o);
			continue;
		end;
		local r, I = q:WorldToViewportPoint(o.Position);
		if I then
			local K = 14;
			local I = ((q.CFrame.Position - o.Position)).Magnitude;
			local S = math.clamp(200 / I, .6, 2.5);
			local d = ((K * S)) / 2;
			pcall(function()
				m.Box.Size = Vector2.new(K * S, K * S);
				m.Box.Position = Vector2.new(r.X - d, r.Y - d);
				m.Box.Visible = true;
				m.Text.Text = "\240\159\146\176";
				m.Text.Position = Vector2.new(r.X, (r.Y - d) - 12);
				m.Text.Visible = true;
			end);
		else
			pcall(function()
				m.Box.Visible = false;
			end);
			pcall(function()
				m.Text.Visible = false;
			end);
		end;
	end;
end);
local function YY(q)
	local o, m = v:WorldToViewportPoint(q);
	return Vector2.new(o.X, o.Y), m;
end;
m.RenderStepped:Connect(function()
	if not u.EspEnabled then
		for q, o in pairs(R) do
			pcall(function()
				o.Box.Visible = false;
				o.Text.Visible = false;
				o.DistanceText.Visible = false;
				o.Tracer.Visible = false;
			end);
		end;
		return;
	end;
	local q = workspace.CurrentCamera;
	if q then
		v = q;
	end;
	local o = S.Character;
	local m = o and o:FindFirstChild("HumanoidRootPart");
	local K = m and m.Position;
	for q, o in pairs(R) do
		local m = pcall(function()
				return o.Box.Visible;
			end);
		if not m then
			R[q] = nil;
			continue;
		end;
		local r = q.Character;
		local I = r and r:FindFirstChild("HumanoidRootPart");
		local S = r and r:FindFirstChild("Head");
		local d = r and r:FindFirstChildOfClass("Humanoid");
		local N = function()
				pcall(function()
					o.Box.Visible = false;
					o.Text.Visible = false;
					o.DistanceText.Visible = false;
					o.Tracer.Visible = false;
				end);
			end;
		if not ((I and (S and (d and d.Health > 0)))) then
			N();
			continue;
		end;
		local D = Sq(q);
		if not Dq(D) then
			N();
			continue;
		end;
		local l, F = YY(S.Position + Vector3.new(0, .5, 0));
		local f, Q = YY(I.Position - Vector3.new(0, 3, 0));
		if F or Q then
			local m = math.abs(l.Y - f.Y);
			local r = m / 2;
			local S = Nq(D);
			local d = ((tick() * .5)) % 1;
			local N = Color3.fromHSV(d, 1, 1);
			if H.BoxEnabled then
				pcall(function()
					o.Box.Size = Vector2.new(r, m);
					o.Box.Position = Vector2.new(l.X - r / 2, l.Y);
					o.Box.Color = N;
					o.Box.Thickness = 2;
					o.Box.Visible = true;
				end);
			else
				pcall(function()
					o.Box.Visible = false;
				end);
			end;
			pcall(function()
				o.Text.Text = q.DisplayName .. (" [" .. (D .. "]"));
				o.Text.Position = Vector2.new(l.X, l.Y - 18);
				o.Text.Color = S;
				o.Text.Visible = true;
			end);
			if H.DistanceEnabled and K then
				pcall(function()
					local q = ((I.Position - K)).Magnitude;
					o.DistanceText.Text = string.format("%.1f m", q * .28);
					o.DistanceText.Position = Vector2.new(l.X, f.Y + 2);
					o.DistanceText.Color = S;
					o.DistanceText.Visible = true;
				end);
			else
				pcall(function()
					o.DistanceText.Visible = false;
				end);
			end;
			if H.TracerEnabled then
				pcall(function()
					o.Tracer.From = Vector2.new(v.ViewportSize.X / 2, v.ViewportSize.Y);
					o.Tracer.To = Vector2.new(l.X, l.Y);
					o.Tracer.Color = N;
					o.Tracer.Thickness = 1;
					o.Tracer.Visible = true;
				end);
			else
				pcall(function()
					o.Tracer.Visible = false;
				end);
			end;
		else
			N();
		end;
	end;
end);
q.PlayerAdded:Connect(function(q)
	task.wait(1);
	lY(q);
	if u.XRayEnabled and q.Character then
		vY(q.Character, q);
	end;
end);
q.PlayerRemoving:Connect(function(q)
	FY(q);
	NY(q);
	Z.knownRoles[q] = nil;
	G.lastRoles[q] = nil;
end);
for q, o in ipairs(q:GetPlayers()) do
	lY(o);
end;
local function hY(q)
	local m = q.AbsoluteSize;
	if m.X < 5 or m.Y < 5 then
		return;
	end;
	local K = math.random(O.ParticleMinSize, O.ParticleMaxSize);
	local r = math.random(0, math.max(1, m.X - K));
	local I = ((m.Y + 40)) / O.ParticleFallSpeed;
	local S = B("Frame", {
			Size = UDim2.new(0, K, 0, K),
			Position = UDim2.new(0, r, 0, -K),
			BackgroundColor3 = F.Particle,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 5,
			Parent = q,
		});
	i(S, math.floor(K / 2));
	local d = o:Create(S, TweenInfo.new(I, Enum.EasingStyle.Linear), { Position = UDim2.new(0, r + math.random(-40, 40), 0, m.Y + 20), BackgroundTransparency = .85 + math.random() * .1 });
	d:Play();
	d.Completed:Connect(function()
		S:Destroy();
	end);
end;
local function OY(q)
	task.spawn(function()
		while q and q.Parent do
			for o = 1, O.ParticlesPerTick, 1 do
				hY(q);
			end;
			task.wait(O.ParticleSpawnRate);
		end;
	end);
end;
local function UY(q, o, K)
	local r = B("Frame", {
			Name = q .. "_ShadowHolder",
			Size = o,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ZIndex = 1,
			Parent = K,
		});
	for q = 1, 6, 1 do
		local o = B("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				BackgroundTransparency = .88 + (q * .008),
				BorderSizePixel = 0,
				ZIndex = 1,
				Parent = r,
			});
		i(o, 20 + q * 5);
	end;
	local I = B("Frame", {
			Name = q,
			Size = o,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundColor3 = F.BgTop,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Active = true,
			Draggable = true,
			ZIndex = 2,
			Parent = K,
		});
	i(I, 20);
	p(I, F.Border, 1, .4);
	V(I, F.BgTop, F.BgBottom, 90);
	m.Heartbeat:Connect(function()
		if r.Parent and I.Parent then
			r.Position = I.Position + UDim2.new(0, 0, 0, 12);
			r.Size = I.Size;
			r.Visible = I.Visible;
		end;
	end);
	local S = B("Frame", {
			Name = "ParticleZone",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			ZIndex = 5,
			Parent = I,
		});
	i(S, 20);
	OY(S);
	return I;
end;
local function uY(q, o)
	g(q, .35, o);
end;
local function sY()
	if not ((U.Shell and U.Shell.Parent)) then
		return;
	end;
	g(U.Shell, .35, function()
		U.Shell = nil;
		U.Sidebar = nil;
		U.Content = nil;
		U.Scroll = nil;
		U.NavItems = {};
		U.CurrentPage = nil;
		U.MenuOpen = false;
	end);
end;
task.spawn(function()
	while true do
		task.wait(u.AutoShootDelay);
		if not u.AutoShootEnabled then
			continue;
		end;
		local q = Sq(S);
		if q ~= "Sheriff" then
			continue;
		end;
		local o = S.Character;
		if not o then
			continue;
		end;
		local m = o:FindFirstChild("Gun");
		if not m then
			local q = S:FindFirstChild("Backpack");
			if q then
				local m = q:FindFirstChild("Gun");
				if m then
					pcall(function()
						o.Humanoid:EquipTool(m);
					end);
				end;
			end;
			continue;
		end;
		local K = dq();
		if not K then
			continue;
		end;
		local r = K.Character;
		if not r then
			continue;
		end;
		local I = r:FindFirstChild("HumanoidRootPart");
		local d = r:FindFirstChild("Head");
		if not I then
			continue;
		end;
		local v = o:FindFirstChild("HumanoidRootPart");
		if not v then
			continue;
		end;
		local N = ((I.Position - v.Position)).Magnitude;
		if N > u.AutoShootRange then
			continue;
		end;
		local D = workspace.CurrentCamera;
		if D then
			pcall(function()
				D.CFrame = CFrame.new(D.CFrame.Position, d and d.Position or I.Position);
			end);
		end;
		pcall(function()
			m:Activate();
		end);
	end;
end);
local HY, EY, eY;
local jY, tY, cY, wY, RY, MY;
local JY, ZY, GY, PY, XY;
local bY, CY, aY, LY, kY, zY;
local TY, WY;
local BY, iY;
EY = function()
		local K = S:FindFirstChild("PlayerGui");
		if K then
			local q = K:FindFirstChild("MulbaHeadGui");
			if q then
				q:Destroy();
			end;
		end;
		local r = S.Character;
		if not r or not r:FindFirstChild("Head") then
			task.delay(1, function()
				if EY then
					EY();
				end;
			end);
			return;
		end;
		local I = r:FindFirstChild("Head");
		if not I then
			return;
		end;
		local d = B("ScreenGui", {
				Name = "MulbaHeadGui",
				ResetOnSpawn = false,
				IgnoreGuiInset = true,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				DisplayOrder = 997,
				Parent = K,
			});
		local v, N = 200, 50;
		local D = B("TextButton", {
				Size = UDim2.new(0, v, 0, N),
				Position = UDim2.new(0, 0, 0, 0),
				AnchorPoint = Vector2.new(.5, 1),
				BackgroundColor3 = Color3.fromRGB(12, 16, 28),
				BackgroundTransparency = .05,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				Active = true,
				ZIndex = 1,
				Parent = d,
			});
		i(D, 25);
		V(D, Color3.fromRGB(16, 22, 38), Color3.fromRGB(8, 10, 18), 90);
		B("UIStroke", {
			Color = Color3.fromRGB(90, 150, 255),
			Thickness = 1.5,
			Transparency = .15,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = D,
		});
		local f = B("Frame", {
				Size = UDim2.new(0, 36, 0, 36),
				Position = UDim2.new(0, 8, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = D,
			});
		i(f, 18);
		local Q = B("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 7,
				Parent = f,
			});
		i(Q, 16);
		local A = B("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 8,
				Parent = Q,
			});
		i(A, 16);
		task.spawn(function()
			local o, m = pcall(function()
					return q:GetUserThumbnailAsync(S.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if o and m then
				A.Image = m;
			end;
		end);
		local y = B("TextLabel", {
				Size = UDim2.new(1, -90, 0, 16),
				Position = UDim2.new(0, 52, 0, 8),
				BackgroundTransparency = 1,
				Text = "Mulba Menu",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = D,
			});
		local Y = B("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 180, 255)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(170, 120, 255)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 120, 200)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(255, 180, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 255, 180)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 180, 255)),
				}), Rotation = 0, Parent = y });
		task.spawn(function()
			while Y.Parent do
				Y.Rotation = ((Y.Rotation + 3)) % 360;
				task.wait(.03);
			end;
		end);
		B("TextLabel", {
			Size = UDim2.new(1, -90, 0, 12),
			Position = UDim2.new(0, 52, 0, 23),
			BackgroundTransparency = 1,
			Text = S.DisplayName .. " / lifetime",
			TextColor3 = F.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 9,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 9,
			Parent = D,
		});
		local h = B("TextLabel", {
				Size = UDim2.new(1, -90, 0, 14),
				Position = UDim2.new(0, 52, 0, 35),
				BackgroundTransparency = 1,
				Text = "Cr\195\169ateur",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = D,
			});
		local O = B("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 80, 80)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(255, 180, 80)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 255, 80)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(120, 255, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 200, 255)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 80, 80)),
				}), Rotation = 0, Parent = h });
		task.spawn(function()
			while O.Parent do
				O.Rotation = ((O.Rotation + 4)) % 360;
				task.wait(.03);
			end;
		end);
		local u = B("Frame", {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -38, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = D,
			});
		i(u, 15);
		local s = B("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Text = "M",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 15,
				ZIndex = 8,
				Parent = u,
			});
		B("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 230, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(90, 150, 255)) }), Rotation = 90, Parent = s });
		D.BackgroundTransparency = 1;
		D.Size = UDim2.new(0, v * .7, 0, N * .7);
		for q, m in ipairs(D:GetDescendants()) do
			if m:IsA("TextLabel") then
				m.TextTransparency = 1;
				(o:Create(m, TweenInfo.new(.5), { TextTransparency = 0 })):Play();
			end;
			if m:IsA("ImageLabel") then
				m.ImageTransparency = 1;
				(o:Create(m, TweenInfo.new(.5), { ImageTransparency = 0 })):Play();
			end;
		end;
		(o:Create(D, TweenInfo.new(.55, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, v, 0, N), BackgroundTransparency = .05 })):Play();
		m.RenderStepped:Connect(function()
			if not d.Parent then
				return;
			end;
			if not ((D and D.Parent)) then
				return;
			end;
			local q = S.Character;
			if not q then
				D.Visible = false;
				return;
			end;
			local o = q:FindFirstChild("Head");
			if not o then
				D.Visible = false;
				return;
			end;
			local m = workspace.CurrentCamera;
			if not m then
				return;
			end;
			local K = o.Position + Vector3.new(0, l, 0);
			local r, I = m:WorldToViewportPoint(K);
			if not I then
				D.Visible = false;
				return;
			end;
			D.Visible = true;
			D.Position = UDim2.new(0, r.X, 0, r.Y);
		end);
		D.MouseButton1Click:Connect(function()
			if not U.Authenticated then
				return;
			end;
			if U.Shell and U.Shell.Parent then
				return;
			end;
			if HY then
				HY();
			end;
		end);
		U.BillboardRef = d;
	end;
jY = function(q)
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 42),
			BackgroundTransparency = 1,
			Text = "MULBA",
			TextColor3 = F.TextPrimary,
			Font = Enum.Font.GothamBlack,
			TextSize = 32,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 46),
			BackgroundTransparency = 1,
			Text = "Le menu qui change tout.",
			TextColor3 = F.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		local m = B("TextButton", {
				Size = UDim2.new(0, 170, 0, 42),
				Position = UDim2.new(1, -170, 0, 0),
				BackgroundColor3 = F.SurfaceHi,
				BackgroundTransparency = .1,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 26,
				Parent = q,
			});
		i(m, 10);
		p(m, F.Border, 1, .4);
		local K = B("TextLabel", {
				Size = UDim2.new(1, -14, 1, 0),
				Position = UDim2.new(0, 10, 0, 0),
				BackgroundTransparency = 1,
				Text = "Assistance IA",
				TextColor3 = F.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = m,
			});
		local r, I, S = x(m, "right", F.TextSecondary, 7);
		r.Position = UDim2.new(1, -20, .5, 0);
		r.AnchorPoint = Vector2.new(.5, .5);
		m.MouseEnter:Connect(function()
			(o:Create(m, TweenInfo.new(.18), { BackgroundColor3 = F.SurfaceHi, BackgroundTransparency = 0 })):Play();
			(o:Create(K, TweenInfo.new(.18), { TextColor3 = F.Accent })):Play();
		end);
		m.MouseLeave:Connect(function()
			(o:Create(m, TweenInfo.new(.18), { BackgroundColor3 = F.SurfaceHi, BackgroundTransparency = .1 })):Play();
			(o:Create(K, TweenInfo.new(.18), { TextColor3 = F.TextPrimary })):Play();
		end);
		m.MouseButton1Click:Connect(function()
			if BY then
				BY();
			end;
		end);
		B("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundColor3 = F.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = q,
		});
		local d = 100;
		local function v(o, m, K, r)
			local I = B("TextLabel", {
					Size = UDim2.new(1, -8, 0, 0),
					Position = UDim2.new(0, 0, 0, d),
					BackgroundTransparency = 1,
					Text = o,
					TextColor3 = m or F.TextSecondary,
					Font = r or Enum.Font.Gotham,
					TextSize = K or 12,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextWrapped = true,
					AutomaticSize = Enum.AutomaticSize.Y,
					ZIndex = 25,
					Parent = q,
				});
			local S = 1;
			for q in string.gmatch(o, "\n") do
				S = S + 1;
			end;
			local v = (S * ((K or 12)) + 8) + math.floor(#o / 60) * ((K or 12));
			d = d + v;
			return I;
		end;
		local function N(o)
			B("TextLabel", {
				Size = UDim2.new(1, 0, 0, 22),
				Position = UDim2.new(0, 0, 0, d),
				BackgroundTransparency = 1,
				Text = o,
				TextColor3 = F.Accent,
				Font = Enum.Font.GothamBold,
				TextSize = 15,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 25,
				Parent = q,
			});
			d = d + 28;
		end;
		v("Bienvenue dans l\'exp\195\169rience ultime sur Murder Mystery 2.\nIci, chaque partie devient une d\195\169monstration. Tu vois tout, tu contr\195\180les tout, tu d\195\169cides tout. Aucun round ne t\'\195\169chappe.", F.TextSecondary, 12);
		d = d + 10;
		N("Ce que tu d\195\169bloques");
		v("Vision totale", F.TextPrimary, 13, Enum.Font.GothamBold);
		v("R\195\180les, box et tracers en temps r\195\169el. Tu sais qui est qui avant m\195\170me que la partie commence.", F.TextSecondary, 12);
		d = d + 8;
		v("Libert\195\169 absolue", F.TextPrimary, 13, Enum.Font.GothamBold);
		v("Fly, spin, jerk, noclip, invisibilit\195\169, emote zen. Ton personnage fait ce que tu veux, quand tu veux.", F.TextSecondary, 12);
		d = d + 8;
		v("Mouvement avanc\195\169", F.TextPrimary, 13, Enum.Font.GothamBold);
		v("Dash, slide, wall run, wall jump, grapple, roll, paraglide. Tout le r\195\169pertoire du parkour pro.", F.TextSecondary, 12);
		d = d + 8;
		v("Contr\195\180le des joueurs", F.TextPrimary, 13, Enum.Font.GothamBold);
		v("Ciblage, t\195\169l\195\169portation, spectate, accrochage. Les autres ne sont plus que des pions.", F.TextSecondary, 12);
		d = d + 8;
		v("Domination Murder et Sheriff", F.TextPrimary, 13, Enum.Font.GothamBold);
		v("Auto shoot, TP assassin, TP sh\195\169rif. Chaque r\195\180le a son arsenal.", F.TextSecondary, 12);
		d = d + 8;
		v("Auto Farm", F.TextPrimary, 13, Enum.Font.GothamBold);
		v("Les pi\195\168ces viennent \195\160 toi. Automatiquement. Round apr\195\168s round.", F.TextSecondary, 12);
		d = d + 8;
		v("Notifications en direct", F.TextPrimary, 13, Enum.Font.GothamBold);
		v("Tu sais avant tout le monde. Murder, Sheriff, gun au sol \226\128\148 rien ne t\'\195\169chappe.", F.TextSecondary, 12);
		d = d + 16;
		N("Pr\195\170t \195\160 jouer");
		v("Appuie sur M.", F.Accent, 14, Enum.Font.GothamBold);
		v("Le menu s\'ouvre. Le jeu change.\nBonne chance. Tu n\'en auras pas besoin.", F.TextSecondary, 12);
		d = d + 20;
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 24),
			Position = UDim2.new(0, 0, 0, d),
			BackgroundTransparency = 1,
			Text = "L\'\195\169quipe Mulba",
			TextColor3 = F.Accent,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		B("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, d + 40),
			BackgroundColor3 = F.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = q,
		});
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 24),
			Position = UDim2.new(0, 0, 0, d + 50),
			BackgroundTransparency = 1,
			Text = "\240\159\146\161 Appuie sur M pour ouvrir ou fermer le menu",
			TextColor3 = F.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
	end;
tY = function(q)
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Param\195\168tres",
			TextColor3 = F.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 16),
			Position = UDim2.new(0, 0, 0, 50),
			BackgroundTransparency = 1,
			Text = "COULEUR D\'ACCENT",
			TextColor3 = F.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		local m = B("Frame", {
				Size = UDim2.new(1, 0, 0, 140),
				Position = UDim2.new(0, 0, 0, 72),
				BackgroundTransparency = 1,
				ZIndex = 25,
				Parent = q,
			});
		B("UIGridLayout", {
			CellSize = UDim2.new(0, 58, 0, 58),
			CellPadding = UDim2.new(0, 14, 0, 14),
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Parent = m,
		});
		local K = {};
		for q, r in ipairs(f) do
			local I = B("TextButton", {
					BackgroundColor3 = r.Accent,
					BorderSizePixel = 0,
					Text = "",
					AutoButtonColor = false,
					LayoutOrder = q,
					ZIndex = 26,
					Parent = m,
				});
			i(I, 29);
			local S = B("UIStroke", {
					Color = F.TextPrimary,
					Thickness = 2,
					Transparency = (r.name == U.CurrentPreset) and 0 or 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Parent = I,
				});
			K[r.name] = S;
			I.MouseButton1Click:Connect(function()
				if U.CurrentPreset == r.name then
					return;
				end;
				U.CurrentPreset = r.name;
				h(r);
				for q, m in pairs(K) do
					(o:Create(m, TweenInfo.new(.2), { Transparency = (q == r.name) and 0 or 1 })):Play();
				end;
			end);
		end;
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 16),
			Position = UDim2.new(0, 0, 0, 240),
			BackgroundTransparency = 1,
			Text = "NOTIFICATIONS",
			TextColor3 = F.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		local r = B("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 262),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = q,
			});
		B("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = r });
		zY(r, 1, "NOTIFICATION", "Kill feed bas droite (Murder/Sheriff/Gun au sol)", function()
			return u.NotifKillFeed;
		end, function(q)
			u.NotifKillFeed = q;
		end, F.Accent);
		zY(r, 2, "NOTIF MESSAGE CHAT", "Murder/Sheriff dans ton chat (local)", function()
			return u.NotifChatMsg;
		end, function(q)
			u.NotifChatMsg = q;
		end, F.Accent);
		aY(r, 3, "SPAM CHAT", "Renvoie Murder/Sheriff dans le chat", Color3.fromRGB(240, 165, 95), function()
			Fq();
			task.wait(.05);
			Fq();
			task.wait(.05);
			Fq();
		end);
	end;
kY = function(q, o, m)
		local K = B("Frame", {
				Size = UDim2.new(1, 0, 0, 26),
				BackgroundTransparency = 1,
				LayoutOrder = o,
				ZIndex = 19,
				Parent = q,
			});
		B("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 4, 0, 0),
			BackgroundTransparency = 1,
			Text = string.upper(m),
			TextColor3 = F.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 19,
			Parent = K,
		});
		B("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 1, -1),
			BackgroundColor3 = F.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 19,
			Parent = K,
		});
	end;
bY = function(q, m, K, r, I, S, d)
		local v = B("Frame", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = F.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = m,
				ZIndex = 26,
				Parent = q,
			});
		i(v, 12);
		p(v, F.Border, 1, .5);
		local N = B("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = d,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = v,
			});
		i(N, 2);
		B("TextLabel", {
			Size = UDim2.new(1, -100, 0, 18),
			Position = UDim2.new(0, 26, 0, 10),
			BackgroundTransparency = 1,
			Text = K,
			TextColor3 = F.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = v,
		});
		B("TextLabel", {
			Size = UDim2.new(1, -100, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = r,
			TextColor3 = F.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = v,
		});
		local D = B("TextButton", {
				Size = UDim2.new(0, 46, 0, 24),
				Position = UDim2.new(1, -58, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = I() and d or F.SurfaceHi,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 28,
				Parent = v,
			});
		i(D, 12);
		local l = B("Frame", {
				Size = UDim2.new(0, 18, 0, 18),
				Position = I() and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = D,
			});
		i(l, 9);
		D.MouseButton1Click:Connect(function()
			S();
			local q = I();
			(o:Create(D, TweenInfo.new(.2), { BackgroundColor3 = q and d or F.SurfaceHi })):Play();
			(o:Create(l, TweenInfo.new(.2, Enum.EasingStyle.Quad), { Position = q and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0) })):Play();
		end);
		return v;
	end;
CY = function(q, o, m, r, I, S, d, v)
		local N = B("Frame", {
				Size = UDim2.new(1, 0, 0, 52),
				BackgroundColor3 = F.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = o,
				ZIndex = 26,
				Parent = q,
			});
		i(N, 12);
		p(N, F.Border, 1, .5);
		B("TextLabel", {
			Size = UDim2.new(0, 130, 0, 14),
			Position = UDim2.new(0, 26, 0, 8),
			BackgroundTransparency = 1,
			Text = m,
			TextColor3 = F.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = N,
		});
		local D = B("TextLabel", {
				Size = UDim2.new(0, 60, 0, 14),
				Position = UDim2.new(1, -70, 0, 8),
				BackgroundTransparency = 1,
				Text = tostring(S()),
				TextColor3 = F.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Right,
				ZIndex = 27,
				Parent = N,
			});
		local l = B("Frame", {
				Size = UDim2.new(1, -52, 0, 8),
				Position = UDim2.new(0, 26, 0, 32),
				BackgroundColor3 = F.SurfaceHi,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = N,
			});
		i(l, 4);
		local f = ((S() - r)) / ((I - r));
		local Q = B("Frame", {
				Size = UDim2.new(f, 0, 1, 0),
				BackgroundColor3 = v,
				BorderSizePixel = 0,
				ZIndex = 28,
				Parent = l,
			});
		i(Q, 4);
		local A = B("Frame", {
				Size = UDim2.new(0, 14, 0, 14),
				Position = UDim2.new(f, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = l,
			});
		i(A, 7);
		p(A, Color3.fromRGB(0, 0, 0), 2, .3);
		local y = B("TextButton", {
				Size = UDim2.new(1, -52, 0, 22),
				Position = UDim2.new(0, 26, 0, 20),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = N,
			});
		local Y = false;
		local function h(q)
			local o = l.AbsolutePosition.X;
			local m = l.AbsoluteSize.X;
			if m <= 0 then
				return;
			end;
			local K = math.clamp(((q - o)) / m, 0, 1);
			local S = r + K * ((I - r));
			S = math.floor(S * 10 + .5) / 10;
			d(S);
			A.Position = UDim2.new(K, 0, .5, 0);
			Q.Size = UDim2.new(K, 0, 1, 0);
			D.Text = tostring(S);
		end;
		y.InputBegan:Connect(function(q)
			if q.UserInputType == Enum.UserInputType.MouseButton1 or q.UserInputType == Enum.UserInputType.Touch then
				Y = true;
				h(q.Position.X);
			end;
		end);
		y.InputChanged:Connect(function(q)
			if not Y then
				return;
			end;
			if q.UserInputType == Enum.UserInputType.MouseMovement or q.UserInputType == Enum.UserInputType.Touch then
				h(q.Position.X);
			end;
		end);
		K.InputEnded:Connect(function(q)
			if q.UserInputType == Enum.UserInputType.MouseButton1 or q.UserInputType == Enum.UserInputType.Touch then
				Y = false;
			end;
		end);
	end;
aY = function(q, m, K, r, I, S)
		local d = B("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = F.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = m,
				ZIndex = 26,
				Parent = q,
			});
		i(d, 12);
		p(d, F.Border, 1, .5);
		local v = B("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = I,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = d,
			});
		i(v, 2);
		local N = B("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = K,
				TextColor3 = F.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = d,
			});
		B("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = r,
			TextColor3 = F.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = d,
		});
		local D, l, f = x(d, "right", F.TextMuted, 7);
		D.Position = UDim2.new(1, -26, .5, 0);
		D.AnchorPoint = Vector2.new(.5, .5);
		d.MouseEnter:Connect(function()
			(o:Create(d, TweenInfo.new(.18), { BackgroundColor3 = F.SurfaceHi, BackgroundTransparency = .1 })):Play();
			(o:Create(N, TweenInfo.new(.18), { TextColor3 = I })):Play();
			(o:Create(l, TweenInfo.new(.18), { BackgroundColor3 = I })):Play();
			(o:Create(f, TweenInfo.new(.18), { BackgroundColor3 = I })):Play();
		end);
		d.MouseLeave:Connect(function()
			(o:Create(d, TweenInfo.new(.18), { BackgroundColor3 = F.Surface, BackgroundTransparency = .25 })):Play();
			(o:Create(N, TweenInfo.new(.18), { TextColor3 = F.TextPrimary })):Play();
			(o:Create(l, TweenInfo.new(.18), { BackgroundColor3 = F.TextMuted })):Play();
			(o:Create(f, TweenInfo.new(.18), { BackgroundColor3 = F.TextMuted })):Play();
		end);
		d.MouseButton1Click:Connect(S);
		return d;
	end;
zY = function(q, m, K, r, I, S, d)
		local v = B("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = F.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = m,
				ZIndex = 26,
				Parent = q,
			});
		i(v, 12);
		p(v, F.Border, 1, .5);
		local N = F.ToggleOff;
		local D = F.Accent;
		local l = B("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = I() and D or N,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = v,
			});
		i(l, 2);
		local f = B("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = K,
				TextColor3 = F.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = v,
			});
		B("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = r,
			TextColor3 = F.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = v,
		});
		local Q, A, y = x(v, "right", I() and D or N, 7);
		Q.Position = UDim2.new(1, -26, .5, 0);
		Q.AnchorPoint = Vector2.new(.5, .5);
		local function Y()
			local q = I();
			local o = q and D or N;
			l.BackgroundColor3 = o;
			A.BackgroundColor3 = o;
			y.BackgroundColor3 = o;
			f.TextColor3 = q and D or F.TextPrimary;
		end;
		v.MouseEnter:Connect(function()
			(o:Create(v, TweenInfo.new(.18), { BackgroundColor3 = F.SurfaceHi, BackgroundTransparency = .1 })):Play();
		end);
		v.MouseLeave:Connect(function()
			(o:Create(v, TweenInfo.new(.18), { BackgroundColor3 = F.Surface, BackgroundTransparency = .25 })):Play();
		end);
		v.MouseButton1Click:Connect(function()
			S(not I());
			Y();
		end);
		return v;
	end;
local function VY(m)
	B("TextLabel", {
		Size = UDim2.new(1, 0, 0, 14),
		Position = UDim2.new(0, 0, 0, 76),
		BackgroundTransparency = 1,
		Text = "JOUEUR CIBL\195\137",
		TextColor3 = F.TextMuted,
		Font = Enum.Font.GothamBold,
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 25,
		Parent = m,
	});
	local K = B("TextButton", {
			Size = UDim2.new(1, 0, 0, 44),
			Position = UDim2.new(0, 0, 0, 96),
			BackgroundColor3 = F.Surface,
			BackgroundTransparency = .25,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			ZIndex = 30,
			Parent = m,
		});
	i(K, 10);
	p(K, F.Border, 1, .4);
	local r = B("TextLabel", {
			Size = UDim2.new(1, -70, 1, 0),
			Position = UDim2.new(0, 16, 0, 0),
			BackgroundTransparency = 1,
			Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148",
			TextColor3 = F.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 31,
			Parent = K,
		});
	local I, d, v = x(K, "right", F.TextMuted, 8);
	I.Position = UDim2.new(1, -24, .5, 0);
	I.AnchorPoint = Vector2.new(.5, .5);
	local N = B("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			Position = UDim2.new(0, 0, 0, 148),
			BackgroundColor3 = F.Surface,
			BackgroundTransparency = .05,
			BorderSizePixel = 0,
			Visible = false,
			AutomaticSize = Enum.AutomaticSize.Y,
			ZIndex = 40,
			Parent = m,
		});
	i(N, 12);
	p(N, F.Border, 1, .3);
	local D = B("Frame", {
			Size = UDim2.new(1, -12, 0, 6),
			Position = UDim2.new(0, 6, 0, 6),
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.Y,
			ZIndex = 41,
			Parent = N,
		});
	B("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = D });
	local function l()
		for q, o in ipairs(D:GetChildren()) do
			if o:IsA("TextButton") or (o:IsA("TextLabel") and o.Name == "EmptyLbl") then
				o:Destroy();
			end;
		end;
		local m = 0;
		for q, K in ipairs(q:GetPlayers()) do
			if K == S then
				continue;
			end;
			m = m + 1;
			local I = B("TextButton", {
					Size = UDim2.new(1, 0, 0, 34),
					BackgroundColor3 = F.SurfaceHi,
					BackgroundTransparency = .6,
					BorderSizePixel = 0,
					Text = "",
					AutoButtonColor = false,
					LayoutOrder = m,
					ZIndex = 42,
					Parent = D,
				});
			i(I, 8);
			local l = Sq(K);
			local f = Nq(l);
			B("TextLabel", {
				Size = UDim2.new(1, -50, 1, 0),
				Position = UDim2.new(0, 12, 0, 0),
				BackgroundTransparency = 1,
				Text = K.Name .. ("  (" .. (l .. ")")),
				TextColor3 = F.TextPrimary,
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 43,
				Parent = I,
			});
			B("Frame", {
				Size = UDim2.new(0, 4, 0, 18),
				Position = UDim2.new(1, -14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = f,
				BorderSizePixel = 0,
				ZIndex = 43,
				Parent = I,
			});
			I.MouseEnter:Connect(function()
				(o:Create(I, TweenInfo.new(.15), { BackgroundTransparency = .25 })):Play();
			end);
			I.MouseLeave:Connect(function()
				(o:Create(I, TweenInfo.new(.15), { BackgroundTransparency = .6 })):Play();
			end);
			I.MouseButton1Click:Connect(function()
				U.TrollSelected = K;
				r.Text = K.Name;
				r.TextColor3 = F.Accent;
				N.Visible = false;
				(o:Create(d, TweenInfo.new(.15), { Rotation = 45 })):Play();
				(o:Create(v, TweenInfo.new(.15), { Rotation = -45 })):Play();
				Iq("\240\159\142\175 Cible : " .. K.Name, F.Accent);
			end);
		end;
		if m == 0 then
			B("TextLabel", {
				Name = "EmptyLbl",
				Size = UDim2.new(1, 0, 0, 34),
				BackgroundTransparency = 1,
				Text = "Aucun autre joueur",
				TextColor3 = F.TextMuted,
				Font = Enum.Font.Gotham,
				TextSize = 12,
				ZIndex = 42,
				Parent = D,
			});
		end;
	end;
	local f = false;
	K.MouseButton1Click:Connect(function()
		f = not f;
		if f then
			l();
		end;
		N.Visible = f;
		(o:Create(d, TweenInfo.new(.15), { Rotation = f and -45 or 45 })):Play();
		(o:Create(v, TweenInfo.new(.15), { Rotation = f and 45 or -45 })):Play();
	end);
	q.PlayerAdded:Connect(function()
		if f then
			l();
		end;
	end);
	q.PlayerRemoving:Connect(function(q)
		if U.TrollSelected == q then
			U.TrollSelected = nil;
			r.Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148";
			r.TextColor3 = F.TextMuted;
		end;
		if f then
			l();
		end;
	end);
end;
LY = function()
		return;
	end;
local pY = {
		DashEnabled = false,
		DashPower = 120,
		DashKey = Enum.KeyCode.Q,
		DashCooldown = .6,
		DashLastUse = 0,
		TpMouseEnabled = false,
		TpMouseKey = Enum.KeyCode.T,
		SlideEnabled = false,
		SlideSpeed = 90,
		SlideKey = Enum.KeyCode.C,
		SlideDuration = .9,
		SlideLastUse = 0,
		SlideActive = false,
		SlideConn = nil,
		WallRunEnabled = false,
		WallRunSpeed = 45,
		WallRunStick = .6,
		WallRunConn = nil,
		WallRunActive = false,
		MoonWalkEnabled = false,
		MoonWalkSpeed = -16,
		MoonWalkConn = nil,
		IceSkateEnabled = false,
		IceSkateFriction = .985,
		IceSkateAccel = .35,
		IceSkateVel = Vector3.zero,
		IceSkateConn = nil,
		WallJumpEnabled = false,
		WallJumpPower = 65,
		WallJumpKey = Enum.KeyCode.Space,
		WallJumpConn = nil,
		WallJumpLastTouch = 0,
		GrappleEnabled = false,
		GrappleRange = 300,
		GrappleSpeed = 180,
		GrappleKey = Enum.KeyCode.G,
		GrappleConn = nil,
		GrappleActive = false,
		GrappleTarget = nil,
		RollEnabled = false,
		RollSpeed = 70,
		RollKey = Enum.KeyCode.R,
		RollDuration = .6,
		RollLastUse = 0,
		RollConn = nil,
		RollActive = false,
		CrouchSlideEnabled = false,
		CrouchSlideSpeed = 60,
		CrouchSlideKey = Enum.KeyCode.LeftControl,
		CrouchSlideDuration = .8,
		CrouchSlideLastUse = 0,
		CrouchSlideConn = nil,
		CrouchSlideActive = false,
		ParaglideEnabled = false,
		ParaglideFallSpeed = 4,
		ParaglideForward = 22,
		ParaglideKey = Enum.KeyCode.P,
		ParaglideConn = nil,
		ParaglideActive = false,
	};
local function xY(q, o, m)
	return K.InputBegan:Connect(function(K, r)
		if r and not m then
			return;
		end;
		if K.UserInputType ~= Enum.UserInputType.Keyboard then
			return;
		end;
		if K.KeyCode == q then
			o();
		end;
	end);
end;
local function nY()
	local q = pY;
	if not q.DashEnabled then
		return;
	end;
	if tick() - q.DashLastUse < q.DashCooldown then
		return;
	end;
	q.DashLastUse = tick();
	local o = S.Character;
	local m = o and o:FindFirstChild("HumanoidRootPart");
	local K = o and o:FindFirstChildOfClass("Humanoid");
	if not ((m and K)) then
		return;
	end;
	local r = K.MoveDirection;
	if r.Magnitude < .1 then
		r = workspace.CurrentCamera.CFrame.LookVector;
	end;
	r = (Vector3.new(r.X, 0, r.Z)).Unit;
	local d = Instance.new("BodyVelocity");
	d.Velocity = r * q.DashPower;
	d.MaxForce = Vector3.new(9000000000, 0, 9000000000);
	d.P = 5000;
	d.Parent = m;
	I:AddItem(d, .18);
	local v = Instance.new("Attachment", m);
	local N = Instance.new("Trail", m);
	N.Attachment0 = v;
	N.Attachment1 = v;
	N.Lifetime = .3;
	N.Color = ColorSequence.new(F.Accent);
	I:AddItem(N, .4);
	I:AddItem(v, .4);
	Iq("\240\159\146\168 Dash", F.Accent);
end;
xY(pY.DashKey, nY);
local function gY()
	local q = pY;
	if not q.TpMouseEnabled then
		return;
	end;
	local o = S:GetMouse();
	local m = S.Character;
	local K = m and m:FindFirstChild("HumanoidRootPart");
	if not ((o and K)) then
		return;
	end;
	local r = o.Hit;
	if not r then
		return;
	end;
	pcall(function()
		K.CFrame = r + Vector3.new(0, 3, 0);
		K.AssemblyLinearVelocity = Vector3.zero;
	end);
	Iq("\240\159\150\177 TP Mouse", F.Accent);
end;
xY(pY.TpMouseKey, gY);
local function qM()
	local q = pY;
	if q.SlideConn then
		q.SlideConn:Disconnect();
		q.SlideConn = nil;
	end;
	q.SlideActive = false;
	local o = S.Character;
	local m = o and o:FindFirstChildOfClass("Humanoid");
	if m then
		pcall(function()
			m.PlatformStand = false;
		end);
	end;
end;
local function oM()
	local q = pY;
	if not q.SlideEnabled or q.SlideActive then
		return;
	end;
	if tick() - q.SlideLastUse < 1 then
		return;
	end;
	q.SlideLastUse = tick();
	q.SlideActive = true;
	local o = S.Character;
	local K = o and o:FindFirstChild("HumanoidRootPart");
	local r = o and o:FindFirstChildOfClass("Humanoid");
	if not ((K and r)) then
		q.SlideActive = false;
		return;
	end;
	local I = r.MoveDirection;
	if I.Magnitude < .1 then
		I = K.CFrame.LookVector;
	end;
	I = (Vector3.new(I.X, 0, I.Z)).Unit;
	local d = tick();
	q.SlideConn = m.Heartbeat:Connect(function()
			if tick() - d > q.SlideDuration then
				qM();
				return;
			end;
			if not K or not K.Parent then
				qM();
				return;
			end;
			pcall(function()
				K.CFrame = CFrame.new(K.Position, K.Position + I);
				K.AssemblyLinearVelocity = Vector3.new(I.X * q.SlideSpeed, K.AssemblyLinearVelocity.Y, I.Z * q.SlideSpeed);
			end);
		end);
	Iq("\240\159\155\183 Slide", F.Accent);
end;
xY(pY.SlideKey, oM);
local mM = m.Heartbeat:Connect(function()
		local q = pY;
		if not q.WallRunEnabled then
			q.WallRunActive = false;
			return;
		end;
		local o = S.Character;
		local m = o and o:FindFirstChild("HumanoidRootPart");
		local K = o and o:FindFirstChildOfClass("Humanoid");
		if not ((m and K)) then
			return;
		end;
		local r = m.Position;
		local I = {
				m.CFrame.RightVector,
				-m.CFrame.RightVector,
				m.CFrame.LookVector,
				-m.CFrame.LookVector,
			};
		local d = nil;
		for q, m in ipairs(I) do
			local K = Ray.new(r, m * 2.5);
			local I, S, v = workspace:FindPartOnRayWithIgnoreList(K, { o });
			if I and (v and math.abs(v.Y) < .3) then
				d = v;
				break;
			end;
		end;
		if d and K.FloorMaterial == Enum.Material.Air then
			q.WallRunActive = true;
			local o = m.CFrame.LookVector;
			local K = ((o - d * o:Dot(d))).Unit;
			local r = -d * q.WallRunStick;
			pcall(function()
				m.AssemblyLinearVelocity = (K * q.WallRunSpeed) + Vector3.new(r.X, math.max(m.AssemblyLinearVelocity.Y, -2), r.Z);
			end);
		else
			q.WallRunActive = false;
		end;
	end);
local KM = m.Heartbeat:Connect(function()
		local q = pY;
		if not q.MoonWalkEnabled then
			return;
		end;
		local o = S.Character;
		local m = o and o:FindFirstChildOfClass("Humanoid");
		if not m then
			return;
		end;
		if m.MoveDirection.Magnitude > .1 then
			m.WalkSpeed = math.abs(q.MoonWalkSpeed);
			local K = o:FindFirstChild("HumanoidRootPart");
			if K then
				pcall(function()
					local o = workspace.CurrentCamera;
					local m = -o.CFrame.LookVector;
					m = (Vector3.new(m.X, 0, m.Z)).Unit;
					K.AssemblyLinearVelocity = Vector3.new(m.X * math.abs(q.MoonWalkSpeed), K.AssemblyLinearVelocity.Y, m.Z * math.abs(q.MoonWalkSpeed));
				end);
			end;
		end;
	end);
local rM = m.Heartbeat:Connect(function()
		local q = pY;
		if not q.IceSkateEnabled then
			q.IceSkateVel = Vector3.zero;
			return;
		end;
		local o = S.Character;
		local m = o and o:FindFirstChild("HumanoidRootPart");
		local K = o and o:FindFirstChildOfClass("Humanoid");
		if not ((m and K)) then
			return;
		end;
		local r = K.MoveDirection;
		q.IceSkateVel = q.IceSkateVel * q.IceSkateFriction;
		if r.Magnitude > .1 then
			q.IceSkateVel = q.IceSkateVel + r * q.IceSkateAccel;
		end;
		pcall(function()
			m.AssemblyLinearVelocity = Vector3.new(q.IceSkateVel.X, m.AssemblyLinearVelocity.Y, q.IceSkateVel.Z);
		end);
	end);
local IM = nil;
local SM = m.Heartbeat:Connect(function()
		local q = pY;
		if not q.WallJumpEnabled then
			return;
		end;
		local o = S.Character;
		local m = o and o:FindFirstChild("HumanoidRootPart");
		local K = o and o:FindFirstChildOfClass("Humanoid");
		if not ((m and K)) then
			return;
		end;
		if K.FloorMaterial ~= Enum.Material.Air then
			return;
		end;
		for K, r in ipairs({
			m.CFrame.RightVector,
			-m.CFrame.RightVector,
			m.CFrame.LookVector,
			-m.CFrame.LookVector,
		}) do
			local I = Ray.new(m.Position, r * 2.5);
			local S, d, v = workspace:FindPartOnRayWithIgnoreList(I, { o });
			if S and (v and math.abs(v.Y) < .3) then
				IM = v;
				q.WallJumpLastTouch = tick();
				break;
			end;
		end;
	end);
local function dM()
	local q = pY;
	if not q.WallJumpEnabled then
		return;
	end;
	if tick() - q.WallJumpLastTouch > .35 then
		return;
	end;
	if not IM then
		return;
	end;
	local o = S.Character;
	local m = o and o:FindFirstChild("HumanoidRootPart");
	local K = o and o:FindFirstChildOfClass("Humanoid");
	if not ((m and K)) then
		return;
	end;
	local r = IM * q.WallJumpPower + Vector3.new(0, q.WallJumpPower * .9, 0);
	pcall(function()
		m.AssemblyLinearVelocity = r;
		K:ChangeState(Enum.HumanoidStateType.Jumping);
	end);
	Iq("\240\159\167\151 Wall Jump", F.Accent);
end;
xY(pY.WallJumpKey, dM, true);
local function vM()
	local q = pY;
	q.GrappleActive = false;
	q.GrappleTarget = nil;
	if q.GrappleConn then
		q.GrappleConn:Disconnect();
		q.GrappleConn = nil;
	end;
end;
local function NM()
	local q = pY;
	if not q.GrappleEnabled then
		return;
	end;
	if q.GrappleActive then
		vM();
		return;
	end;
	local o = S.Character;
	local K = o and o:FindFirstChild("HumanoidRootPart");
	if not K then
		return;
	end;
	local r = workspace.CurrentCamera;
	local I = r.CFrame.Position;
	local d = r.CFrame.LookVector * q.GrappleRange;
	local v = Ray.new(I, d);
	local N, D = workspace:FindPartOnRayWithIgnoreList(v, { o, r });
	if not D then
		oq("Grapple", "Aucune cible dans la port\195\169e", true);
		return;
	end;
	q.GrappleActive = true;
	q.GrappleTarget = D;
	q.GrappleConn = m.Heartbeat:Connect(function()
			if not q.GrappleActive or not q.GrappleTarget then
				return;
			end;
			local o = S.Character;
			local m = o and o:FindFirstChild("HumanoidRootPart");
			if not m then
				vM();
				return;
			end;
			local K = q.GrappleTarget - m.Position;
			local r = K.Magnitude;
			if r < 4 then
				vM();
				return;
			end;
			local I = K.Unit * q.GrappleSpeed;
			pcall(function()
				m.AssemblyLinearVelocity = I;
			end);
		end);
	Iq("\240\159\170\157 Grapple", F.Accent);
end;
xY(pY.GrappleKey, NM);
local function DM()
	local q = pY;
	if q.RollConn then
		q.RollConn:Disconnect();
		q.RollConn = nil;
	end;
	q.RollActive = false;
	local o = S.Character;
	local m = o and o:FindFirstChildOfClass("Humanoid");
	if m then
		pcall(function()
			m.PlatformStand = false;
		end);
	end;
end;
local function lM()
	local q = pY;
	if not q.RollEnabled or q.RollActive then
		return;
	end;
	if tick() - q.RollLastUse < .8 then
		return;
	end;
	q.RollLastUse = tick();
	q.RollActive = true;
	local o = S.Character;
	local K = o and o:FindFirstChild("HumanoidRootPart");
	local r = o and o:FindFirstChildOfClass("Humanoid");
	if not ((K and r)) then
		q.RollActive = false;
		return;
	end;
	local I = r.MoveDirection;
	if I.Magnitude < .1 then
		I = K.CFrame.LookVector;
	end;
	I = (Vector3.new(I.X, 0, I.Z)).Unit;
	local d = tick();
	local v = K.CFrame;
	q.RollConn = m.Heartbeat:Connect(function()
			local o = ((tick() - d)) / q.RollDuration;
			if o >= 1 then
				DM();
				return;
			end;
			if not K or not K.Parent then
				DM();
				return;
			end;
			local m = CFrame.Angles(math.rad(-360 * o), 0, 0);
			pcall(function()
				K.CFrame = (CFrame.new(v.Position + I * ((q.RollSpeed * o))) * ((v - v.Position))) * m;
				K.AssemblyLinearVelocity = I * q.RollSpeed;
			end);
		end);
	Iq("\240\159\140\128 Roll", F.Accent);
end;
xY(pY.RollKey, lM);
local function FM()
	local q = pY;
	if q.CrouchSlideConn then
		q.CrouchSlideConn:Disconnect();
		q.CrouchSlideConn = nil;
	end;
	q.CrouchSlideActive = false;
	local o = S.Character;
	local m = o and o:FindFirstChildOfClass("Humanoid");
	if m then
		pcall(function()
			m.PlatformStand = false;
			m.WalkSpeed = E.WalkSpeed;
		end);
	end;
end;
local function fM()
	local q = pY;
	if not q.CrouchSlideEnabled or q.CrouchSlideActive then
		return;
	end;
	if tick() - q.CrouchSlideLastUse < 1 then
		return;
	end;
	q.CrouchSlideLastUse = tick();
	q.CrouchSlideActive = true;
	local o = S.Character;
	local K = o and o:FindFirstChild("HumanoidRootPart");
	local r = o and o:FindFirstChildOfClass("Humanoid");
	if not ((K and r)) then
		q.CrouchSlideActive = false;
		return;
	end;
	local I = r.MoveDirection;
	if I.Magnitude < .1 then
		I = K.CFrame.LookVector;
	end;
	I = (Vector3.new(I.X, 0, I.Z)).Unit;
	pcall(function()
		r.PlatformStand = true;
	end);
	local d = tick();
	q.CrouchSlideConn = m.Heartbeat:Connect(function()
			if tick() - d > q.CrouchSlideDuration then
				FM();
				return;
			end;
			if not K or not K.Parent then
				FM();
				return;
			end;
			pcall(function()
				K.AssemblyLinearVelocity = Vector3.new(I.X * q.CrouchSlideSpeed, K.AssemblyLinearVelocity.Y, I.Z * q.CrouchSlideSpeed);
			end);
		end);
	Iq("\240\159\155\157 Crouch Slide", F.Accent);
end;
xY(pY.CrouchSlideKey, fM);
local QM = m.Heartbeat:Connect(function()
		local q = pY;
		if not q.ParaglideEnabled then
			return;
		end;
		local o = S.Character;
		local m = o and o:FindFirstChild("HumanoidRootPart");
		local K = o and o:FindFirstChildOfClass("Humanoid");
		if not ((m and K)) then
			return;
		end;
		if m.AssemblyLinearVelocity.Y < -2 then
			q.ParaglideActive = true;
			local o = workspace.CurrentCamera;
			local K = o.CFrame.LookVector;
			K = (Vector3.new(K.X, 0, K.Z)).Unit;
			pcall(function()
				m.AssemblyLinearVelocity = Vector3.new(K.X * q.ParaglideForward, -q.ParaglideFallSpeed, K.Z * q.ParaglideForward);
			end);
		else
			q.ParaglideActive = false;
		end;
	end);
local function AM()
	local q = pY;
	if q.SlideActive then
		qM();
	end;
	if q.RollActive then
		DM();
	end;
	if q.CrouchSlideActive then
		FM();
	end;
	if q.GrappleActive then
		vM();
	end;
	q.IceSkateVel = Vector3.zero;
	q.WallRunActive = false;
	q.ParaglideActive = false;
end;
JY = function(q)
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Player",
			TextColor3 = F.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Ciblage, mouvement & statistiques",
			TextColor3 = F.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		VY(q);
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 164),
			BackgroundTransparency = 1,
			Text = "ACTIONS CIBL\195\137ES",
			TextColor3 = F.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		local o = B("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 186),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = q,
			});
		B("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = o });
		aY(o, 1, "TP \195\128 LA CIBLE", "Te t\195\169l\195\169porte sur le joueur s\195\169lectionn\195\169", Color3.fromRGB(255, 80, 80), function()
			local q = U.TrollSelected;
			if not q or not q.Character then
				oq("Player", "Aucune cible valide", true);
				return;
			end;
			local o = q.Character:FindFirstChild("HumanoidRootPart");
			local m = S.Character;
			local K = m and m:FindFirstChild("HumanoidRootPart");
			if o and K then
				pcall(function()
					K.CFrame = o.CFrame + Vector3.new(0, 3, 3);
				end);
				Iq("\240\159\142\175 TP vers " .. q.Name, Color3.fromRGB(255, 80, 80));
			end;
		end);
		aY(o, 2, "SPECTATE CIBLE", "Ta cam\195\169ra suit le joueur s\195\169lectionn\195\169", Color3.fromRGB(170, 130, 235), function()
			local q = U.TrollSelected;
			local o = workspace.CurrentCamera;
			if not q or not q.Character then
				oq("Player", "Aucune cible valide", true);
				return;
			end;
			o.CameraSubject = q.Character:FindFirstChildOfClass("Humanoid") or q.Character;
			Iq("\240\159\145\129 Cam\195\169ra \226\134\146 " .. q.Name, Color3.fromRGB(170, 130, 235));
		end);
		zY(o, 3, "S\'ACCROCHER \195\128 ELLE", "Assis sur les \195\169paules (visible par tous)", function()
			return rY.conn ~= nil;
		end, function(q)
			dY();
		end, F.Accent);
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 430),
			BackgroundTransparency = 1,
			Text = "MOUVEMENT",
			TextColor3 = F.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		local m = B("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 452),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = q,
			});
		B("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = m });
		local K = 0;
		local function r()
			K = K + 1;
			return K;
		end;
		zY(m, r(), "FLY", "Vol (W/A/S/D) + emote zen", function()
			return E.FlyEnabled;
		end, function(q)
			if q ~= E.FlyEnabled then
				Yq();
			end;
		end, F.Accent);
		zY(m, r(), "SPIN", "Tourne sur toi-m\195\170me", function()
			return E.SpinEnabled;
		end, function(q)
			sq();
		end, F.Accent);
		CY(m, r(), "VITESSE SPIN", 2, 50, function()
			return E.SpinSpeed;
		end, function(q)
			Hq(q);
		end, F.Accent);
		zY(m, r(), "JERK", "Secousse rapide", function()
			return E.JerkEnabled;
		end, function(q)
			jq();
		end, F.Accent);
		CY(m, r(), "INTENSIT\195\137 JERK", .5, 10, function()
			return E.JerkIntensity;
		end, function(q)
			tq(q);
		end, F.Accent);
		zY(m, r(), "NOCLIP", "Traverse les murs", function()
			return E.NoclipEnabled;
		end, function(q)
			wq();
		end, F.Accent);
		zY(m, r(), "INVISIBLE", "Personne ne te voit tant que c\'est actif", function()
			return E.Invisible;
		end, function(q)
			T();
		end, F.Accent);
		zY(m, r(), "INFINITE JUMP", "Saut infini", function()
			return E.InfiniteJump;
		end, function(q)
			Gq();
		end, F.Accent);
		zY(m, r(), "ANTI-AFK", "\195\137vite le kick inactivit\195\169", function()
			return E.AntiAFK;
		end, function(q)
			Xq();
		end, F.Accent);
		zY(m, r(), "FULLBRIGHT", "\195\137claire toute la map", function()
			return E.Fullbright;
		end, function(q)
			Cq();
		end, F.Accent);
		zY(m, r(), "ANTI-FLING", "Bloque les tentatives de fling", function()
			return E.AntiFling;
		end, function(q)
			aq();
		end, F.Accent);
		local I = pY;
		kY(m, r(), "Mouvement avanc\195\169");
		zY(m, r(), "DASH", "Bond rapide (Q)", function()
			return I.DashEnabled;
		end, function(q)
			I.DashEnabled = q;
		end, F.Accent);
		CY(m, r(), "DASH POWER", 40, 400, function()
			return I.DashPower;
		end, function(q)
			I.DashPower = q;
		end, F.Accent);
		zY(m, r(), "TELEPORT MOUSE", "TP sur le curseur (T)", function()
			return I.TpMouseEnabled;
		end, function(q)
			I.TpMouseEnabled = q;
		end, F.Accent);
		zY(m, r(), "SLIDE", "Glisse au sol (C)", function()
			return I.SlideEnabled;
		end, function(q)
			I.SlideEnabled = q;
		end, F.Accent);
		CY(m, r(), "SLIDE SPEED", 30, 200, function()
			return I.SlideSpeed;
		end, function(q)
			I.SlideSpeed = q;
		end, F.Accent);
		zY(m, r(), "WALL RUN", "Cours sur les murs", function()
			return I.WallRunEnabled;
		end, function(q)
			I.WallRunEnabled = q;
		end, F.Accent);
		CY(m, r(), "WALL RUN SPEED", 20, 120, function()
			return I.WallRunSpeed;
		end, function(q)
			I.WallRunSpeed = q;
		end, F.Accent);
		zY(m, r(), "MOON WALK", "Marche \195\160 reculons", function()
			return I.MoonWalkEnabled;
		end, function(q)
			I.MoonWalkEnabled = q;
		end, F.Accent);
		zY(m, r(), "ICE SKATE", "Glisse avec inertie", function()
			return I.IceSkateEnabled;
		end, function(q)
			I.IceSkateEnabled = q;
		end, F.Accent);
		zY(m, r(), "WALL JUMP", "Saut sur les murs (Space)", function()
			return I.WallJumpEnabled;
		end, function(q)
			I.WallJumpEnabled = q;
		end, F.Accent);
		CY(m, r(), "WALL JUMP POWER", 30, 150, function()
			return I.WallJumpPower;
		end, function(q)
			I.WallJumpPower = q;
		end, F.Accent);
		zY(m, r(), "GRAPPLE", "Crochet (G) \226\128\148 re-G pour l\195\162cher", function()
			return I.GrappleEnabled;
		end, function(q)
			I.GrappleEnabled = q;
			if not q then
				vM();
			end;
		end, F.Accent);
		CY(m, r(), "GRAPPLE RANGE", 100, 800, function()
			return I.GrappleRange;
		end, function(q)
			I.GrappleRange = q;
		end, F.Accent);
		zY(m, r(), "ROLL", "Roulade (R)", function()
			return I.RollEnabled;
		end, function(q)
			I.RollEnabled = q;
		end, F.Accent);
		zY(m, r(), "CROUCH SLIDE", "Glisse accroupi (Ctrl)", function()
			return I.CrouchSlideEnabled;
		end, function(q)
			I.CrouchSlideEnabled = q;
		end, F.Accent);
		zY(m, r(), "PARAGLIDE", "Chute lente + avanc\195\169e auto", function()
			return I.ParaglideEnabled;
		end, function(q)
			I.ParaglideEnabled = q;
		end, F.Accent);
		CY(m, r(), "PARAGLIDE FALL", 1, 30, function()
			return I.ParaglideFallSpeed;
		end, function(q)
			I.ParaglideFallSpeed = q;
		end, F.Accent);
		CY(m, r(), "PARAGLIDE FORWARD", 0, 80, function()
			return I.ParaglideForward;
		end, function(q)
			I.ParaglideForward = q;
		end, F.Accent);
		kY(m, r(), "Stats");
		CY(m, r(), "WALKSPEED", 16, 200, function()
			return E.WalkSpeed;
		end, function(q)
			Rq(q);
		end, F.Accent);
		CY(m, r(), "JUMPPOWER", 50, 500, function()
			return E.JumpPower;
		end, function(q)
			Mq(q);
		end, F.Accent);
		CY(m, r(), "GRAVITY", 0, 196, function()
			return E.Gravity;
		end, function(q)
			Jq(q);
		end, F.Accent);
		aY(m, r(), "RESET CHARACTER", "Respawn imm\195\169diat", Color3.fromRGB(255, 80, 80), function()
			Lq();
			oq("Player", "Reset en cours...", false);
		end);
	end;
XY = function(q)
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169port\195\169",
			TextColor3 = F.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169portation rapide",
			TextColor3 = F.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		local o = B("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = q,
			});
		B("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = o });
		aY(o, 1, "TP SPAWN", "Te t\195\169l\195\169porte au spawn", Color3.fromRGB(115, 155, 240), function()
			kq();
		end);
		aY(o, 2, "SET MAP", "Sauvegarde ta position actuelle", Color3.fromRGB(140, 200, 155), function()
			zq(false);
		end);
		aY(o, 3, "MAP", "TP \195\160 la position sauvegard\195\169e", Color3.fromRGB(240, 165, 95), function()
			Tq();
		end);
	end;
PY = function(q)
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Animation",
			TextColor3 = F.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Animations visibles par tous",
			TextColor3 = F.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		local o = B("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = q,
			});
		B("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = o });
		bY(o, 1, "SIT", "Assieds ton personnage", function()
			return E.Sitting;
		end, function()
			cq();
		end, Color3.fromRGB(140, 200, 155));
	end;
GY = function(q)
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Auto Farm",
			TextColor3 = F.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "R\195\169cup\195\168re les pi\195\168ces automatiquement",
			TextColor3 = F.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		local o = B("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = q,
			});
		B("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = o });
		local m = B("Frame", {
				Size = UDim2.new(1, 0, 0, 64),
				BackgroundColor3 = F.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = 1,
				ZIndex = 26,
				Parent = o,
			});
		i(m, 12);
		p(m, F.Border, 1, .5);
		local K = B("Frame", {
				Size = UDim2.new(0, 3, 0, 40),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(240, 200, 120),
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = m,
			});
		i(K, 2);
		B("TextLabel", {
			Size = UDim2.new(1, -30, 0, 16),
			Position = UDim2.new(0, 26, 0, 8),
			BackgroundTransparency = 1,
			Text = "STATISTIQUES",
			TextColor3 = F.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = m,
		});
		local r = B("TextLabel", {
				Size = UDim2.new(1, -30, 0, 16),
				Position = UDim2.new(0, 26, 0, 26),
				BackgroundTransparency = 1,
				Text = "Pi\195\168ces : 0",
				TextColor3 = F.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = m,
			});
		local I = B("TextLabel", {
				Size = UDim2.new(1, -30, 0, 16),
				Position = UDim2.new(0, 26, 0, 42),
				BackgroundTransparency = 1,
				Text = "Temps : 0s",
				TextColor3 = F.TextSecondary,
				Font = Enum.Font.Gotham,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = m,
			});
		task.spawn(function()
			while m.Parent do
				r.Text = "Pi\195\168ces : " .. X.coinsCollected;
				if X.running and X.startTime > 0 then
					I.Text = "Temps : " .. (math.floor(tick() - X.startTime) .. "s");
				else
					I.Text = "Temps : 0s";
				end;
				task.wait(.5);
			end;
		end);
		zY(o, 2, "AUTO FARM COINS", "Fly progressif + sous la map (anti-kick)", function()
			return X.running;
		end, function(q)
			gq();
		end, F.Accent);
		kY(o, 3, "R\195\169glages");
		CY(o, 4, "VITESSE FLY", 40, 400, function()
			return b.FlySpeed;
		end, function(q)
			b.FlySpeed = q;
		end, Color3.fromRGB(115, 155, 240));
		CY(o, 5, "RAYON DE COLLECTE", 20, 500, function()
			return b.CollectRadius;
		end, function(q)
			b.CollectRadius = q;
		end, Color3.fromRGB(170, 130, 235));
		CY(o, 6, "PAUSE ANTI-KICK", 0, 2, function()
			return b.AntiKickDelay;
		end, function(q)
			b.AntiKickDelay = q;
		end, Color3.fromRGB(220, 115, 115));
		CY(o, 7, "DISTANCE RAMASSAGE", 1, 10, function()
			return b.CollectDistance;
		end, function(q)
			b.CollectDistance = q;
		end, Color3.fromRGB(130, 205, 155));
		kY(o, 8, "Mode sous la map");
		zY(o, 9, "DESCENDRE SOUS LA MAP", "Apr\195\168s chaque pi\195\168ce (anti-murder)", function()
			return b.GoUnderMap;
		end, function(q)
			b.GoUnderMap = q;
		end, F.Accent);
		CY(o, 10, "PROFONDEUR", 2, 30, function()
			return b.UnderMapDepth;
		end, function(q)
			b.UnderMapDepth = q;
		end, Color3.fromRGB(240, 165, 95));
		kY(o, 11, "Avanc\195\169");
		zY(o, 12, "TP DIRECT PI\195\136CE", "TP instantan\195\169 au lieu de fly (risqu\195\169)", function()
			return b.TpDirect;
		end, function(q)
			b.TpDirect = q;
		end, F.Accent);
		zY(o, 13, "IGNORER SI MURDER PROCHE", "S\'arr\195\170te si un tueur approche", function()
			return b.IgnoreIfMurderNear;
		end, function(q)
			b.IgnoreIfMurderNear = q;
		end, F.Accent);
		CY(o, 14, "DISTANCE MURDER", 10, 200, function()
			return b.MurderDistance;
		end, function(q)
			b.MurderDistance = q;
		end, Color3.fromRGB(255, 80, 80));
		kY(o, 15, "Extras");
		zY(o, 16, "AUTO SET MAP", "Sauvegarde auto la position au respawn", function()
			return b.AutoSetMap;
		end, function(q)
			b.AutoSetMap = q;
		end, F.Accent);
		zY(o, 17, "RETOUR SPAWN APR\195\136S ROUND", "Retour au spawn \195\160 chaque respawn", function()
			return b.ReturnSpawn;
		end, function(q)
			b.ReturnSpawn = q;
		end, F.Accent);
		aY(o, 18, "RESET STATS", "Remet \195\160 0 les compteurs", Color3.fromRGB(220, 115, 115), function()
			X.coinsCollected = 0;
			X.startTime = tick();
			oq("Auto Farm", "Stats reset", false);
		end);
	end;
ZY = function(q)
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Combat",
			TextColor3 = F.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Section \195\160 venir",
			TextColor3 = F.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
	end;
cY = function(q)
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Onglet Esp",
			TextColor3 = F.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 50),
			BackgroundTransparency = 1,
			Text = "R\195\148LES",
			TextColor3 = F.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		local o = B("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 72),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = q,
			});
		B("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = o });
		zY(o, 1, "ESP Murderer", "Voir le tueur", function()
			return u.EspShowMurder;
		end, function(q)
			u.EspShowMurder = q;
		end, F.Accent);
		zY(o, 2, "ESP Sheriff", "Voir le sh\195\169rif", function()
			return u.EspShowSheriff;
		end, function(q)
			u.EspShowSheriff = q;
		end, F.Accent);
		zY(o, 3, "ESP Innocent", "Voir les innocents", function()
			return u.EspShowInnocent;
		end, function(q)
			u.EspShowInnocent = q;
		end, F.Accent);
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 260),
			BackgroundTransparency = 1,
			Text = "OPTIONS",
			TextColor3 = F.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		local m = B("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 282),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = q,
			});
		B("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = m });
		zY(m, 1, "X-RAY", "Voir \195\160 travers les murs", function()
			return u.XRayEnabled;
		end, function(q)
			u.XRayEnabled = q;
			DY();
		end, F.Accent);
		zY(m, 2, "Box", "Cadre multicolore autour du joueur", function()
			return H.BoxEnabled;
		end, function(q)
			H.BoxEnabled = q;
		end, F.Accent);
		zY(m, 3, "TRACER", "Ligne multicolore vers le joueur", function()
			return H.TracerEnabled;
		end, function(q)
			H.TracerEnabled = q;
		end, F.Accent);
		zY(m, 4, "ESP COIN", "Voir toutes les pi\195\168ces de la map", function()
			return u.EspShowCoins;
		end, function(q)
			u.EspShowCoins = q;
		end, F.Accent);
	end;
wY = function(q)
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Murder",
			TextColor3 = F.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 tueur",
			TextColor3 = F.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		local o = B("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = q,
			});
		B("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = o });
		zY(o, 1, "TP ALL IN FRONT", "Empile les joueurs \195\160 4 studs devant toi", function()
			return qY.running;
		end, function(q)
			KY();
		end, F.Accent);
		aY(o, 2, "TP MURDERER", "Te t\195\169l\195\169porte au tueur", Color3.fromRGB(255, 80, 80), function()
			local q = dq();
			if not q then
				oq("Erreur", "Tueur introuvable", true);
				return;
			end;
			local o = S.Character;
			local m = o and o:FindFirstChild("HumanoidRootPart");
			local K = q.Character and q.Character:FindFirstChild("HumanoidRootPart");
			if m and K then
				pcall(function()
					m.CFrame = K.CFrame + Vector3.new(0, 3, 3);
				end);
				oq("TP", "TP vers " .. q.Name, false);
			end;
		end);
	end;
RY = function(q)
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Sheriff",
			TextColor3 = F.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 sh\195\169rif",
			TextColor3 = F.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = q,
		});
		local o = B("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = q,
			});
		B("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = o });
		zY(o, 1, "AUTO SHOOT MURDERER", "Tire auto sur le tueur (si Sheriff)", function()
			return u.AutoShootEnabled;
		end, function(q)
			u.AutoShootEnabled = q;
		end, F.Accent);
		aY(o, 2, "TP SHERIFF", "Te t\195\169l\195\169porte au sh\195\169rif", Color3.fromRGB(60, 120, 255), function()
			local q = vq();
			if not q then
				oq("Erreur", "Sh\195\169rif introuvable", true);
				return;
			end;
			local o = S.Character;
			local m = o and o:FindFirstChild("HumanoidRootPart");
			local K = q.Character and q.Character:FindFirstChild("HumanoidRootPart");
			if m and K then
				pcall(function()
					m.CFrame = K.CFrame + Vector3.new(0, 3, 3);
				end);
				oq("TP", "TP vers " .. q.Name, false);
			end;
		end);
	end;
MY = function(m)
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Troll",
			TextColor3 = F.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = m,
		});
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Cible un joueur, puis utilise les actions",
			TextColor3 = F.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = m,
		});
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 76),
			BackgroundTransparency = 1,
			Text = "JOUEUR CIBL\195\137",
			TextColor3 = F.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = m,
		});
		local K = B("TextButton", {
				Size = UDim2.new(1, 0, 0, 44),
				Position = UDim2.new(0, 0, 0, 96),
				BackgroundColor3 = F.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = m,
			});
		i(K, 10);
		p(K, F.Border, 1, .4);
		local r = B("TextLabel", {
				Size = UDim2.new(1, -70, 1, 0),
				Position = UDim2.new(0, 16, 0, 0),
				BackgroundTransparency = 1,
				Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148",
				TextColor3 = F.TextMuted,
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 31,
				Parent = K,
			});
		local I, d, v = x(K, "right", F.TextMuted, 8);
		I.Position = UDim2.new(1, -24, .5, 0);
		I.AnchorPoint = Vector2.new(.5, .5);
		local N = B("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 148),
				BackgroundColor3 = F.Surface,
				BackgroundTransparency = .05,
				BorderSizePixel = 0,
				Visible = false,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 40,
				Parent = m,
			});
		i(N, 12);
		p(N, F.Border, 1, .3);
		local D = B("Frame", {
				Size = UDim2.new(1, -12, 0, 6),
				Position = UDim2.new(0, 6, 0, 6),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 41,
				Parent = N,
			});
		B("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = D });
		local function l()
			for q, o in ipairs(D:GetChildren()) do
				if o:IsA("TextButton") or (o:IsA("TextLabel") and o.Name == "EmptyLbl") then
					o:Destroy();
				end;
			end;
			local m = 0;
			for q, K in ipairs(q:GetPlayers()) do
				if K == S then
					continue;
				end;
				m = m + 1;
				local I = B("TextButton", {
						Size = UDim2.new(1, 0, 0, 34),
						BackgroundColor3 = F.SurfaceHi,
						BackgroundTransparency = .6,
						BorderSizePixel = 0,
						Text = "",
						AutoButtonColor = false,
						LayoutOrder = m,
						ZIndex = 42,
						Parent = D,
					});
				i(I, 8);
				local l = Sq(K);
				local f = Nq(l);
				B("TextLabel", {
					Size = UDim2.new(1, -50, 1, 0),
					Position = UDim2.new(0, 12, 0, 0),
					BackgroundTransparency = 1,
					Text = K.Name .. ("  (" .. (l .. ")")),
					TextColor3 = F.TextPrimary,
					Font = Enum.Font.GothamMedium,
					TextSize = 13,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 43,
					Parent = I,
				});
				B("Frame", {
					Size = UDim2.new(0, 4, 0, 18),
					Position = UDim2.new(1, -14, .5, 0),
					AnchorPoint = Vector2.new(0, .5),
					BackgroundColor3 = f,
					BorderSizePixel = 0,
					ZIndex = 43,
					Parent = I,
				});
				I.MouseEnter:Connect(function()
					(o:Create(I, TweenInfo.new(.15), { BackgroundTransparency = .25 })):Play();
				end);
				I.MouseLeave:Connect(function()
					(o:Create(I, TweenInfo.new(.15), { BackgroundTransparency = .6 })):Play();
				end);
				I.MouseButton1Click:Connect(function()
					U.TrollSelected = K;
					r.Text = K.Name;
					r.TextColor3 = F.Accent;
					N.Visible = false;
					(o:Create(d, TweenInfo.new(.15), { Rotation = 45 })):Play();
					(o:Create(v, TweenInfo.new(.15), { Rotation = -45 })):Play();
					Iq("\240\159\142\175 Cible : " .. K.Name, F.Accent);
				end);
			end;
			if m == 0 then
				B("TextLabel", {
					Name = "EmptyLbl",
					Size = UDim2.new(1, 0, 0, 34),
					BackgroundTransparency = 1,
					Text = "Aucun autre joueur",
					TextColor3 = F.TextMuted,
					Font = Enum.Font.Gotham,
					TextSize = 12,
					ZIndex = 42,
					Parent = D,
				});
			end;
		end;
		local f = false;
		K.MouseButton1Click:Connect(function()
			f = not f;
			if f then
				l();
			end;
			N.Visible = f;
			(o:Create(d, TweenInfo.new(.15), { Rotation = f and -45 or 45 })):Play();
			(o:Create(v, TweenInfo.new(.15), { Rotation = f and 45 or -45 })):Play();
		end);
		q.PlayerAdded:Connect(function()
			if f then
				l();
			end;
		end);
		q.PlayerRemoving:Connect(function(q)
			if U.TrollSelected == q then
				U.TrollSelected = nil;
				r.Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148";
				r.TextColor3 = F.TextMuted;
			end;
			if f then
				l();
			end;
		end);
		B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 164),
			BackgroundTransparency = 1,
			Text = "ACTIONS",
			TextColor3 = F.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = m,
		});
		local Q = B("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 186),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = m,
			});
		B("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = Q });
		aY(Q, 1, "TP \195\128 LA CIBLE", "Te t\195\169l\195\169porte sur le joueur s\195\169lectionn\195\169", Color3.fromRGB(255, 80, 80), function()
			local q = U.TrollSelected;
			if not q or not q.Character then
				oq("Troll", "Aucune cible valide", true);
				return;
			end;
			local o = q.Character:FindFirstChild("HumanoidRootPart");
			local m = S.Character;
			local K = m and m:FindFirstChild("HumanoidRootPart");
			if o and K then
				pcall(function()
					K.CFrame = o.CFrame + Vector3.new(0, 3, 3);
				end);
				Iq("\240\159\142\175 TP vers " .. q.Name, Color3.fromRGB(255, 80, 80));
			end;
		end);
		aY(Q, 2, "SPECTATE CIBLE", "Ta cam\195\169ra suit le joueur s\195\169lectionn\195\169", Color3.fromRGB(170, 130, 235), function()
			local q = U.TrollSelected;
			local o = workspace.CurrentCamera;
			if not q or not q.Character then
				oq("Troll", "Aucune cible valide", true);
				return;
			end;
			o.CameraSubject = q.Character:FindFirstChildOfClass("Humanoid") or q.Character;
			Iq("\240\159\145\129 Cam\195\169ra \226\134\146 " .. q.Name, Color3.fromRGB(170, 130, 235));
		end);
	end;
eY = function(q)
		if U.CurrentPage == q then
			return;
		end;
		U.CurrentPage = q;
		for o, m in pairs(U.NavItems) do
			m.setActive(o == q);
		end;
		local m = U.Scroll;
		if not m then
			return;
		end;
		local K = m:FindFirstChild("PageBody");
		if K then
			for q, m in ipairs(K:GetChildren()) do
				if m:IsA("GuiObject") then
					(o:Create(m, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
					if m:IsA("TextLabel") then
						(o:Create(m, TweenInfo.new(.15), { TextTransparency = 1 })):Play();
					end;
				end;
			end;
			task.wait(.18);
			K:Destroy();
		end;
		m.CanvasPosition = Vector2.new(0, 0);
		local r = B("Frame", {
				Name = "PageBody",
				Size = UDim2.new(1, -48, 0, 0),
				Position = UDim2.new(0, 24, 0, 20),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 24,
				Parent = m,
			});
		if q == "home" then
			jY(r);
		elseif q == "esp" then
			cY(r);
		elseif q == "murder" then
			wY(r);
		elseif q == "sheriff" then
			RY(r);
		elseif q == "player" then
			JY(r);
		elseif q == "combat" then
			ZY(r);
		elseif q == "autofarm" then
			GY(r);
		elseif q == "troll" then
			MY(r);
		elseif q == "animation" then
			PY(r);
		elseif q == "teleport" then
			XY(r);
		elseif q == "settings" then
			tY(r);
		end;
	end;
local function yM(q, m, K, r)
	local I = B("TextButton", {
			Size = UDim2.new(1, 0, 0, 38),
			BackgroundColor3 = F.Surface,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			LayoutOrder = r,
			ZIndex = 20,
			Parent = q,
		});
	i(I, 8);
	local S = B("Frame", {
			Size = UDim2.new(0, 3, 0, 0),
			Position = UDim2.new(0, 0, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = F.Accent,
			BorderSizePixel = 0,
			ZIndex = 22,
			Parent = I,
		});
	i(S, 2);
	local d = B("TextLabel", {
			Size = UDim2.new(1, -20, 1, 0),
			Position = UDim2.new(0, 18, 0, 0),
			BackgroundTransparency = 1,
			Text = m,
			TextColor3 = F.TextSecondary,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 21,
			Parent = I,
		});
	local v = { active = false };
	local function N(q)
		v.active = q;
		if q then
			(o:Create(I, TweenInfo.new(.2), { BackgroundTransparency = .7 })):Play();
			(o:Create(S, TweenInfo.new(.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 3, 0, 22) })):Play();
			(o:Create(d, TweenInfo.new(.2), { TextColor3 = F.Accent, TextSize = 14 })):Play();
		else
			(o:Create(I, TweenInfo.new(.2), { BackgroundTransparency = 1 })):Play();
			(o:Create(S, TweenInfo.new(.2), { Size = UDim2.new(0, 3, 0, 0) })):Play();
			(o:Create(d, TweenInfo.new(.2), { TextColor3 = F.TextSecondary, TextSize = 13 })):Play();
		end;
	end;
	I.MouseEnter:Connect(function()
		if not v.active then
			(o:Create(I, TweenInfo.new(.15), { BackgroundTransparency = .85 })):Play();
			(o:Create(d, TweenInfo.new(.15), { TextColor3 = F.TextPrimary })):Play();
		end;
	end);
	I.MouseLeave:Connect(function()
		if not v.active then
			(o:Create(I, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
			(o:Create(d, TweenInfo.new(.15), { TextColor3 = F.TextSecondary })):Play();
		end;
	end);
	U.NavItems[K] = { btn = I, setActive = N, state = v };
	return I, N;
end;
local function YM(q, o, m)
	local K = B("Frame", {
			Size = UDim2.new(1, -4, 0, 22),
			BackgroundTransparency = 1,
			LayoutOrder = m,
			ZIndex = 19,
			Parent = q,
		});
	B("TextLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 8, 0, 0),
		BackgroundTransparency = 1,
		Text = string.upper(o),
		TextColor3 = F.TextMuted,
		Font = Enum.Font.GothamBold,
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 19,
		Parent = K,
	});
end;
local function hM()
	local q = B("ScreenGui", {
			Name = "MenuV72_GUI",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			DisplayOrder = 999,
			Parent = d,
		});
	U.Gui = q;
	local m = UY("LoadingContainer", UDim2.new(0, 460, 0, 240), q);
	U.LoadingFrame = m;
	m.BackgroundTransparency = 1;
	(o:Create(m, TweenInfo.new(.5), { BackgroundTransparency = 0 })):Play();
	local K = B("Frame", {
			Size = UDim2.new(0, 60, 0, 60),
			Position = UDim2.new(.5, 0, 0, 30),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundTransparency = 1,
			ZIndex = 8,
			Parent = m,
		});
	for q = 1, 14, 1 do
		local o = ((q - 1)) * (((math.pi * 2) / 14));
		local m = B("Frame", {
				Size = UDim2.new(0, 5, 0, 5),
				Position = UDim2.new(.5, math.cos(o) * 22, .5, math.sin(o) * 22),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = F.Accent,
				BackgroundTransparency = 1 - ((q / 14)) * .75,
				BorderSizePixel = 0,
				ZIndex = 9,
				Parent = K,
			});
		i(m, 2);
		A(m, "BackgroundColor3", "Accent");
	end;
	task.spawn(function()
		while K.Parent do
			K.Rotation = ((K.Rotation + 5)) % 360;
			task.wait(.02);
		end;
	end);
	B("TextLabel", {
		Size = UDim2.new(1, 0, 0, 32),
		Position = UDim2.new(0, 0, 0, 98),
		BackgroundTransparency = 1,
		Text = "Chargement",
		TextColor3 = F.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 24,
		ZIndex = 8,
		Parent = m,
	});
	local r = B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 134),
			BackgroundTransparency = 1,
			Text = "Initialisation...",
			TextColor3 = F.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 8,
			Parent = m,
		});
	local I = B("Frame", {
			Size = UDim2.new(.7, 0, 0, 8),
			Position = UDim2.new(.5, 0, 0, 172),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = F.SurfaceHi,
			BackgroundTransparency = .4,
			BorderSizePixel = 0,
			ZIndex = 8,
			Parent = m,
		});
	i(I, 4);
	local S = B("Frame", {
			Size = UDim2.new(0, 0, 1, 0),
			BackgroundColor3 = F.Accent,
			BorderSizePixel = 0,
			ZIndex = 9,
			Parent = I,
			ClipsDescendants = true,
		});
	i(S, 4);
	A(S, "BackgroundColor3", "Accent");
	local v = B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 192),
			BackgroundTransparency = 1,
			Text = "0 %",
			TextColor3 = F.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 8,
			Parent = m,
		});
	local N = tick();
	task.spawn(function()
		while tick() - N < O.LoadingDuration do
			local q = math.clamp(((tick() - N)) / O.LoadingDuration, 0, 1);
			S.Size = UDim2.new(q, 0, 1, 0);
			v.Text = math.floor(q * 100) .. " %";
			if q < .3 then
				r.Text = "Initialisation...";
			elseif q < .6 then
				r.Text = "Chargement...";
			elseif q < .9 then
				r.Text = "Pr\195\169paration...";
			else
				r.Text = "Finalisation...";
			end;
			task.wait(.03);
		end;
		S.Size = UDim2.new(1, 0, 1, 0);
		v.Text = "100 %";
	end);
	return m;
end;
local function OM(q)
	local o = U.Gui;
	local m = UY("CodeContainer", UDim2.new(0, 500, 0, 380), o);
	U.CodeFrame = m;
	m.BackgroundTransparency = 1;
	local K = B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 36),
			BackgroundTransparency = 1,
			Text = "ACC\195\136S S\195\137CURIS\195\137",
			TextColor3 = F.Accent,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 12,
			Parent = m,
		});
	A(K, "TextColor3", "Accent");
	B("TextLabel", {
		Size = UDim2.new(1, 0, 0, 38),
		Position = UDim2.new(0, 0, 0, 60),
		BackgroundTransparency = 1,
		Text = "V\195\169rification requise",
		TextColor3 = F.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 26,
		ZIndex = 12,
		Parent = m,
	});
	B("TextLabel", {
		Size = UDim2.new(1, -60, 0, 34),
		Position = UDim2.new(0, 30, 0, 104),
		BackgroundTransparency = 1,
		Text = "Entre le code d\'acc\195\168s",
		TextColor3 = F.TextSecondary,
		Font = Enum.Font.Gotham,
		TextSize = 13,
		TextWrapped = true,
		ZIndex = 12,
		Parent = m,
	});
	local r = B("TextBox", {
			Size = UDim2.new(.82, 0, 0, 54),
			Position = UDim2.new(.5, 0, 0, 154),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = F.Surface,
			BackgroundTransparency = .3,
			BorderSizePixel = 0,
			Text = "",
			PlaceholderText = "Code d\'acc\195\168s...",
			PlaceholderColor3 = F.TextMuted,
			TextColor3 = F.TextPrimary,
			Font = Enum.Font.GothamMedium,
			TextSize = 16,
			TextXAlignment = Enum.TextXAlignment.Center,
			ClearTextOnFocus = false,
			ZIndex = 13,
			Parent = m,
		});
	i(r, 12);
	local I = p(r, F.Border, 1.5, .3);
	r.Focused:Connect(function()
		I.Color = F.Accent;
		I.Transparency = .2;
	end);
	r.FocusLost:Connect(function()
		I.Color = F.Border;
		I.Transparency = .3;
	end);
	local S = B("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 216),
			BackgroundTransparency = 1,
			Text = "",
			TextColor3 = F.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 12,
			Parent = m,
		});
	local d = B("TextButton", {
			Size = UDim2.new(.82, 0, 0, 48),
			Position = UDim2.new(.5, 0, 0, 248),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = F.Accent,
			BorderSizePixel = 0,
			Text = "VALIDER",
			TextColor3 = F.TextOnAccent,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			AutoButtonColor = false,
			ZIndex = 13,
			Parent = m,
		});
	i(d, 12);
	A(d, "BackgroundColor3", "Accent");
	A(d, "TextColor3", "TextOnAccent");
	local v, D, l = 0, 5, false;
	local function f()
		if l then
			return;
		end;
		if r.Text == N then
			l = true;
			U.Authenticated = true;
			S.Text = "Acc\195\168s autoris\195\169";
			S.TextColor3 = F.Success;
			I.Color = F.Success;
			task.wait(.4);
			g(m, .35, function()
				U.CodeFrame = nil;
				if q then
					q();
				end;
			end);
		else
			v = v + 1;
			S.Text = string.format("Code incorrect \226\128\148 %d/%d", v, D);
			S.TextColor3 = F.Error;
			I.Color = F.Error;
			if v >= D then
				l = true;
				S.Text = "Acc\195\168s bloqu\195\169";
				task.wait(1.5);
				if o then
					o:Destroy();
				end;
				return;
			end;
			r.Text = "";
			pcall(function()
				r:CaptureFocus();
			end);
		end;
	end;
	d.MouseButton1Click:Connect(f);
	r.FocusLost:Connect(function(q)
		if q then
			f();
		end;
	end);
	task.spawn(function()
		task.wait(.6);
		pcall(function()
			r:CaptureFocus();
		end);
	end);
	qq(m, .5);
	return m;
end;
local function UM(m, K)
	for r, I in ipairs(e) do
		local S = B("Frame", {
				Size = UDim2.new(1, -10, 0, 64),
				BackgroundColor3 = F.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = r,
				ZIndex = 27,
				Parent = m,
			});
		i(S, 12);
		p(S, F.Border, 1, .5);
		local d = B("Frame", {
				Size = UDim2.new(0, 10, 0, 10),
				Position = UDim2.new(0, 10, 0, 10),
				BackgroundColor3 = I.online and Color3.fromRGB(120, 220, 130) or Color3.fromRGB(110, 110, 120),
				BorderSizePixel = 0,
				ZIndex = 30,
				Parent = S,
			});
		i(d, 5);
		B("UIStroke", {
			Color = F.BgTop,
			Thickness = 2,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = d,
		});
		local v = B("Frame", {
				Size = UDim2.new(0, 48, 0, 48),
				Position = UDim2.new(0, 28, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = F.SurfaceHi,
				BorderSizePixel = 0,
				ZIndex = 28,
				Parent = S,
			});
		i(v, 24);
		local N = B("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 29,
				Parent = v,
			});
		i(N, 24);
		task.spawn(function()
			local o, m = pcall(function()
					return q:GetUserThumbnailAsync(I.userId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if o and m then
				N.Image = m;
			end;
		end);
		B("TextLabel", {
			Size = UDim2.new(1, -260, 0, 18),
			Position = UDim2.new(0, 90, 0, 14),
			BackgroundTransparency = 1,
			Text = I.name,
			TextColor3 = F.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 29,
			Parent = S,
		});
		B("TextLabel", {
			Size = UDim2.new(1, -260, 0, 14),
			Position = UDim2.new(0, 90, 0, 34),
			BackgroundTransparency = 1,
			Text = I.online and "En ligne" or "Hors ligne",
			TextColor3 = I.online and Color3.fromRGB(120, 220, 130) or F.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 29,
			Parent = S,
		});
		local D = B("TextButton", {
				Size = UDim2.new(0, 90, 0, 30),
				Position = UDim2.new(1, -200, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = I.online and F.Accent or F.SurfaceHi,
				BackgroundTransparency = I.online and 0 or .3,
				BorderSizePixel = 0,
				Text = "REJOINDRE",
				TextColor3 = I.online and F.TextOnAccent or F.TextMuted,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				AutoButtonColor = false,
				ZIndex = 29,
				Parent = S,
			});
		i(D, 8);
		if I.online then
			D.MouseEnter:Connect(function()
				(o:Create(D, TweenInfo.new(.15), { BackgroundTransparency = .15 })):Play();
			end);
			D.MouseLeave:Connect(function()
				(o:Create(D, TweenInfo.new(.15), { BackgroundTransparency = 0 })):Play();
			end);
			D.MouseButton1Click:Connect(function()
				oq("Communaut\195\169", "Connexion \195\160 " .. (I.name .. " en cours..."), false);
				Iq("\240\159\148\151 Rejoindre " .. I.name, F.Accent);
			end);
		else
			D.MouseButton1Click:Connect(function()
				oq("Communaut\195\169", I.name .. " est hors ligne", true);
			end);
		end;
		local l = B("TextButton", {
				Size = UDim2.new(0, 90, 0, 30),
				Position = UDim2.new(1, -100, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = F.SurfaceHi,
				BackgroundTransparency = .2,
				BorderSizePixel = 0,
				Text = "MESSAGE",
				TextColor3 = F.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				AutoButtonColor = false,
				ZIndex = 29,
				Parent = S,
			});
		i(l, 8);
		l.MouseEnter:Connect(function()
			(o:Create(l, TweenInfo.new(.15), { BackgroundTransparency = .05, BackgroundColor3 = F.AccentSoft })):Play();
		end);
		l.MouseLeave:Connect(function()
			(o:Create(l, TweenInfo.new(.15), { BackgroundTransparency = .2, BackgroundColor3 = F.SurfaceHi })):Play();
		end);
		l.MouseButton1Click:Connect(function()
			if K then
				K(I);
			end;
		end);
	end;
end;
TY = function()
		if U.CommunityOpen and (U.CommunityFrame and U.CommunityFrame.Parent) then
			return;
		end;
		local q = U.Gui;
		if not q then
			return;
		end;
		local m = UY("CommunityFrame", UDim2.new(0, 560, 0, 600), q);
		U.CommunityFrame = m;
		U.CommunityOpen = true;
		m.BackgroundTransparency = 1;
		n(m, .5);
		local K = B("TextButton", {
				Size = UDim2.new(0, 28, 0, 28),
				Position = UDim2.new(1, -40, 0, 16),
				BackgroundColor3 = Color3.fromRGB(36, 38, 48),
				BackgroundTransparency = .15,
				BorderSizePixel = 0,
				Text = "X",
				TextColor3 = Color3.fromRGB(220, 225, 235),
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				AutoButtonColor = false,
				ZIndex = 60,
				Parent = m,
			});
		i(K, 8);
		p(K, F.Border, 1, .4);
		K.MouseEnter:Connect(function()
			(o:Create(K, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(200, 60, 60), BackgroundTransparency = 0 })):Play();
			(o:Create(K, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
		end);
		K.MouseLeave:Connect(function()
			(o:Create(K, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(36, 38, 48), BackgroundTransparency = .15 })):Play();
			(o:Create(K, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(220, 225, 235) })):Play();
		end);
		K.MouseButton1Click:Connect(function()
			WY();
		end);
		local r = B("Frame", {
				Name = "CommHolder",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				ZIndex = 25,
				Parent = m,
			});
		local I, S;
		I = function()
				for q, o in ipairs(r:GetChildren()) do
					o:Destroy();
				end;
				B("TextLabel", {
					Size = UDim2.new(1, -100, 0, 30),
					Position = UDim2.new(0, 32, 0, 22),
					BackgroundTransparency = 1,
					Text = "Communaut\195\169 Mulba",
					TextColor3 = F.TextPrimary,
					Font = Enum.Font.GothamBlack,
					TextSize = 22,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 25,
					Parent = r,
				});
				B("TextLabel", {
					Size = UDim2.new(1, -100, 0, 18),
					Position = UDim2.new(0, 32, 0, 52),
					BackgroundTransparency = 1,
					Text = "Tous les utilisateurs du cheat \226\128\148 connect\195\169s en direct",
					TextColor3 = F.TextSecondary,
					Font = Enum.Font.Gotham,
					TextSize = 12,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 25,
					Parent = r,
				});
				local q = 0;
				for o, m in ipairs(e) do
					if m.online then
						q = q + 1;
					end;
				end;
				local o = B("Frame", {
						Size = UDim2.new(0, 130, 0, 42),
						Position = UDim2.new(1, -160, 0, 26),
						BackgroundColor3 = F.Surface,
						BackgroundTransparency = .3,
						BorderSizePixel = 0,
						ZIndex = 26,
						Parent = r,
					});
				i(o, 10);
				p(o, F.Border, 1, .5);
				local m = B("Frame", {
						Size = UDim2.new(0, 8, 0, 8),
						Position = UDim2.new(0, 14, .5, 0),
						AnchorPoint = Vector2.new(0, .5),
						BackgroundColor3 = F.Success,
						BorderSizePixel = 0,
						ZIndex = 27,
						Parent = o,
					});
				i(m, 4);
				B("TextLabel", {
					Size = UDim2.new(1, -34, 1, 0),
					Position = UDim2.new(0, 30, 0, 0),
					BackgroundTransparency = 1,
					Text = q .. " en ligne",
					TextColor3 = F.Success,
					Font = Enum.Font.GothamBold,
					TextSize = 12,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 27,
					Parent = o,
				});
				B("Frame", {
					Size = UDim2.new(1, -64, 0, 1),
					Position = UDim2.new(0, 32, 0, 86),
					BackgroundColor3 = F.Border,
					BackgroundTransparency = .5,
					BorderSizePixel = 0,
					ZIndex = 25,
					Parent = r,
				});
				local K = B("ScrollingFrame", {
						Size = UDim2.new(1, -64, 1, -130),
						Position = UDim2.new(0, 32, 0, 100),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						ScrollBarThickness = 6,
						ScrollBarImageColor3 = F.SurfaceHi,
						ScrollBarImageTransparency = .3,
						CanvasSize = UDim2.new(0, 0, 0, 0),
						AutomaticCanvasSize = Enum.AutomaticSize.Y,
						ScrollingDirection = Enum.ScrollingDirection.Y,
						ZIndex = 26,
						Parent = r,
					});
				local I = B("Frame", {
						Size = UDim2.new(1, 0, 0, 0),
						BackgroundTransparency = 1,
						AutomaticSize = Enum.AutomaticSize.Y,
						ZIndex = 26,
						Parent = K,
					});
				B("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = I });
				UM(I, function(q)
					S(q);
				end);
			end;
		S = function(q)
				for q, o in ipairs(r:GetChildren()) do
					o:Destroy();
				end;
				local m = B("TextButton", {
						Size = UDim2.new(0, 90, 0, 32),
						Position = UDim2.new(0, 32, 0, 22),
						BackgroundColor3 = F.Surface,
						BackgroundTransparency = .2,
						BorderSizePixel = 0,
						Text = "\226\134\144 Retour",
						TextColor3 = F.TextPrimary,
						Font = Enum.Font.GothamBold,
						TextSize = 12,
						AutoButtonColor = false,
						ZIndex = 30,
						Parent = r,
					});
				i(m, 8);
				p(m, F.Border, 1, .4);
				m.MouseEnter:Connect(function()
					(o:Create(m, TweenInfo.new(.15), { BackgroundTransparency = .05, BackgroundColor3 = F.SurfaceHi })):Play();
				end);
				m.MouseLeave:Connect(function()
					(o:Create(m, TweenInfo.new(.15), { BackgroundTransparency = .2, BackgroundColor3 = F.Surface })):Play();
				end);
				m.MouseButton1Click:Connect(function()
					I();
				end);
				B("TextLabel", {
					Size = UDim2.new(1, -200, 0, 20),
					Position = UDim2.new(0, 140, 0, 26),
					BackgroundTransparency = 1,
					Text = q.name,
					TextColor3 = F.TextPrimary,
					Font = Enum.Font.GothamBold,
					TextSize = 15,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 30,
					Parent = r,
				});
				B("TextLabel", {
					Size = UDim2.new(1, -200, 0, 14),
					Position = UDim2.new(0, 140, 0, 46),
					BackgroundTransparency = 1,
					Text = q.online and "\226\151\143 En ligne" or "\226\151\143 Hors ligne",
					TextColor3 = q.online and Color3.fromRGB(120, 220, 130) or F.TextMuted,
					Font = Enum.Font.GothamMedium,
					TextSize = 11,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 30,
					Parent = r,
				});
				B("Frame", {
					Size = UDim2.new(1, -64, 0, 1),
					Position = UDim2.new(0, 32, 0, 84),
					BackgroundColor3 = F.Border,
					BackgroundTransparency = .5,
					BorderSizePixel = 0,
					ZIndex = 25,
					Parent = r,
				});
				local K = B("ScrollingFrame", {
						Size = UDim2.new(1, -64, 1, -224),
						Position = UDim2.new(0, 32, 0, 96),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						ScrollBarThickness = 6,
						ScrollBarImageColor3 = F.SurfaceHi,
						ScrollBarImageTransparency = .3,
						CanvasSize = UDim2.new(0, 0, 0, 0),
						AutomaticCanvasSize = Enum.AutomaticSize.Y,
						ScrollingDirection = Enum.ScrollingDirection.Y,
						ZIndex = 26,
						Parent = r,
					});
				local S = B("Frame", {
						Size = UDim2.new(1, 0, 0, 0),
						BackgroundTransparency = 1,
						AutomaticSize = Enum.AutomaticSize.Y,
						ZIndex = 26,
						Parent = K,
					});
				B("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = S });
				local d = 0;
				local function v(q, o)
					d = d + 1;
					local m = B("Frame", {
							Size = UDim2.new(1, 0, 0, 0),
							BackgroundTransparency = 1,
							LayoutOrder = d,
							AutomaticSize = Enum.AutomaticSize.Y,
							ZIndex = 30,
							Parent = S,
						});
					local r = B("Frame", {
							BackgroundColor3 = o and F.BubbleMine or F.BubbleOther,
							BorderSizePixel = 0,
							AutomaticSize = Enum.AutomaticSize.XY,
							ZIndex = 31,
							Parent = m,
						});
					if o then
						r.AnchorPoint = Vector2.new(1, 0);
						r.Position = UDim2.new(1, 0, 0, 0);
					else
						r.AnchorPoint = Vector2.new(0, 0);
						r.Position = UDim2.new(0, 0, 0, 0);
					end;
					i(r, 12);
					B("TextLabel", {
						Position = UDim2.new(0, 14, 0, 8),
						Size = UDim2.new(0, 340, 0, 0),
						BackgroundTransparency = 1,
						Text = q,
						TextColor3 = o and Color3.fromRGB(255, 255, 255) or F.TextPrimary,
						Font = Enum.Font.GothamMedium,
						TextSize = 13,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
						TextWrapped = true,
						AutomaticSize = Enum.AutomaticSize.Y,
						ZIndex = 32,
						Parent = r,
					});
					B("Frame", {
						Size = UDim2.new(0, 14, 0, 8),
						Position = UDim2.new(0, 0, 1, 0),
						BackgroundTransparency = 1,
						ZIndex = 31,
						Parent = r,
					});
					task.defer(function()
						if K then
							K.CanvasPosition = Vector2.new(0, math.max(0, (S.AbsoluteSize.Y - K.AbsoluteSize.Y) + 40));
						end;
					end);
				end;
				local N = B("Frame", {
						Size = UDim2.new(1, -64, 0, 54),
						Position = UDim2.new(0, 32, 1, -70),
						BackgroundColor3 = F.Surface,
						BackgroundTransparency = .2,
						BorderSizePixel = 0,
						ZIndex = 30,
						Parent = r,
					});
				i(N, 12);
				p(N, F.Border, 1, .4);
				local D = B("TextBox", {
						Size = UDim2.new(1, -110, 1, 0),
						Position = UDim2.new(0, 16, 0, 0),
						BackgroundTransparency = 1,
						Text = "",
						PlaceholderText = "\195\137cris un message...",
						PlaceholderColor3 = F.TextMuted,
						TextColor3 = F.TextPrimary,
						Font = Enum.Font.Gotham,
						TextSize = 13,
						TextXAlignment = Enum.TextXAlignment.Left,
						ClearTextOnFocus = false,
						ZIndex = 31,
						Parent = N,
					});
				local l = B("TextButton", {
						Size = UDim2.new(0, 80, 0, 38),
						Position = UDim2.new(1, -92, .5, 0),
						AnchorPoint = Vector2.new(0, .5),
						BackgroundColor3 = F.Accent,
						BorderSizePixel = 0,
						Text = "ENVOYER",
						TextColor3 = F.TextOnAccent,
						Font = Enum.Font.GothamBold,
						TextSize = 11,
						AutoButtonColor = false,
						ZIndex = 31,
						Parent = N,
					});
				i(l, 8);
				A(l, "BackgroundColor3", "Accent");
				local function f()
					local q = D.Text;
					if q == nil or q == "" then
						return;
					end;
					D.Text = "";
					v(q, true);
					task.delay(math.random(8, 20) / 10, function()
						if not r or not r.Parent then
							return;
						end;
						local q = {
								"ok",
								"lol",
								"je suis l\195\160",
								"grave",
								"tu joues ?",
								"attends",
								"mdr",
								"yes",
								"vas-y",
								"\195\167a marche",
							};
						v(q[math.random(1, #q)], false);
					end);
				end;
				l.MouseButton1Click:Connect(f);
				D.FocusLost:Connect(function(q)
					if q then
						f();
					end;
				end);
			end;
		I();
	end;
WY = function()
		if not ((U.CommunityFrame and U.CommunityFrame.Parent)) then
			return;
		end;
		g(U.CommunityFrame, .35, function()
			U.CommunityFrame = nil;
			U.CommunityOpen = false;
		end);
	end;
local function uM(q)
	local o = string.lower(q);
	if o:find("salut") or o:find("bonjour") or o:find("hey") or o:find("yo") or o:find("coucou") or o:find("bonsoir") then
		return "Salut ! Je suis l\'assistance Mulba. Dis-moi ce que tu veux faire et je te guide. Par exemple : activer l\'ESP, utiliser le Fly, lancer l\'Auto Farm, ou rejoindre la communaut\195\169.";
	end;
	if o:find("je comprends pas") or o:find("je comprend pas") or o:find("comprends rien") or o:find("je sais pas") or o:find("aide moi") or o:find("aide-moi") or o:find("help") or o:find("explique") or o:find("expliquer") or o:find("comment \195\167a marche") or o:find("comment sa marche") or o:find("c\'est quoi") then
		return "Pas de souci. Dis-moi ce que tu veux faire exactement. Par exemple : ouvrir l\'ESP, voler avec le Fly, farm les pi\195\168ces, TP sur le tueur, ou rejoindre la communaut\195\169. Je te guide \195\169tape par \195\169tape.";
	end;
	if o:find("bug") or o:find("marche pas") or o:find("fonctionne pas") or o:find("erreur") or o:find("plante") then
		return "Si quelque chose ne marche pas : 1) V\195\169rifie que tu as bien activ\195\169 l\'option dans le bon onglet. 2) R\195\169essaie en d\195\169sactivant puis r\195\169activant. 3) Si \195\167a persiste, dis-moi quelle fonction pr\195\169cise bug et je t\'aide \195\160 corriger.";
	end;
	if o:find("menu") or o:find("touche m") or o:find("ouvrir") or o:find("fermer") then
		return "Pour ouvrir ou fermer le menu, appuie sur la touche M. Tu peux aussi cliquer sur le petit panneau M au-dessus de ta t\195\170te en jeu.";
	end;
	if o:find("invisible") or o:find("invisibilit\195\169") or o:find("invisibilite") then
		return "Le bouton INVISIBLE est dans \'Player\' > MOUVEMENT. Active-le et personne ne te verra tant qu\'il reste activ\195\169. D\195\169sactive-le pour redevenir visible.";
	end;
	if o:find("dash") or o:find("slide") or o:find("wall run") or o:find("wall jump") or o:find("grapple") or o:find("roll") or o:find("paraglide") or o:find("moon walk") or o:find("ice skate") or o:find("crouch") or o:find("mouvement") then
		return "La section \'MOUVEMENT AVANC\195\137\' est dans l\'onglet \'Player\'. Dash (Q), Slide (C), Wall Jump (Space), Grapple (G), Roll (R), Crouch Slide (Ctrl), TP Mouse (T). Les autres (Wall Run, Moon Walk, Ice Skate, Paraglide) s\'activent depuis le menu.";
	end;
	if o:find("esp") or o:find("voir les joueurs") or o:find("voir qui") or o:find("couleur") then
		return "Pour activer l\'ESP : va dans l\'onglet \'Onglet Esp\' (sidebar). Tu peux activer ESP Murderer, ESP Sheriff, ESP Innocent, X-Ray, Box, Tracer ou ESP Coin. Les couleurs : rouge = tueur, bleu = sh\195\169rif, vert = innocent.";
	end;
	if o:find("fly") or o:find("vol") or o:find("voler") then
		return "Pour voler : va dans l\'onglet \'Player\' > section MOUVEMENT > active FLY. Utilise W/A/S/D pour te d\195\169placer. Une emote zen s\'active automatiquement quand tu voles.";
	end;
	if o:find("autofarm") or o:find("auto farm") or o:find("farm") or o:find("pi\195\168ce") or o:find("pi\195\168ces") or o:find("coin") or o:find("coins") then
		return "Pour farmer les pi\195\168ces : va dans l\'onglet \'Auto Farm\' > active \'AUTO FARM COINS\'. Tu peux r\195\169gler la vitesse, le rayon de collecte, la profondeur sous la map, et m\195\170me activer \'TP DIRECT PI\195\136CE\' pour aller plus vite (plus risqu\195\169).";
	end;
	if o:find("murder") or o:find("tueur") or o:find("assassin") then
		return "Onglet \'Murder\' : tu as \'TP ALL IN FRONT\' (empile les joueurs devant toi) et \'TP MURDERER\' (te TP sur le tueur). Active aussi ESP Murderer dans l\'onglet Esp pour le voir en rouge.";
	end;
	if o:find("sheriff") or o:find("sh\195\169rif") or o:find("auto shoot") or o:find("tirer") then
		return "Onglet \'Sheriff\' : active \'AUTO SHOOT MURDERER\' si tu es sh\195\169rif, \195\167a tire automatiquement sur le tueur. Et \'TP SHERIFF\' pour te TP sur lui. Active ESP Sheriff pour le rep\195\169rer en bleu.";
	end;
	if o:find("tp") or o:find("t\195\169l\195\169port") or o:find("teleport") or o:find("spawn") or o:find("map") then
		return "Pour te TP : onglet \'T\195\169l\195\169port\195\169\' > \'TP SPAWN\' (au spawn), \'SET MAP\' (sauvegarde ta position), \'MAP\' (revient \195\160 la position sauvegard\195\169e). Tu peux aussi TP sur une cible dans \'Player\' ou \'Troll\'.";
	end;
	if o:find("troll") or o:find("cibler") or o:find("cible") or o:find("spectate") or o:find("accrocher") then
		return "Onglet \'Troll\' : s\195\169lectionne un joueur dans la liste d\195\169roulante, puis TP sur lui ou spectate. Tu peux aussi t\'accrocher \195\160 lui depuis \'Player\' > \'S\'ACCROCHER \195\128 ELLE\'.";
	end;
	if o:find("noclip") or o:find("traverse") or o:find("mur") or o:find("murs") then
		return "Le Noclip est dans \'Player\' > MOUVEMENT > NOCLIP. Il te permet de traverser les murs. Attention : il se d\195\169sactive automatiquement quand le Fly est actif.";
	end;
	if o:find("fullbright") or o:find("lumi\195\168re") or o:find("lumiere") or o:find("sombre") or o:find("\195\169clair") then
		return "Le Fullbright est dans \'Player\' > MOUVEMENT > FULLBRIGHT. Il \195\169claire toute la map instantan\195\169ment, pratique sur les maps sombres.";
	end;
	if o:find("communaut\195\169") or o:find("community") or o:find("liste") or o:find("membres") or o:find("message") then
		return "La Communaut\195\169 Mulba est accessible via le bouton M bleu en haut \195\160 droite de la sidebar. Tu y vois tous les membres avec leur statut en ligne/hors ligne, et tu peux leur envoyer un message priv\195\169.";
	end;
	if o:find("vitesse") or o:find("walkspeed") or o:find("jump") or o:find("saut") then
		return "Dans \'Player\' > section Stats, tu peux r\195\169gler WALKSPEED, JUMPPOWER et GRAVITY avec des sliders. Plus la valeur est haute, plus tu vas vite ou sautes haut.";
	end;
	if o:find("merci") or o:find("thanks") or o:find("thx") or o:find("cimer") then
		return "Avec plaisir ! Si tu as besoin d\'autre chose, je suis l\195\160. Bon jeu.";
	end;
	if o:find("aide") or o:find("aidez") or o:find("que faire") or o:find("quoi faire") then
		return "Je peux t\'aider sur : ESP, Fly, Mouvement avanc\195\169 (Dash/Slide/Wall Run...), Auto Farm, Murder, Sheriff, TP, Troll, Noclip, Invisible, Fullbright, Communaut\195\169, Menu (touche M). Dis-moi pr\195\169cis\195\169ment ce que tu veux faire.";
	end;
	return "Je n\'ai pas bien compris ta demande. Reformule ou dis-moi juste un mot-cl\195\169 : ESP, Fly, Mouvement avanc\195\169, Auto Farm, Murder, Sheriff, TP, Troll, Noclip, Invisible, Fullbright, Communaut\195\169, ou Menu. Je te guiderai pr\195\169cis\195\169ment.";
end;
BY = function()
		if U.AIOpen and (U.AIFrame and U.AIFrame.Parent) then
			return;
		end;
		local q = U.Gui;
		if not q then
			return;
		end;
		local m = UY("AIFrame", UDim2.new(0, 520, 0, 620), q);
		U.AIFrame = m;
		U.AIOpen = true;
		m.BackgroundTransparency = 1;
		n(m, .5);
		local K = B("TextButton", {
				Size = UDim2.new(0, 28, 0, 28),
				Position = UDim2.new(1, -40, 0, 16),
				BackgroundColor3 = Color3.fromRGB(36, 38, 48),
				BackgroundTransparency = .15,
				BorderSizePixel = 0,
				Text = "X",
				TextColor3 = Color3.fromRGB(220, 225, 235),
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				AutoButtonColor = false,
				ZIndex = 60,
				Parent = m,
			});
		i(K, 8);
		p(K, F.Border, 1, .4);
		K.MouseEnter:Connect(function()
			(o:Create(K, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(200, 60, 60), BackgroundTransparency = 0 })):Play();
			(o:Create(K, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
		end);
		K.MouseLeave:Connect(function()
			(o:Create(K, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(36, 38, 48), BackgroundTransparency = .15 })):Play();
			(o:Create(K, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(220, 225, 235) })):Play();
		end);
		K.MouseButton1Click:Connect(function()
			iY();
		end);
		B("TextLabel", {
			Size = UDim2.new(1, -100, 0, 30),
			Position = UDim2.new(0, 32, 0, 22),
			BackgroundTransparency = 1,
			Text = "Assistance IA Mulba",
			TextColor3 = F.TextPrimary,
			Font = Enum.Font.GothamBlack,
			TextSize = 20,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = m,
		});
		B("TextLabel", {
			Size = UDim2.new(1, -100, 0, 18),
			Position = UDim2.new(0, 32, 0, 50),
			BackgroundTransparency = 1,
			Text = "Pose ta question, je r\195\169ponds en direct",
			TextColor3 = F.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = m,
		});
		B("Frame", {
			Size = UDim2.new(1, -64, 0, 1),
			Position = UDim2.new(0, 32, 0, 82),
			BackgroundColor3 = F.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = m,
		});
		local r = B("ScrollingFrame", {
				Size = UDim2.new(1, -64, 1, -216),
				Position = UDim2.new(0, 32, 0, 96),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 6,
				ScrollBarImageColor3 = F.SurfaceHi,
				ScrollBarImageTransparency = .3,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ZIndex = 26,
				Parent = m,
			});
		local I = B("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 26,
				Parent = r,
			});
		B("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = I });
		local S = 0;
		local function d(q, o)
			S = S + 1;
			local m = B("Frame", {
					Size = UDim2.new(1, 0, 0, 0),
					BackgroundTransparency = 1,
					LayoutOrder = S,
					AutomaticSize = Enum.AutomaticSize.Y,
					ZIndex = 30,
					Parent = I,
				});
			local K = B("Frame", {
					BackgroundColor3 = o and F.BubbleMine or F.BubbleOther,
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					ZIndex = 31,
					Parent = m,
				});
			if o then
				K.AnchorPoint = Vector2.new(1, 0);
				K.Position = UDim2.new(1, 0, 0, 0);
			else
				K.AnchorPoint = Vector2.new(0, 0);
				K.Position = UDim2.new(0, 0, 0, 0);
			end;
			i(K, 12);
			B("TextLabel", {
				Position = UDim2.new(0, 14, 0, 8),
				Size = UDim2.new(0, 340, 0, 0),
				BackgroundTransparency = 1,
				Text = q,
				TextColor3 = o and Color3.fromRGB(255, 255, 255) or F.TextPrimary,
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextWrapped = true,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 32,
				Parent = K,
			});
			B("Frame", {
				Size = UDim2.new(0, 14, 0, 8),
				Position = UDim2.new(0, 0, 1, 0),
				BackgroundTransparency = 1,
				ZIndex = 31,
				Parent = K,
			});
			task.defer(function()
				if r then
					r.CanvasPosition = Vector2.new(0, math.max(0, (I.AbsoluteSize.Y - r.AbsoluteSize.Y) + 40));
				end;
			end);
		end;
		d("Salut, assistance IA Mulba. Comment je peux vous aider ?", false);
		local v = B("Frame", {
				Size = UDim2.new(1, -64, 0, 54),
				Position = UDim2.new(0, 32, 1, -70),
				BackgroundColor3 = F.Surface,
				BackgroundTransparency = .2,
				BorderSizePixel = 0,
				ZIndex = 30,
				Parent = m,
			});
		i(v, 12);
		p(v, F.Border, 1, .4);
		local N = B("TextBox", {
				Size = UDim2.new(1, -110, 1, 0),
				Position = UDim2.new(0, 16, 0, 0),
				BackgroundTransparency = 1,
				Text = "",
				PlaceholderText = "\195\137cris ta question...",
				PlaceholderColor3 = F.TextMuted,
				TextColor3 = F.TextPrimary,
				Font = Enum.Font.Gotham,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ClearTextOnFocus = false,
				ZIndex = 31,
				Parent = v,
			});
		local D = B("TextButton", {
				Size = UDim2.new(0, 80, 0, 38),
				Position = UDim2.new(1, -92, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = F.Accent,
				BorderSizePixel = 0,
				Text = "ENVOYER",
				TextColor3 = F.TextOnAccent,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				AutoButtonColor = false,
				ZIndex = 31,
				Parent = v,
			});
		i(D, 8);
		A(D, "BackgroundColor3", "Accent");
		local function l()
			local q = N.Text;
			if q == nil or q == "" then
				return;
			end;
			N.Text = "";
			d(q, true);
			task.delay(.6, function()
				if not m or not m.Parent then
					return;
				end;
				d(uM(q), false);
			end);
		end;
		D.MouseButton1Click:Connect(l);
		N.FocusLost:Connect(function(q)
			if q then
				l();
			end;
		end);
	end;
iY = function()
		if not ((U.AIFrame and U.AIFrame.Parent)) then
			return;
		end;
		g(U.AIFrame, .35, function()
			U.AIFrame = nil;
			U.AIOpen = false;
		end);
	end;
HY = function()
		local m = U.Gui;
		if not m then
			return;
		end;
		if U.Shell and U.Shell.Parent then
			return;
		end;
		U.NavItems = {};
		U.CurrentPage = nil;
		local K = UY("Shell", UDim2.new(0, 820, 0, 540), m);
		U.Shell = K;
		U.MenuOpen = true;
		K.BackgroundTransparency = 1;
		n(K, .55);
		local r = B("TextButton", {
				Size = UDim2.new(0, 28, 0, 28),
				Position = UDim2.new(1, -40, 0, 16),
				BackgroundColor3 = Color3.fromRGB(36, 38, 48),
				BackgroundTransparency = .15,
				BorderSizePixel = 0,
				Text = "X",
				TextColor3 = Color3.fromRGB(220, 225, 235),
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				AutoButtonColor = false,
				ZIndex = 60,
				Parent = K,
			});
		i(r, 8);
		p(r, F.Border, 1, .4);
		r.MouseEnter:Connect(function()
			(o:Create(r, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(200, 60, 60), BackgroundTransparency = 0 })):Play();
			(o:Create(r, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
		end);
		r.MouseLeave:Connect(function()
			(o:Create(r, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(36, 38, 48), BackgroundTransparency = .15 })):Play();
			(o:Create(r, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(220, 225, 235) })):Play();
		end);
		r.MouseButton1Click:Connect(sY);
		local I = B("Frame", {
				Name = "Sidebar",
				Size = UDim2.new(0, 240, 1, 0),
				BackgroundColor3 = F.SurfaceSide,
				BackgroundTransparency = .35,
				BorderSizePixel = 0,
				ZIndex = 8,
				Parent = K,
			});
		i(I, 20);
		U.Sidebar = I;
		local d = B("Frame", {
				Size = UDim2.new(1, 0, 0, 90),
				BackgroundColor3 = F.BgTop,
				BackgroundTransparency = .65,
				BorderSizePixel = 0,
				ZIndex = 15,
				Parent = I,
			});
		i(d, 20);
		B("Frame", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 1, -20),
			BackgroundColor3 = F.BgTop,
			BackgroundTransparency = .65,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = d,
		});
		local v = B("Frame", {
				Size = UDim2.new(0, 52, 0, 52),
				Position = UDim2.new(0, 18, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 16,
				Parent = d,
			});
		i(v, 26);
		local N = B("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 17,
				Parent = v,
			});
		i(N, 24);
		local D = B("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 18,
				Parent = N,
			});
		i(D, 24);
		task.spawn(function()
			local o, m = pcall(function()
					return q:GetUserThumbnailAsync(S.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if o and m then
				D.Image = m;
			end;
		end);
		B("TextLabel", {
			Size = UDim2.new(1, -90, 0, 22),
			Position = UDim2.new(0, 80, 0, 24),
			BackgroundTransparency = 1,
			Text = S.DisplayName,
			TextColor3 = F.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 15,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 16,
			Parent = d,
		});
		B("TextLabel", {
			Size = UDim2.new(1, -90, 0, 16),
			Position = UDim2.new(0, 80, 0, 46),
			BackgroundTransparency = 1,
			Text = "Premium",
			TextColor3 = F.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 16,
			Parent = d,
		});
		local l = B("TextButton", {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -42, 0, 32),
				BackgroundColor3 = F.Accent,
				BorderSizePixel = 0,
				Text = "M",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 15,
				AutoButtonColor = false,
				ZIndex = 20,
				Parent = d,
			});
		i(l, 15);
		local f = B("UIStroke", {
				Color = F.AccentGlow,
				Thickness = 1.5,
				Transparency = .4,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Parent = l,
			});
		A(l, "BackgroundColor3", "Accent");
		l.MouseEnter:Connect(function()
			(o:Create(l, TweenInfo.new(.18), { Size = UDim2.new(0, 34, 0, 34), Position = UDim2.new(1, -44, 0, 30) })):Play();
			(o:Create(f, TweenInfo.new(.18), { Transparency = 0 })):Play();
		end);
		l.MouseLeave:Connect(function()
			(o:Create(l, TweenInfo.new(.18), { Size = UDim2.new(0, 30, 0, 30), Position = UDim2.new(1, -42, 0, 32) })):Play();
			(o:Create(f, TweenInfo.new(.18), { Transparency = .4 })):Play();
		end);
		l.MouseButton1Click:Connect(function()
			if TY then
				TY();
			end;
		end);
		B("Frame", {
			Size = UDim2.new(1, -32, 0, 1),
			Position = UDim2.new(0, 16, 0, 90),
			BackgroundColor3 = F.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = I,
		});
		local Q = B("ScrollingFrame", {
				Size = UDim2.new(1, -16, 1, -110),
				Position = UDim2.new(0, 8, 0, 100),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 3,
				ScrollBarImageColor3 = F.SurfaceHi,
				ScrollBarImageTransparency = .5,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ZIndex = 18,
				Parent = I,
			});
		B("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = Q });
		YM(Q, "G\195\169n\195\169ral", 1);
		yM(Q, "Accueil", "home", 2);
		yM(Q, "ESP", "esp", 3);
		YM(Q, "Personnage", 4);
		yM(Q, "Player", "player", 5);
		yM(Q, "Combat", "combat", 6);
		yM(Q, "Troll", "troll", 7);
		yM(Q, "T\195\169l\195\169port\195\169", "teleport", 8);
		yM(Q, "Animation", "animation", 9);
		yM(Q, "Auto Farm", "autofarm", 10);
		YM(Q, "MM2", 11);
		yM(Q, "Murder", "murder", 12);
		yM(Q, "Sheriff", "sheriff", 13);
		YM(Q, "Autre", 14);
		yM(Q, "Param\195\168tres", "settings", 15);
		U.NavItems.home.btn.MouseButton1Click:Connect(function()
			eY("home");
		end);
		U.NavItems.esp.btn.MouseButton1Click:Connect(function()
			eY("esp");
		end);
		U.NavItems.murder.btn.MouseButton1Click:Connect(function()
			eY("murder");
		end);
		U.NavItems.sheriff.btn.MouseButton1Click:Connect(function()
			eY("sheriff");
		end);
		U.NavItems.player.btn.MouseButton1Click:Connect(function()
			eY("player");
		end);
		U.NavItems.combat.btn.MouseButton1Click:Connect(function()
			eY("combat");
		end);
		U.NavItems.autofarm.btn.MouseButton1Click:Connect(function()
			eY("autofarm");
		end);
		U.NavItems.teleport.btn.MouseButton1Click:Connect(function()
			eY("teleport");
		end);
		U.NavItems.troll.btn.MouseButton1Click:Connect(function()
			eY("troll");
		end);
		U.NavItems.animation.btn.MouseButton1Click:Connect(function()
			eY("animation");
		end);
		U.NavItems.settings.btn.MouseButton1Click:Connect(function()
			eY("settings");
		end);
		local y = B("Frame", {
				Name = "Content",
				Size = UDim2.new(1, -240, 1, 0),
				Position = UDim2.new(0, 240, 0, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				ZIndex = 14,
				Parent = K,
			});
		U.Content = y;
		local Y = B("ScrollingFrame", {
				Name = "Scroll",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 6,
				ScrollBarImageColor3 = F.SurfaceHi,
				ScrollBarImageTransparency = .3,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ClipsDescendants = true,
				ZIndex = 24,
				Parent = y,
			});
		U.Scroll = Y;
		task.wait(.1);
		eY("home");
	end;
S.CharacterAdded:Connect(function(q)
	q:WaitForChild("Humanoid", 10);
	task.wait(.6);
	t.nowe = false;
	t.tpwalking = false;
	Qq();
	IY();
	if AM then
		AM();
	end;
	EY();
	if u.XRayEnabled then
		task.wait(.5);
		if q then
			vY(q, S);
		end;
	end;
	if E.FlyEnabled then
		Aq();
	end;
	if E.SpinEnabled then
		Uq();
	end;
	if E.JerkEnabled then
		Eq();
	end;
	E.Sitting = false;
	if E.Invisible then
		E.Invisible = false;
		C.saved = {};
		if C.conn then
			C.conn:Disconnect();
			C.conn = nil;
		end;
	end;
	local o = q:FindFirstChildOfClass("Humanoid");
	if o then
		o.WalkSpeed = E.WalkSpeed;
		o.UseJumpPower = true;
		o.JumpPower = E.JumpPower;
	end;
	workspace.Gravity = E.Gravity;
	if b.AutoSetMap then
		task.wait(.4);
		zq(true);
	end;
	if b.ReturnSpawn then
		task.wait(.5);
		kq();
	end;
end);
K.InputBegan:Connect(function(q, o)
	if o then
		return;
	end;
	if q.KeyCode == Enum.KeyCode.Escape then
		if U.CommunityOpen then
			WY();
		end;
		if U.AIOpen then
			iY();
		end;
		return;
	end;
	if q.KeyCode ~= Enum.KeyCode.M then
		return;
	end;
	if not U.Authenticated then
		return;
	end;
	if U.Shell and U.Shell.Parent then
		sY();
	else
		if HY then
			HY();
		end;
	end;
end);
local function sM()
	W("Initialisation...");
	local q = d:FindFirstChild("MenuV70_GUI") or d:FindFirstChild("MenuV71_GUI") or d:FindFirstChild("MenuV72_GUI");
	if q then
		q:Destroy();
	end;
	hM();
	task.wait(O.LoadingDuration + .4);
	uY(U.LoadingFrame, function()
		U.LoadingFrame = nil;
	end);
	task.wait(.5);
	OM(function()
		U.Authenticated = true;
		EY();
		HY();
	end);
end;
sM();
