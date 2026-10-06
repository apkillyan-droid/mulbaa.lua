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

local p = game:GetService("Players");
local T = game:GetService("TweenService");
local O = game:GetService("RunService");
local i = game:GetService("UserInputService");
local e = game:GetService("Lighting");
local t = p.LocalPlayer;
local g = t:WaitForChild("PlayerGui");
local H = workspace.CurrentCamera;
local f = "Fdvo2669";
local Z = "rbxassetid://126785640171935";
local B = 2.6;
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
		ToggleOff = Color3.fromRGB(120, 120, 130),
		BubbleMine = Color3.fromRGB(115, 155, 240),
		BubbleOther = Color3.fromRGB(40, 42, 52),
	};
local s = {
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
local w = {};
local function C(p, T, O)
	table.insert(w, { instance = p, property = T, themeKey = O });
	return p;
end;
local function P(p, T, O)
	table.insert(w, {
		isGradient = true,
		gradient = p,
		topKey = T,
		bottomKey = O,
	});
	return p;
end;
local function o()
	local p = {};
	for O, i in ipairs(w) do
		if i.isGradient then
			if i.gradient and i.gradient.Parent then
				i.gradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, x[i.topKey]), ColorSequenceKeypoint.new(1, x[i.bottomKey]) });
				table.insert(p, i);
			end;
		else
			if i.instance and i.instance.Parent then
				local O = x[i.themeKey];
				if O then
					(T:Create(i.instance, TweenInfo.new(.35), { [i.property] = O })):Play();
				end;
				table.insert(p, i);
			end;
		end;
	end;
	w = p;
	for p, T in pairs(State.NavItems) do
		T.setActive(T.state.active);
	end;
end;
local function S(p)
	x.Accent = p.Accent;
	x.AccentDim = p.AccentDim;
	x.AccentGlow = p.AccentGlow;
	x.AccentSoft = p.AccentSoft;
	x.TextOnAccent = p.TextOnAccent;
	x.BubbleMine = p.Accent;
	o();
end;
local v = {
		LoadingDuration = 3.5,
		ParticleSpawnRate = .1,
		ParticleMinSize = 2,
		ParticleMaxSize = 4,
		ParticleFallSpeed = 120,
		ParticlesPerTick = 2,
	};
local W = {
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
local r = {
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
local d = {
		Murderer = Color3.fromRGB(255, 60, 60),
		Sheriff = Color3.fromRGB(60, 120, 255),
		Innocent = Color3.fromRGB(60, 255, 120),
		Box = Color3.fromRGB(255, 60, 60),
		Tracer = Color3.fromRGB(255, 60, 60),
	};
local V = {
		BoxEnabled = true,
		BoxThickness = 2,
		TracerEnabled = false,
		DistanceEnabled = true,
	};
local X = {
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
local k = {
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
local R = { track = nil };
local J = {
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
local y = { av = nil };
local A = { conn = nil };
local G = {};
local I = {};
local F = {};
local Y = { knownRoles = {}, seenGroundGuns = {} };
local z = { lastRoles = {} };
local E = { savedCFrame = nil };
local u = { running = false, coinsCollected = 0, startTime = 0 };
local a = {
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
local D = { conn = nil, saved = {}, savedToolTransparency = {} };
local function l()
	local p = t.Character;
	if not p then
		return;
	end;
	for p, T in ipairs(p:GetDescendants()) do
		if T:IsA("BasePart") then
			if D.saved[T] == nil then
				D.saved[T] = { Transparency = T.Transparency, LocalTransparencyModifier = T.LocalTransparencyModifier };
			end;
			T.Transparency = 1;
			T.LocalTransparencyModifier = 1;
		elseif T:IsA("Decal") or T:IsA("Texture") then
			if D.saved[T] == nil then
				D.saved[T] = { Transparency = T.Transparency };
			end;
			T.Transparency = 1;
		elseif T:IsA("BillboardGui") then
			if D.saved[T] == nil then
				D.saved[T] = { Enabled = T.Enabled };
			end;
			T.Enabled = false;
		elseif T:IsA("Accessory") or T:IsA("Accoutrement") then
			if D.saved[T] == nil then
				D.saved[T] = { handled = true };
			end;
			local p = T:FindFirstChild("Handle");
			if p and p:IsA("BasePart") then
				p.Transparency = 1;
				p.LocalTransparencyModifier = 1;
			end;
		end;
	end;
	local T = p:FindFirstChildOfClass("Humanoid");
	if T then
		if D.saved[T] == nil then
			D.saved[T] = { DisplayDistanceType = T.DisplayDistanceType, NameDisplayDistance = T.NameDisplayDistance, HealthDisplayDistance = T.HealthDisplayDistance };
		end;
		T.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None;
		T.NameDisplayDistance = 0;
		T.HealthDisplayDistance = 0;
	end;
	if I[t] then
		local p = I[t];
		if p and p.Parent then
			p:Destroy();
		end;
		I[t] = nil;
	end;
	local O = t:FindFirstChild("PlayerGui");
	if O then
		local p = O:FindFirstChild("MulbaHeadGui");
		if p then
			if D.saved[p] == nil then
				D.saved[p] = { Enabled = p.Enabled };
			end;
			p.Enabled = false;
		end;
	end;
	for p, T in ipairs(p:GetChildren()) do
		if T:IsA("Tool") then
			for p, T in ipairs(T:GetDescendants()) do
				if T:IsA("BasePart") then
					if D.saved[T] == nil then
						D.saved[T] = { Transparency = T.Transparency, LocalTransparencyModifier = T.LocalTransparencyModifier };
					end;
					T.Transparency = 1;
					T.LocalTransparencyModifier = 1;
				elseif T:IsA("Decal") or T:IsA("Texture") then
					if D.saved[T] == nil then
						D.saved[T] = { Transparency = T.Transparency };
					end;
					T.Transparency = 1;
				end;
			end;
		end;
	end;
end;
local function n()
	local p = t.Character;
	for p, T in pairs(D.saved) do
		if p and p.Parent then
			pcall(function()
				if T.Transparency ~= nil and p.Transparency ~= nil then
					p.Transparency = T.Transparency;
				end;
				if T.LocalTransparencyModifier ~= nil and p.LocalTransparencyModifier ~= nil then
					p.LocalTransparencyModifier = T.LocalTransparencyModifier;
				end;
				if T.Enabled ~= nil and p.Enabled ~= nil then
					p.Enabled = T.Enabled;
				end;
				if T.DisplayDistanceType ~= nil then
					p.DisplayDistanceType = T.DisplayDistanceType;
				end;
				if T.NameDisplayDistance ~= nil then
					p.NameDisplayDistance = T.NameDisplayDistance;
				end;
				if T.HealthDisplayDistance ~= nil then
					p.HealthDisplayDistance = T.HealthDisplayDistance;
				end;
			end);
		end;
	end;
	D.saved = {};
	local T = t:FindFirstChild("PlayerGui");
	if T then
		local p = T:FindFirstChild("MulbaHeadGui");
		if p then
			p.Enabled = true;
		end;
	end;
end;
local function U()
	X.Invisible = true;
	D.saved = {};
	l();
	if D.conn then
		D.conn:Disconnect();
	end;
	D.conn = O.Heartbeat:Connect(function()
			if not X.Invisible then
				return;
			end;
			local p = t.Character;
			if not p then
				return;
			end;
			for p, T in ipairs(p:GetDescendants()) do
				if T:IsA("BasePart") then
					T.LocalTransparencyModifier = 1;
					if T.Transparency ~= 1 then
						T.Transparency = 1;
					end;
				end;
			end;
			local T = p:FindFirstChildOfClass("Humanoid");
			if T then
				T.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None;
			end;
		end);
end;
local function K()
	X.Invisible = false;
	if D.conn then
		D.conn:Disconnect();
		D.conn = nil;
	end;
	n();
end;
local function q()
	if X.Invisible then
		K();
	else
		U();
	end;
end;
local function j(...)
	print("[MENU-V71]", ...);
end;
local function m(p, T)
	local O = Instance.new(p);
	for p, T in pairs(T or {}) do
		O[p] = T;
	end;
	return O;
end;
local function h(p, T)
	return m("UICorner", { CornerRadius = UDim.new(0, T or 8), Parent = p });
end;
local function N(p, T, O, i)
	return m("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, T), ColorSequenceKeypoint.new(1, O) }), Rotation = i or 90, Parent = p });
end;
local function b(p, T, O, i)
	return m("UIStroke", {
		Color = T or x.Border,
		Thickness = O or 1,
		Transparency = i or 0,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = p,
	});
end;
local function Q(p, T, O, i)
	i = i or 8;
	local e = m("Frame", { Size = UDim2.new(0, i + 2, 0, i + 2), BackgroundTransparency = 1, Parent = p });
	local t, g = (T == "right") and 45 or -45, (T == "right") and -45 or 45;
	local H = m("Frame", {
			Size = UDim2.new(0, i, 0, 2),
			Position = UDim2.new(.5, -1, .5, -3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = O or x.TextMuted,
			BorderSizePixel = 0,
			Rotation = t,
			Parent = e,
		});
	h(H, 1);
	local f = m("Frame", {
			Size = UDim2.new(0, i, 0, 2),
			Position = UDim2.new(.5, -1, .5, 3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = O or x.TextMuted,
			BorderSizePixel = 0,
			Rotation = g,
			Parent = e,
		});
	h(f, 1);
	return e, H, f;
end;
local function c(p, O)
	O = O or .45;
	local i = p.Size;
	p.Size = UDim2.new(0, i.X.Offset * .85, 0, i.Y.Offset * .85);
	p.BackgroundTransparency = 1;
	(T:Create(p, TweenInfo.new(O, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = i, BackgroundTransparency = 0 })):Play();
end;
local function L(p, O, i)
	O = O or .32;
	local e = p.Size;
	(T:Create(p, TweenInfo.new(O, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Size = UDim2.new(0, e.X.Offset * .85, 0, e.Y.Offset * .85), BackgroundTransparency = 1 })):Play();
	for p, i in ipairs(p:GetDescendants()) do
		if i:IsA("TextLabel") or i:IsA("TextBox") then
			(T:Create(i, TweenInfo.new(O * .85), { TextTransparency = 1 })):Play();
		elseif i:IsA("TextButton") then
			(T:Create(i, TweenInfo.new(O * .85), { BackgroundTransparency = 1 })):Play();
		elseif i:IsA("Frame") and i.Name ~= "ParticleZone" then
			if i.BackgroundTransparency < 1 then
				(T:Create(i, TweenInfo.new(O * .85), { BackgroundTransparency = 1 })):Play();
			end;
		elseif i:IsA("ImageLabel") then
			(T:Create(i, TweenInfo.new(O * .85), { ImageTransparency = 1 })):Play();
		elseif i:IsA("UIStroke") then
			(T:Create(i, TweenInfo.new(O * .85), { Transparency = 1 })):Play();
		end;
	end;
	local t = p.Parent and p.Parent:FindFirstChild(p.Name .. "_ShadowHolder");
	if t then
		for p, i in ipairs(t:GetChildren()) do
			if i:IsA("Frame") then
				(T:Create(i, TweenInfo.new(O * .85), { BackgroundTransparency = 1 })):Play();
			end;
		end;
	end;
	task.delay(O + .05, function()
		if t and t.Parent then
			t:Destroy();
		end;
		if p and p.Parent then
			p:Destroy();
		end;
		if i then
			i();
		end;
	end);
end;
local function M(p, O)
	O = O or .5;
	local i = p.Size;
	p.Size = UDim2.new(0, i.X.Offset * .85, 0, i.Y.Offset * .85);
	p.BackgroundTransparency = 1;
	for p, i in ipairs(p:GetDescendants()) do
		if i:IsA("TextLabel") or i:IsA("TextBox") then
			i.TextTransparency = 1;
			(T:Create(i, TweenInfo.new(O), { TextTransparency = 0 })):Play();
		elseif i:IsA("TextButton") then
			i.BackgroundTransparency = 1;
		elseif i:IsA("ImageLabel") then
			i.ImageTransparency = 1;
			(T:Create(i, TweenInfo.new(O), { ImageTransparency = 0 })):Play();
		end;
	end;
	(T:Create(p, TweenInfo.new(O, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = i, BackgroundTransparency = 0 })):Play();
end;
local function p5(p, O, i)
	local e = t:FindFirstChild("PlayerGui");
	if not e then
		return;
	end;
	local g = e:FindFirstChild("MulbaNotif");
	if g then
		g:Destroy();
	end;
	local H = m("ScreenGui", {
			Name = "MulbaNotif",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 1000,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Parent = e,
		});
	local f = m("Frame", {
			Size = UDim2.new(0, 320, 0, 80),
			Position = UDim2.new(1, 20, 0, 100),
			BackgroundColor3 = x.BgTop,
			BackgroundTransparency = .05,
			BorderSizePixel = 0,
			ZIndex = 1000,
			Parent = H,
		});
	h(f, 14);
	N(f, x.BgTop, x.BgBottom, 90);
	m("UIStroke", {
		Color = i and Color3.fromRGB(255, 100, 100) or x.Accent,
		Thickness = 2,
		Transparency = .2,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = f,
	});
	m("TextLabel", {
		Size = UDim2.new(1, -60, 0, 20),
		Position = UDim2.new(0, 20, 0, 14),
		BackgroundTransparency = 1,
		Text = p,
		TextColor3 = i and Color3.fromRGB(255, 120, 120) or x.Accent,
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 1001,
		Parent = f,
	});
	m("TextLabel", {
		Size = UDim2.new(1, -60, 0, 30),
		Position = UDim2.new(0, 20, 0, 36),
		BackgroundTransparency = 1,
		Text = O,
		TextColor3 = x.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		ZIndex = 1001,
		Parent = f,
	});
	(T:Create(f, TweenInfo.new(.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.new(1, -340, 0, 100) })):Play();
	task.delay(5, function()
		if not f.Parent then
			return;
		end;
		(T:Create(f, TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(1, 20, 0, 100), BackgroundTransparency = 1 })):Play();
		for p, O in ipairs(f:GetDescendants()) do
			if O:IsA("TextLabel") then
				(T:Create(O, TweenInfo.new(.4), { TextTransparency = 1 })):Play();
			end;
		end;
		task.wait(.5);
		H:Destroy();
	end);
end;
local T5 = nil;
local O5 = nil;
local function i5()
	local p = t:FindFirstChild("PlayerGui");
	if not p then
		return;
	end;
	if T5 and T5.Parent then
		return;
	end;
	T5 = m("ScreenGui", {
			Name = "MulbaKillFeed",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 950,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Parent = p,
		});
	local T = m("Frame", {
			Size = UDim2.new(0, 340, 0, 500),
			Position = UDim2.new(1, -360, 1, -520),
			BackgroundTransparency = 1,
			ZIndex = 950,
			Parent = T5,
		});
	O5 = m("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ZIndex = 951,
			Parent = T,
		});
	m("UIListLayout", {
		Padding = UDim.new(0, 6),
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Bottom,
		Parent = O5,
	});
end;
local function e5(p, O)
	if not r.NotifKillFeed then
		return;
	end;
	i5();
	if not O5 then
		return;
	end;
	local i = m("Frame", {
			Size = UDim2.new(1, 0, 0, 42),
			BackgroundColor3 = x.Surface,
			BackgroundTransparency = .15,
			BorderSizePixel = 0,
			ZIndex = 952,
			Parent = O5,
		});
	h(i, 10);
	m("UIStroke", {
		Color = x.Border,
		Thickness = 1,
		Transparency = .5,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = i,
	});
	local e = m("Frame", {
			Size = UDim2.new(0, 3, 0, 26),
			Position = UDim2.new(0, 10, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = O or Color3.fromRGB(255, 80, 80),
			BorderSizePixel = 0,
			ZIndex = 953,
			Parent = i,
		});
	h(e, 2);
	m("TextLabel", {
		Size = UDim2.new(1, -30, 1, 0),
		Position = UDim2.new(0, 22, 0, 0),
		BackgroundTransparency = 1,
		Text = p,
		TextColor3 = O or x.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 953,
		Parent = i,
	});
	task.delay(6, function()
		if not i.Parent then
			return;
		end;
		(T:Create(i, TweenInfo.new(.4), { BackgroundTransparency = 1 })):Play();
		for p, O in ipairs(i:GetDescendants()) do
			if O:IsA("TextLabel") then
				(T:Create(O, TweenInfo.new(.4), { TextTransparency = 1 })):Play();
			end;
			if O:IsA("Frame") then
				(T:Create(O, TweenInfo.new(.4), { BackgroundTransparency = 1 })):Play();
			end;
		end;
		task.wait(.5);
		i:Destroy();
	end);
end;
local function t5(p)
	if not p then
		return "Innocent";
	end;
	if p:FindFirstChild("Role") then
		local T, O = pcall(function()
				return tostring(p.Role.Value);
			end);
		if T and (O and O ~= "") then
			return O;
		end;
	end;
	local T = p.Character;
	local O = p:FindFirstChild("Backpack");
	if T then
		if T:FindFirstChild("Knife") then
			return "Murderer";
		end;
		if T:FindFirstChild("Gun") then
			return "Sheriff";
		end;
	end;
	if O then
		if O:FindFirstChild("Knife") then
			return "Murderer";
		end;
		if O:FindFirstChild("Gun") then
			return "Sheriff";
		end;
	end;
	return "Innocent";
end;
local function g5()
	for p, T in ipairs(p:GetPlayers()) do
		if T == t then
			continue;
		end;
		if t5(T) == "Murderer" then
			return T;
		end;
	end;
	return nil;
end;
local function H5()
	for p, T in ipairs(p:GetPlayers()) do
		if T == t then
			continue;
		end;
		if t5(T) == "Sheriff" then
			return T;
		end;
	end;
	return nil;
end;
local function f5(p)
	if p == "Murderer" then
		return d.Murderer;
	end;
	if p == "Sheriff" then
		return d.Sheriff;
	end;
	return d.Innocent;
end;
local function Z5(p)
	if p == "Murderer" then
		return r.EspShowMurder;
	end;
	if p == "Sheriff" then
		return r.EspShowSheriff;
	end;
	return r.EspShowInnocent;
end;
task.spawn(function()
	while true do
		task.wait(.5);
		if r.NotifKillFeed then
			for p, T in ipairs(p:GetPlayers()) do
				if T == t then
					continue;
				end;
				local O = t5(T);
				local i = Y.knownRoles[T];
				if O ~= i then
					Y.knownRoles[T] = O;
					if O == "Murderer" then
						e5("\240\159\148\170 " .. (T.Name .. " est Murderer"), Color3.fromRGB(255, 80, 80));
					elseif O == "Sheriff" then
						e5("\240\159\148\171 " .. (T.Name .. " est Sheriff"), Color3.fromRGB(80, 140, 255));
					elseif i == "Murderer" or i == "Sheriff" then
						e5("\240\159\146\128 " .. (T.Name .. (" n\'est plus " .. ((i or "?")))), Color3.fromRGB(200, 200, 200));
					end;
				end;
			end;
			for p, T in ipairs(workspace:GetChildren()) do
				if T:IsA("Tool") and (T.Name == "Gun" and T:FindFirstChild("Handle")) then
					if not Y.seenGroundGuns[T] then
						Y.seenGroundGuns[T] = true;
						e5("\240\159\148\171 Gun au sol !", Color3.fromRGB(255, 180, 80));
					end;
				end;
			end;
		end;
	end;
end);
local function B5(p)
	local T = t:FindFirstChild("PlayerGui");
	if not T then
		return;
	end;
	pcall(function()
		(game:GetService("StarterGui")):SetCore("ChatMakeSystemMessage", { Text = "[Mulba] " .. p, Color = Color3.fromRGB(115, 155, 240), Font = Enum.Font.GothamBold });
	end);
end;
local function x5()
	local T, O = {}, {};
	for p, i in ipairs(p:GetPlayers()) do
		if i == t then
			continue;
		end;
		local e = t5(i);
		if e == "Murderer" then
			table.insert(T, i.Name);
		end;
		if e == "Sheriff" then
			table.insert(O, i.Name);
		end;
	end;
	local i = #T > 0 and table.concat(T, ", ") or "?";
	local e = #O > 0 and table.concat(O, ", ") or "?";
	B5("Murder : " .. (i .. (" | Sheriff : " .. e)));
end;
task.spawn(function()
	while true do
		task.wait(1);
		if r.NotifChatMsg then
			local T = false;
			for p, O in ipairs(p:GetPlayers()) do
				if O == t then
					continue;
				end;
				local i = t5(O);
				if i ~= z.lastRoles[O] then
					z.lastRoles[O] = i;
					T = true;
				end;
			end;
			if T then
				x5();
			end;
		end;
	end;
end);
local function s5()
	local p = t.Character;
	if not p then
		return;
	end;
	local T = p:FindFirstChildOfClass("Humanoid");
	if not T then
		return;
	end;
	local O = "rbxassetid://77643987647373";
	local i = Instance.new("Animation");
	i.AnimationId = O;
	pcall(function()
		local p = T:LoadAnimation(i);
		p.Priority = Enum.AnimationPriority.Action4;
		p.Looped = true;
		p:Play();
		R.track = p;
	end);
end;
local function w5()
	if R.track then
		pcall(function()
			R.track:Stop();
		end);
		R.track = nil;
	end;
end;
local function C5()
	if not X.FlyEnabled and not J.nowe then
		return;
	end;
	X.FlyEnabled = false;
	J.nowe = false;
	J.tpwalking = false;
	if J.conn then
		J.conn:Disconnect();
		J.conn = nil;
	end;
	if J.bg then
		pcall(function()
			J.bg:Destroy();
		end);
		J.bg = nil;
	end;
	if J.bv then
		pcall(function()
			J.bv:Destroy();
		end);
		J.bv = nil;
	end;
	J.ctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		};
	J.lastctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		};
	J.speed = 0;
	w5();
	local p = t.Character;
	if not p then
		return;
	end;
	local T = p:FindFirstChildOfClass("Humanoid");
	if T then
		pcall(function()
			T.PlatformStand = false;
			T:SetStateEnabled(Enum.HumanoidStateType.Climbing, true);
			T:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true);
			T:SetStateEnabled(Enum.HumanoidStateType.Flying, true);
			T:SetStateEnabled(Enum.HumanoidStateType.Freefall, true);
			T:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true);
			T:SetStateEnabled(Enum.HumanoidStateType.Jumping, true);
			T:SetStateEnabled(Enum.HumanoidStateType.Landed, true);
			T:SetStateEnabled(Enum.HumanoidStateType.Physics, true);
			T:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true);
			T:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true);
			T:SetStateEnabled(Enum.HumanoidStateType.Running, true);
			T:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true);
			T:SetStateEnabled(Enum.HumanoidStateType.Seated, true);
			T:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true);
			T:SetStateEnabled(Enum.HumanoidStateType.Swimming, true);
		end);
	end;
	local O = p:FindFirstChild("Animate");
	if O then
		O.Disabled = J.savedAnimDisabled or false;
	end;
end;
local function P5()
	local p = t.Character;
	if not p then
		return;
	end;
	local T = p:FindFirstChildOfClass("Humanoid");
	if not T then
		return;
	end;
	X.FlyEnabled = true;
	J.nowe = true;
	J.tpwalking = true;
	J.savedAnimDisabled = p:FindFirstChild("Animate") and p.Animate.Disabled or false;
	local e = math.clamp(math.floor(X.FlySpeed / 10), 1, 50);
	for p = 1, e, 1 do
		task.spawn(function()
			local p = O.Heartbeat;
			while J.tpwalking and p:Wait() do
				local p = t.Character;
				local T = p and p:FindFirstChildOfClass("Humanoid");
				if not ((p and (T and T.Parent))) then
					break;
				end;
				if T.MoveDirection.Magnitude > 0 then
					pcall(function()
						p:TranslateBy(T.MoveDirection);
					end);
				end;
			end;
		end);
	end;
	local g = p:FindFirstChild("Animate");
	if g then
		g.Disabled = true;
	end;
	for p, T in next, T:GetPlayingAnimationTracks() do
		pcall(function()
			T:AdjustSpeed(0);
		end);
	end;
	pcall(function()
		T:SetStateEnabled(Enum.HumanoidStateType.Climbing, false);
		T:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false);
		T:SetStateEnabled(Enum.HumanoidStateType.Flying, false);
		T:SetStateEnabled(Enum.HumanoidStateType.Freefall, false);
		T:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false);
		T:SetStateEnabled(Enum.HumanoidStateType.Jumping, false);
		T:SetStateEnabled(Enum.HumanoidStateType.Landed, false);
		T:SetStateEnabled(Enum.HumanoidStateType.Physics, false);
		T:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false);
		T:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false);
		T:SetStateEnabled(Enum.HumanoidStateType.Running, false);
		T:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false);
		T:SetStateEnabled(Enum.HumanoidStateType.Seated, false);
		T:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false);
		T:SetStateEnabled(Enum.HumanoidStateType.Swimming, false);
		T:ChangeState(Enum.HumanoidStateType.Swimming);
	end);
	local H = (T.RigType == Enum.HumanoidRigType.R6);
	local f = H and p:FindFirstChild("Torso") or p:FindFirstChild("UpperTorso");
	if not f then
		f = p:FindFirstChild("HumanoidRootPart");
	end;
	if not f then
		C5();
		return;
	end;
	local Z = Instance.new("BodyGyro");
	Z.P = 90000;
	Z.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000);
	Z.CFrame = f.CFrame;
	Z.Parent = f;
	J.bg = Z;
	local B = Instance.new("BodyVelocity");
	B.Velocity = Vector3.new(0, .1, 0);
	B.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000);
	B.Parent = f;
	J.bv = B;
	pcall(function()
		T.PlatformStand = true;
	end);
	task.wait(.15);
	s5();
	J.conn = O.RenderStepped:Connect(function()
			if not J.nowe then
				return;
			end;
			local p = t.Character;
			if not p then
				return;
			end;
			local T = p:FindFirstChildOfClass("Humanoid");
			if not T or T.Health <= 0 then
				return;
			end;
			local O = workspace.CurrentCamera;
			if not O then
				return;
			end;
			local e = J.ctrl;
			e.f = i:IsKeyDown(Enum.KeyCode.W) and 1 or 0;
			e.b = i:IsKeyDown(Enum.KeyCode.S) and 1 or 0;
			e.l = i:IsKeyDown(Enum.KeyCode.A) and 1 or 0;
			e.r = i:IsKeyDown(Enum.KeyCode.D) and 1 or 0;
			local g = J.maxspeed;
			if e.l + e.r ~= 0 or e.f + e.b ~= 0 then
				J.speed = (J.speed + .5) + (J.speed / g);
				if J.speed > g then
					J.speed = g;
				end;
			elseif not ((e.l + e.r ~= 0 or e.f + e.b ~= 0)) and J.speed ~= 0 then
				J.speed = J.speed - 1;
				if J.speed < 0 then
					J.speed = 0;
				end;
			end;
			if J.bv then
				if (e.l + e.r) ~= 0 or (e.f + e.b) ~= 0 then
					J.bv.Velocity = (((O.CFrame.LookVector * ((e.f + e.b))) + (((O.CFrame * (CFrame.new(e.l + e.r, ((e.f + e.b)) * .2, 0)).p) - O.CFrame.p)))) * J.speed;
					J.lastctrl = {
							f = e.f,
							b = e.b,
							l = e.l,
							r = e.r,
						};
				elseif (e.l + e.r) == 0 and ((e.f + e.b) == 0 and J.speed ~= 0) then
					J.bv.Velocity = (((O.CFrame.LookVector * ((J.lastctrl.f + J.lastctrl.b))) + (((O.CFrame * (CFrame.new(J.lastctrl.l + J.lastctrl.r, ((J.lastctrl.f + J.lastctrl.b)) * .2, 0)).p) - O.CFrame.p)))) * J.speed;
				else
					J.bv.Velocity = Vector3.new(0, 0, 0);
				end;
			end;
			if J.bg then
				J.bg.CFrame = O.CFrame * CFrame.Angles(-math.rad(((((e.f + e.b)) * 50) * J.speed) / g), 0, 0);
			end;
		end);
end;
local function o5()
	if X.FlyEnabled or J.nowe then
		C5();
	else
		P5();
	end;
end;
local function S5()
	if J.bindConn then
		J.bindConn:Disconnect();
		J.bindConn = nil;
	end;
	if not X.FlyBind then
		return;
	end;
	J.bindConn = i.InputBegan:Connect(function(p, T)
			if T then
				return;
			end;
			if p.UserInputType ~= Enum.UserInputType.Keyboard then
				return;
			end;
			if p.KeyCode == X.FlyBind then
				o5();
			end;
		end);
end;
local function v5(p)
	X.FlyBind = p;
	S5();
end;
local function W5()
	X.SpinEnabled = false;
	if y.av then
		y.av:Destroy();
		y.av = nil;
	end;
end;
local function r5()
	local p = t.Character;
	if not p then
		return;
	end;
	local T = p:FindFirstChild("HumanoidRootPart");
	if not T then
		return;
	end;
	X.SpinEnabled = true;
	local O = Instance.new("BodyAngularVelocity");
	O.AngularVelocity = Vector3.new(0, X.SpinSpeed, 0);
	O.MaxTorque = Vector3.new(0, 9000000000, 0);
	O.P = 1250;
	O.Parent = T;
	y.av = O;
end;
local function d5()
	if X.SpinEnabled then
		W5();
	else
		r5();
	end;
end;
local function V5(p)
	X.SpinSpeed = p;
	if y.av then
		y.av.AngularVelocity = Vector3.new(0, p, 0);
	end;
end;
local function X5()
	X.JerkEnabled = false;
	if A.conn then
		A.conn:Disconnect();
		A.conn = nil;
	end;
	local p = t.Character;
	local T = p and p:FindFirstChild("HumanoidRootPart");
	if T then
		pcall(function()
			T.AssemblyLinearVelocity = Vector3.zero;
			T.Velocity = Vector3.zero;
		end);
	end;
end;
local function k5()
	local p = t.Character;
	if not p then
		return;
	end;
	local T = p:FindFirstChild("HumanoidRootPart");
	if not T then
		return;
	end;
	X.JerkEnabled = true;
	A.conn = O.Heartbeat:Connect(function()
			if not X.JerkEnabled then
				return;
			end;
			local p = t.Character;
			local T = p and p:FindFirstChild("HumanoidRootPart");
			if not T then
				return;
			end;
			local O = X.JerkIntensity;
			local i = Vector3.new((((math.random() - .5)) * O) * 8, (((math.random() - .5)) * O) * 8, (((math.random() - .5)) * O) * 8);
			pcall(function()
				T.AssemblyLinearVelocity = T.AssemblyLinearVelocity + i;
				T.Velocity = T.Velocity + i;
			end);
		end);
end;
local function R5()
	if X.JerkEnabled then
		X5();
	else
		k5();
	end;
end;
local function J5(p)
	X.JerkIntensity = p;
end;
local function y5()
	X.Sitting = not X.Sitting;
	local p = t.Character;
	local T = p and p:FindFirstChildOfClass("Humanoid");
	if not T then
		return;
	end;
	T.Sit = X.Sitting;
end;
task.spawn(function()
	while true do
		task.wait(.15);
		if X.NoclipEnabled and not X.FlyEnabled then
			local p = t.Character;
			if p then
				for p, T in ipairs(p:GetDescendants()) do
					if T:IsA("BasePart") and T.CanCollide then
						T.CanCollide = false;
					end;
				end;
			end;
		end;
	end;
end);
local function A5()
	X.NoclipEnabled = not X.NoclipEnabled;
	local p = t.Character;
	if p and not X.NoclipEnabled then
		for p, T in ipairs(p:GetDescendants()) do
			if T:IsA("BasePart") then
				T.CanCollide = true;
			end;
		end;
	end;
end;
local function G5(p)
	X.WalkSpeed = p;
	local T = t.Character;
	local O = T and T:FindFirstChildOfClass("Humanoid");
	if O then
		O.WalkSpeed = p;
	end;
end;
local function I5(p)
	X.JumpPower = p;
	local T = t.Character;
	local O = T and T:FindFirstChildOfClass("Humanoid");
	if O then
		O.UseJumpPower = true;
		O.JumpPower = p;
	end;
end;
local function F5(p)
	X.Gravity = p;
	workspace.Gravity = p;
end;
local Y5 = nil;
local function z5()
	X.InfiniteJump = not X.InfiniteJump;
	if X.InfiniteJump then
		if Y5 then
			Y5:Disconnect();
		end;
		Y5 = i.JumpRequest:Connect(function()
				local p = t.Character;
				local T = p and p:FindFirstChildOfClass("Humanoid");
				if T then
					T:ChangeState(Enum.HumanoidStateType.Jumping);
				end;
			end);
	else
		if Y5 then
			Y5:Disconnect();
			Y5 = nil;
		end;
	end;
end;
local E5 = nil;
local function u5()
	X.AntiAFK = not X.AntiAFK;
	if X.AntiAFK then
		if E5 then
			E5:Disconnect();
		end;
		E5 = t.Idled:Connect(function()
				local p = game:GetService("VirtualUser");
				p:CaptureController();
				p:ClickButton2(Vector2.new());
			end);
	else
		if E5 then
			E5:Disconnect();
			E5 = nil;
		end;
	end;
end;
local a5 = {};
local function D5()
	X.Fullbright = not X.Fullbright;
	if X.Fullbright then
		a5.Ambient = e.Ambient;
		a5.OutdoorAmbient = e.OutdoorAmbient;
		a5.Brightness = e.Brightness;
		a5.ClockTime = e.ClockTime;
		e.Ambient = Color3.fromRGB(255, 255, 255);
		e.OutdoorAmbient = Color3.fromRGB(255, 255, 255);
		e.Brightness = 3;
		e.ClockTime = 14;
		local p = e:FindFirstChild("MulbaFullbright");
		if not p then
			p = Instance.new("ColorCorrectionEffect");
			p.Name = "MulbaFullbright";
			p.Parent = e;
		end;
	else
		if a5.Ambient then
			e.Ambient = a5.Ambient;
		end;
		if a5.OutdoorAmbient then
			e.OutdoorAmbient = a5.OutdoorAmbient;
		end;
		if a5.Brightness then
			e.Brightness = a5.Brightness;
		end;
		if a5.ClockTime then
			e.ClockTime = a5.ClockTime;
		end;
		local p = e:FindFirstChild("MulbaFullbright");
		if p then
			p:Destroy();
		end;
	end;
end;
local function l5()
	X.AntiFling = not X.AntiFling;
end;
task.spawn(function()
	while true do
		task.wait(.1);
		if X.AntiFling then
			local p = t.Character;
			local T = p and p:FindFirstChild("HumanoidRootPart");
			if T then
				for p, T in ipairs(T:GetChildren()) do
					if T:IsA("BodyVelocity") then
						if T.Velocity.Magnitude > 500 then
							T.Velocity = T.Velocity.Unit * 500;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local function n5()
	local p = t.Character;
	local T = p and p:FindFirstChildOfClass("Humanoid");
	if T then
		T.Health = 0;
	end;
end;
local function U5()
	local p = t.Character;
	local T = p and p:FindFirstChild("HumanoidRootPart");
	if not T then
		return;
	end;
	for p, O in ipairs(workspace:GetDescendants()) do
		if O:IsA("SpawnLocation") then
			pcall(function()
				T.CFrame = O.CFrame + Vector3.new(0, 3, 0);
			end);
			return;
		end;
	end;
end;
local function K5(p)
	local T = t.Character;
	local O = T and T:FindFirstChild("HumanoidRootPart");
	if not O then
		return;
	end;
	E.savedCFrame = O.CFrame;
	if not p then
		p5("MAP", "Position sauvegard\195\169e", false);
	end;
end;
local function q5()
	if not E.savedCFrame then
		p5("MAP", "Aucune position sauvegard\195\169e", true);
		return;
	end;
	local p = t.Character;
	local T = p and p:FindFirstChild("HumanoidRootPart");
	if not T then
		return;
	end;
	pcall(function()
		T.CFrame = E.savedCFrame + Vector3.new(0, 3, 0);
	end);
	p5("MAP", "TP \195\160 la position sauvegard\195\169e", false);
end;
local function j5()
	local p = {};
	for T, O in ipairs(workspace:GetDescendants()) do
		if O:IsA("BasePart") then
			local T = O.Name;
			if T == "Coin" or T:find("Coin") or T:find("coin") then
				if O.Transparency < 1 then
					table.insert(p, O);
				end;
			end;
		end;
	end;
	return p;
end;
local function m5()
	local p = t.Character;
	return p and p:FindFirstChild("HumanoidRootPart");
end;
local function h5(p, T)
	local O = m5();
	if not O then
		return;
	end;
	T = T or a.FlySpeed;
	local i = O.Position;
	local e = p - i;
	local t = e.Magnitude;
	if t < 1 then
		return;
	end;
	local g = 5;
	local H = math.max(1, math.floor(t / g));
	local f = math.max(.015, ((t / T)) / H);
	for p = 1, H, 1 do
		if not u.running then
			return;
		end;
		local T = p / H;
		local t = i + e * T;
		pcall(function()
			O.CFrame = CFrame.new(t);
			O.AssemblyLinearVelocity = Vector3.zero;
			O.Velocity = Vector3.zero;
		end);
		task.wait(f);
	end;
end;
local function N5(p, T, O)
	local i = m5();
	if not i then
		return;
	end;
	local e = ((O or i.Position.Y)) - a.UnderMapDepth;
	local t = Vector3.new(p or i.Position.X, e, T or i.Position.Z);
	h5(t, a.FlySpeed * 1.5);
end;
local function b5()
	local T = m5();
	if not T then
		return false;
	end;
	for p, O in ipairs(p:GetPlayers()) do
		if O == t then
			continue;
		end;
		if t5(O) == "Murderer" then
			local p = O.Character and O.Character:FindFirstChild("HumanoidRootPart");
			if p then
				local O = ((p.Position - T.Position)).Magnitude;
				if O <= a.MurderDistance then
					return true;
				end;
			end;
		end;
	end;
	return false;
end;
local function Q5()
	if u.running then
		return;
	end;
	u.running = true;
	u.coinsCollected = 0;
	u.startTime = tick();
	task.spawn(function()
		while u.running do
			local p = t.Character;
			local T = p and p:FindFirstChild("HumanoidRootPart");
			if not T then
				task.wait(.3);
				continue;
			end;
			if a.IgnoreIfMurderNear and b5() then
				if a.GoUnderMap then
					N5(T.Position.X, T.Position.Z, T.Position.Y);
				end;
				task.wait(1);
				continue;
			end;
			local O = j5();
			if #O == 0 then
				if a.GoUnderMap then
					N5(T.Position.X, T.Position.Z, T.Position.Y);
				end;
				task.wait(1.5);
				continue;
			end;
			local i, e = nil, math.huge;
			for p, O in ipairs(O) do
				if O and O.Parent then
					local p = ((O.Position - T.Position)).Magnitude;
					if p < e and p <= a.CollectRadius then
						e = p;
						i = O;
					end;
				end;
			end;
			if not i then
				if a.GoUnderMap then
					N5(T.Position.X, T.Position.Z, T.Position.Y);
				end;
				task.wait(1);
				continue;
			end;
			local g = i.Position + Vector3.new(0, a.CollectDistance, 0);
			if a.TpDirect then
				pcall(function()
					T.CFrame = CFrame.new(g);
					T.AssemblyLinearVelocity = Vector3.zero;
					T.Velocity = Vector3.zero;
				end);
				task.wait(.15);
			else
				h5(g, a.FlySpeed);
				task.wait(.1);
			end;
			u.coinsCollected = u.coinsCollected + 1;
			if a.GoUnderMap then
				N5(i.Position.X, i.Position.Z, i.Position.Y);
			end;
			task.wait(a.AntiKickDelay);
		end;
	end);
end;
local function c5()
	u.running = false;
	local p = t.Character;
	local T = p and p:FindFirstChildOfClass("Humanoid");
	if T then
		T.WalkSpeed = X.WalkSpeed;
	end;
end;
local function L5()
	if u.running then
		c5();
	else
		Q5();
	end;
end;
local M5 = { running = false, conn = nil };
local function pA()
	if M5.running then
		return;
	end;
	M5.running = true;
	M5.conn = O.Heartbeat:Connect(function()
			if not M5.running then
				return;
			end;
			local T = t.Character;
			if not T then
				return;
			end;
			local O = T:FindFirstChild("HumanoidRootPart");
			if not O then
				return;
			end;
			local i = O.CFrame;
			local e = 4;
			local g = i.Position + (i.LookVector * e);
			for p, T in ipairs(p:GetPlayers()) do
				if T ~= t and T.Character then
					local p = T.Character:FindFirstChild("HumanoidRootPart");
					if p then
						pcall(function()
							p.CFrame = CFrame.new(g, g + i.LookVector);
							p.AssemblyLinearVelocity = Vector3.zero;
							p.Velocity = Vector3.zero;
						end);
					end;
				end;
			end;
		end);
end;
local function TA()
	M5.running = false;
	if M5.conn then
		M5.conn:Disconnect();
		M5.conn = nil;
	end;
end;
local function OA()
	if M5.running then
		TA();
	else
		pA();
	end;
end;
local iA = { conn = nil, weld = nil, target = nil };
local function eA()
	if iA.conn then
		iA.conn:Disconnect();
		iA.conn = nil;
	end;
	if iA.weld and iA.weld.Parent then
		iA.weld:Destroy();
	end;
	iA.weld = nil;
	iA.target = nil;
	local p = t.Character;
	local T = p and p:FindFirstChildOfClass("Humanoid");
	if T then
		pcall(function()
			T.PlatformStand = false;
			T.Sit = false;
		end);
	end;
end;
local function tA()
	local p = W.TrollSelected;
	if not p or not p.Character then
		p5("Attach", "Aucune cible valide", true);
		return;
	end;
	local T = p.Character:FindFirstChild("Head");
	local i = t.Character;
	local e = i and i:FindFirstChild("HumanoidRootPart");
	if not T or not e then
		p5("Attach", "Impossible de s\'accrocher", true);
		return;
	end;
	local g = T:FindFirstChild("MulbaAttachPoint");
	if not g then
		g = Instance.new("Attachment");
		g.Name = "MulbaAttachPoint";
		g.CFrame = CFrame.new(0, .7, 0);
		g.Parent = T;
	end;
	local H = Instance.new("WeldConstraint");
	H.Part0 = e;
	H.Part1 = T;
	H.Parent = e;
	iA.weld = H;
	iA.target = p;
	e.CFrame = T.CFrame * CFrame.new(0, 2, 0);
	local f = i:FindFirstChildOfClass("Humanoid");
	if f then
		pcall(function()
			f.PlatformStand = true;
		end);
	end;
	iA.conn = O.Heartbeat:Connect(function()
			local p = iA.target;
			if not p or not p.Character then
				eA();
				return;
			end;
			local T = p.Character:FindFirstChild("Head");
			if not T then
				eA();
				return;
			end;
			local O = t.Character;
			local i = O and O:FindFirstChild("HumanoidRootPart");
			if not i then
				return;
			end;
			if not iA.weld or not iA.weld.Parent then
				local p = Instance.new("WeldConstraint");
				p.Part0 = i;
				p.Part1 = T;
				p.Parent = i;
				iA.weld = p;
			end;
			pcall(function()
				i.CFrame = T.CFrame * CFrame.new(0, 2, 0);
				i.AssemblyLinearVelocity = Vector3.zero;
				i.Velocity = Vector3.zero;
			end);
		end);
	p5("Attach", "Accroch\195\169 \195\160 " .. p.Name, false);
end;
local function gA()
	if iA.conn then
		eA();
	else
		tA();
	end;
end;
local function HA(p, T)
	if not p then
		return;
	end;
	if I[T] and I[T].Parent then
		return;
	end;
	local O = m("Highlight", {
			FillColor = Color3.fromRGB(255, 255, 255),
			FillTransparency = .85,
			OutlineColor = Color3.fromRGB(255, 255, 255),
			OutlineTransparency = 0,
			DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
			Adornee = p,
			Parent = p,
		});
	I[T] = O;
end;
local function fA(p)
	local T = I[p];
	if T and T.Parent then
		T:Destroy();
	end;
	I[p] = nil;
end;
local function ZA()
	if r.XRayEnabled then
		for p, T in ipairs(p:GetPlayers()) do
			if T.Character then
				HA(T.Character, T);
			end;
		end;
	else
		for p in pairs(I) do
			fA(p);
		end;
	end;
end;
local function BA(p)
	if p == t then
		return;
	end;
	if G[p] then
		local T = pcall(function()
				G[p].Box.Visible = G[p].Box.Visible;
			end);
		if T then
			return;
		end;
		removeESP(p);
	end;
	local T = Drawing.new("Square");
	T.Thickness = V.BoxThickness;
	T.Filled = false;
	T.Visible = false;
	local O = Drawing.new("Text");
	O.Center = true;
	O.Outline = true;
	O.Size = 16;
	O.Visible = false;
	local i = Drawing.new("Text");
	i.Center = true;
	i.Outline = true;
	i.Size = 13;
	i.Visible = false;
	local e = Drawing.new("Line");
	e.Thickness = 1;
	e.Visible = false;
	G[p] = {
			Box = T,
			Text = O,
			DistanceText = i,
			Tracer = e,
		};
end;
local function xA(p)
	local T = G[p];
	if T then
		for p, T in pairs(T) do
			pcall(function()
				T:Remove();
			end);
		end;
		G[p] = nil;
	end;
end;
local function sA(p)
	if not p or not p:IsA("BasePart") then
		return false;
	end;
	local T = p.Name;
	if T == "Coin" or T:find("Coin") or T:find("coin") then
		return p.Transparency < 1;
	end;
	return false;
end;
local function wA(p)
	if F[p] then
		return;
	end;
	local T = Drawing.new("Square");
	T.Thickness = 1.5;
	T.Filled = false;
	T.Visible = false;
	T.Color = Color3.fromRGB(255, 215, 0);
	local O = Drawing.new("Text");
	O.Center = true;
	O.Outline = true;
	O.Size = 12;
	O.Color = Color3.fromRGB(255, 215, 0);
	O.Visible = false;
	F[p] = { Box = T, Text = O };
end;
local function CA(p)
	local T = F[p];
	if T then
		pcall(function()
			T.Box:Remove();
		end);
		pcall(function()
			T.Text:Remove();
		end);
		F[p] = nil;
	end;
end;
local function PA()
	for p in pairs(F) do
		CA(p);
	end;
end;
task.spawn(function()
	while true do
		task.wait(1);
		if r.EspShowCoins then
			for p, T in ipairs(workspace:GetDescendants()) do
				if sA(T) and not F[T] then
					wA(T);
				end;
			end;
			for p in pairs(F) do
				if not p or not p.Parent or not sA(p) then
					CA(p);
				end;
			end;
		elseif next(F) ~= nil then
			PA();
		end;
	end;
end);
O.RenderStepped:Connect(function()
	if not r.EspShowCoins then
		for p, T in pairs(F) do
			pcall(function()
				T.Box.Visible = false;
			end);
			pcall(function()
				T.Text.Visible = false;
			end);
		end;
		return;
	end;
	local p = workspace.CurrentCamera;
	if not p then
		return;
	end;
	for T, O in pairs(F) do
		local i = pcall(function()
				return O.Box.Visible;
			end);
		if not i or not T or not T.Parent then
			CA(T);
			continue;
		end;
		local e, t = p:WorldToViewportPoint(T.Position);
		if t then
			local i = 14;
			local t = ((p.CFrame.Position - T.Position)).Magnitude;
			local g = math.clamp(200 / t, .6, 2.5);
			local H = ((i * g)) / 2;
			pcall(function()
				O.Box.Size = Vector2.new(i * g, i * g);
				O.Box.Position = Vector2.new(e.X - H, e.Y - H);
				O.Box.Visible = true;
				O.Text.Text = "\240\159\146\176";
				O.Text.Position = Vector2.new(e.X, (e.Y - H) - 12);
				O.Text.Visible = true;
			end);
		else
			pcall(function()
				O.Box.Visible = false;
			end);
			pcall(function()
				O.Text.Visible = false;
			end);
		end;
	end;
end);
local function oA(p)
	local T, O = H:WorldToViewportPoint(p);
	return Vector2.new(T.X, T.Y), O;
end;
O.RenderStepped:Connect(function()
	if not r.EspEnabled then
		for p, T in pairs(G) do
			pcall(function()
				T.Box.Visible = false;
				T.Text.Visible = false;
				T.DistanceText.Visible = false;
				T.Tracer.Visible = false;
			end);
		end;
		return;
	end;
	local p = workspace.CurrentCamera;
	if p then
		H = p;
	end;
	local T = t.Character;
	local O = T and T:FindFirstChild("HumanoidRootPart");
	local i = O and O.Position;
	for p, T in pairs(G) do
		local O = pcall(function()
				return T.Box.Visible;
			end);
		if not O then
			G[p] = nil;
			continue;
		end;
		local e = p.Character;
		local t = e and e:FindFirstChild("HumanoidRootPart");
		local g = e and e:FindFirstChild("Head");
		local f = e and e:FindFirstChildOfClass("Humanoid");
		local Z = function()
				pcall(function()
					T.Box.Visible = false;
					T.Text.Visible = false;
					T.DistanceText.Visible = false;
					T.Tracer.Visible = false;
				end);
			end;
		if not ((t and (g and (f and f.Health > 0)))) then
			Z();
			continue;
		end;
		local B = t5(p);
		if not Z5(B) then
			Z();
			continue;
		end;
		local x, s = oA(g.Position + Vector3.new(0, .5, 0));
		local w, C = oA(t.Position - Vector3.new(0, 3, 0));
		if s or C then
			local O = math.abs(x.Y - w.Y);
			local e = O / 2;
			local g = f5(B);
			local f = ((tick() * .5)) % 1;
			local Z = Color3.fromHSV(f, 1, 1);
			if V.BoxEnabled then
				pcall(function()
					T.Box.Size = Vector2.new(e, O);
					T.Box.Position = Vector2.new(x.X - e / 2, x.Y);
					T.Box.Color = Z;
					T.Box.Thickness = 2;
					T.Box.Visible = true;
				end);
			else
				pcall(function()
					T.Box.Visible = false;
				end);
			end;
			pcall(function()
				T.Text.Text = p.DisplayName .. (" [" .. (B .. "]"));
				T.Text.Position = Vector2.new(x.X, x.Y - 18);
				T.Text.Color = g;
				T.Text.Visible = true;
			end);
			if V.DistanceEnabled and i then
				pcall(function()
					local p = ((t.Position - i)).Magnitude;
					T.DistanceText.Text = string.format("%.1f m", p * .28);
					T.DistanceText.Position = Vector2.new(x.X, w.Y + 2);
					T.DistanceText.Color = g;
					T.DistanceText.Visible = true;
				end);
			else
				pcall(function()
					T.DistanceText.Visible = false;
				end);
			end;
			if V.TracerEnabled then
				pcall(function()
					T.Tracer.From = Vector2.new(H.ViewportSize.X / 2, H.ViewportSize.Y);
					T.Tracer.To = Vector2.new(x.X, x.Y);
					T.Tracer.Color = Z;
					T.Tracer.Thickness = 1;
					T.Tracer.Visible = true;
				end);
			else
				pcall(function()
					T.Tracer.Visible = false;
				end);
			end;
		else
			Z();
		end;
	end;
end);
p.PlayerAdded:Connect(function(p)
	task.wait(1);
	BA(p);
	if r.XRayEnabled and p.Character then
		HA(p.Character, p);
	end;
end);
p.PlayerRemoving:Connect(function(p)
	xA(p);
	fA(p);
	Y.knownRoles[p] = nil;
	z.lastRoles[p] = nil;
end);
for p, T in ipairs(p:GetPlayers()) do
	BA(T);
end;
local function SA(p)
	local O = p.AbsoluteSize;
	if O.X < 5 or O.Y < 5 then
		return;
	end;
	local i = math.random(v.ParticleMinSize, v.ParticleMaxSize);
	local e = math.random(0, math.max(1, O.X - i));
	local t = ((O.Y + 40)) / v.ParticleFallSpeed;
	local g = m("Frame", {
			Size = UDim2.new(0, i, 0, i),
			Position = UDim2.new(0, e, 0, -i),
			BackgroundColor3 = x.Particle,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 5,
			Parent = p,
		});
	h(g, math.floor(i / 2));
	local H = T:Create(g, TweenInfo.new(t, Enum.EasingStyle.Linear), { Position = UDim2.new(0, e + math.random(-40, 40), 0, O.Y + 20), BackgroundTransparency = .85 + math.random() * .1 });
	H:Play();
	H.Completed:Connect(function()
		g:Destroy();
	end);
end;
local function vA(p)
	task.spawn(function()
		while p and p.Parent do
			for T = 1, v.ParticlesPerTick, 1 do
				SA(p);
			end;
			task.wait(v.ParticleSpawnRate);
		end;
	end);
end;
local function WA(p, T, i)
	local e = m("Frame", {
			Name = p .. "_ShadowHolder",
			Size = T,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ZIndex = 1,
			Parent = i,
		});
	for p = 1, 6, 1 do
		local T = m("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				BackgroundTransparency = .88 + (p * .008),
				BorderSizePixel = 0,
				ZIndex = 1,
				Parent = e,
			});
		h(T, 20 + p * 5);
	end;
	local t = m("Frame", {
			Name = p,
			Size = T,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundColor3 = x.BgTop,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Active = true,
			Draggable = true,
			ZIndex = 2,
			Parent = i,
		});
	h(t, 20);
	b(t, x.Border, 1, .4);
	N(t, x.BgTop, x.BgBottom, 90);
	O.Heartbeat:Connect(function()
		if e.Parent and t.Parent then
			e.Position = t.Position + UDim2.new(0, 0, 0, 12);
			e.Size = t.Size;
			e.Visible = t.Visible;
		end;
	end);
	local g = m("Frame", {
			Name = "ParticleZone",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			ZIndex = 5,
			Parent = t,
		});
	h(g, 20);
	vA(g);
	return t;
end;
local function rA(p, T)
	L(p, .35, T);
end;
local function dA()
	if not ((W.Shell and W.Shell.Parent)) then
		return;
	end;
	L(W.Shell, .35, function()
		W.Shell = nil;
		W.Sidebar = nil;
		W.Content = nil;
		W.Scroll = nil;
		W.NavItems = {};
		W.CurrentPage = nil;
		W.MenuOpen = false;
	end);
end;
task.spawn(function()
	while true do
		task.wait(r.AutoShootDelay);
		if not r.AutoShootEnabled then
			continue;
		end;
		local p = t5(t);
		if p ~= "Sheriff" then
			continue;
		end;
		local T = t.Character;
		if not T then
			continue;
		end;
		local O = T:FindFirstChild("Gun");
		if not O then
			local p = t:FindFirstChild("Backpack");
			if p then
				local O = p:FindFirstChild("Gun");
				if O then
					pcall(function()
						T.Humanoid:EquipTool(O);
					end);
				end;
			end;
			continue;
		end;
		local i = g5();
		if not i then
			continue;
		end;
		local e = i.Character;
		if not e then
			continue;
		end;
		local g = e:FindFirstChild("HumanoidRootPart");
		local H = e:FindFirstChild("Head");
		if not g then
			continue;
		end;
		local f = T:FindFirstChild("HumanoidRootPart");
		if not f then
			continue;
		end;
		local Z = ((g.Position - f.Position)).Magnitude;
		if Z > r.AutoShootRange then
			continue;
		end;
		local B = workspace.CurrentCamera;
		if B then
			pcall(function()
				B.CFrame = CFrame.new(B.CFrame.Position, H and H.Position or g.Position);
			end);
		end;
		pcall(function()
			O:Activate();
		end);
	end;
end);
local VA, XA, kA;
local RA, JA, yA, AA, GA, IA;
local FA, YA, zA, EA, uA;
local aA, DA, lA, nA, UA, KA;
local qA, jA;
local mA, hA;
XA = function()
		local i = t:FindFirstChild("PlayerGui");
		if i then
			local p = i:FindFirstChild("MulbaHeadGui");
			if p then
				p:Destroy();
			end;
		end;
		local e = t.Character;
		if not e or not e:FindFirstChild("Head") then
			task.delay(1, function()
				if XA then
					XA();
				end;
			end);
			return;
		end;
		local g = e:FindFirstChild("Head");
		if not g then
			return;
		end;
		local H = m("ScreenGui", {
				Name = "MulbaHeadGui",
				ResetOnSpawn = false,
				IgnoreGuiInset = true,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				DisplayOrder = 997,
				Parent = i,
			});
		local f, Z = 200, 50;
		local s = m("TextButton", {
				Size = UDim2.new(0, f, 0, Z),
				Position = UDim2.new(0, 0, 0, 0),
				AnchorPoint = Vector2.new(.5, 1),
				BackgroundColor3 = Color3.fromRGB(12, 16, 28),
				BackgroundTransparency = .05,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				Active = true,
				ZIndex = 1,
				Parent = H,
			});
		h(s, 25);
		N(s, Color3.fromRGB(16, 22, 38), Color3.fromRGB(8, 10, 18), 90);
		m("UIStroke", {
			Color = Color3.fromRGB(90, 150, 255),
			Thickness = 1.5,
			Transparency = .15,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = s,
		});
		local w = m("Frame", {
				Size = UDim2.new(0, 36, 0, 36),
				Position = UDim2.new(0, 8, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = s,
			});
		h(w, 18);
		local C = m("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 7,
				Parent = w,
			});
		h(C, 16);
		local P = m("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 8,
				Parent = C,
			});
		h(P, 16);
		task.spawn(function()
			local T, O = pcall(function()
					return p:GetUserThumbnailAsync(t.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if T and O then
				P.Image = O;
			end;
		end);
		local o = m("TextLabel", {
				Size = UDim2.new(1, -90, 0, 16),
				Position = UDim2.new(0, 52, 0, 8),
				BackgroundTransparency = 1,
				Text = "Mulba Menu",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = s,
			});
		local S = m("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 180, 255)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(170, 120, 255)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 120, 200)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(255, 180, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 255, 180)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 180, 255)),
				}), Rotation = 0, Parent = o });
		task.spawn(function()
			while S.Parent do
				S.Rotation = ((S.Rotation + 3)) % 360;
				task.wait(.03);
			end;
		end);
		m("TextLabel", {
			Size = UDim2.new(1, -90, 0, 12),
			Position = UDim2.new(0, 52, 0, 23),
			BackgroundTransparency = 1,
			Text = t.DisplayName .. " / lifetime",
			TextColor3 = x.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 9,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 9,
			Parent = s,
		});
		local v = m("TextLabel", {
				Size = UDim2.new(1, -90, 0, 14),
				Position = UDim2.new(0, 52, 0, 35),
				BackgroundTransparency = 1,
				Text = "Cr\195\169ateur",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = s,
			});
		local r = m("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 80, 80)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(255, 180, 80)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 255, 80)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(120, 255, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 200, 255)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 80, 80)),
				}), Rotation = 0, Parent = v });
		task.spawn(function()
			while r.Parent do
				r.Rotation = ((r.Rotation + 4)) % 360;
				task.wait(.03);
			end;
		end);
		local d = m("Frame", {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -38, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = s,
			});
		h(d, 15);
		local V = m("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Text = "M",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 15,
				ZIndex = 8,
				Parent = d,
			});
		m("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 230, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(90, 150, 255)) }), Rotation = 90, Parent = V });
		s.BackgroundTransparency = 1;
		s.Size = UDim2.new(0, f * .7, 0, Z * .7);
		for p, O in ipairs(s:GetDescendants()) do
			if O:IsA("TextLabel") then
				O.TextTransparency = 1;
				(T:Create(O, TweenInfo.new(.5), { TextTransparency = 0 })):Play();
			end;
			if O:IsA("ImageLabel") then
				O.ImageTransparency = 1;
				(T:Create(O, TweenInfo.new(.5), { ImageTransparency = 0 })):Play();
			end;
		end;
		(T:Create(s, TweenInfo.new(.55, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, f, 0, Z), BackgroundTransparency = .05 })):Play();
		O.RenderStepped:Connect(function()
			if not H.Parent then
				return;
			end;
			if not ((s and s.Parent)) then
				return;
			end;
			local p = t.Character;
			if not p then
				s.Visible = false;
				return;
			end;
			local T = p:FindFirstChild("Head");
			if not T then
				s.Visible = false;
				return;
			end;
			local O = workspace.CurrentCamera;
			if not O then
				return;
			end;
			local i = T.Position + Vector3.new(0, B, 0);
			local e, g = O:WorldToViewportPoint(i);
			if not g then
				s.Visible = false;
				return;
			end;
			s.Visible = true;
			s.Position = UDim2.new(0, e.X, 0, e.Y);
		end);
		s.MouseButton1Click:Connect(function()
			if not W.Authenticated then
				return;
			end;
			if W.Shell and W.Shell.Parent then
				return;
			end;
			if VA then
				VA();
			end;
		end);
		W.BillboardRef = H;
	end;
RA = function(p)
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 42),
			BackgroundTransparency = 1,
			Text = "MULBA",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBlack,
			TextSize = 32,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 46),
			BackgroundTransparency = 1,
			Text = "Le menu qui change tout.",
			TextColor3 = x.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		local O = m("TextButton", {
				Size = UDim2.new(0, 170, 0, 42),
				Position = UDim2.new(1, -170, 0, 0),
				BackgroundColor3 = x.SurfaceHi,
				BackgroundTransparency = .1,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 26,
				Parent = p,
			});
		h(O, 10);
		b(O, x.Border, 1, .4);
		local i = m("TextLabel", {
				Size = UDim2.new(1, -14, 1, 0),
				Position = UDim2.new(0, 10, 0, 0),
				BackgroundTransparency = 1,
				Text = "Assistance IA",
				TextColor3 = x.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = O,
			});
		local e, t, g = Q(O, "right", x.TextSecondary, 7);
		e.Position = UDim2.new(1, -20, .5, 0);
		e.AnchorPoint = Vector2.new(.5, .5);
		O.MouseEnter:Connect(function()
			(T:Create(O, TweenInfo.new(.18), { BackgroundColor3 = x.SurfaceHi, BackgroundTransparency = 0 })):Play();
			(T:Create(i, TweenInfo.new(.18), { TextColor3 = x.Accent })):Play();
		end);
		O.MouseLeave:Connect(function()
			(T:Create(O, TweenInfo.new(.18), { BackgroundColor3 = x.SurfaceHi, BackgroundTransparency = .1 })):Play();
			(T:Create(i, TweenInfo.new(.18), { TextColor3 = x.TextPrimary })):Play();
		end);
		O.MouseButton1Click:Connect(function()
			if mA then
				mA();
			end;
		end);
		m("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundColor3 = x.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = p,
		});
		local H = 100;
		local function f(T, O, i, e)
			local t = m("TextLabel", {
					Size = UDim2.new(1, -8, 0, 0),
					Position = UDim2.new(0, 0, 0, H),
					BackgroundTransparency = 1,
					Text = T,
					TextColor3 = O or x.TextSecondary,
					Font = e or Enum.Font.Gotham,
					TextSize = i or 12,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextWrapped = true,
					AutomaticSize = Enum.AutomaticSize.Y,
					ZIndex = 25,
					Parent = p,
				});
			local g = 1;
			for p in string.gmatch(T, "\n") do
				g = g + 1;
			end;
			local f = (g * ((i or 12)) + 8) + math.floor(#T / 60) * ((i or 12));
			H = H + f;
			return t;
		end;
		local function Z(T)
			m("TextLabel", {
				Size = UDim2.new(1, 0, 0, 22),
				Position = UDim2.new(0, 0, 0, H),
				BackgroundTransparency = 1,
				Text = T,
				TextColor3 = x.Accent,
				Font = Enum.Font.GothamBold,
				TextSize = 15,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 25,
				Parent = p,
			});
			H = H + 28;
		end;
		f("Bienvenue dans l\'exp\195\169rience ultime sur Murder Mystery 2.\nIci, chaque partie devient une d\195\169monstration. Tu vois tout, tu contr\195\180les tout, tu d\195\169cides tout. Aucun round ne t\'\195\169chappe.", x.TextSecondary, 12);
		H = H + 10;
		Z("Ce que tu d\195\169bloques");
		f("Vision totale", x.TextPrimary, 13, Enum.Font.GothamBold);
		f("R\195\180les, box et tracers en temps r\195\169el. Tu sais qui est qui avant m\195\170me que la partie commence.", x.TextSecondary, 12);
		H = H + 8;
		f("Libert\195\169 absolue", x.TextPrimary, 13, Enum.Font.GothamBold);
		f("Fly, spin, jerk, noclip, invisibilit\195\169, emote zen. Ton personnage fait ce que tu veux, quand tu veux.", x.TextSecondary, 12);
		H = H + 8;
		f("Contr\195\180le des joueurs", x.TextPrimary, 13, Enum.Font.GothamBold);
		f("Ciblage, t\195\169l\195\169portation, spectate, accrochage. Les autres ne sont plus que des pions.", x.TextSecondary, 12);
		H = H + 8;
		f("Domination Murder et Sheriff", x.TextPrimary, 13, Enum.Font.GothamBold);
		f("Auto shoot, TP assassin, TP sh\195\169rif. Chaque r\195\180le a son arsenal.", x.TextSecondary, 12);
		H = H + 8;
		f("Auto Farm", x.TextPrimary, 13, Enum.Font.GothamBold);
		f("Les pi\195\168ces viennent \195\160 toi. Automatiquement. Round apr\195\168s round.", x.TextSecondary, 12);
		H = H + 8;
		f("Notifications en direct", x.TextPrimary, 13, Enum.Font.GothamBold);
		f("Tu sais avant tout le monde. Murder, Sheriff, gun au sol \226\128\148 rien ne t\'\195\169chappe.", x.TextSecondary, 12);
		H = H + 16;
		Z("Pr\195\170t \195\160 jouer");
		f("Appuie sur M.", x.Accent, 14, Enum.Font.GothamBold);
		f("Le menu s\'ouvre. Le jeu change.\nBonne chance. Tu n\'en auras pas besoin.", x.TextSecondary, 12);
		H = H + 20;
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 24),
			Position = UDim2.new(0, 0, 0, H),
			BackgroundTransparency = 1,
			Text = "L\'\195\169quipe Mulba",
			TextColor3 = x.Accent,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		m("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, H + 40),
			BackgroundColor3 = x.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = p,
		});
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 24),
			Position = UDim2.new(0, 0, 0, H + 50),
			BackgroundTransparency = 1,
			Text = "\240\159\146\161 Appuie sur M pour ouvrir ou fermer le menu",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
	end;
JA = function(p)
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Param\195\168tres",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 16),
			Position = UDim2.new(0, 0, 0, 50),
			BackgroundTransparency = 1,
			Text = "COULEUR D\'ACCENT",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		local O = m("Frame", {
				Size = UDim2.new(1, 0, 0, 140),
				Position = UDim2.new(0, 0, 0, 72),
				BackgroundTransparency = 1,
				ZIndex = 25,
				Parent = p,
			});
		m("UIGridLayout", {
			CellSize = UDim2.new(0, 58, 0, 58),
			CellPadding = UDim2.new(0, 14, 0, 14),
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Parent = O,
		});
		local i = {};
		for p, e in ipairs(s) do
			local t = m("TextButton", {
					BackgroundColor3 = e.Accent,
					BorderSizePixel = 0,
					Text = "",
					AutoButtonColor = false,
					LayoutOrder = p,
					ZIndex = 26,
					Parent = O,
				});
			h(t, 29);
			local g = m("UIStroke", {
					Color = x.TextPrimary,
					Thickness = 2,
					Transparency = (e.name == W.CurrentPreset) and 0 or 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Parent = t,
				});
			i[e.name] = g;
			t.MouseButton1Click:Connect(function()
				if W.CurrentPreset == e.name then
					return;
				end;
				W.CurrentPreset = e.name;
				S(e);
				for p, O in pairs(i) do
					(T:Create(O, TweenInfo.new(.2), { Transparency = (p == e.name) and 0 or 1 })):Play();
				end;
			end);
		end;
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 16),
			Position = UDim2.new(0, 0, 0, 240),
			BackgroundTransparency = 1,
			Text = "NOTIFICATIONS",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		local e = m("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 262),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = p,
			});
		m("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = e });
		KA(e, 1, "NOTIFICATION", "Kill feed bas droite (Murder/Sheriff/Gun au sol)", function()
			return r.NotifKillFeed;
		end, function(p)
			r.NotifKillFeed = p;
		end, x.Accent);
		KA(e, 2, "NOTIF MESSAGE CHAT", "Murder/Sheriff dans ton chat (local)", function()
			return r.NotifChatMsg;
		end, function(p)
			r.NotifChatMsg = p;
		end, x.Accent);
		lA(e, 3, "SPAM CHAT", "Renvoie Murder/Sheriff dans le chat", Color3.fromRGB(240, 165, 95), function()
			x5();
			task.wait(.05);
			x5();
			task.wait(.05);
			x5();
		end);
	end;
UA = function(p, T, O)
		local i = m("Frame", {
				Size = UDim2.new(1, 0, 0, 26),
				BackgroundTransparency = 1,
				LayoutOrder = T,
				ZIndex = 19,
				Parent = p,
			});
		m("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 4, 0, 0),
			BackgroundTransparency = 1,
			Text = string.upper(O),
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 19,
			Parent = i,
		});
		m("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 1, -1),
			BackgroundColor3 = x.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 19,
			Parent = i,
		});
	end;
aA = function(p, O, i, e, t, g, H)
		local f = m("Frame", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = O,
				ZIndex = 26,
				Parent = p,
			});
		h(f, 12);
		b(f, x.Border, 1, .5);
		local Z = m("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = H,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = f,
			});
		h(Z, 2);
		m("TextLabel", {
			Size = UDim2.new(1, -100, 0, 18),
			Position = UDim2.new(0, 26, 0, 10),
			BackgroundTransparency = 1,
			Text = i,
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = f,
		});
		m("TextLabel", {
			Size = UDim2.new(1, -100, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = e,
			TextColor3 = x.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = f,
		});
		local B = m("TextButton", {
				Size = UDim2.new(0, 46, 0, 24),
				Position = UDim2.new(1, -58, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = t() and H or x.SurfaceHi,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 28,
				Parent = f,
			});
		h(B, 12);
		local s = m("Frame", {
				Size = UDim2.new(0, 18, 0, 18),
				Position = t() and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = B,
			});
		h(s, 9);
		B.MouseButton1Click:Connect(function()
			g();
			local p = t();
			(T:Create(B, TweenInfo.new(.2), { BackgroundColor3 = p and H or x.SurfaceHi })):Play();
			(T:Create(s, TweenInfo.new(.2, Enum.EasingStyle.Quad), { Position = p and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0) })):Play();
		end);
		return f;
	end;
DA = function(p, T, O, e, t, g, H, f)
		local Z = m("Frame", {
				Size = UDim2.new(1, 0, 0, 52),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = T,
				ZIndex = 26,
				Parent = p,
			});
		h(Z, 12);
		b(Z, x.Border, 1, .5);
		m("TextLabel", {
			Size = UDim2.new(0, 130, 0, 14),
			Position = UDim2.new(0, 26, 0, 8),
			BackgroundTransparency = 1,
			Text = O,
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = Z,
		});
		local B = m("TextLabel", {
				Size = UDim2.new(0, 60, 0, 14),
				Position = UDim2.new(1, -70, 0, 8),
				BackgroundTransparency = 1,
				Text = tostring(g()),
				TextColor3 = x.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Right,
				ZIndex = 27,
				Parent = Z,
			});
		local s = m("Frame", {
				Size = UDim2.new(1, -52, 0, 8),
				Position = UDim2.new(0, 26, 0, 32),
				BackgroundColor3 = x.SurfaceHi,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = Z,
			});
		h(s, 4);
		local w = ((g() - e)) / ((t - e));
		local C = m("Frame", {
				Size = UDim2.new(w, 0, 1, 0),
				BackgroundColor3 = f,
				BorderSizePixel = 0,
				ZIndex = 28,
				Parent = s,
			});
		h(C, 4);
		local P = m("Frame", {
				Size = UDim2.new(0, 14, 0, 14),
				Position = UDim2.new(w, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = s,
			});
		h(P, 7);
		b(P, Color3.fromRGB(0, 0, 0), 2, .3);
		local o = m("TextButton", {
				Size = UDim2.new(1, -52, 0, 22),
				Position = UDim2.new(0, 26, 0, 20),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = Z,
			});
		local S = false;
		local function v(p)
			local T = s.AbsolutePosition.X;
			local O = s.AbsoluteSize.X;
			if O <= 0 then
				return;
			end;
			local i = math.clamp(((p - T)) / O, 0, 1);
			local g = e + i * ((t - e));
			g = math.floor(g * 10 + .5) / 10;
			H(g);
			P.Position = UDim2.new(i, 0, .5, 0);
			C.Size = UDim2.new(i, 0, 1, 0);
			B.Text = tostring(g);
		end;
		o.InputBegan:Connect(function(p)
			if p.UserInputType == Enum.UserInputType.MouseButton1 or p.UserInputType == Enum.UserInputType.Touch then
				S = true;
				v(p.Position.X);
			end;
		end);
		o.InputChanged:Connect(function(p)
			if not S then
				return;
			end;
			if p.UserInputType == Enum.UserInputType.MouseMovement or p.UserInputType == Enum.UserInputType.Touch then
				v(p.Position.X);
			end;
		end);
		i.InputEnded:Connect(function(p)
			if p.UserInputType == Enum.UserInputType.MouseButton1 or p.UserInputType == Enum.UserInputType.Touch then
				S = false;
			end;
		end);
	end;
lA = function(p, O, i, e, t, g)
		local H = m("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = O,
				ZIndex = 26,
				Parent = p,
			});
		h(H, 12);
		b(H, x.Border, 1, .5);
		local f = m("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = t,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = H,
			});
		h(f, 2);
		local Z = m("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = i,
				TextColor3 = x.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = H,
			});
		m("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = e,
			TextColor3 = x.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = H,
		});
		local B, s, w = Q(H, "right", x.TextMuted, 7);
		B.Position = UDim2.new(1, -26, .5, 0);
		B.AnchorPoint = Vector2.new(.5, .5);
		H.MouseEnter:Connect(function()
			(T:Create(H, TweenInfo.new(.18), { BackgroundColor3 = x.SurfaceHi, BackgroundTransparency = .1 })):Play();
			(T:Create(Z, TweenInfo.new(.18), { TextColor3 = t })):Play();
			(T:Create(s, TweenInfo.new(.18), { BackgroundColor3 = t })):Play();
			(T:Create(w, TweenInfo.new(.18), { BackgroundColor3 = t })):Play();
		end);
		H.MouseLeave:Connect(function()
			(T:Create(H, TweenInfo.new(.18), { BackgroundColor3 = x.Surface, BackgroundTransparency = .25 })):Play();
			(T:Create(Z, TweenInfo.new(.18), { TextColor3 = x.TextPrimary })):Play();
			(T:Create(s, TweenInfo.new(.18), { BackgroundColor3 = x.TextMuted })):Play();
			(T:Create(w, TweenInfo.new(.18), { BackgroundColor3 = x.TextMuted })):Play();
		end);
		H.MouseButton1Click:Connect(g);
		return H;
	end;
KA = function(p, O, i, e, t, g, H)
		local f = m("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = O,
				ZIndex = 26,
				Parent = p,
			});
		h(f, 12);
		b(f, x.Border, 1, .5);
		local Z = x.ToggleOff;
		local B = x.Accent;
		local s = m("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = t() and B or Z,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = f,
			});
		h(s, 2);
		local w = m("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = i,
				TextColor3 = x.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = f,
			});
		m("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = e,
			TextColor3 = x.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = f,
		});
		local C, P, o = Q(f, "right", t() and B or Z, 7);
		C.Position = UDim2.new(1, -26, .5, 0);
		C.AnchorPoint = Vector2.new(.5, .5);
		local function S()
			local p = t();
			local T = p and B or Z;
			s.BackgroundColor3 = T;
			P.BackgroundColor3 = T;
			o.BackgroundColor3 = T;
			w.TextColor3 = p and B or x.TextPrimary;
		end;
		f.MouseEnter:Connect(function()
			(T:Create(f, TweenInfo.new(.18), { BackgroundColor3 = x.SurfaceHi, BackgroundTransparency = .1 })):Play();
		end);
		f.MouseLeave:Connect(function()
			(T:Create(f, TweenInfo.new(.18), { BackgroundColor3 = x.Surface, BackgroundTransparency = .25 })):Play();
		end);
		f.MouseButton1Click:Connect(function()
			g(not t());
			S();
		end);
		return f;
	end;
local function NA(O)
	m("TextLabel", {
		Size = UDim2.new(1, 0, 0, 14),
		Position = UDim2.new(0, 0, 0, 76),
		BackgroundTransparency = 1,
		Text = "JOUEUR CIBL\195\137",
		TextColor3 = x.TextMuted,
		Font = Enum.Font.GothamBold,
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 25,
		Parent = O,
	});
	local i = m("TextButton", {
			Size = UDim2.new(1, 0, 0, 44),
			Position = UDim2.new(0, 0, 0, 96),
			BackgroundColor3 = x.Surface,
			BackgroundTransparency = .25,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			ZIndex = 30,
			Parent = O,
		});
	h(i, 10);
	b(i, x.Border, 1, .4);
	local e = m("TextLabel", {
			Size = UDim2.new(1, -70, 1, 0),
			Position = UDim2.new(0, 16, 0, 0),
			BackgroundTransparency = 1,
			Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 31,
			Parent = i,
		});
	local g, H, f = Q(i, "right", x.TextMuted, 8);
	g.Position = UDim2.new(1, -24, .5, 0);
	g.AnchorPoint = Vector2.new(.5, .5);
	local Z = m("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			Position = UDim2.new(0, 0, 0, 148),
			BackgroundColor3 = x.Surface,
			BackgroundTransparency = .05,
			BorderSizePixel = 0,
			Visible = false,
			AutomaticSize = Enum.AutomaticSize.Y,
			ZIndex = 40,
			Parent = O,
		});
	h(Z, 12);
	b(Z, x.Border, 1, .3);
	local B = m("Frame", {
			Size = UDim2.new(1, -12, 0, 6),
			Position = UDim2.new(0, 6, 0, 6),
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.Y,
			ZIndex = 41,
			Parent = Z,
		});
	m("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = B });
	local function s()
		for p, T in ipairs(B:GetChildren()) do
			if T:IsA("TextButton") or (T:IsA("TextLabel") and T.Name == "EmptyLbl") then
				T:Destroy();
			end;
		end;
		local O = 0;
		for p, i in ipairs(p:GetPlayers()) do
			if i == t then
				continue;
			end;
			O = O + 1;
			local g = m("TextButton", {
					Size = UDim2.new(1, 0, 0, 34),
					BackgroundColor3 = x.SurfaceHi,
					BackgroundTransparency = .6,
					BorderSizePixel = 0,
					Text = "",
					AutoButtonColor = false,
					LayoutOrder = O,
					ZIndex = 42,
					Parent = B,
				});
			h(g, 8);
			local s = t5(i);
			local w = f5(s);
			m("TextLabel", {
				Size = UDim2.new(1, -50, 1, 0),
				Position = UDim2.new(0, 12, 0, 0),
				BackgroundTransparency = 1,
				Text = i.Name .. ("  (" .. (s .. ")")),
				TextColor3 = x.TextPrimary,
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 43,
				Parent = g,
			});
			m("Frame", {
				Size = UDim2.new(0, 4, 0, 18),
				Position = UDim2.new(1, -14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = w,
				BorderSizePixel = 0,
				ZIndex = 43,
				Parent = g,
			});
			g.MouseEnter:Connect(function()
				(T:Create(g, TweenInfo.new(.15), { BackgroundTransparency = .25 })):Play();
			end);
			g.MouseLeave:Connect(function()
				(T:Create(g, TweenInfo.new(.15), { BackgroundTransparency = .6 })):Play();
			end);
			g.MouseButton1Click:Connect(function()
				W.TrollSelected = i;
				e.Text = i.Name;
				e.TextColor3 = x.Accent;
				Z.Visible = false;
				(T:Create(H, TweenInfo.new(.15), { Rotation = 45 })):Play();
				(T:Create(f, TweenInfo.new(.15), { Rotation = -45 })):Play();
				e5("\240\159\142\175 Cible : " .. i.Name, x.Accent);
			end);
		end;
		if O == 0 then
			m("TextLabel", {
				Name = "EmptyLbl",
				Size = UDim2.new(1, 0, 0, 34),
				BackgroundTransparency = 1,
				Text = "Aucun autre joueur",
				TextColor3 = x.TextMuted,
				Font = Enum.Font.Gotham,
				TextSize = 12,
				ZIndex = 42,
				Parent = B,
			});
		end;
	end;
	local w = false;
	i.MouseButton1Click:Connect(function()
		w = not w;
		if w then
			s();
		end;
		Z.Visible = w;
		(T:Create(H, TweenInfo.new(.15), { Rotation = w and -45 or 45 })):Play();
		(T:Create(f, TweenInfo.new(.15), { Rotation = w and 45 or -45 })):Play();
	end);
	p.PlayerAdded:Connect(function()
		if w then
			s();
		end;
	end);
	p.PlayerRemoving:Connect(function(p)
		if W.TrollSelected == p then
			W.TrollSelected = nil;
			e.Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148";
			e.TextColor3 = x.TextMuted;
		end;
		if w then
			s();
		end;
	end);
end;
nA = function()
		return;
	end;
FA = function(p)
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Player",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Ciblage, mouvement & statistiques",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		NA(p);
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 164),
			BackgroundTransparency = 1,
			Text = "ACTIONS CIBL\195\137ES",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		local T = m("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 186),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = p,
			});
		m("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = T });
		lA(T, 1, "TP \195\128 LA CIBLE", "Te t\195\169l\195\169porte sur le joueur s\195\169lectionn\195\169", Color3.fromRGB(255, 80, 80), function()
			local p = W.TrollSelected;
			if not p or not p.Character then
				p5("Player", "Aucune cible valide", true);
				return;
			end;
			local T = p.Character:FindFirstChild("HumanoidRootPart");
			local O = t.Character;
			local i = O and O:FindFirstChild("HumanoidRootPart");
			if T and i then
				pcall(function()
					i.CFrame = T.CFrame + Vector3.new(0, 3, 3);
				end);
				e5("\240\159\142\175 TP vers " .. p.Name, Color3.fromRGB(255, 80, 80));
			end;
		end);
		lA(T, 2, "SPECTATE CIBLE", "Ta cam\195\169ra suit le joueur s\195\169lectionn\195\169", Color3.fromRGB(170, 130, 235), function()
			local p = W.TrollSelected;
			local T = workspace.CurrentCamera;
			if not p or not p.Character then
				p5("Player", "Aucune cible valide", true);
				return;
			end;
			T.CameraSubject = p.Character:FindFirstChildOfClass("Humanoid") or p.Character;
			e5("\240\159\145\129 Cam\195\169ra \226\134\146 " .. p.Name, Color3.fromRGB(170, 130, 235));
		end);
		KA(T, 3, "S\'ACCROCHER \195\128 ELLE", "Assis sur les \195\169paules (visible par tous)", function()
			return iA.conn ~= nil;
		end, function(p)
			gA();
		end, x.Accent);
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 430),
			BackgroundTransparency = 1,
			Text = "MOUVEMENT",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		local O = m("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 452),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = p,
			});
		m("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = O });
		local i = 0;
		local function e()
			i = i + 1;
			return i;
		end;
		KA(O, e(), "FLY", "Vol (W/A/S/D) + emote zen", function()
			return X.FlyEnabled;
		end, function(p)
			if p ~= X.FlyEnabled then
				o5();
			end;
		end, x.Accent);
		KA(O, e(), "SPIN", "Tourne sur toi-m\195\170me", function()
			return X.SpinEnabled;
		end, function(p)
			d5();
		end, x.Accent);
		DA(O, e(), "VITESSE SPIN", 2, 50, function()
			return X.SpinSpeed;
		end, function(p)
			V5(p);
		end, x.Accent);
		KA(O, e(), "JERK", "Secousse rapide", function()
			return X.JerkEnabled;
		end, function(p)
			R5();
		end, x.Accent);
		DA(O, e(), "INTENSIT\195\137 JERK", .5, 10, function()
			return X.JerkIntensity;
		end, function(p)
			J5(p);
		end, x.Accent);
		KA(O, e(), "NOCLIP", "Traverse les murs", function()
			return X.NoclipEnabled;
		end, function(p)
			A5();
		end, x.Accent);
		KA(O, e(), "INVISIBLE", "Personne ne te voit tant que c\'est actif", function()
			return X.Invisible;
		end, function(p)
			q();
		end, x.Accent);
		KA(O, e(), "INFINITE JUMP", "Saut infini", function()
			return X.InfiniteJump;
		end, function(p)
			z5();
		end, x.Accent);
		KA(O, e(), "ANTI-AFK", "\195\137vite le kick inactivit\195\169", function()
			return X.AntiAFK;
		end, function(p)
			u5();
		end, x.Accent);
		KA(O, e(), "FULLBRIGHT", "\195\137claire toute la map", function()
			return X.Fullbright;
		end, function(p)
			D5();
		end, x.Accent);
		KA(O, e(), "ANTI-FLING", "Bloque les tentatives de fling", function()
			return X.AntiFling;
		end, function(p)
			l5();
		end, x.Accent);
		UA(O, e(), "Stats");
		DA(O, e(), "WALKSPEED", 16, 200, function()
			return X.WalkSpeed;
		end, function(p)
			G5(p);
		end, x.Accent);
		DA(O, e(), "JUMPPOWER", 50, 500, function()
			return X.JumpPower;
		end, function(p)
			I5(p);
		end, x.Accent);
		DA(O, e(), "GRAVITY", 0, 196, function()
			return X.Gravity;
		end, function(p)
			F5(p);
		end, x.Accent);
		lA(O, e(), "RESET CHARACTER", "Respawn imm\195\169diat", Color3.fromRGB(255, 80, 80), function()
			n5();
			p5("Player", "Reset en cours...", false);
		end);
	end;
uA = function(p)
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169port\195\169",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169portation rapide",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		local T = m("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = p,
			});
		m("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = T });
		lA(T, 1, "TP SPAWN", "Te t\195\169l\195\169porte au spawn", Color3.fromRGB(115, 155, 240), function()
			U5();
		end);
		lA(T, 2, "SET MAP", "Sauvegarde ta position actuelle", Color3.fromRGB(140, 200, 155), function()
			K5(false);
		end);
		lA(T, 3, "MAP", "TP \195\160 la position sauvegard\195\169e", Color3.fromRGB(240, 165, 95), function()
			q5();
		end);
	end;
EA = function(p)
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Animation",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Animations visibles par tous",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		local T = m("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = p,
			});
		m("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = T });
		aA(T, 1, "SIT", "Assieds ton personnage", function()
			return X.Sitting;
		end, function()
			y5();
		end, Color3.fromRGB(140, 200, 155));
	end;
zA = function(p)
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Auto Farm",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "R\195\169cup\195\168re les pi\195\168ces automatiquement",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		local T = m("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = p,
			});
		m("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = T });
		local O = m("Frame", {
				Size = UDim2.new(1, 0, 0, 64),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = 1,
				ZIndex = 26,
				Parent = T,
			});
		h(O, 12);
		b(O, x.Border, 1, .5);
		local i = m("Frame", {
				Size = UDim2.new(0, 3, 0, 40),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(240, 200, 120),
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = O,
			});
		h(i, 2);
		m("TextLabel", {
			Size = UDim2.new(1, -30, 0, 16),
			Position = UDim2.new(0, 26, 0, 8),
			BackgroundTransparency = 1,
			Text = "STATISTIQUES",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = O,
		});
		local e = m("TextLabel", {
				Size = UDim2.new(1, -30, 0, 16),
				Position = UDim2.new(0, 26, 0, 26),
				BackgroundTransparency = 1,
				Text = "Pi\195\168ces : 0",
				TextColor3 = x.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = O,
			});
		local t = m("TextLabel", {
				Size = UDim2.new(1, -30, 0, 16),
				Position = UDim2.new(0, 26, 0, 42),
				BackgroundTransparency = 1,
				Text = "Temps : 0s",
				TextColor3 = x.TextSecondary,
				Font = Enum.Font.Gotham,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = O,
			});
		task.spawn(function()
			while O.Parent do
				e.Text = "Pi\195\168ces : " .. u.coinsCollected;
				if u.running and u.startTime > 0 then
					t.Text = "Temps : " .. (math.floor(tick() - u.startTime) .. "s");
				else
					t.Text = "Temps : 0s";
				end;
				task.wait(.5);
			end;
		end);
		KA(T, 2, "AUTO FARM COINS", "Fly progressif + sous la map (anti-kick)", function()
			return u.running;
		end, function(p)
			L5();
		end, x.Accent);
		UA(T, 3, "R\195\169glages");
		DA(T, 4, "VITESSE FLY", 40, 400, function()
			return a.FlySpeed;
		end, function(p)
			a.FlySpeed = p;
		end, Color3.fromRGB(115, 155, 240));
		DA(T, 5, "RAYON DE COLLECTE", 20, 500, function()
			return a.CollectRadius;
		end, function(p)
			a.CollectRadius = p;
		end, Color3.fromRGB(170, 130, 235));
		DA(T, 6, "PAUSE ANTI-KICK", 0, 2, function()
			return a.AntiKickDelay;
		end, function(p)
			a.AntiKickDelay = p;
		end, Color3.fromRGB(220, 115, 115));
		DA(T, 7, "DISTANCE RAMASSAGE", 1, 10, function()
			return a.CollectDistance;
		end, function(p)
			a.CollectDistance = p;
		end, Color3.fromRGB(130, 205, 155));
		UA(T, 8, "Mode sous la map");
		KA(T, 9, "DESCENDRE SOUS LA MAP", "Apr\195\168s chaque pi\195\168ce (anti-murder)", function()
			return a.GoUnderMap;
		end, function(p)
			a.GoUnderMap = p;
		end, x.Accent);
		DA(T, 10, "PROFONDEUR", 2, 30, function()
			return a.UnderMapDepth;
		end, function(p)
			a.UnderMapDepth = p;
		end, Color3.fromRGB(240, 165, 95));
		UA(T, 11, "Avanc\195\169");
		KA(T, 12, "TP DIRECT PI\195\136CE", "TP instantan\195\169 au lieu de fly (risqu\195\169)", function()
			return a.TpDirect;
		end, function(p)
			a.TpDirect = p;
		end, x.Accent);
		KA(T, 13, "IGNORER SI MURDER PROCHE", "S\'arr\195\170te si un tueur approche", function()
			return a.IgnoreIfMurderNear;
		end, function(p)
			a.IgnoreIfMurderNear = p;
		end, x.Accent);
		DA(T, 14, "DISTANCE MURDER", 10, 200, function()
			return a.MurderDistance;
		end, function(p)
			a.MurderDistance = p;
		end, Color3.fromRGB(255, 80, 80));
		UA(T, 15, "Extras");
		KA(T, 16, "AUTO SET MAP", "Sauvegarde auto la position au respawn", function()
			return a.AutoSetMap;
		end, function(p)
			a.AutoSetMap = p;
		end, x.Accent);
		KA(T, 17, "RETOUR SPAWN APR\195\136S ROUND", "Retour au spawn \195\160 chaque respawn", function()
			return a.ReturnSpawn;
		end, function(p)
			a.ReturnSpawn = p;
		end, x.Accent);
		lA(T, 18, "RESET STATS", "Remet \195\160 0 les compteurs", Color3.fromRGB(220, 115, 115), function()
			u.coinsCollected = 0;
			u.startTime = tick();
			p5("Auto Farm", "Stats reset", false);
		end);
	end;
YA = function(p)
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Combat",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Section \195\160 venir",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
	end;
yA = function(p)
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Onglet Esp",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 50),
			BackgroundTransparency = 1,
			Text = "R\195\148LES",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		local T = m("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 72),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = p,
			});
		m("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = T });
		KA(T, 1, "ESP Murderer", "Voir le tueur", function()
			return r.EspShowMurder;
		end, function(p)
			r.EspShowMurder = p;
		end, x.Accent);
		KA(T, 2, "ESP Sheriff", "Voir le sh\195\169rif", function()
			return r.EspShowSheriff;
		end, function(p)
			r.EspShowSheriff = p;
		end, x.Accent);
		KA(T, 3, "ESP Innocent", "Voir les innocents", function()
			return r.EspShowInnocent;
		end, function(p)
			r.EspShowInnocent = p;
		end, x.Accent);
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 260),
			BackgroundTransparency = 1,
			Text = "OPTIONS",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		local O = m("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 282),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = p,
			});
		m("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = O });
		KA(O, 1, "X-RAY", "Voir \195\160 travers les murs", function()
			return r.XRayEnabled;
		end, function(p)
			r.XRayEnabled = p;
			ZA();
		end, x.Accent);
		KA(O, 2, "Box", "Cadre multicolore autour du joueur", function()
			return V.BoxEnabled;
		end, function(p)
			V.BoxEnabled = p;
		end, x.Accent);
		KA(O, 3, "TRACER", "Ligne multicolore vers le joueur", function()
			return V.TracerEnabled;
		end, function(p)
			V.TracerEnabled = p;
		end, x.Accent);
		KA(O, 4, "ESP COIN", "Voir toutes les pi\195\168ces de la map", function()
			return r.EspShowCoins;
		end, function(p)
			r.EspShowCoins = p;
		end, x.Accent);
	end;
AA = function(p)
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Murder",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 tueur",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		local T = m("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = p,
			});
		m("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = T });
		KA(T, 1, "TP ALL IN FRONT", "Empile les joueurs \195\160 4 studs devant toi", function()
			return M5.running;
		end, function(p)
			OA();
		end, x.Accent);
		lA(T, 2, "TP MURDERER", "Te t\195\169l\195\169porte au tueur", Color3.fromRGB(255, 80, 80), function()
			local p = g5();
			if not p then
				p5("Erreur", "Tueur introuvable", true);
				return;
			end;
			local T = t.Character;
			local O = T and T:FindFirstChild("HumanoidRootPart");
			local i = p.Character and p.Character:FindFirstChild("HumanoidRootPart");
			if O and i then
				pcall(function()
					O.CFrame = i.CFrame + Vector3.new(0, 3, 3);
				end);
				p5("TP", "TP vers " .. p.Name, false);
			end;
		end);
	end;
GA = function(p)
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Sheriff",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 sh\195\169rif",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = p,
		});
		local T = m("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = p,
			});
		m("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = T });
		KA(T, 1, "AUTO SHOOT MURDERER", "Tire auto sur le tueur (si Sheriff)", function()
			return r.AutoShootEnabled;
		end, function(p)
			r.AutoShootEnabled = p;
		end, x.Accent);
		lA(T, 2, "TP SHERIFF", "Te t\195\169l\195\169porte au sh\195\169rif", Color3.fromRGB(60, 120, 255), function()
			local p = H5();
			if not p then
				p5("Erreur", "Sh\195\169rif introuvable", true);
				return;
			end;
			local T = t.Character;
			local O = T and T:FindFirstChild("HumanoidRootPart");
			local i = p.Character and p.Character:FindFirstChild("HumanoidRootPart");
			if O and i then
				pcall(function()
					O.CFrame = i.CFrame + Vector3.new(0, 3, 3);
				end);
				p5("TP", "TP vers " .. p.Name, false);
			end;
		end);
	end;
IA = function(O)
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Troll",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = O,
		});
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Cible un joueur, puis utilise les actions",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = O,
		});
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 76),
			BackgroundTransparency = 1,
			Text = "JOUEUR CIBL\195\137",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = O,
		});
		local i = m("TextButton", {
				Size = UDim2.new(1, 0, 0, 44),
				Position = UDim2.new(0, 0, 0, 96),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = O,
			});
		h(i, 10);
		b(i, x.Border, 1, .4);
		local e = m("TextLabel", {
				Size = UDim2.new(1, -70, 1, 0),
				Position = UDim2.new(0, 16, 0, 0),
				BackgroundTransparency = 1,
				Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148",
				TextColor3 = x.TextMuted,
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 31,
				Parent = i,
			});
		local g, H, f = Q(i, "right", x.TextMuted, 8);
		g.Position = UDim2.new(1, -24, .5, 0);
		g.AnchorPoint = Vector2.new(.5, .5);
		local Z = m("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 148),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .05,
				BorderSizePixel = 0,
				Visible = false,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 40,
				Parent = O,
			});
		h(Z, 12);
		b(Z, x.Border, 1, .3);
		local B = m("Frame", {
				Size = UDim2.new(1, -12, 0, 6),
				Position = UDim2.new(0, 6, 0, 6),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 41,
				Parent = Z,
			});
		m("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = B });
		local function s()
			for p, T in ipairs(B:GetChildren()) do
				if T:IsA("TextButton") or (T:IsA("TextLabel") and T.Name == "EmptyLbl") then
					T:Destroy();
				end;
			end;
			local O = 0;
			for p, i in ipairs(p:GetPlayers()) do
				if i == t then
					continue;
				end;
				O = O + 1;
				local g = m("TextButton", {
						Size = UDim2.new(1, 0, 0, 34),
						BackgroundColor3 = x.SurfaceHi,
						BackgroundTransparency = .6,
						BorderSizePixel = 0,
						Text = "",
						AutoButtonColor = false,
						LayoutOrder = O,
						ZIndex = 42,
						Parent = B,
					});
				h(g, 8);
				local s = t5(i);
				local w = f5(s);
				m("TextLabel", {
					Size = UDim2.new(1, -50, 1, 0),
					Position = UDim2.new(0, 12, 0, 0),
					BackgroundTransparency = 1,
					Text = i.Name .. ("  (" .. (s .. ")")),
					TextColor3 = x.TextPrimary,
					Font = Enum.Font.GothamMedium,
					TextSize = 13,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 43,
					Parent = g,
				});
				m("Frame", {
					Size = UDim2.new(0, 4, 0, 18),
					Position = UDim2.new(1, -14, .5, 0),
					AnchorPoint = Vector2.new(0, .5),
					BackgroundColor3 = w,
					BorderSizePixel = 0,
					ZIndex = 43,
					Parent = g,
				});
				g.MouseEnter:Connect(function()
					(T:Create(g, TweenInfo.new(.15), { BackgroundTransparency = .25 })):Play();
				end);
				g.MouseLeave:Connect(function()
					(T:Create(g, TweenInfo.new(.15), { BackgroundTransparency = .6 })):Play();
				end);
				g.MouseButton1Click:Connect(function()
					W.TrollSelected = i;
					e.Text = i.Name;
					e.TextColor3 = x.Accent;
					Z.Visible = false;
					(T:Create(H, TweenInfo.new(.15), { Rotation = 45 })):Play();
					(T:Create(f, TweenInfo.new(.15), { Rotation = -45 })):Play();
					e5("\240\159\142\175 Cible : " .. i.Name, x.Accent);
				end);
			end;
			if O == 0 then
				m("TextLabel", {
					Name = "EmptyLbl",
					Size = UDim2.new(1, 0, 0, 34),
					BackgroundTransparency = 1,
					Text = "Aucun autre joueur",
					TextColor3 = x.TextMuted,
					Font = Enum.Font.Gotham,
					TextSize = 12,
					ZIndex = 42,
					Parent = B,
				});
			end;
		end;
		local w = false;
		i.MouseButton1Click:Connect(function()
			w = not w;
			if w then
				s();
			end;
			Z.Visible = w;
			(T:Create(H, TweenInfo.new(.15), { Rotation = w and -45 or 45 })):Play();
			(T:Create(f, TweenInfo.new(.15), { Rotation = w and 45 or -45 })):Play();
		end);
		p.PlayerAdded:Connect(function()
			if w then
				s();
			end;
		end);
		p.PlayerRemoving:Connect(function(p)
			if W.TrollSelected == p then
				W.TrollSelected = nil;
				e.Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148";
				e.TextColor3 = x.TextMuted;
			end;
			if w then
				s();
			end;
		end);
		m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 164),
			BackgroundTransparency = 1,
			Text = "ACTIONS",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = O,
		});
		local C = m("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 186),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = O,
			});
		m("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = C });
		lA(C, 1, "TP \195\128 LA CIBLE", "Te t\195\169l\195\169porte sur le joueur s\195\169lectionn\195\169", Color3.fromRGB(255, 80, 80), function()
			local p = W.TrollSelected;
			if not p or not p.Character then
				p5("Troll", "Aucune cible valide", true);
				return;
			end;
			local T = p.Character:FindFirstChild("HumanoidRootPart");
			local O = t.Character;
			local i = O and O:FindFirstChild("HumanoidRootPart");
			if T and i then
				pcall(function()
					i.CFrame = T.CFrame + Vector3.new(0, 3, 3);
				end);
				e5("\240\159\142\175 TP vers " .. p.Name, Color3.fromRGB(255, 80, 80));
			end;
		end);
		lA(C, 2, "SPECTATE CIBLE", "Ta cam\195\169ra suit le joueur s\195\169lectionn\195\169", Color3.fromRGB(170, 130, 235), function()
			local p = W.TrollSelected;
			local T = workspace.CurrentCamera;
			if not p or not p.Character then
				p5("Troll", "Aucune cible valide", true);
				return;
			end;
			T.CameraSubject = p.Character:FindFirstChildOfClass("Humanoid") or p.Character;
			e5("\240\159\145\129 Cam\195\169ra \226\134\146 " .. p.Name, Color3.fromRGB(170, 130, 235));
		end);
	end;
kA = function(p)
		if W.CurrentPage == p then
			return;
		end;
		W.CurrentPage = p;
		for T, O in pairs(W.NavItems) do
			O.setActive(T == p);
		end;
		local O = W.Scroll;
		if not O then
			return;
		end;
		local i = O:FindFirstChild("PageBody");
		if i then
			for p, O in ipairs(i:GetChildren()) do
				if O:IsA("GuiObject") then
					(T:Create(O, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
					if O:IsA("TextLabel") then
						(T:Create(O, TweenInfo.new(.15), { TextTransparency = 1 })):Play();
					end;
				end;
			end;
			task.wait(.18);
			i:Destroy();
		end;
		O.CanvasPosition = Vector2.new(0, 0);
		local e = m("Frame", {
				Name = "PageBody",
				Size = UDim2.new(1, -48, 0, 0),
				Position = UDim2.new(0, 24, 0, 20),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 24,
				Parent = O,
			});
		if p == "home" then
			RA(e);
		elseif p == "esp" then
			yA(e);
		elseif p == "murder" then
			AA(e);
		elseif p == "sheriff" then
			GA(e);
		elseif p == "player" then
			FA(e);
		elseif p == "combat" then
			YA(e);
		elseif p == "autofarm" then
			zA(e);
		elseif p == "troll" then
			IA(e);
		elseif p == "animation" then
			EA(e);
		elseif p == "teleport" then
			uA(e);
		elseif p == "settings" then
			JA(e);
		end;
	end;
local function bA(p, O, i, e)
	local t = m("TextButton", {
			Size = UDim2.new(1, 0, 0, 38),
			BackgroundColor3 = x.Surface,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			LayoutOrder = e,
			ZIndex = 20,
			Parent = p,
		});
	h(t, 8);
	local g = m("Frame", {
			Size = UDim2.new(0, 3, 0, 0),
			Position = UDim2.new(0, 0, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = x.Accent,
			BorderSizePixel = 0,
			ZIndex = 22,
			Parent = t,
		});
	h(g, 2);
	local H = m("TextLabel", {
			Size = UDim2.new(1, -20, 1, 0),
			Position = UDim2.new(0, 18, 0, 0),
			BackgroundTransparency = 1,
			Text = O,
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 21,
			Parent = t,
		});
	local f = { active = false };
	local function Z(p)
		f.active = p;
		if p then
			(T:Create(t, TweenInfo.new(.2), { BackgroundTransparency = .7 })):Play();
			(T:Create(g, TweenInfo.new(.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 3, 0, 22) })):Play();
			(T:Create(H, TweenInfo.new(.2), { TextColor3 = x.Accent, TextSize = 14 })):Play();
		else
			(T:Create(t, TweenInfo.new(.2), { BackgroundTransparency = 1 })):Play();
			(T:Create(g, TweenInfo.new(.2), { Size = UDim2.new(0, 3, 0, 0) })):Play();
			(T:Create(H, TweenInfo.new(.2), { TextColor3 = x.TextSecondary, TextSize = 13 })):Play();
		end;
	end;
	t.MouseEnter:Connect(function()
		if not f.active then
			(T:Create(t, TweenInfo.new(.15), { BackgroundTransparency = .85 })):Play();
			(T:Create(H, TweenInfo.new(.15), { TextColor3 = x.TextPrimary })):Play();
		end;
	end);
	t.MouseLeave:Connect(function()
		if not f.active then
			(T:Create(t, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
			(T:Create(H, TweenInfo.new(.15), { TextColor3 = x.TextSecondary })):Play();
		end;
	end);
	W.NavItems[i] = { btn = t, setActive = Z, state = f };
	return t, Z;
end;
local function QA(p, T, O)
	local i = m("Frame", {
			Size = UDim2.new(1, -4, 0, 22),
			BackgroundTransparency = 1,
			LayoutOrder = O,
			ZIndex = 19,
			Parent = p,
		});
	m("TextLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 8, 0, 0),
		BackgroundTransparency = 1,
		Text = string.upper(T),
		TextColor3 = x.TextMuted,
		Font = Enum.Font.GothamBold,
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 19,
		Parent = i,
	});
end;
local function cA()
	local p = m("ScreenGui", {
			Name = "MenuV71_GUI",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			DisplayOrder = 999,
			Parent = g,
		});
	W.Gui = p;
	local O = WA("LoadingContainer", UDim2.new(0, 460, 0, 240), p);
	W.LoadingFrame = O;
	O.BackgroundTransparency = 1;
	(T:Create(O, TweenInfo.new(.5), { BackgroundTransparency = 0 })):Play();
	local i = m("Frame", {
			Size = UDim2.new(0, 60, 0, 60),
			Position = UDim2.new(.5, 0, 0, 30),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundTransparency = 1,
			ZIndex = 8,
			Parent = O,
		});
	for p = 1, 14, 1 do
		local T = ((p - 1)) * (((math.pi * 2) / 14));
		local O = m("Frame", {
				Size = UDim2.new(0, 5, 0, 5),
				Position = UDim2.new(.5, math.cos(T) * 22, .5, math.sin(T) * 22),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = x.Accent,
				BackgroundTransparency = 1 - ((p / 14)) * .75,
				BorderSizePixel = 0,
				ZIndex = 9,
				Parent = i,
			});
		h(O, 2);
		C(O, "BackgroundColor3", "Accent");
	end;
	task.spawn(function()
		while i.Parent do
			i.Rotation = ((i.Rotation + 5)) % 360;
			task.wait(.02);
		end;
	end);
	m("TextLabel", {
		Size = UDim2.new(1, 0, 0, 32),
		Position = UDim2.new(0, 0, 0, 98),
		BackgroundTransparency = 1,
		Text = "Chargement",
		TextColor3 = x.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 24,
		ZIndex = 8,
		Parent = O,
	});
	local e = m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 134),
			BackgroundTransparency = 1,
			Text = "Initialisation...",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 8,
			Parent = O,
		});
	local t = m("Frame", {
			Size = UDim2.new(.7, 0, 0, 8),
			Position = UDim2.new(.5, 0, 0, 172),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = x.SurfaceHi,
			BackgroundTransparency = .4,
			BorderSizePixel = 0,
			ZIndex = 8,
			Parent = O,
		});
	h(t, 4);
	local H = m("Frame", {
			Size = UDim2.new(0, 0, 1, 0),
			BackgroundColor3 = x.Accent,
			BorderSizePixel = 0,
			ZIndex = 9,
			Parent = t,
			ClipsDescendants = true,
		});
	h(H, 4);
	C(H, "BackgroundColor3", "Accent");
	local f = m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 192),
			BackgroundTransparency = 1,
			Text = "0 %",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 8,
			Parent = O,
		});
	local Z = tick();
	task.spawn(function()
		while tick() - Z < v.LoadingDuration do
			local p = math.clamp(((tick() - Z)) / v.LoadingDuration, 0, 1);
			H.Size = UDim2.new(p, 0, 1, 0);
			f.Text = math.floor(p * 100) .. " %";
			if p < .3 then
				e.Text = "Initialisation...";
			elseif p < .6 then
				e.Text = "Chargement...";
			elseif p < .9 then
				e.Text = "Pr\195\169paration...";
			else
				e.Text = "Finalisation...";
			end;
			task.wait(.03);
		end;
		H.Size = UDim2.new(1, 0, 1, 0);
		f.Text = "100 %";
	end);
	return O;
end;
local function LA(p)
	local T = W.Gui;
	local O = WA("CodeContainer", UDim2.new(0, 500, 0, 380), T);
	W.CodeFrame = O;
	O.BackgroundTransparency = 1;
	local i = m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 36),
			BackgroundTransparency = 1,
			Text = "ACC\195\136S S\195\137CURIS\195\137",
			TextColor3 = x.Accent,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 12,
			Parent = O,
		});
	C(i, "TextColor3", "Accent");
	m("TextLabel", {
		Size = UDim2.new(1, 0, 0, 38),
		Position = UDim2.new(0, 0, 0, 60),
		BackgroundTransparency = 1,
		Text = "V\195\169rification requise",
		TextColor3 = x.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 26,
		ZIndex = 12,
		Parent = O,
	});
	m("TextLabel", {
		Size = UDim2.new(1, -60, 0, 34),
		Position = UDim2.new(0, 30, 0, 104),
		BackgroundTransparency = 1,
		Text = "Entre le code d\'acc\195\168s",
		TextColor3 = x.TextSecondary,
		Font = Enum.Font.Gotham,
		TextSize = 13,
		TextWrapped = true,
		ZIndex = 12,
		Parent = O,
	});
	local e = m("TextBox", {
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
			Parent = O,
		});
	h(e, 12);
	local t = b(e, x.Border, 1.5, .3);
	e.Focused:Connect(function()
		t.Color = x.Accent;
		t.Transparency = .2;
	end);
	e.FocusLost:Connect(function()
		t.Color = x.Border;
		t.Transparency = .3;
	end);
	local g = m("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 216),
			BackgroundTransparency = 1,
			Text = "",
			TextColor3 = x.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 12,
			Parent = O,
		});
	local H = m("TextButton", {
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
			Parent = O,
		});
	h(H, 12);
	C(H, "BackgroundColor3", "Accent");
	C(H, "TextColor3", "TextOnAccent");
	local Z, B, s = 0, 5, false;
	local function w()
		if s then
			return;
		end;
		if e.Text == f then
			s = true;
			W.Authenticated = true;
			g.Text = "Acc\195\168s autoris\195\169";
			g.TextColor3 = x.Success;
			t.Color = x.Success;
			task.wait(.4);
			L(O, .35, function()
				W.CodeFrame = nil;
				if p then
					p();
				end;
			end);
		else
			Z = Z + 1;
			g.Text = string.format("Code incorrect \226\128\148 %d/%d", Z, B);
			g.TextColor3 = x.Error;
			t.Color = x.Error;
			if Z >= B then
				s = true;
				g.Text = "Acc\195\168s bloqu\195\169";
				task.wait(1.5);
				if T then
					T:Destroy();
				end;
				return;
			end;
			e.Text = "";
			pcall(function()
				e:CaptureFocus();
			end);
		end;
	end;
	H.MouseButton1Click:Connect(w);
	e.FocusLost:Connect(function(p)
		if p then
			w();
		end;
	end);
	task.spawn(function()
		task.wait(.6);
		pcall(function()
			e:CaptureFocus();
		end);
	end);
	M(O, .5);
	return O;
end;
local function MA(O, i)
	for e, t in ipairs(k) do
		local g = m("Frame", {
				Size = UDim2.new(1, -10, 0, 64),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = e,
				ZIndex = 27,
				Parent = O,
			});
		h(g, 12);
		b(g, x.Border, 1, .5);
		local H = m("Frame", {
				Size = UDim2.new(0, 10, 0, 10),
				Position = UDim2.new(0, 10, 0, 10),
				BackgroundColor3 = t.online and Color3.fromRGB(120, 220, 130) or Color3.fromRGB(110, 110, 120),
				BorderSizePixel = 0,
				ZIndex = 30,
				Parent = g,
			});
		h(H, 5);
		m("UIStroke", {
			Color = x.BgTop,
			Thickness = 2,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = H,
		});
		local f = m("Frame", {
				Size = UDim2.new(0, 48, 0, 48),
				Position = UDim2.new(0, 28, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = x.SurfaceHi,
				BorderSizePixel = 0,
				ZIndex = 28,
				Parent = g,
			});
		h(f, 24);
		local Z = m("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 29,
				Parent = f,
			});
		h(Z, 24);
		task.spawn(function()
			local T, O = pcall(function()
					return p:GetUserThumbnailAsync(t.userId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if T and O then
				Z.Image = O;
			end;
		end);
		m("TextLabel", {
			Size = UDim2.new(1, -260, 0, 18),
			Position = UDim2.new(0, 90, 0, 14),
			BackgroundTransparency = 1,
			Text = t.name,
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 29,
			Parent = g,
		});
		m("TextLabel", {
			Size = UDim2.new(1, -260, 0, 14),
			Position = UDim2.new(0, 90, 0, 34),
			BackgroundTransparency = 1,
			Text = t.online and "En ligne" or "Hors ligne",
			TextColor3 = t.online and Color3.fromRGB(120, 220, 130) or x.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 29,
			Parent = g,
		});
		local B = m("TextButton", {
				Size = UDim2.new(0, 90, 0, 30),
				Position = UDim2.new(1, -200, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = t.online and x.Accent or x.SurfaceHi,
				BackgroundTransparency = t.online and 0 or .3,
				BorderSizePixel = 0,
				Text = "REJOINDRE",
				TextColor3 = t.online and x.TextOnAccent or x.TextMuted,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				AutoButtonColor = false,
				ZIndex = 29,
				Parent = g,
			});
		h(B, 8);
		if t.online then
			B.MouseEnter:Connect(function()
				(T:Create(B, TweenInfo.new(.15), { BackgroundTransparency = .15 })):Play();
			end);
			B.MouseLeave:Connect(function()
				(T:Create(B, TweenInfo.new(.15), { BackgroundTransparency = 0 })):Play();
			end);
			B.MouseButton1Click:Connect(function()
				p5("Communaut\195\169", "Connexion \195\160 " .. (t.name .. " en cours..."), false);
				e5("\240\159\148\151 Rejoindre " .. t.name, x.Accent);
			end);
		else
			B.MouseButton1Click:Connect(function()
				p5("Communaut\195\169", t.name .. " est hors ligne", true);
			end);
		end;
		local s = m("TextButton", {
				Size = UDim2.new(0, 90, 0, 30),
				Position = UDim2.new(1, -100, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = x.SurfaceHi,
				BackgroundTransparency = .2,
				BorderSizePixel = 0,
				Text = "MESSAGE",
				TextColor3 = x.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				AutoButtonColor = false,
				ZIndex = 29,
				Parent = g,
			});
		h(s, 8);
		s.MouseEnter:Connect(function()
			(T:Create(s, TweenInfo.new(.15), { BackgroundTransparency = .05, BackgroundColor3 = x.AccentSoft })):Play();
		end);
		s.MouseLeave:Connect(function()
			(T:Create(s, TweenInfo.new(.15), { BackgroundTransparency = .2, BackgroundColor3 = x.SurfaceHi })):Play();
		end);
		s.MouseButton1Click:Connect(function()
			if i then
				i(t);
			end;
		end);
	end;
end;
qA = function()
		if W.CommunityOpen and (W.CommunityFrame and W.CommunityFrame.Parent) then
			return;
		end;
		local p = W.Gui;
		if not p then
			return;
		end;
		local O = WA("CommunityFrame", UDim2.new(0, 560, 0, 600), p);
		W.CommunityFrame = O;
		W.CommunityOpen = true;
		O.BackgroundTransparency = 1;
		c(O, .5);
		local i = m("TextButton", {
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
				Parent = O,
			});
		h(i, 8);
		b(i, x.Border, 1, .4);
		i.MouseEnter:Connect(function()
			(T:Create(i, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(200, 60, 60), BackgroundTransparency = 0 })):Play();
			(T:Create(i, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
		end);
		i.MouseLeave:Connect(function()
			(T:Create(i, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(36, 38, 48), BackgroundTransparency = .15 })):Play();
			(T:Create(i, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(220, 225, 235) })):Play();
		end);
		i.MouseButton1Click:Connect(function()
			jA();
		end);
		local e = m("Frame", {
				Name = "CommHolder",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				ZIndex = 25,
				Parent = O,
			});
		local t, g;
		t = function()
				for p, T in ipairs(e:GetChildren()) do
					T:Destroy();
				end;
				m("TextLabel", {
					Size = UDim2.new(1, -100, 0, 30),
					Position = UDim2.new(0, 32, 0, 22),
					BackgroundTransparency = 1,
					Text = "Communaut\195\169 Mulba",
					TextColor3 = x.TextPrimary,
					Font = Enum.Font.GothamBlack,
					TextSize = 22,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 25,
					Parent = e,
				});
				m("TextLabel", {
					Size = UDim2.new(1, -100, 0, 18),
					Position = UDim2.new(0, 32, 0, 52),
					BackgroundTransparency = 1,
					Text = "Tous les utilisateurs du cheat \226\128\148 connect\195\169s en direct",
					TextColor3 = x.TextSecondary,
					Font = Enum.Font.Gotham,
					TextSize = 12,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 25,
					Parent = e,
				});
				local p = 0;
				for T, O in ipairs(k) do
					if O.online then
						p = p + 1;
					end;
				end;
				local T = m("Frame", {
						Size = UDim2.new(0, 130, 0, 42),
						Position = UDim2.new(1, -160, 0, 26),
						BackgroundColor3 = x.Surface,
						BackgroundTransparency = .3,
						BorderSizePixel = 0,
						ZIndex = 26,
						Parent = e,
					});
				h(T, 10);
				b(T, x.Border, 1, .5);
				local O = m("Frame", {
						Size = UDim2.new(0, 8, 0, 8),
						Position = UDim2.new(0, 14, .5, 0),
						AnchorPoint = Vector2.new(0, .5),
						BackgroundColor3 = x.Success,
						BorderSizePixel = 0,
						ZIndex = 27,
						Parent = T,
					});
				h(O, 4);
				m("TextLabel", {
					Size = UDim2.new(1, -34, 1, 0),
					Position = UDim2.new(0, 30, 0, 0),
					BackgroundTransparency = 1,
					Text = p .. " en ligne",
					TextColor3 = x.Success,
					Font = Enum.Font.GothamBold,
					TextSize = 12,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 27,
					Parent = T,
				});
				m("Frame", {
					Size = UDim2.new(1, -64, 0, 1),
					Position = UDim2.new(0, 32, 0, 86),
					BackgroundColor3 = x.Border,
					BackgroundTransparency = .5,
					BorderSizePixel = 0,
					ZIndex = 25,
					Parent = e,
				});
				local i = m("ScrollingFrame", {
						Size = UDim2.new(1, -64, 1, -130),
						Position = UDim2.new(0, 32, 0, 100),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						ScrollBarThickness = 6,
						ScrollBarImageColor3 = x.SurfaceHi,
						ScrollBarImageTransparency = .3,
						CanvasSize = UDim2.new(0, 0, 0, 0),
						AutomaticCanvasSize = Enum.AutomaticSize.Y,
						ScrollingDirection = Enum.ScrollingDirection.Y,
						ZIndex = 26,
						Parent = e,
					});
				local t = m("Frame", {
						Size = UDim2.new(1, 0, 0, 0),
						BackgroundTransparency = 1,
						AutomaticSize = Enum.AutomaticSize.Y,
						ZIndex = 26,
						Parent = i,
					});
				m("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = t });
				MA(t, function(p)
					g(p);
				end);
			end;
		g = function(p)
				for p, T in ipairs(e:GetChildren()) do
					T:Destroy();
				end;
				local O = m("TextButton", {
						Size = UDim2.new(0, 90, 0, 32),
						Position = UDim2.new(0, 32, 0, 22),
						BackgroundColor3 = x.Surface,
						BackgroundTransparency = .2,
						BorderSizePixel = 0,
						Text = "\226\134\144 Retour",
						TextColor3 = x.TextPrimary,
						Font = Enum.Font.GothamBold,
						TextSize = 12,
						AutoButtonColor = false,
						ZIndex = 30,
						Parent = e,
					});
				h(O, 8);
				b(O, x.Border, 1, .4);
				O.MouseEnter:Connect(function()
					(T:Create(O, TweenInfo.new(.15), { BackgroundTransparency = .05, BackgroundColor3 = x.SurfaceHi })):Play();
				end);
				O.MouseLeave:Connect(function()
					(T:Create(O, TweenInfo.new(.15), { BackgroundTransparency = .2, BackgroundColor3 = x.Surface })):Play();
				end);
				O.MouseButton1Click:Connect(function()
					t();
				end);
				m("TextLabel", {
					Size = UDim2.new(1, -200, 0, 20),
					Position = UDim2.new(0, 140, 0, 26),
					BackgroundTransparency = 1,
					Text = p.name,
					TextColor3 = x.TextPrimary,
					Font = Enum.Font.GothamBold,
					TextSize = 15,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 30,
					Parent = e,
				});
				m("TextLabel", {
					Size = UDim2.new(1, -200, 0, 14),
					Position = UDim2.new(0, 140, 0, 46),
					BackgroundTransparency = 1,
					Text = p.online and "\226\151\143 En ligne" or "\226\151\143 Hors ligne",
					TextColor3 = p.online and Color3.fromRGB(120, 220, 130) or x.TextMuted,
					Font = Enum.Font.GothamMedium,
					TextSize = 11,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 30,
					Parent = e,
				});
				m("Frame", {
					Size = UDim2.new(1, -64, 0, 1),
					Position = UDim2.new(0, 32, 0, 84),
					BackgroundColor3 = x.Border,
					BackgroundTransparency = .5,
					BorderSizePixel = 0,
					ZIndex = 25,
					Parent = e,
				});
				local i = m("ScrollingFrame", {
						Size = UDim2.new(1, -64, 1, -224),
						Position = UDim2.new(0, 32, 0, 96),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						ScrollBarThickness = 6,
						ScrollBarImageColor3 = x.SurfaceHi,
						ScrollBarImageTransparency = .3,
						CanvasSize = UDim2.new(0, 0, 0, 0),
						AutomaticCanvasSize = Enum.AutomaticSize.Y,
						ScrollingDirection = Enum.ScrollingDirection.Y,
						ZIndex = 26,
						Parent = e,
					});
				local g = m("Frame", {
						Size = UDim2.new(1, 0, 0, 0),
						BackgroundTransparency = 1,
						AutomaticSize = Enum.AutomaticSize.Y,
						ZIndex = 26,
						Parent = i,
					});
				m("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = g });
				local H = 0;
				local function f(p, T)
					H = H + 1;
					local O = m("Frame", {
							Size = UDim2.new(1, 0, 0, 0),
							BackgroundTransparency = 1,
							LayoutOrder = H,
							AutomaticSize = Enum.AutomaticSize.Y,
							ZIndex = 30,
							Parent = g,
						});
					local e = m("Frame", {
							BackgroundColor3 = T and x.BubbleMine or x.BubbleOther,
							BorderSizePixel = 0,
							AutomaticSize = Enum.AutomaticSize.XY,
							ZIndex = 31,
							Parent = O,
						});
					if T then
						e.AnchorPoint = Vector2.new(1, 0);
						e.Position = UDim2.new(1, 0, 0, 0);
					else
						e.AnchorPoint = Vector2.new(0, 0);
						e.Position = UDim2.new(0, 0, 0, 0);
					end;
					h(e, 12);
					m("TextLabel", {
						Position = UDim2.new(0, 14, 0, 8),
						Size = UDim2.new(0, 340, 0, 0),
						BackgroundTransparency = 1,
						Text = p,
						TextColor3 = T and Color3.fromRGB(255, 255, 255) or x.TextPrimary,
						Font = Enum.Font.GothamMedium,
						TextSize = 13,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
						TextWrapped = true,
						AutomaticSize = Enum.AutomaticSize.Y,
						ZIndex = 32,
						Parent = e,
					});
					m("Frame", {
						Size = UDim2.new(0, 14, 0, 8),
						Position = UDim2.new(0, 0, 1, 0),
						BackgroundTransparency = 1,
						ZIndex = 31,
						Parent = e,
					});
					task.defer(function()
						if i then
							i.CanvasPosition = Vector2.new(0, math.max(0, (g.AbsoluteSize.Y - i.AbsoluteSize.Y) + 40));
						end;
					end);
				end;
				local Z = m("Frame", {
						Size = UDim2.new(1, -64, 0, 54),
						Position = UDim2.new(0, 32, 1, -70),
						BackgroundColor3 = x.Surface,
						BackgroundTransparency = .2,
						BorderSizePixel = 0,
						ZIndex = 30,
						Parent = e,
					});
				h(Z, 12);
				b(Z, x.Border, 1, .4);
				local B = m("TextBox", {
						Size = UDim2.new(1, -110, 1, 0),
						Position = UDim2.new(0, 16, 0, 0),
						BackgroundTransparency = 1,
						Text = "",
						PlaceholderText = "\195\137cris un message...",
						PlaceholderColor3 = x.TextMuted,
						TextColor3 = x.TextPrimary,
						Font = Enum.Font.Gotham,
						TextSize = 13,
						TextXAlignment = Enum.TextXAlignment.Left,
						ClearTextOnFocus = false,
						ZIndex = 31,
						Parent = Z,
					});
				local s = m("TextButton", {
						Size = UDim2.new(0, 80, 0, 38),
						Position = UDim2.new(1, -92, .5, 0),
						AnchorPoint = Vector2.new(0, .5),
						BackgroundColor3 = x.Accent,
						BorderSizePixel = 0,
						Text = "ENVOYER",
						TextColor3 = x.TextOnAccent,
						Font = Enum.Font.GothamBold,
						TextSize = 11,
						AutoButtonColor = false,
						ZIndex = 31,
						Parent = Z,
					});
				h(s, 8);
				C(s, "BackgroundColor3", "Accent");
				local function w()
					local p = B.Text;
					if p == nil or p == "" then
						return;
					end;
					B.Text = "";
					f(p, true);
					task.delay(math.random(8, 20) / 10, function()
						if not e or not e.Parent then
							return;
						end;
						local p = {
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
						f(p[math.random(1, #p)], false);
					end);
				end;
				s.MouseButton1Click:Connect(w);
				B.FocusLost:Connect(function(p)
					if p then
						w();
					end;
				end);
			end;
		t();
	end;
jA = function()
		if not ((W.CommunityFrame and W.CommunityFrame.Parent)) then
			return;
		end;
		L(W.CommunityFrame, .35, function()
			W.CommunityFrame = nil;
			W.CommunityOpen = false;
		end);
	end;
local function px(p)
	local T = string.lower(p);
	if T:find("salut") or T:find("bonjour") or T:find("hey") or T:find("yo") or T:find("coucou") or T:find("bonsoir") then
		return "Salut ! Je suis l\'assistance Mulba. Dis-moi ce que tu veux faire et je te guide. Par exemple : activer l\'ESP, utiliser le Fly, lancer l\'Auto Farm, ou rejoindre la communaut\195\169.";
	end;
	if T:find("je comprends pas") or T:find("je comprend pas") or T:find("comprends rien") or T:find("je sais pas") or T:find("aide moi") or T:find("aide-moi") or T:find("help") or T:find("explique") or T:find("expliquer") or T:find("comment \195\167a marche") or T:find("comment sa marche") or T:find("c\'est quoi") then
		return "Pas de souci. Dis-moi ce que tu veux faire exactement. Par exemple : ouvrir l\'ESP, voler avec le Fly, farm les pi\195\168ces, TP sur le tueur, ou rejoindre la communaut\195\169. Je te guide \195\169tape par \195\169tape.";
	end;
	if T:find("bug") or T:find("marche pas") or T:find("fonctionne pas") or T:find("erreur") or T:find("plante") then
		return "Si quelque chose ne marche pas : 1) V\195\169rifie que tu as bien activ\195\169 l\'option dans le bon onglet. 2) R\195\169essaie en d\195\169sactivant puis r\195\169activant. 3) Si \195\167a persiste, dis-moi quelle fonction pr\195\169cise bug et je t\'aide \195\160 corriger.";
	end;
	if T:find("menu") or T:find("touche m") or T:find("ouvrir") or T:find("fermer") then
		return "Pour ouvrir ou fermer le menu, appuie sur la touche M. Tu peux aussi cliquer sur le petit panneau M au-dessus de ta t\195\170te en jeu.";
	end;
	if T:find("invisible") or T:find("invisibilit\195\169") or T:find("invisibilite") then
		return "Le bouton INVISIBLE est dans \'Player\' > MOUVEMENT. Active-le et personne ne te verra tant qu\'il reste activ\195\169. D\195\169sactive-le pour redevenir visible.";
	end;
	if T:find("esp") or T:find("voir les joueurs") or T:find("voir qui") or T:find("couleur") then
		return "Pour activer l\'ESP : va dans l\'onglet \'Onglet Esp\' (sidebar). Tu peux activer ESP Murderer, ESP Sheriff, ESP Innocent, X-Ray, Box, Tracer ou ESP Coin. Les couleurs : rouge = tueur, bleu = sh\195\169rif, vert = innocent.";
	end;
	if T:find("fly") or T:find("vol") or T:find("voler") then
		return "Pour voler : va dans l\'onglet \'Player\' > section MOUVEMENT > active FLY. Utilise W/A/S/D pour te d\195\169placer. Une emote zen s\'active automatiquement quand tu voles.";
	end;
	if T:find("autofarm") or T:find("auto farm") or T:find("farm") or T:find("pi\195\168ce") or T:find("pi\195\168ces") or T:find("coin") or T:find("coins") then
		return "Pour farmer les pi\195\168ces : va dans l\'onglet \'Auto Farm\' > active \'AUTO FARM COINS\'. Tu peux r\195\169gler la vitesse, le rayon de collecte, la profondeur sous la map, et m\195\170me activer \'TP DIRECT PI\195\136CE\' pour aller plus vite (plus risqu\195\169).";
	end;
	if T:find("murder") or T:find("tueur") or T:find("assassin") then
		return "Onglet \'Murder\' : tu as \'TP ALL IN FRONT\' (empile les joueurs devant toi) et \'TP MURDERER\' (te TP sur le tueur). Active aussi ESP Murderer dans l\'onglet Esp pour le voir en rouge.";
	end;
	if T:find("sheriff") or T:find("sh\195\169rif") or T:find("auto shoot") or T:find("tirer") then
		return "Onglet \'Sheriff\' : active \'AUTO SHOOT MURDERER\' si tu es sh\195\169rif, \195\167a tire automatiquement sur le tueur. Et \'TP SHERIFF\' pour te TP sur lui. Active ESP Sheriff pour le rep\195\169rer en bleu.";
	end;
	if T:find("tp") or T:find("t\195\169l\195\169port") or T:find("teleport") or T:find("spawn") or T:find("map") then
		return "Pour te TP : onglet \'T\195\169l\195\169port\195\169\' > \'TP SPAWN\' (au spawn), \'SET MAP\' (sauvegarde ta position), \'MAP\' (revient \195\160 la position sauvegard\195\169e). Tu peux aussi TP sur une cible dans \'Player\' ou \'Troll\'.";
	end;
	if T:find("troll") or T:find("cibler") or T:find("cible") or T:find("spectate") or T:find("accrocher") then
		return "Onglet \'Troll\' : s\195\169lectionne un joueur dans la liste d\195\169roulante, puis TP sur lui ou spectate. Tu peux aussi t\'accrocher \195\160 lui depuis \'Player\' > \'S\'ACCROCHER \195\128 ELLE\'.";
	end;
	if T:find("noclip") or T:find("traverse") or T:find("mur") or T:find("murs") then
		return "Le Noclip est dans \'Player\' > MOUVEMENT > NOCLIP. Il te permet de traverser les murs. Attention : il se d\195\169sactive automatiquement quand le Fly est actif.";
	end;
	if T:find("fullbright") or T:find("lumi\195\168re") or T:find("lumiere") or T:find("sombre") or T:find("\195\169clair") then
		return "Le Fullbright est dans \'Player\' > MOUVEMENT > FULLBRIGHT. Il \195\169claire toute la map instantan\195\169ment, pratique sur les maps sombres.";
	end;
	if T:find("communaut\195\169") or T:find("community") or T:find("liste") or T:find("membres") or T:find("message") then
		return "La Communaut\195\169 Mulba est accessible via le bouton M bleu en haut \195\160 droite de la sidebar. Tu y vois tous les membres avec leur statut en ligne/hors ligne, et tu peux leur envoyer un message priv\195\169.";
	end;
	if T:find("vitesse") or T:find("walkspeed") or T:find("jump") or T:find("saut") then
		return "Dans \'Player\' > section Stats, tu peux r\195\169gler WALKSPEED, JUMPPOWER et GRAVITY avec des sliders. Plus la valeur est haute, plus tu vas vite ou sautes haut.";
	end;
	if T:find("merci") or T:find("thanks") or T:find("thx") or T:find("cimer") then
		return "Avec plaisir ! Si tu as besoin d\'autre chose, je suis l\195\160. Bon jeu.";
	end;
	if T:find("aide") or T:find("aidez") or T:find("que faire") or T:find("quoi faire") then
		return "Je peux t\'aider sur : ESP, Fly, Auto Farm, Murder, Sheriff, TP, Troll, Noclip, Invisible, Fullbright, Communaut\195\169, Menu (touche M). Dis-moi pr\195\169cis\195\169ment ce que tu veux faire.";
	end;
	return "Je n\'ai pas bien compris ta demande. Reformule ou dis-moi juste un mot-cl\195\169 : ESP, Fly, Auto Farm, Murder, Sheriff, TP, Troll, Noclip, Invisible, Fullbright, Communaut\195\169, ou Menu. Je te guiderai pr\195\169cis\195\169ment.";
end;
mA = function()
		if W.AIOpen and (W.AIFrame and W.AIFrame.Parent) then
			return;
		end;
		local p = W.Gui;
		if not p then
			return;
		end;
		local O = WA("AIFrame", UDim2.new(0, 520, 0, 620), p);
		W.AIFrame = O;
		W.AIOpen = true;
		O.BackgroundTransparency = 1;
		c(O, .5);
		local i = m("TextButton", {
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
				Parent = O,
			});
		h(i, 8);
		b(i, x.Border, 1, .4);
		i.MouseEnter:Connect(function()
			(T:Create(i, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(200, 60, 60), BackgroundTransparency = 0 })):Play();
			(T:Create(i, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
		end);
		i.MouseLeave:Connect(function()
			(T:Create(i, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(36, 38, 48), BackgroundTransparency = .15 })):Play();
			(T:Create(i, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(220, 225, 235) })):Play();
		end);
		i.MouseButton1Click:Connect(function()
			hA();
		end);
		m("TextLabel", {
			Size = UDim2.new(1, -100, 0, 30),
			Position = UDim2.new(0, 32, 0, 22),
			BackgroundTransparency = 1,
			Text = "Assistance IA Mulba",
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBlack,
			TextSize = 20,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = O,
		});
		m("TextLabel", {
			Size = UDim2.new(1, -100, 0, 18),
			Position = UDim2.new(0, 32, 0, 50),
			BackgroundTransparency = 1,
			Text = "Pose ta question, je r\195\169ponds en direct",
			TextColor3 = x.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = O,
		});
		m("Frame", {
			Size = UDim2.new(1, -64, 0, 1),
			Position = UDim2.new(0, 32, 0, 82),
			BackgroundColor3 = x.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = O,
		});
		local e = m("ScrollingFrame", {
				Size = UDim2.new(1, -64, 1, -216),
				Position = UDim2.new(0, 32, 0, 96),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 6,
				ScrollBarImageColor3 = x.SurfaceHi,
				ScrollBarImageTransparency = .3,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ZIndex = 26,
				Parent = O,
			});
		local t = m("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 26,
				Parent = e,
			});
		m("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = t });
		local g = 0;
		local function H(p, T)
			g = g + 1;
			local O = m("Frame", {
					Size = UDim2.new(1, 0, 0, 0),
					BackgroundTransparency = 1,
					LayoutOrder = g,
					AutomaticSize = Enum.AutomaticSize.Y,
					ZIndex = 30,
					Parent = t,
				});
			local i = m("Frame", {
					BackgroundColor3 = T and x.BubbleMine or x.BubbleOther,
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					ZIndex = 31,
					Parent = O,
				});
			if T then
				i.AnchorPoint = Vector2.new(1, 0);
				i.Position = UDim2.new(1, 0, 0, 0);
			else
				i.AnchorPoint = Vector2.new(0, 0);
				i.Position = UDim2.new(0, 0, 0, 0);
			end;
			h(i, 12);
			m("TextLabel", {
				Position = UDim2.new(0, 14, 0, 8),
				Size = UDim2.new(0, 340, 0, 0),
				BackgroundTransparency = 1,
				Text = p,
				TextColor3 = T and Color3.fromRGB(255, 255, 255) or x.TextPrimary,
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextWrapped = true,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 32,
				Parent = i,
			});
			m("Frame", {
				Size = UDim2.new(0, 14, 0, 8),
				Position = UDim2.new(0, 0, 1, 0),
				BackgroundTransparency = 1,
				ZIndex = 31,
				Parent = i,
			});
			task.defer(function()
				if e then
					e.CanvasPosition = Vector2.new(0, math.max(0, (t.AbsoluteSize.Y - e.AbsoluteSize.Y) + 40));
				end;
			end);
		end;
		H("Salut, assistance IA Mulba. Comment je peux vous aider ?", false);
		local f = m("Frame", {
				Size = UDim2.new(1, -64, 0, 54),
				Position = UDim2.new(0, 32, 1, -70),
				BackgroundColor3 = x.Surface,
				BackgroundTransparency = .2,
				BorderSizePixel = 0,
				ZIndex = 30,
				Parent = O,
			});
		h(f, 12);
		b(f, x.Border, 1, .4);
		local Z = m("TextBox", {
				Size = UDim2.new(1, -110, 1, 0),
				Position = UDim2.new(0, 16, 0, 0),
				BackgroundTransparency = 1,
				Text = "",
				PlaceholderText = "\195\137cris ta question...",
				PlaceholderColor3 = x.TextMuted,
				TextColor3 = x.TextPrimary,
				Font = Enum.Font.Gotham,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ClearTextOnFocus = false,
				ZIndex = 31,
				Parent = f,
			});
		local B = m("TextButton", {
				Size = UDim2.new(0, 80, 0, 38),
				Position = UDim2.new(1, -92, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = x.Accent,
				BorderSizePixel = 0,
				Text = "ENVOYER",
				TextColor3 = x.TextOnAccent,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				AutoButtonColor = false,
				ZIndex = 31,
				Parent = f,
			});
		h(B, 8);
		C(B, "BackgroundColor3", "Accent");
		local function s()
			local p = Z.Text;
			if p == nil or p == "" then
				return;
			end;
			Z.Text = "";
			H(p, true);
			task.delay(.6, function()
				if not O or not O.Parent then
					return;
				end;
				H(px(p), false);
			end);
		end;
		B.MouseButton1Click:Connect(s);
		Z.FocusLost:Connect(function(p)
			if p then
				s();
			end;
		end);
	end;
hA = function()
		if not ((W.AIFrame and W.AIFrame.Parent)) then
			return;
		end;
		L(W.AIFrame, .35, function()
			W.AIFrame = nil;
			W.AIOpen = false;
		end);
	end;
VA = function()
		local O = W.Gui;
		if not O then
			return;
		end;
		if W.Shell and W.Shell.Parent then
			return;
		end;
		W.NavItems = {};
		W.CurrentPage = nil;
		local i = WA("Shell", UDim2.new(0, 820, 0, 540), O);
		W.Shell = i;
		W.MenuOpen = true;
		i.BackgroundTransparency = 1;
		c(i, .55);
		local e = m("TextButton", {
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
				Parent = i,
			});
		h(e, 8);
		b(e, x.Border, 1, .4);
		e.MouseEnter:Connect(function()
			(T:Create(e, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(200, 60, 60), BackgroundTransparency = 0 })):Play();
			(T:Create(e, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
		end);
		e.MouseLeave:Connect(function()
			(T:Create(e, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(36, 38, 48), BackgroundTransparency = .15 })):Play();
			(T:Create(e, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(220, 225, 235) })):Play();
		end);
		e.MouseButton1Click:Connect(dA);
		local g = m("Frame", {
				Name = "Sidebar",
				Size = UDim2.new(0, 240, 1, 0),
				BackgroundColor3 = x.SurfaceSide,
				BackgroundTransparency = .35,
				BorderSizePixel = 0,
				ZIndex = 8,
				Parent = i,
			});
		h(g, 20);
		W.Sidebar = g;
		local H = m("Frame", {
				Size = UDim2.new(1, 0, 0, 90),
				BackgroundColor3 = x.BgTop,
				BackgroundTransparency = .65,
				BorderSizePixel = 0,
				ZIndex = 15,
				Parent = g,
			});
		h(H, 20);
		m("Frame", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 1, -20),
			BackgroundColor3 = x.BgTop,
			BackgroundTransparency = .65,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = H,
		});
		local f = m("Frame", {
				Size = UDim2.new(0, 52, 0, 52),
				Position = UDim2.new(0, 18, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 16,
				Parent = H,
			});
		h(f, 26);
		local Z = m("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 17,
				Parent = f,
			});
		h(Z, 24);
		local B = m("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 18,
				Parent = Z,
			});
		h(B, 24);
		task.spawn(function()
			local T, O = pcall(function()
					return p:GetUserThumbnailAsync(t.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if T and O then
				B.Image = O;
			end;
		end);
		m("TextLabel", {
			Size = UDim2.new(1, -90, 0, 22),
			Position = UDim2.new(0, 80, 0, 24),
			BackgroundTransparency = 1,
			Text = t.DisplayName,
			TextColor3 = x.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 15,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 16,
			Parent = H,
		});
		m("TextLabel", {
			Size = UDim2.new(1, -90, 0, 16),
			Position = UDim2.new(0, 80, 0, 46),
			BackgroundTransparency = 1,
			Text = "Premium",
			TextColor3 = x.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 16,
			Parent = H,
		});
		local s = m("TextButton", {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -42, 0, 32),
				BackgroundColor3 = x.Accent,
				BorderSizePixel = 0,
				Text = "M",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 15,
				AutoButtonColor = false,
				ZIndex = 20,
				Parent = H,
			});
		h(s, 15);
		local w = m("UIStroke", {
				Color = x.AccentGlow,
				Thickness = 1.5,
				Transparency = .4,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Parent = s,
			});
		C(s, "BackgroundColor3", "Accent");
		s.MouseEnter:Connect(function()
			(T:Create(s, TweenInfo.new(.18), { Size = UDim2.new(0, 34, 0, 34), Position = UDim2.new(1, -44, 0, 30) })):Play();
			(T:Create(w, TweenInfo.new(.18), { Transparency = 0 })):Play();
		end);
		s.MouseLeave:Connect(function()
			(T:Create(s, TweenInfo.new(.18), { Size = UDim2.new(0, 30, 0, 30), Position = UDim2.new(1, -42, 0, 32) })):Play();
			(T:Create(w, TweenInfo.new(.18), { Transparency = .4 })):Play();
		end);
		s.MouseButton1Click:Connect(function()
			if qA then
				qA();
			end;
		end);
		m("Frame", {
			Size = UDim2.new(1, -32, 0, 1),
			Position = UDim2.new(0, 16, 0, 90),
			BackgroundColor3 = x.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = g,
		});
		local P = m("ScrollingFrame", {
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
				Parent = g,
			});
		m("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = P });
		QA(P, "G\195\169n\195\169ral", 1);
		bA(P, "Accueil", "home", 2);
		bA(P, "ESP", "esp", 3);
		QA(P, "Personnage", 4);
		bA(P, "Player", "player", 5);
		bA(P, "Combat", "combat", 6);
		bA(P, "Troll", "troll", 7);
		bA(P, "T\195\169l\195\169port\195\169", "teleport", 8);
		bA(P, "Animation", "animation", 9);
		bA(P, "Auto Farm", "autofarm", 10);
		QA(P, "MM2", 11);
		bA(P, "Murder", "murder", 12);
		bA(P, "Sheriff", "sheriff", 13);
		QA(P, "Autre", 14);
		bA(P, "Param\195\168tres", "settings", 15);
		W.NavItems.home.btn.MouseButton1Click:Connect(function()
			kA("home");
		end);
		W.NavItems.esp.btn.MouseButton1Click:Connect(function()
			kA("esp");
		end);
		W.NavItems.murder.btn.MouseButton1Click:Connect(function()
			kA("murder");
		end);
		W.NavItems.sheriff.btn.MouseButton1Click:Connect(function()
			kA("sheriff");
		end);
		W.NavItems.player.btn.MouseButton1Click:Connect(function()
			kA("player");
		end);
		W.NavItems.combat.btn.MouseButton1Click:Connect(function()
			kA("combat");
		end);
		W.NavItems.autofarm.btn.MouseButton1Click:Connect(function()
			kA("autofarm");
		end);
		W.NavItems.teleport.btn.MouseButton1Click:Connect(function()
			kA("teleport");
		end);
		W.NavItems.troll.btn.MouseButton1Click:Connect(function()
			kA("troll");
		end);
		W.NavItems.animation.btn.MouseButton1Click:Connect(function()
			kA("animation");
		end);
		W.NavItems.settings.btn.MouseButton1Click:Connect(function()
			kA("settings");
		end);
		local o = m("Frame", {
				Name = "Content",
				Size = UDim2.new(1, -240, 1, 0),
				Position = UDim2.new(0, 240, 0, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				ZIndex = 14,
				Parent = i,
			});
		W.Content = o;
		local S = m("ScrollingFrame", {
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
				Parent = o,
			});
		W.Scroll = S;
		task.wait(.1);
		kA("home");
	end;
t.CharacterAdded:Connect(function(p)
	p:WaitForChild("Humanoid", 10);
	task.wait(.6);
	J.nowe = false;
	J.tpwalking = false;
	w5();
	eA();
	XA();
	if r.XRayEnabled then
		task.wait(.5);
		if p then
			HA(p, t);
		end;
	end;
	if X.FlyEnabled then
		C5();
	end;
	if X.SpinEnabled then
		W5();
	end;
	if X.JerkEnabled then
		X5();
	end;
	X.Sitting = false;
	if X.Invisible then
		X.Invisible = false;
		D.saved = {};
		if D.conn then
			D.conn:Disconnect();
			D.conn = nil;
		end;
	end;
	local T = p:FindFirstChildOfClass("Humanoid");
	if T then
		T.WalkSpeed = X.WalkSpeed;
		T.UseJumpPower = true;
		T.JumpPower = X.JumpPower;
	end;
	workspace.Gravity = X.Gravity;
	if a.AutoSetMap then
		task.wait(.4);
		K5(true);
	end;
	if a.ReturnSpawn then
		task.wait(.5);
		U5();
	end;
end);
i.InputBegan:Connect(function(p, T)
	if T then
		return;
	end;
	if p.KeyCode == Enum.KeyCode.Escape then
		if W.CommunityOpen then
			jA();
		end;
		if W.AIOpen then
			hA();
		end;
		return;
	end;
	if p.KeyCode ~= Enum.KeyCode.M then
		return;
	end;
	if not W.Authenticated then
		return;
	end;
	if W.Shell and W.Shell.Parent then
		dA();
	else
		if VA then
			VA();
		end;
	end;
end);
local function Tx()
	j("Initialisation...");
	local p = g:FindFirstChild("MenuV70_GUI") or g:FindFirstChild("MenuV71_GUI");
	if p then
		p:Destroy();
	end;
	cA();
	task.wait(v.LoadingDuration + .4);
	rA(W.LoadingFrame, function()
		W.LoadingFrame = nil;
	end);
	task.wait(.5);
	LA(function()
		W.Authenticated = true;
		XA();
		VA();
	end);
end;
Tx();
