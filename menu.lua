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

local j = game:GetService("Players");
local r = game:GetService("TweenService");
local G = game:GetService("RunService");
local p = game:GetService("UserInputService");
local a = game:GetService("Lighting");
local H = game:GetService("Debris");
local x = j.LocalPlayer;
local B = x:WaitForChild("PlayerGui");
local y = workspace.CurrentCamera;
local l = "Fdvo2669";
local q = "rbxassetid://126785640171935";
local m = 2.6;
local s = {
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
local C = {
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
local D = {};
local function R(j, r, G)
	table.insert(D, { instance = j, property = r, themeKey = G });
	return j;
end;
local function d(j, r, G)
	table.insert(D, {
		isGradient = true,
		gradient = j,
		topKey = r,
		bottomKey = G,
	});
	return j;
end;
local function o()
	local j = {};
	for G, p in ipairs(D) do
		if p.isGradient then
			if p.gradient and p.gradient.Parent then
				p.gradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, s[p.topKey]), ColorSequenceKeypoint.new(1, s[p.bottomKey]) });
				table.insert(j, p);
			end;
		else
			if p.instance and p.instance.Parent then
				local G = s[p.themeKey];
				if G then
					(r:Create(p.instance, TweenInfo.new(.35), { [p.property] = G })):Play();
				end;
				table.insert(j, p);
			end;
		end;
	end;
	D = j;
	for j, r in pairs(State.NavItems) do
		r.setActive(r.state.active);
	end;
end;
local function O(j)
	s.Accent = j.Accent;
	s.AccentDim = j.AccentDim;
	s.AccentGlow = j.AccentGlow;
	s.AccentSoft = j.AccentSoft;
	s.TextOnAccent = j.TextOnAccent;
	s.BubbleMine = j.Accent;
	o();
end;
local w = {
		LoadingDuration = 3.5,
		ParticleSpawnRate = .1,
		ParticleMinSize = 2,
		ParticleMaxSize = 4,
		ParticleFallSpeed = 120,
		ParticlesPerTick = 2,
	};
local t = {
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
local A = {
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
local L = {
		Murderer = Color3.fromRGB(255, 60, 60),
		Sheriff = Color3.fromRGB(60, 120, 255),
		Innocent = Color3.fromRGB(60, 255, 120),
		Box = Color3.fromRGB(255, 60, 60),
		Tracer = Color3.fromRGB(255, 60, 60),
	};
local e = {
		BoxEnabled = true,
		BoxThickness = 2,
		TracerEnabled = false,
		DistanceEnabled = true,
	};
local b = {
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
local f = {
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
local z = { track = nil };
local g = {
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
local T = { av = nil };
local K = { conn = nil };
local E = {};
local n = {};
local W = {};
local Y = { knownRoles = {}, seenGroundGuns = {} };
local I = { lastRoles = {} };
local i = { savedCFrame = nil };
local k = { running = false, coinsCollected = 0, startTime = 0 };
local J = {
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
local u = { conn = nil, saved = {} };
local function U()
	local j = x.Character;
	if not j then
		return;
	end;
	for j, r in ipairs(j:GetDescendants()) do
		if r:IsA("BasePart") then
			if u.saved[r] == nil then
				u.saved[r] = { Transparency = r.Transparency, LocalTransparencyModifier = r.LocalTransparencyModifier };
			end;
			r.Transparency = 1;
			r.LocalTransparencyModifier = 1;
		elseif r:IsA("Decal") or r:IsA("Texture") then
			if u.saved[r] == nil then
				u.saved[r] = { Transparency = r.Transparency };
			end;
			r.Transparency = 1;
		elseif r:IsA("BillboardGui") then
			if u.saved[r] == nil then
				u.saved[r] = { Enabled = r.Enabled };
			end;
			r.Enabled = false;
		elseif r:IsA("Accessory") or r:IsA("Accoutrement") then
			if u.saved[r] == nil then
				u.saved[r] = { handled = true };
			end;
			local j = r:FindFirstChild("Handle");
			if j and j:IsA("BasePart") then
				j.Transparency = 1;
				j.LocalTransparencyModifier = 1;
			end;
		end;
	end;
	local r = j:FindFirstChildOfClass("Humanoid");
	if r then
		if u.saved[r] == nil then
			u.saved[r] = { DisplayDistanceType = r.DisplayDistanceType, NameDisplayDistance = r.NameDisplayDistance, HealthDisplayDistance = r.HealthDisplayDistance };
		end;
		r.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None;
		r.NameDisplayDistance = 0;
		r.HealthDisplayDistance = 0;
	end;
	if n[x] then
		local j = n[x];
		if j and j.Parent then
			j:Destroy();
		end;
		n[x] = nil;
	end;
	local G = x:FindFirstChild("PlayerGui");
	if G then
		local j = G:FindFirstChild("MulbaHeadGui");
		if j then
			if u.saved[j] == nil then
				u.saved[j] = { Enabled = j.Enabled };
			end;
			j.Enabled = false;
		end;
	end;
	for j, r in ipairs(j:GetChildren()) do
		if r:IsA("Tool") then
			for j, r in ipairs(r:GetDescendants()) do
				if r:IsA("BasePart") then
					if u.saved[r] == nil then
						u.saved[r] = { Transparency = r.Transparency, LocalTransparencyModifier = r.LocalTransparencyModifier };
					end;
					r.Transparency = 1;
					r.LocalTransparencyModifier = 1;
				elseif r:IsA("Decal") or r:IsA("Texture") then
					if u.saved[r] == nil then
						u.saved[r] = { Transparency = r.Transparency };
					end;
					r.Transparency = 1;
				end;
			end;
		end;
	end;
end;
local function S()
	for j, r in pairs(u.saved) do
		if j and j.Parent then
			pcall(function()
				if r.Transparency ~= nil and j.Transparency ~= nil then
					j.Transparency = r.Transparency;
				end;
				if r.LocalTransparencyModifier ~= nil and j.LocalTransparencyModifier ~= nil then
					j.LocalTransparencyModifier = r.LocalTransparencyModifier;
				end;
				if r.Enabled ~= nil and j.Enabled ~= nil then
					j.Enabled = r.Enabled;
				end;
				if r.DisplayDistanceType ~= nil then
					j.DisplayDistanceType = r.DisplayDistanceType;
				end;
				if r.NameDisplayDistance ~= nil then
					j.NameDisplayDistance = r.NameDisplayDistance;
				end;
				if r.HealthDisplayDistance ~= nil then
					j.HealthDisplayDistance = r.HealthDisplayDistance;
				end;
			end);
		end;
	end;
	u.saved = {};
	local j = x:FindFirstChild("PlayerGui");
	if j then
		local r = j:FindFirstChild("MulbaHeadGui");
		if r then
			r.Enabled = true;
		end;
	end;
end;
local function Z()
	b.Invisible = true;
	u.saved = {};
	U();
	if u.conn then
		u.conn:Disconnect();
	end;
	u.conn = G.Heartbeat:Connect(function()
			if not b.Invisible then
				return;
			end;
			local j = x.Character;
			if not j then
				return;
			end;
			for j, r in ipairs(j:GetDescendants()) do
				if r:IsA("BasePart") then
					r.LocalTransparencyModifier = 1;
					if r.Transparency ~= 1 then
						r.Transparency = 1;
					end;
				end;
			end;
			local r = j:FindFirstChildOfClass("Humanoid");
			if r then
				r.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None;
			end;
		end);
end;
local function V()
	b.Invisible = false;
	if u.conn then
		u.conn:Disconnect();
		u.conn = nil;
	end;
	S();
end;
local function F()
	if b.Invisible then
		V();
	else
		Z();
	end;
end;
local X = {
		{ name = "Sit Floating", id = "rbxassetid://128125464238361" },
		{ name = "Floss", id = "rbxassetid://91706258250061" },
		{ name = "Vert", id = "rbxassetid://138548522843413" },
		{ name = "Zen", id = "rbxassetid://70434879073702" },
		{ name = "Loser", id = "rbxassetid://75460729737525" },
		{ name = "Sit Relax", id = "rbxassetid://105904708266983" },
		{ name = "Grand \195\137cart", id = "rbxassetid://79958059185515" },
		{ name = "Danse de l\'Ours", id = "rbxassetid://90395099017767" },
		{ name = "Jolie Pied", id = "rbxassetid://135751071435763" },
		{ name = "Swing", id = "rbxassetid://120541378315342" },
	};
local P = "MulbaEmotes.json";
local v = {
		list = {},
		currentTrack = nil,
		currentAnim = nil,
		currentName = nil,
		loop = false,
		speed = 1,
		priority = Enum.AnimationPriority.Action,
	};
local function M()
	local j, r = pcall(function()
			if readfile and (isfile and isfile(P)) then
				return readfile(P);
			end;
			return nil;
		end);
	if j and (r and #r > 2) then
		local j, G = pcall(function()
				return (game:GetService("HttpService")):JSONDecode(r);
			end);
		if j and type(G) == "table" then
			return G;
		end;
	end;
	local G = {};
	for j, r in ipairs(X) do
		table.insert(G, { name = r.name, id = r.id });
	end;
	return G;
end;
v.list = M();
local function Q()
	pcall(function()
		if writefile then
			local j = (game:GetService("HttpService")):JSONEncode(v.list);
			writefile(P, j);
		end;
	end);
end;
local function h()
	if v.currentTrack then
		pcall(function()
			v.currentTrack:Stop();
		end);
		v.currentTrack = nil;
	end;
	v.currentAnim = nil;
	v.currentName = nil;
end;
local function c(j)
	h();
	local r = x.Character;
	if not r then
		sendNotification("Emote", "Pas de personnage", true);
		return;
	end;
	local G = r:FindFirstChildOfClass("Humanoid");
	if not G then
		sendNotification("Emote", "Pas de Humanoid", true);
		return;
	end;
	local p = Instance.new("Animation");
	p.AnimationId = j.id;
	local a, H = pcall(function()
			local j = G:LoadAnimation(p);
			j.Priority = v.priority;
			j.Looped = v.loop;
			j:Play();
			return j;
		end);
	if a and H then
		v.currentTrack = H;
		v.currentAnim = p;
		v.currentName = j.name;
		pcall(function()
			H:AdjustSpeed(v.speed);
		end);
		killFeedPush("\240\159\146\131 " .. j.name, s.Accent);
	else
		sendNotification("Emote", "ID invalide : " .. j.id, true);
	end;
end;
local function N(...)
	print("[MENU-V73]", ...);
end;
local function jp(j, r)
	local G = Instance.new(j);
	for j, r in pairs(r or {}) do
		G[j] = r;
	end;
	return G;
end;
local function rp(j, r)
	return jp("UICorner", { CornerRadius = UDim.new(0, r or 8), Parent = j });
end;
local function Gp(j, r, G, p)
	return jp("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, r), ColorSequenceKeypoint.new(1, G) }), Rotation = p or 90, Parent = j });
end;
local function pp(j, r, G, p)
	return jp("UIStroke", {
		Color = r or s.Border,
		Thickness = G or 1,
		Transparency = p or 0,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = j,
	});
end;
local function ap(j, r, G, p)
	p = p or 8;
	local a = jp("Frame", { Size = UDim2.new(0, p + 2, 0, p + 2), BackgroundTransparency = 1, Parent = j });
	local H, x = (r == "right") and 45 or -45, (r == "right") and -45 or 45;
	local B = jp("Frame", {
			Size = UDim2.new(0, p, 0, 2),
			Position = UDim2.new(.5, -1, .5, -3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = G or s.TextMuted,
			BorderSizePixel = 0,
			Rotation = H,
			Parent = a,
		});
	rp(B, 1);
	local y = jp("Frame", {
			Size = UDim2.new(0, p, 0, 2),
			Position = UDim2.new(.5, -1, .5, 3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = G or s.TextMuted,
			BorderSizePixel = 0,
			Rotation = x,
			Parent = a,
		});
	rp(y, 1);
	return a, B, y;
end;
local function Hp(j, G)
	G = G or .45;
	local p = j.Size;
	j.Size = UDim2.new(0, p.X.Offset * .85, 0, p.Y.Offset * .85);
	j.BackgroundTransparency = 1;
	(r:Create(j, TweenInfo.new(G, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = p, BackgroundTransparency = 0 })):Play();
end;
local function xp(j, G, p)
	G = G or .32;
	local a = j.Size;
	(r:Create(j, TweenInfo.new(G, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Size = UDim2.new(0, a.X.Offset * .85, 0, a.Y.Offset * .85), BackgroundTransparency = 1 })):Play();
	for j, p in ipairs(j:GetDescendants()) do
		if p:IsA("TextLabel") or p:IsA("TextBox") then
			(r:Create(p, TweenInfo.new(G * .85), { TextTransparency = 1 })):Play();
		elseif p:IsA("TextButton") then
			(r:Create(p, TweenInfo.new(G * .85), { BackgroundTransparency = 1 })):Play();
		elseif p:IsA("Frame") and p.Name ~= "ParticleZone" then
			if p.BackgroundTransparency < 1 then
				(r:Create(p, TweenInfo.new(G * .85), { BackgroundTransparency = 1 })):Play();
			end;
		elseif p:IsA("ImageLabel") then
			(r:Create(p, TweenInfo.new(G * .85), { ImageTransparency = 1 })):Play();
		elseif p:IsA("UIStroke") then
			(r:Create(p, TweenInfo.new(G * .85), { Transparency = 1 })):Play();
		end;
	end;
	local H = j.Parent and j.Parent:FindFirstChild(j.Name .. "_ShadowHolder");
	if H then
		for j, p in ipairs(H:GetChildren()) do
			if p:IsA("Frame") then
				(r:Create(p, TweenInfo.new(G * .85), { BackgroundTransparency = 1 })):Play();
			end;
		end;
	end;
	task.delay(G + .05, function()
		if H and H.Parent then
			H:Destroy();
		end;
		if j and j.Parent then
			j:Destroy();
		end;
		if p then
			p();
		end;
	end);
end;
local function Bp(j, G)
	G = G or .5;
	local p = j.Size;
	j.Size = UDim2.new(0, p.X.Offset * .85, 0, p.Y.Offset * .85);
	j.BackgroundTransparency = 1;
	for j, p in ipairs(j:GetDescendants()) do
		if p:IsA("TextLabel") or p:IsA("TextBox") then
			p.TextTransparency = 1;
			(r:Create(p, TweenInfo.new(G), { TextTransparency = 0 })):Play();
		elseif p:IsA("TextButton") then
			p.BackgroundTransparency = 1;
		elseif p:IsA("ImageLabel") then
			p.ImageTransparency = 1;
			(r:Create(p, TweenInfo.new(G), { ImageTransparency = 0 })):Play();
		end;
	end;
	(r:Create(j, TweenInfo.new(G, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = p, BackgroundTransparency = 0 })):Play();
end;
local function yp(j, G, p)
	local a = x:FindFirstChild("PlayerGui");
	if not a then
		return;
	end;
	local H = a:FindFirstChild("MulbaNotif");
	if H then
		H:Destroy();
	end;
	local B = jp("ScreenGui", {
			Name = "MulbaNotif",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 1000,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Parent = a,
		});
	local y = jp("Frame", {
			Size = UDim2.new(0, 320, 0, 80),
			Position = UDim2.new(1, 20, 0, 100),
			BackgroundColor3 = s.BgTop,
			BackgroundTransparency = .05,
			BorderSizePixel = 0,
			ZIndex = 1000,
			Parent = B,
		});
	rp(y, 14);
	Gp(y, s.BgTop, s.BgBottom, 90);
	jp("UIStroke", {
		Color = p and Color3.fromRGB(255, 100, 100) or s.Accent,
		Thickness = 2,
		Transparency = .2,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = y,
	});
	jp("TextLabel", {
		Size = UDim2.new(1, -60, 0, 20),
		Position = UDim2.new(0, 20, 0, 14),
		BackgroundTransparency = 1,
		Text = j,
		TextColor3 = p and Color3.fromRGB(255, 120, 120) or s.Accent,
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 1001,
		Parent = y,
	});
	jp("TextLabel", {
		Size = UDim2.new(1, -60, 0, 30),
		Position = UDim2.new(0, 20, 0, 36),
		BackgroundTransparency = 1,
		Text = G,
		TextColor3 = s.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		ZIndex = 1001,
		Parent = y,
	});
	(r:Create(y, TweenInfo.new(.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.new(1, -340, 0, 100) })):Play();
	task.delay(5, function()
		if not y.Parent then
			return;
		end;
		(r:Create(y, TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(1, 20, 0, 100), BackgroundTransparency = 1 })):Play();
		for j, G in ipairs(y:GetDescendants()) do
			if G:IsA("TextLabel") then
				(r:Create(G, TweenInfo.new(.4), { TextTransparency = 1 })):Play();
			end;
		end;
		task.wait(.5);
		B:Destroy();
	end);
end;
local lp = nil;
local qp = nil;
local function mp()
	local j = x:FindFirstChild("PlayerGui");
	if not j then
		return;
	end;
	if lp and lp.Parent then
		return;
	end;
	lp = jp("ScreenGui", {
			Name = "MulbaKillFeed",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 950,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Parent = j,
		});
	local r = jp("Frame", {
			Size = UDim2.new(0, 340, 0, 500),
			Position = UDim2.new(1, -360, 1, -520),
			BackgroundTransparency = 1,
			ZIndex = 950,
			Parent = lp,
		});
	qp = jp("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ZIndex = 951,
			Parent = r,
		});
	jp("UIListLayout", {
		Padding = UDim.new(0, 6),
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Bottom,
		Parent = qp,
	});
end;
local function sp(j, G)
	if not A.NotifKillFeed then
		return;
	end;
	mp();
	if not qp then
		return;
	end;
	local p = jp("Frame", {
			Size = UDim2.new(1, 0, 0, 42),
			BackgroundColor3 = s.Surface,
			BackgroundTransparency = .15,
			BorderSizePixel = 0,
			ZIndex = 952,
			Parent = qp,
		});
	rp(p, 10);
	jp("UIStroke", {
		Color = s.Border,
		Thickness = 1,
		Transparency = .5,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = p,
	});
	local a = jp("Frame", {
			Size = UDim2.new(0, 3, 0, 26),
			Position = UDim2.new(0, 10, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = G or Color3.fromRGB(255, 80, 80),
			BorderSizePixel = 0,
			ZIndex = 953,
			Parent = p,
		});
	rp(a, 2);
	jp("TextLabel", {
		Size = UDim2.new(1, -30, 1, 0),
		Position = UDim2.new(0, 22, 0, 0),
		BackgroundTransparency = 1,
		Text = j,
		TextColor3 = G or s.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 953,
		Parent = p,
	});
	task.delay(6, function()
		if not p.Parent then
			return;
		end;
		(r:Create(p, TweenInfo.new(.4), { BackgroundTransparency = 1 })):Play();
		for j, G in ipairs(p:GetDescendants()) do
			if G:IsA("TextLabel") then
				(r:Create(G, TweenInfo.new(.4), { TextTransparency = 1 })):Play();
			end;
			if G:IsA("Frame") then
				(r:Create(G, TweenInfo.new(.4), { BackgroundTransparency = 1 })):Play();
			end;
		end;
		task.wait(.5);
		p:Destroy();
	end);
end;
local function Cp(j)
	if not j then
		return "Innocent";
	end;
	if j:FindFirstChild("Role") then
		local r, G = pcall(function()
				return tostring(j.Role.Value);
			end);
		if r and (G and G ~= "") then
			return G;
		end;
	end;
	local r = j.Character;
	local G = j:FindFirstChild("Backpack");
	if r then
		if r:FindFirstChild("Knife") then
			return "Murderer";
		end;
		if r:FindFirstChild("Gun") then
			return "Sheriff";
		end;
	end;
	if G then
		if G:FindFirstChild("Knife") then
			return "Murderer";
		end;
		if G:FindFirstChild("Gun") then
			return "Sheriff";
		end;
	end;
	return "Innocent";
end;
local function Dp()
	for j, r in ipairs(j:GetPlayers()) do
		if r == x then
			continue;
		end;
		if Cp(r) == "Murderer" then
			return r;
		end;
	end;
	return nil;
end;
local function Rp()
	for j, r in ipairs(j:GetPlayers()) do
		if r == x then
			continue;
		end;
		if Cp(r) == "Sheriff" then
			return r;
		end;
	end;
	return nil;
end;
local function dp(j)
	if j == "Murderer" then
		return L.Murderer;
	end;
	if j == "Sheriff" then
		return L.Sheriff;
	end;
	return L.Innocent;
end;
local function op(j)
	if j == "Murderer" then
		return A.EspShowMurder;
	end;
	if j == "Sheriff" then
		return A.EspShowSheriff;
	end;
	return A.EspShowInnocent;
end;
task.spawn(function()
	while true do
		task.wait(.5);
		if A.NotifKillFeed then
			for j, r in ipairs(j:GetPlayers()) do
				if r == x then
					continue;
				end;
				local G = Cp(r);
				local p = Y.knownRoles[r];
				if G ~= p then
					Y.knownRoles[r] = G;
					if G == "Murderer" then
						sp("\240\159\148\170 " .. (r.Name .. " est Murderer"), Color3.fromRGB(255, 80, 80));
					elseif G == "Sheriff" then
						sp("\240\159\148\171 " .. (r.Name .. " est Sheriff"), Color3.fromRGB(80, 140, 255));
					elseif p == "Murderer" or p == "Sheriff" then
						sp("\240\159\146\128 " .. (r.Name .. (" n\'est plus " .. ((p or "?")))), Color3.fromRGB(200, 200, 200));
					end;
				end;
			end;
			for j, r in ipairs(workspace:GetChildren()) do
				if r:IsA("Tool") and (r.Name == "Gun" and r:FindFirstChild("Handle")) then
					if not Y.seenGroundGuns[r] then
						Y.seenGroundGuns[r] = true;
						sp("\240\159\148\171 Gun au sol !", Color3.fromRGB(255, 180, 80));
					end;
				end;
			end;
		end;
	end;
end);
local function Op(j)
	pcall(function()
		(game:GetService("StarterGui")):SetCore("ChatMakeSystemMessage", { Text = "[Mulba] " .. j, Color = Color3.fromRGB(115, 155, 240), Font = Enum.Font.GothamBold });
	end);
end;
local function wp()
	local r, G = {}, {};
	for j, p in ipairs(j:GetPlayers()) do
		if p == x then
			continue;
		end;
		local a = Cp(p);
		if a == "Murderer" then
			table.insert(r, p.Name);
		end;
		if a == "Sheriff" then
			table.insert(G, p.Name);
		end;
	end;
	local p = #r > 0 and table.concat(r, ", ") or "?";
	local a = #G > 0 and table.concat(G, ", ") or "?";
	Op("Murder : " .. (p .. (" | Sheriff : " .. a)));
end;
task.spawn(function()
	while true do
		task.wait(1);
		if A.NotifChatMsg then
			local r = false;
			for j, G in ipairs(j:GetPlayers()) do
				if G == x then
					continue;
				end;
				local p = Cp(G);
				if p ~= I.lastRoles[G] then
					I.lastRoles[G] = p;
					r = true;
				end;
			end;
			if r then
				wp();
			end;
		end;
	end;
end);
local function tp()
	local j = x.Character;
	if not j then
		return;
	end;
	local r = j:FindFirstChildOfClass("Humanoid");
	if not r then
		return;
	end;
	local G = Instance.new("Animation");
	G.AnimationId = "rbxassetid://70434879073702";
	pcall(function()
		local j = r:LoadAnimation(G);
		j.Priority = Enum.AnimationPriority.Action4;
		j.Looped = true;
		j:Play();
		z.track = j;
	end);
end;
local function Ap()
	if z.track then
		pcall(function()
			z.track:Stop();
		end);
		z.track = nil;
	end;
end;
local function Lp()
	if not b.FlyEnabled and not g.nowe then
		return;
	end;
	b.FlyEnabled = false;
	g.nowe = false;
	g.tpwalking = false;
	if g.conn then
		g.conn:Disconnect();
		g.conn = nil;
	end;
	if g.bg then
		pcall(function()
			g.bg:Destroy();
		end);
		g.bg = nil;
	end;
	if g.bv then
		pcall(function()
			g.bv:Destroy();
		end);
		g.bv = nil;
	end;
	g.ctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		};
	g.lastctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		};
	g.speed = 0;
	Ap();
	local j = x.Character;
	if not j then
		return;
	end;
	local r = j:FindFirstChildOfClass("Humanoid");
	if r then
		pcall(function()
			r.PlatformStand = false;
			r:SetStateEnabled(Enum.HumanoidStateType.Climbing, true);
			r:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true);
			r:SetStateEnabled(Enum.HumanoidStateType.Flying, true);
			r:SetStateEnabled(Enum.HumanoidStateType.Freefall, true);
			r:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true);
			r:SetStateEnabled(Enum.HumanoidStateType.Jumping, true);
			r:SetStateEnabled(Enum.HumanoidStateType.Landed, true);
			r:SetStateEnabled(Enum.HumanoidStateType.Physics, true);
			r:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true);
			r:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true);
			r:SetStateEnabled(Enum.HumanoidStateType.Running, true);
			r:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true);
			r:SetStateEnabled(Enum.HumanoidStateType.Seated, true);
			r:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true);
			r:SetStateEnabled(Enum.HumanoidStateType.Swimming, true);
		end);
	end;
	local G = j:FindFirstChild("Animate");
	if G then
		G.Disabled = g.savedAnimDisabled or false;
	end;
end;
local function ep()
	local j = x.Character;
	if not j then
		return;
	end;
	local r = j:FindFirstChildOfClass("Humanoid");
	if not r then
		return;
	end;
	b.FlyEnabled = true;
	g.nowe = true;
	g.tpwalking = true;
	g.savedAnimDisabled = j:FindFirstChild("Animate") and j.Animate.Disabled or false;
	local a = math.clamp(math.floor(b.FlySpeed / 10), 1, 50);
	for j = 1, a, 1 do
		task.spawn(function()
			local j = G.Heartbeat;
			while g.tpwalking and j:Wait() do
				local j = x.Character;
				local r = j and j:FindFirstChildOfClass("Humanoid");
				if not ((j and (r and r.Parent))) then
					break;
				end;
				if r.MoveDirection.Magnitude > 0 then
					pcall(function()
						j:TranslateBy(r.MoveDirection);
					end);
				end;
			end;
		end);
	end;
	local H = j:FindFirstChild("Animate");
	if H then
		H.Disabled = true;
	end;
	for j, r in next, r:GetPlayingAnimationTracks() do
		pcall(function()
			r:AdjustSpeed(0);
		end);
	end;
	pcall(function()
		r:SetStateEnabled(Enum.HumanoidStateType.Climbing, false);
		r:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false);
		r:SetStateEnabled(Enum.HumanoidStateType.Flying, false);
		r:SetStateEnabled(Enum.HumanoidStateType.Freefall, false);
		r:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false);
		r:SetStateEnabled(Enum.HumanoidStateType.Jumping, false);
		r:SetStateEnabled(Enum.HumanoidStateType.Landed, false);
		r:SetStateEnabled(Enum.HumanoidStateType.Physics, false);
		r:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false);
		r:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false);
		r:SetStateEnabled(Enum.HumanoidStateType.Running, false);
		r:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false);
		r:SetStateEnabled(Enum.HumanoidStateType.Seated, false);
		r:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false);
		r:SetStateEnabled(Enum.HumanoidStateType.Swimming, false);
		r:ChangeState(Enum.HumanoidStateType.Swimming);
	end);
	local B = (r.RigType == Enum.HumanoidRigType.R6);
	local y = B and j:FindFirstChild("Torso") or j:FindFirstChild("UpperTorso");
	if not y then
		y = j:FindFirstChild("HumanoidRootPart");
	end;
	if not y then
		Lp();
		return;
	end;
	local l = Instance.new("BodyGyro");
	l.P = 90000;
	l.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000);
	l.CFrame = y.CFrame;
	l.Parent = y;
	g.bg = l;
	local q = Instance.new("BodyVelocity");
	q.Velocity = Vector3.new(0, .1, 0);
	q.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000);
	q.Parent = y;
	g.bv = q;
	pcall(function()
		r.PlatformStand = true;
	end);
	task.wait(.15);
	tp();
	g.conn = G.RenderStepped:Connect(function()
			if not g.nowe then
				return;
			end;
			local j = x.Character;
			if not j then
				return;
			end;
			local r = j:FindFirstChildOfClass("Humanoid");
			if not r or r.Health <= 0 then
				return;
			end;
			local G = workspace.CurrentCamera;
			if not G then
				return;
			end;
			local a = g.ctrl;
			a.f = p:IsKeyDown(Enum.KeyCode.W) and 1 or 0;
			a.b = p:IsKeyDown(Enum.KeyCode.S) and 1 or 0;
			a.l = p:IsKeyDown(Enum.KeyCode.A) and 1 or 0;
			a.r = p:IsKeyDown(Enum.KeyCode.D) and 1 or 0;
			local H = g.maxspeed;
			if a.l + a.r ~= 0 or a.f + a.b ~= 0 then
				g.speed = (g.speed + .5) + (g.speed / H);
				if g.speed > H then
					g.speed = H;
				end;
			elseif not ((a.l + a.r ~= 0 or a.f + a.b ~= 0)) and g.speed ~= 0 then
				g.speed = g.speed - 1;
				if g.speed < 0 then
					g.speed = 0;
				end;
			end;
			if g.bv then
				if (a.l + a.r) ~= 0 or (a.f + a.b) ~= 0 then
					g.bv.Velocity = (((G.CFrame.LookVector * ((a.f + a.b))) + (((G.CFrame * (CFrame.new(a.l + a.r, ((a.f + a.b)) * .2, 0)).p) - G.CFrame.p)))) * g.speed;
					g.lastctrl = {
							f = a.f,
							b = a.b,
							l = a.l,
							r = a.r,
						};
				elseif (a.l + a.r) == 0 and ((a.f + a.b) == 0 and g.speed ~= 0) then
					g.bv.Velocity = (((G.CFrame.LookVector * ((g.lastctrl.f + g.lastctrl.b))) + (((G.CFrame * (CFrame.new(g.lastctrl.l + g.lastctrl.r, ((g.lastctrl.f + g.lastctrl.b)) * .2, 0)).p) - G.CFrame.p)))) * g.speed;
				else
					g.bv.Velocity = Vector3.new(0, 0, 0);
				end;
			end;
			if g.bg then
				g.bg.CFrame = G.CFrame * CFrame.Angles(-math.rad(((((a.f + a.b)) * 50) * g.speed) / H), 0, 0);
			end;
		end);
end;
local function bp()
	if b.FlyEnabled or g.nowe then
		Lp();
	else
		ep();
	end;
end;
local function fp()
	if g.bindConn then
		g.bindConn:Disconnect();
		g.bindConn = nil;
	end;
	if not b.FlyBind then
		return;
	end;
	g.bindConn = p.InputBegan:Connect(function(j, r)
			if r then
				return;
			end;
			if j.UserInputType ~= Enum.UserInputType.Keyboard then
				return;
			end;
			if j.KeyCode == b.FlyBind then
				bp();
			end;
		end);
end;
local function zp(j)
	b.FlyBind = j;
	fp();
end;
local function gp()
	b.SpinEnabled = false;
	if T.av then
		T.av:Destroy();
		T.av = nil;
	end;
end;
local function Tp()
	local j = x.Character;
	if not j then
		return;
	end;
	local r = j:FindFirstChild("HumanoidRootPart");
	if not r then
		return;
	end;
	b.SpinEnabled = true;
	local G = Instance.new("BodyAngularVelocity");
	G.AngularVelocity = Vector3.new(0, b.SpinSpeed, 0);
	G.MaxTorque = Vector3.new(0, 9000000000, 0);
	G.P = 1250;
	G.Parent = r;
	T.av = G;
end;
local function Kp()
	if b.SpinEnabled then
		gp();
	else
		Tp();
	end;
end;
local function Ep(j)
	b.SpinSpeed = j;
	if T.av then
		T.av.AngularVelocity = Vector3.new(0, j, 0);
	end;
end;
local function np()
	b.JerkEnabled = false;
	if K.conn then
		K.conn:Disconnect();
		K.conn = nil;
	end;
	local j = x.Character;
	local r = j and j:FindFirstChild("HumanoidRootPart");
	if r then
		pcall(function()
			r.AssemblyLinearVelocity = Vector3.zero;
			r.Velocity = Vector3.zero;
		end);
	end;
end;
local function Wp()
	local j = x.Character;
	if not j then
		return;
	end;
	local r = j:FindFirstChild("HumanoidRootPart");
	if not r then
		return;
	end;
	b.JerkEnabled = true;
	K.conn = G.Heartbeat:Connect(function()
			if not b.JerkEnabled then
				return;
			end;
			local j = x.Character;
			local r = j and j:FindFirstChild("HumanoidRootPart");
			if not r then
				return;
			end;
			local G = b.JerkIntensity;
			local p = Vector3.new((((math.random() - .5)) * G) * 8, (((math.random() - .5)) * G) * 8, (((math.random() - .5)) * G) * 8);
			pcall(function()
				r.AssemblyLinearVelocity = r.AssemblyLinearVelocity + p;
				r.Velocity = r.Velocity + p;
			end);
		end);
end;
local function Yp()
	if b.JerkEnabled then
		np();
	else
		Wp();
	end;
end;
local function Ip(j)
	b.JerkIntensity = j;
end;
task.spawn(function()
	while true do
		task.wait(.15);
		if b.NoclipEnabled and not b.FlyEnabled then
			local j = x.Character;
			if j then
				for j, r in ipairs(j:GetDescendants()) do
					if r:IsA("BasePart") and r.CanCollide then
						r.CanCollide = false;
					end;
				end;
			end;
		end;
	end;
end);
local function ip()
	b.NoclipEnabled = not b.NoclipEnabled;
	local j = x.Character;
	if j and not b.NoclipEnabled then
		for j, r in ipairs(j:GetDescendants()) do
			if r:IsA("BasePart") then
				r.CanCollide = true;
			end;
		end;
	end;
end;
local function kp(j)
	b.WalkSpeed = j;
	local r = x.Character;
	local G = r and r:FindFirstChildOfClass("Humanoid");
	if G then
		G.WalkSpeed = j;
	end;
end;
local function Jp(j)
	b.JumpPower = j;
	local r = x.Character;
	local G = r and r:FindFirstChildOfClass("Humanoid");
	if G then
		G.UseJumpPower = true;
		G.JumpPower = j;
	end;
end;
local function up(j)
	b.Gravity = j;
	workspace.Gravity = j;
end;
local Up = nil;
local function Sp()
	b.InfiniteJump = not b.InfiniteJump;
	if b.InfiniteJump then
		if Up then
			Up:Disconnect();
		end;
		Up = p.JumpRequest:Connect(function()
				local j = x.Character;
				local r = j and j:FindFirstChildOfClass("Humanoid");
				if r then
					r:ChangeState(Enum.HumanoidStateType.Jumping);
				end;
			end);
	else
		if Up then
			Up:Disconnect();
			Up = nil;
		end;
	end;
end;
local Zp = nil;
local function Vp()
	b.AntiAFK = not b.AntiAFK;
	if b.AntiAFK then
		if Zp then
			Zp:Disconnect();
		end;
		Zp = x.Idled:Connect(function()
				local j = game:GetService("VirtualUser");
				j:CaptureController();
				j:ClickButton2(Vector2.new());
			end);
	else
		if Zp then
			Zp:Disconnect();
			Zp = nil;
		end;
	end;
end;
local Fp = {};
local function Xp()
	b.Fullbright = not b.Fullbright;
	if b.Fullbright then
		Fp.Ambient = a.Ambient;
		Fp.OutdoorAmbient = a.OutdoorAmbient;
		Fp.Brightness = a.Brightness;
		Fp.ClockTime = a.ClockTime;
		a.Ambient = Color3.fromRGB(255, 255, 255);
		a.OutdoorAmbient = Color3.fromRGB(255, 255, 255);
		a.Brightness = 3;
		a.ClockTime = 14;
		local j = a:FindFirstChild("MulbaFullbright");
		if not j then
			j = Instance.new("ColorCorrectionEffect");
			j.Name = "MulbaFullbright";
			j.Parent = a;
		end;
	else
		if Fp.Ambient then
			a.Ambient = Fp.Ambient;
		end;
		if Fp.OutdoorAmbient then
			a.OutdoorAmbient = Fp.OutdoorAmbient;
		end;
		if Fp.Brightness then
			a.Brightness = Fp.Brightness;
		end;
		if Fp.ClockTime then
			a.ClockTime = Fp.ClockTime;
		end;
		local j = a:FindFirstChild("MulbaFullbright");
		if j then
			j:Destroy();
		end;
	end;
end;
local function Pp()
	b.AntiFling = not b.AntiFling;
end;
task.spawn(function()
	while true do
		task.wait(.1);
		if b.AntiFling then
			local j = x.Character;
			local r = j and j:FindFirstChild("HumanoidRootPart");
			if r then
				for j, r in ipairs(r:GetChildren()) do
					if r:IsA("BodyVelocity") then
						if r.Velocity.Magnitude > 500 then
							r.Velocity = r.Velocity.Unit * 500;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local function vp()
	local j = x.Character;
	local r = j and j:FindFirstChildOfClass("Humanoid");
	if r then
		r.Health = 0;
	end;
end;
local function Mp()
	local j = x.Character;
	local r = j and j:FindFirstChild("HumanoidRootPart");
	if not r then
		return;
	end;
	for j, G in ipairs(workspace:GetDescendants()) do
		if G:IsA("SpawnLocation") then
			pcall(function()
				r.CFrame = G.CFrame + Vector3.new(0, 3, 0);
			end);
			return;
		end;
	end;
end;
local function Qp(j)
	local r = x.Character;
	local G = r and r:FindFirstChild("HumanoidRootPart");
	if not G then
		return;
	end;
	i.savedCFrame = G.CFrame;
	if not j then
		yp("MAP", "Position sauvegard\195\169e", false);
	end;
end;
local function hp()
	if not i.savedCFrame then
		yp("MAP", "Aucune position sauvegard\195\169e", true);
		return;
	end;
	local j = x.Character;
	local r = j and j:FindFirstChild("HumanoidRootPart");
	if not r then
		return;
	end;
	pcall(function()
		r.CFrame = i.savedCFrame + Vector3.new(0, 3, 0);
	end);
	yp("MAP", "TP \195\160 la position sauvegard\195\169e", false);
end;
local function cp()
	local j = {};
	for r, G in ipairs(workspace:GetDescendants()) do
		if G:IsA("BasePart") then
			local r = G.Name;
			if r == "Coin" or r:find("Coin") or r:find("coin") then
				if G.Transparency < 1 then
					table.insert(j, G);
				end;
			end;
		end;
	end;
	return j;
end;
local function Np()
	local j = x.Character;
	return j and j:FindFirstChild("HumanoidRootPart");
end;
local function jW(j, r)
	local G = Np();
	if not G then
		return;
	end;
	r = r or J.FlySpeed;
	local p = G.Position;
	local a = j - p;
	local H = a.Magnitude;
	if H < 1 then
		return;
	end;
	local x = 5;
	local B = math.max(1, math.floor(H / x));
	local y = math.max(.015, ((H / r)) / B);
	for j = 1, B, 1 do
		if not k.running then
			return;
		end;
		local r = j / B;
		local H = p + a * r;
		pcall(function()
			G.CFrame = CFrame.new(H);
			G.AssemblyLinearVelocity = Vector3.zero;
			G.Velocity = Vector3.zero;
		end);
		task.wait(y);
	end;
end;
local function rW(j, r, G)
	local p = Np();
	if not p then
		return;
	end;
	local a = ((G or p.Position.Y)) - J.UnderMapDepth;
	local H = Vector3.new(j or p.Position.X, a, r or p.Position.Z);
	jW(H, J.FlySpeed * 1.5);
end;
local function GW()
	local r = Np();
	if not r then
		return false;
	end;
	for j, G in ipairs(j:GetPlayers()) do
		if G == x then
			continue;
		end;
		if Cp(G) == "Murderer" then
			local j = G.Character and G.Character:FindFirstChild("HumanoidRootPart");
			if j then
				local G = ((j.Position - r.Position)).Magnitude;
				if G <= J.MurderDistance then
					return true;
				end;
			end;
		end;
	end;
	return false;
end;
local function pW()
	if k.running then
		return;
	end;
	k.running = true;
	k.coinsCollected = 0;
	k.startTime = tick();
	task.spawn(function()
		while k.running do
			local j = x.Character;
			local r = j and j:FindFirstChild("HumanoidRootPart");
			if not r then
				task.wait(.3);
				continue;
			end;
			if J.IgnoreIfMurderNear and GW() then
				if J.GoUnderMap then
					rW(r.Position.X, r.Position.Z, r.Position.Y);
				end;
				task.wait(1);
				continue;
			end;
			local G = cp();
			if #G == 0 then
				if J.GoUnderMap then
					rW(r.Position.X, r.Position.Z, r.Position.Y);
				end;
				task.wait(1.5);
				continue;
			end;
			local p, a = nil, math.huge;
			for j, G in ipairs(G) do
				if G and G.Parent then
					local j = ((G.Position - r.Position)).Magnitude;
					if j < a and j <= J.CollectRadius then
						a = j;
						p = G;
					end;
				end;
			end;
			if not p then
				if J.GoUnderMap then
					rW(r.Position.X, r.Position.Z, r.Position.Y);
				end;
				task.wait(1);
				continue;
			end;
			local H = p.Position + Vector3.new(0, J.CollectDistance, 0);
			if J.TpDirect then
				pcall(function()
					r.CFrame = CFrame.new(H);
					r.AssemblyLinearVelocity = Vector3.zero;
					r.Velocity = Vector3.zero;
				end);
				task.wait(.15);
			else
				jW(H, J.FlySpeed);
				task.wait(.1);
			end;
			k.coinsCollected = k.coinsCollected + 1;
			if J.GoUnderMap then
				rW(p.Position.X, p.Position.Z, p.Position.Y);
			end;
			task.wait(J.AntiKickDelay);
		end;
	end);
end;
local function aW()
	k.running = false;
	local j = x.Character;
	local r = j and j:FindFirstChildOfClass("Humanoid");
	if r then
		r.WalkSpeed = b.WalkSpeed;
	end;
end;
local function HW()
	if k.running then
		aW();
	else
		pW();
	end;
end;
local xW = { running = false, conn = nil };
local function BW()
	if xW.running then
		return;
	end;
	xW.running = true;
	xW.conn = G.Heartbeat:Connect(function()
			if not xW.running then
				return;
			end;
			local r = x.Character;
			if not r then
				return;
			end;
			local G = r:FindFirstChild("HumanoidRootPart");
			if not G then
				return;
			end;
			local p = G.CFrame;
			local a = 4;
			local H = p.Position + (p.LookVector * a);
			for j, r in ipairs(j:GetPlayers()) do
				if r ~= x and r.Character then
					local j = r.Character:FindFirstChild("HumanoidRootPart");
					if j then
						pcall(function()
							j.CFrame = CFrame.new(H, H + p.LookVector);
							j.AssemblyLinearVelocity = Vector3.zero;
							j.Velocity = Vector3.zero;
						end);
					end;
				end;
			end;
		end);
end;
local function yW()
	xW.running = false;
	if xW.conn then
		xW.conn:Disconnect();
		xW.conn = nil;
	end;
end;
local function lW()
	if xW.running then
		yW();
	else
		BW();
	end;
end;
local qW = { conn = nil, weld = nil, target = nil };
local function mW()
	if qW.conn then
		qW.conn:Disconnect();
		qW.conn = nil;
	end;
	if qW.weld and qW.weld.Parent then
		qW.weld:Destroy();
	end;
	qW.weld = nil;
	qW.target = nil;
	local j = x.Character;
	local r = j and j:FindFirstChildOfClass("Humanoid");
	if r then
		pcall(function()
			r.PlatformStand = false;
			r.Sit = false;
		end);
	end;
end;
local function sW()
	local j = t.TrollSelected;
	if not j or not j.Character then
		yp("Attach", "Aucune cible valide", true);
		return;
	end;
	local r = j.Character:FindFirstChild("Head");
	local p = x.Character;
	local a = p and p:FindFirstChild("HumanoidRootPart");
	if not r or not a then
		yp("Attach", "Impossible de s\'accrocher", true);
		return;
	end;
	local H = r:FindFirstChild("MulbaAttachPoint");
	if not H then
		H = Instance.new("Attachment");
		H.Name = "MulbaAttachPoint";
		H.CFrame = CFrame.new(0, .7, 0);
		H.Parent = r;
	end;
	local B = Instance.new("WeldConstraint");
	B.Part0 = a;
	B.Part1 = r;
	B.Parent = a;
	qW.weld = B;
	qW.target = j;
	a.CFrame = r.CFrame * CFrame.new(0, 2, 0);
	local y = p:FindFirstChildOfClass("Humanoid");
	if y then
		pcall(function()
			y.PlatformStand = true;
		end);
	end;
	qW.conn = G.Heartbeat:Connect(function()
			local j = qW.target;
			if not j or not j.Character then
				mW();
				return;
			end;
			local r = j.Character:FindFirstChild("Head");
			if not r then
				mW();
				return;
			end;
			local G = x.Character;
			local p = G and G:FindFirstChild("HumanoidRootPart");
			if not p then
				return;
			end;
			if not qW.weld or not qW.weld.Parent then
				local j = Instance.new("WeldConstraint");
				j.Part0 = p;
				j.Part1 = r;
				j.Parent = p;
				qW.weld = j;
			end;
			pcall(function()
				p.CFrame = r.CFrame * CFrame.new(0, 2, 0);
				p.AssemblyLinearVelocity = Vector3.zero;
				p.Velocity = Vector3.zero;
			end);
		end);
	yp("Attach", "Accroch\195\169 \195\160 " .. j.Name, false);
end;
local function CW()
	if qW.conn then
		mW();
	else
		sW();
	end;
end;
local function DW(j, r)
	if not j then
		return;
	end;
	if n[r] and n[r].Parent then
		return;
	end;
	local G = jp("Highlight", {
			FillColor = Color3.fromRGB(255, 255, 255),
			FillTransparency = .85,
			OutlineColor = Color3.fromRGB(255, 255, 255),
			OutlineTransparency = 0,
			DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
			Adornee = j,
			Parent = j,
		});
	n[r] = G;
end;
local function RW(j)
	local r = n[j];
	if r and r.Parent then
		r:Destroy();
	end;
	n[j] = nil;
end;
local function dW()
	if A.XRayEnabled then
		for j, r in ipairs(j:GetPlayers()) do
			if r.Character then
				DW(r.Character, r);
			end;
		end;
	else
		for j in pairs(n) do
			RW(j);
		end;
	end;
end;
local function oW(j)
	if j == x then
		return;
	end;
	if E[j] then
		local r = pcall(function()
				E[j].Box.Visible = E[j].Box.Visible;
			end);
		if r then
			return;
		end;
		removeESP(j);
	end;
	local r = Drawing.new("Square");
	r.Thickness = e.BoxThickness;
	r.Filled = false;
	r.Visible = false;
	local G = Drawing.new("Text");
	G.Center = true;
	G.Outline = true;
	G.Size = 16;
	G.Visible = false;
	local p = Drawing.new("Text");
	p.Center = true;
	p.Outline = true;
	p.Size = 13;
	p.Visible = false;
	local a = Drawing.new("Line");
	a.Thickness = 1;
	a.Visible = false;
	E[j] = {
			Box = r,
			Text = G,
			DistanceText = p,
			Tracer = a,
		};
end;
local function OW(j)
	local r = E[j];
	if r then
		for j, r in pairs(r) do
			pcall(function()
				r:Remove();
			end);
		end;
		E[j] = nil;
	end;
end;
local function wW(j)
	if not j or not j:IsA("BasePart") then
		return false;
	end;
	local r = j.Name;
	if r == "Coin" or r:find("Coin") or r:find("coin") then
		return j.Transparency < 1;
	end;
	return false;
end;
local function tW(j)
	if W[j] then
		return;
	end;
	local r = Drawing.new("Square");
	r.Thickness = 1.5;
	r.Filled = false;
	r.Visible = false;
	r.Color = Color3.fromRGB(255, 215, 0);
	local G = Drawing.new("Text");
	G.Center = true;
	G.Outline = true;
	G.Size = 12;
	G.Color = Color3.fromRGB(255, 215, 0);
	G.Visible = false;
	W[j] = { Box = r, Text = G };
end;
local function AW(j)
	local r = W[j];
	if r then
		pcall(function()
			r.Box:Remove();
		end);
		pcall(function()
			r.Text:Remove();
		end);
		W[j] = nil;
	end;
end;
local function LW()
	for j in pairs(W) do
		AW(j);
	end;
end;
task.spawn(function()
	while true do
		task.wait(1);
		if A.EspShowCoins then
			for j, r in ipairs(workspace:GetDescendants()) do
				if wW(r) and not W[r] then
					tW(r);
				end;
			end;
			for j in pairs(W) do
				if not j or not j.Parent or not wW(j) then
					AW(j);
				end;
			end;
		elseif next(W) ~= nil then
			LW();
		end;
	end;
end);
G.RenderStepped:Connect(function()
	if not A.EspShowCoins then
		for j, r in pairs(W) do
			pcall(function()
				r.Box.Visible = false;
			end);
			pcall(function()
				r.Text.Visible = false;
			end);
		end;
		return;
	end;
	local j = workspace.CurrentCamera;
	if not j then
		return;
	end;
	for r, G in pairs(W) do
		local p = pcall(function()
				return G.Box.Visible;
			end);
		if not p or not r or not r.Parent then
			AW(r);
			continue;
		end;
		local a, H = j:WorldToViewportPoint(r.Position);
		if H then
			local p = 14;
			local H = ((j.CFrame.Position - r.Position)).Magnitude;
			local x = math.clamp(200 / H, .6, 2.5);
			local B = ((p * x)) / 2;
			pcall(function()
				G.Box.Size = Vector2.new(p * x, p * x);
				G.Box.Position = Vector2.new(a.X - B, a.Y - B);
				G.Box.Visible = true;
				G.Text.Text = "\240\159\146\176";
				G.Text.Position = Vector2.new(a.X, (a.Y - B) - 12);
				G.Text.Visible = true;
			end);
		else
			pcall(function()
				G.Box.Visible = false;
			end);
			pcall(function()
				G.Text.Visible = false;
			end);
		end;
	end;
end);
local function eW(j)
	local r, G = y:WorldToViewportPoint(j);
	return Vector2.new(r.X, r.Y), G;
end;
G.RenderStepped:Connect(function()
	if not A.EspEnabled then
		for j, r in pairs(E) do
			pcall(function()
				r.Box.Visible = false;
				r.Text.Visible = false;
				r.DistanceText.Visible = false;
				r.Tracer.Visible = false;
			end);
		end;
		return;
	end;
	local j = workspace.CurrentCamera;
	if j then
		y = j;
	end;
	local r = x.Character;
	local G = r and r:FindFirstChild("HumanoidRootPart");
	local p = G and G.Position;
	for j, r in pairs(E) do
		local G = pcall(function()
				return r.Box.Visible;
			end);
		if not G then
			E[j] = nil;
			continue;
		end;
		local a = j.Character;
		local H = a and a:FindFirstChild("HumanoidRootPart");
		local x = a and a:FindFirstChild("Head");
		local B = a and a:FindFirstChildOfClass("Humanoid");
		local l = function()
				pcall(function()
					r.Box.Visible = false;
					r.Text.Visible = false;
					r.DistanceText.Visible = false;
					r.Tracer.Visible = false;
				end);
			end;
		if not ((H and (x and (B and B.Health > 0)))) then
			l();
			continue;
		end;
		local q = Cp(j);
		if not op(q) then
			l();
			continue;
		end;
		local m, s = eW(x.Position + Vector3.new(0, .5, 0));
		local C, D = eW(H.Position - Vector3.new(0, 3, 0));
		if s or D then
			local G = math.abs(m.Y - C.Y);
			local a = G / 2;
			local x = dp(q);
			local B = ((tick() * .5)) % 1;
			local l = Color3.fromHSV(B, 1, 1);
			if e.BoxEnabled then
				pcall(function()
					r.Box.Size = Vector2.new(a, G);
					r.Box.Position = Vector2.new(m.X - a / 2, m.Y);
					r.Box.Color = l;
					r.Box.Thickness = 2;
					r.Box.Visible = true;
				end);
			else
				pcall(function()
					r.Box.Visible = false;
				end);
			end;
			pcall(function()
				r.Text.Text = j.DisplayName .. (" [" .. (q .. "]"));
				r.Text.Position = Vector2.new(m.X, m.Y - 18);
				r.Text.Color = x;
				r.Text.Visible = true;
			end);
			if e.DistanceEnabled and p then
				pcall(function()
					local j = ((H.Position - p)).Magnitude;
					r.DistanceText.Text = string.format("%.1f m", j * .28);
					r.DistanceText.Position = Vector2.new(m.X, C.Y + 2);
					r.DistanceText.Color = x;
					r.DistanceText.Visible = true;
				end);
			else
				pcall(function()
					r.DistanceText.Visible = false;
				end);
			end;
			if e.TracerEnabled then
				pcall(function()
					r.Tracer.From = Vector2.new(y.ViewportSize.X / 2, y.ViewportSize.Y);
					r.Tracer.To = Vector2.new(m.X, m.Y);
					r.Tracer.Color = l;
					r.Tracer.Thickness = 1;
					r.Tracer.Visible = true;
				end);
			else
				pcall(function()
					r.Tracer.Visible = false;
				end);
			end;
		else
			l();
		end;
	end;
end);
j.PlayerAdded:Connect(function(j)
	task.wait(1);
	oW(j);
	if A.XRayEnabled and j.Character then
		DW(j.Character, j);
	end;
end);
j.PlayerRemoving:Connect(function(j)
	OW(j);
	RW(j);
	Y.knownRoles[j] = nil;
	I.lastRoles[j] = nil;
end);
for j, r in ipairs(j:GetPlayers()) do
	oW(r);
end;
local function bW(j)
	local G = j.AbsoluteSize;
	if G.X < 5 or G.Y < 5 then
		return;
	end;
	local p = math.random(w.ParticleMinSize, w.ParticleMaxSize);
	local a = math.random(0, math.max(1, G.X - p));
	local H = ((G.Y + 40)) / w.ParticleFallSpeed;
	local x = jp("Frame", {
			Size = UDim2.new(0, p, 0, p),
			Position = UDim2.new(0, a, 0, -p),
			BackgroundColor3 = s.Particle,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 5,
			Parent = j,
		});
	rp(x, math.floor(p / 2));
	local B = r:Create(x, TweenInfo.new(H, Enum.EasingStyle.Linear), { Position = UDim2.new(0, a + math.random(-40, 40), 0, G.Y + 20), BackgroundTransparency = .85 + math.random() * .1 });
	B:Play();
	B.Completed:Connect(function()
		x:Destroy();
	end);
end;
local function fW(j)
	task.spawn(function()
		while j and j.Parent do
			for r = 1, w.ParticlesPerTick, 1 do
				bW(j);
			end;
			task.wait(w.ParticleSpawnRate);
		end;
	end);
end;
local function zW(j, r, p)
	local a = jp("Frame", {
			Name = j .. "_ShadowHolder",
			Size = r,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ZIndex = 1,
			Parent = p,
		});
	for j = 1, 6, 1 do
		local r = jp("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				BackgroundTransparency = .88 + (j * .008),
				BorderSizePixel = 0,
				ZIndex = 1,
				Parent = a,
			});
		rp(r, 20 + j * 5);
	end;
	local H = jp("Frame", {
			Name = j,
			Size = r,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundColor3 = s.BgTop,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Active = true,
			Draggable = true,
			ZIndex = 2,
			Parent = p,
		});
	rp(H, 20);
	pp(H, s.Border, 1, .4);
	Gp(H, s.BgTop, s.BgBottom, 90);
	G.Heartbeat:Connect(function()
		if a.Parent and H.Parent then
			a.Position = H.Position + UDim2.new(0, 0, 0, 12);
			a.Size = H.Size;
			a.Visible = H.Visible;
		end;
	end);
	local x = jp("Frame", {
			Name = "ParticleZone",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			ZIndex = 5,
			Parent = H,
		});
	rp(x, 20);
	fW(x);
	return H;
end;
local function gW(j, r)
	xp(j, .35, r);
end;
local function TW()
	if not ((t.Shell and t.Shell.Parent)) then
		return;
	end;
	xp(t.Shell, .35, function()
		t.Shell = nil;
		t.Sidebar = nil;
		t.Content = nil;
		t.Scroll = nil;
		t.NavItems = {};
		t.CurrentPage = nil;
		t.MenuOpen = false;
	end);
end;
task.spawn(function()
	while true do
		task.wait(A.AutoShootDelay);
		if not A.AutoShootEnabled then
			continue;
		end;
		local j = Cp(x);
		if j ~= "Sheriff" then
			continue;
		end;
		local r = x.Character;
		if not r then
			continue;
		end;
		local G = r:FindFirstChild("Gun");
		if not G then
			local j = x:FindFirstChild("Backpack");
			if j then
				local G = j:FindFirstChild("Gun");
				if G then
					pcall(function()
						r.Humanoid:EquipTool(G);
					end);
				end;
			end;
			continue;
		end;
		local p = Dp();
		if not p then
			continue;
		end;
		local a = p.Character;
		if not a then
			continue;
		end;
		local H = a:FindFirstChild("HumanoidRootPart");
		local B = a:FindFirstChild("Head");
		if not H then
			continue;
		end;
		local y = r:FindFirstChild("HumanoidRootPart");
		if not y then
			continue;
		end;
		local l = ((H.Position - y.Position)).Magnitude;
		if l > A.AutoShootRange then
			continue;
		end;
		local q = workspace.CurrentCamera;
		if q then
			pcall(function()
				q.CFrame = CFrame.new(q.CFrame.Position, B and B.Position or H.Position);
			end);
		end;
		pcall(function()
			G:Activate();
		end);
	end;
end);
local KW, EW, nW;
local WW, YW, IW, iW, kW, JW;
local uW, UW, SW, ZW, VW;
local FW, XW, PW, vW, MW, QW;
local hW, cW;
local NW, jb;
EW = function()
		local p = x:FindFirstChild("PlayerGui");
		if p then
			local j = p:FindFirstChild("MulbaHeadGui");
			if j then
				j:Destroy();
			end;
		end;
		local a = x.Character;
		if not a or not a:FindFirstChild("Head") then
			task.delay(1, function()
				if EW then
					EW();
				end;
			end);
			return;
		end;
		local H = a:FindFirstChild("Head");
		if not H then
			return;
		end;
		local B = jp("ScreenGui", {
				Name = "MulbaHeadGui",
				ResetOnSpawn = false,
				IgnoreGuiInset = true,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				DisplayOrder = 997,
				Parent = p,
			});
		local y, l = 200, 50;
		local q = jp("TextButton", {
				Size = UDim2.new(0, y, 0, l),
				Position = UDim2.new(0, 0, 0, 0),
				AnchorPoint = Vector2.new(.5, 1),
				BackgroundColor3 = Color3.fromRGB(12, 16, 28),
				BackgroundTransparency = .05,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				Active = true,
				ZIndex = 1,
				Parent = B,
			});
		rp(q, 25);
		Gp(q, Color3.fromRGB(16, 22, 38), Color3.fromRGB(8, 10, 18), 90);
		jp("UIStroke", {
			Color = Color3.fromRGB(90, 150, 255),
			Thickness = 1.5,
			Transparency = .15,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = q,
		});
		local C = jp("Frame", {
				Size = UDim2.new(0, 36, 0, 36),
				Position = UDim2.new(0, 8, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = q,
			});
		rp(C, 18);
		local D = jp("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 7,
				Parent = C,
			});
		rp(D, 16);
		local R = jp("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 8,
				Parent = D,
			});
		rp(R, 16);
		task.spawn(function()
			local r, G = pcall(function()
					return j:GetUserThumbnailAsync(x.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if r and G then
				R.Image = G;
			end;
		end);
		local d = jp("TextLabel", {
				Size = UDim2.new(1, -90, 0, 16),
				Position = UDim2.new(0, 52, 0, 8),
				BackgroundTransparency = 1,
				Text = "Mulba Menu",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = q,
			});
		local o = jp("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 180, 255)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(170, 120, 255)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 120, 200)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(255, 180, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 255, 180)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 180, 255)),
				}), Rotation = 0, Parent = d });
		task.spawn(function()
			while o.Parent do
				o.Rotation = ((o.Rotation + 3)) % 360;
				task.wait(.03);
			end;
		end);
		jp("TextLabel", {
			Size = UDim2.new(1, -90, 0, 12),
			Position = UDim2.new(0, 52, 0, 23),
			BackgroundTransparency = 1,
			Text = x.DisplayName .. " / lifetime",
			TextColor3 = s.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 9,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 9,
			Parent = q,
		});
		local O = jp("TextLabel", {
				Size = UDim2.new(1, -90, 0, 14),
				Position = UDim2.new(0, 52, 0, 35),
				BackgroundTransparency = 1,
				Text = "Cr\195\169ateur",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = q,
			});
		local w = jp("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 80, 80)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(255, 180, 80)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 255, 80)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(120, 255, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 200, 255)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 80, 80)),
				}), Rotation = 0, Parent = O });
		task.spawn(function()
			while w.Parent do
				w.Rotation = ((w.Rotation + 4)) % 360;
				task.wait(.03);
			end;
		end);
		local A = jp("Frame", {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -38, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = q,
			});
		rp(A, 15);
		local L = jp("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Text = "M",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 15,
				ZIndex = 8,
				Parent = A,
			});
		jp("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 230, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(90, 150, 255)) }), Rotation = 90, Parent = L });
		q.BackgroundTransparency = 1;
		q.Size = UDim2.new(0, y * .7, 0, l * .7);
		for j, G in ipairs(q:GetDescendants()) do
			if G:IsA("TextLabel") then
				G.TextTransparency = 1;
				(r:Create(G, TweenInfo.new(.5), { TextTransparency = 0 })):Play();
			end;
			if G:IsA("ImageLabel") then
				G.ImageTransparency = 1;
				(r:Create(G, TweenInfo.new(.5), { ImageTransparency = 0 })):Play();
			end;
		end;
		(r:Create(q, TweenInfo.new(.55, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, y, 0, l), BackgroundTransparency = .05 })):Play();
		G.RenderStepped:Connect(function()
			if not B.Parent then
				return;
			end;
			if not ((q and q.Parent)) then
				return;
			end;
			local j = x.Character;
			if not j then
				q.Visible = false;
				return;
			end;
			local r = j:FindFirstChild("Head");
			if not r then
				q.Visible = false;
				return;
			end;
			local G = workspace.CurrentCamera;
			if not G then
				return;
			end;
			local p = r.Position + Vector3.new(0, m, 0);
			local a, H = G:WorldToViewportPoint(p);
			if not H then
				q.Visible = false;
				return;
			end;
			q.Visible = true;
			q.Position = UDim2.new(0, a.X, 0, a.Y);
		end);
		q.MouseButton1Click:Connect(function()
			if not t.Authenticated then
				return;
			end;
			if t.Shell and t.Shell.Parent then
				return;
			end;
			if KW then
				KW();
			end;
		end);
		t.BillboardRef = B;
	end;
WW = function(j)
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 42),
			BackgroundTransparency = 1,
			Text = "MULBA",
			TextColor3 = s.TextPrimary,
			Font = Enum.Font.GothamBlack,
			TextSize = 32,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 46),
			BackgroundTransparency = 1,
			Text = "Le menu qui change tout.",
			TextColor3 = s.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		local G = jp("TextButton", {
				Size = UDim2.new(0, 170, 0, 42),
				Position = UDim2.new(1, -170, 0, 0),
				BackgroundColor3 = s.SurfaceHi,
				BackgroundTransparency = .1,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 26,
				Parent = j,
			});
		rp(G, 10);
		pp(G, s.Border, 1, .4);
		local p = jp("TextLabel", {
				Size = UDim2.new(1, -14, 1, 0),
				Position = UDim2.new(0, 10, 0, 0),
				BackgroundTransparency = 1,
				Text = "Assistance IA",
				TextColor3 = s.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = G,
			});
		local a = ap(G, "right", s.TextSecondary, 7);
		a.Position = UDim2.new(1, -20, .5, 0);
		a.AnchorPoint = Vector2.new(.5, .5);
		G.MouseEnter:Connect(function()
			(r:Create(G, TweenInfo.new(.18), { BackgroundColor3 = s.SurfaceHi, BackgroundTransparency = 0 })):Play();
			(r:Create(p, TweenInfo.new(.18), { TextColor3 = s.Accent })):Play();
		end);
		G.MouseLeave:Connect(function()
			(r:Create(G, TweenInfo.new(.18), { BackgroundColor3 = s.SurfaceHi, BackgroundTransparency = .1 })):Play();
			(r:Create(p, TweenInfo.new(.18), { TextColor3 = s.TextPrimary })):Play();
		end);
		G.MouseButton1Click:Connect(function()
			if NW then
				NW();
			end;
		end);
		jp("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundColor3 = s.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = j,
		});
		local H = 100;
		local function x(r, G, p, a)
			local x = jp("TextLabel", {
					Size = UDim2.new(1, -8, 0, 0),
					Position = UDim2.new(0, 0, 0, H),
					BackgroundTransparency = 1,
					Text = r,
					TextColor3 = G or s.TextSecondary,
					Font = a or Enum.Font.Gotham,
					TextSize = p or 12,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextWrapped = true,
					AutomaticSize = Enum.AutomaticSize.Y,
					ZIndex = 25,
					Parent = j,
				});
			local B = 1;
			for j in string.gmatch(r, "\n") do
				B = B + 1;
			end;
			local y = (B * ((p or 12)) + 8) + math.floor(#r / 60) * ((p or 12));
			H = H + y;
			return x;
		end;
		local function B(r)
			jp("TextLabel", {
				Size = UDim2.new(1, 0, 0, 22),
				Position = UDim2.new(0, 0, 0, H),
				BackgroundTransparency = 1,
				Text = r,
				TextColor3 = s.Accent,
				Font = Enum.Font.GothamBold,
				TextSize = 15,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 25,
				Parent = j,
			});
			H = H + 28;
		end;
		x("Bienvenue dans l\'exp\195\169rience ultime sur Murder Mystery 2.\nIci, chaque partie devient une d\195\169monstration. Tu vois tout, tu contr\195\180les tout, tu d\195\169cides tout. Aucun round ne t\'\195\169chappe.", s.TextSecondary, 12);
		H = H + 10;
		B("Ce que tu d\195\169bloques");
		x("Vision totale", s.TextPrimary, 13, Enum.Font.GothamBold);
		x("R\195\180les, box et tracers en temps r\195\169el. Tu sais qui est qui avant m\195\170me que la partie commence.", s.TextSecondary, 12);
		H = H + 8;
		x("Libert\195\169 absolue", s.TextPrimary, 13, Enum.Font.GothamBold);
		x("Fly, spin, jerk, noclip, invisibilit\195\169, emote zen. Ton personnage fait ce que tu veux, quand tu veux.", s.TextSecondary, 12);
		H = H + 8;
		x("Mouvement avanc\195\169", s.TextPrimary, 13, Enum.Font.GothamBold);
		x("Dash, slide, wall run, wall jump, grapple, roll, paraglide. Tout le r\195\169pertoire du parkour pro.", s.TextSecondary, 12);
		H = H + 8;
		x("Emotes personnalis\195\169es", s.TextPrimary, 13, Enum.Font.GothamBold);
		x("10 emotes en un clic + ajoute les tiennes en direct depuis le menu. Loop, vitesse et priorit\195\169 r\195\169glables.", s.TextSecondary, 12);
		H = H + 8;
		x("Contr\195\180le des joueurs", s.TextPrimary, 13, Enum.Font.GothamBold);
		x("Ciblage, t\195\169l\195\169portation, spectate, accrochage. Les autres ne sont plus que des pions.", s.TextSecondary, 12);
		H = H + 8;
		x("Domination Murder et Sheriff", s.TextPrimary, 13, Enum.Font.GothamBold);
		x("Auto shoot, TP assassin, TP sh\195\169rif. Chaque r\195\180le a son arsenal.", s.TextSecondary, 12);
		H = H + 8;
		x("Auto Farm", s.TextPrimary, 13, Enum.Font.GothamBold);
		x("Les pi\195\168ces viennent \195\160 toi. Automatiquement. Round apr\195\168s round.", s.TextSecondary, 12);
		H = H + 8;
		x("Notifications en direct", s.TextPrimary, 13, Enum.Font.GothamBold);
		x("Tu sais avant tout le monde. Murder, Sheriff, gun au sol \226\128\148 rien ne t\'\195\169chappe.", s.TextSecondary, 12);
		H = H + 16;
		B("Pr\195\170t \195\160 jouer");
		x("Appuie sur M.", s.Accent, 14, Enum.Font.GothamBold);
		x("Le menu s\'ouvre. Le jeu change.\nBonne chance. Tu n\'en auras pas besoin.", s.TextSecondary, 12);
		H = H + 20;
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 24),
			Position = UDim2.new(0, 0, 0, H),
			BackgroundTransparency = 1,
			Text = "L\'\195\169quipe Mulba",
			TextColor3 = s.Accent,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		jp("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, H + 40),
			BackgroundColor3 = s.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = j,
		});
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 24),
			Position = UDim2.new(0, 0, 0, H + 50),
			BackgroundTransparency = 1,
			Text = "\240\159\146\161 Appuie sur M pour ouvrir ou fermer le menu",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
	end;
YW = function(j)
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Param\195\168tres",
			TextColor3 = s.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 16),
			Position = UDim2.new(0, 0, 0, 50),
			BackgroundTransparency = 1,
			Text = "COULEUR D\'ACCENT",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		local G = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 140),
				Position = UDim2.new(0, 0, 0, 72),
				BackgroundTransparency = 1,
				ZIndex = 25,
				Parent = j,
			});
		jp("UIGridLayout", {
			CellSize = UDim2.new(0, 58, 0, 58),
			CellPadding = UDim2.new(0, 14, 0, 14),
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Parent = G,
		});
		local p = {};
		for j, a in ipairs(C) do
			local H = jp("TextButton", {
					BackgroundColor3 = a.Accent,
					BorderSizePixel = 0,
					Text = "",
					AutoButtonColor = false,
					LayoutOrder = j,
					ZIndex = 26,
					Parent = G,
				});
			rp(H, 29);
			local x = jp("UIStroke", {
					Color = s.TextPrimary,
					Thickness = 2,
					Transparency = (a.name == t.CurrentPreset) and 0 or 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Parent = H,
				});
			p[a.name] = x;
			H.MouseButton1Click:Connect(function()
				if t.CurrentPreset == a.name then
					return;
				end;
				t.CurrentPreset = a.name;
				O(a);
				for j, G in pairs(p) do
					(r:Create(G, TweenInfo.new(.2), { Transparency = (j == a.name) and 0 or 1 })):Play();
				end;
			end);
		end;
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 16),
			Position = UDim2.new(0, 0, 0, 240),
			BackgroundTransparency = 1,
			Text = "NOTIFICATIONS",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		local a = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 262),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = j,
			});
		jp("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = a });
		QW(a, 1, "NOTIFICATION", "Kill feed bas droite (Murder/Sheriff/Gun au sol)", function()
			return A.NotifKillFeed;
		end, function(j)
			A.NotifKillFeed = j;
		end, s.Accent);
		QW(a, 2, "NOTIF MESSAGE CHAT", "Murder/Sheriff dans ton chat (local)", function()
			return A.NotifChatMsg;
		end, function(j)
			A.NotifChatMsg = j;
		end, s.Accent);
		PW(a, 3, "SPAM CHAT", "Renvoie Murder/Sheriff dans le chat", Color3.fromRGB(240, 165, 95), function()
			wp();
			task.wait(.05);
			wp();
			task.wait(.05);
			wp();
		end);
	end;
MW = function(j, r, G)
		local p = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 26),
				BackgroundTransparency = 1,
				LayoutOrder = r,
				ZIndex = 19,
				Parent = j,
			});
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 4, 0, 0),
			BackgroundTransparency = 1,
			Text = string.upper(G),
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 19,
			Parent = p,
		});
		jp("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 1, -1),
			BackgroundColor3 = s.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 19,
			Parent = p,
		});
	end;
FW = function(j, G, p, a, H, x, B)
		local y = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = s.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = G,
				ZIndex = 26,
				Parent = j,
			});
		rp(y, 12);
		pp(y, s.Border, 1, .5);
		local l = jp("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = B,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = y,
			});
		rp(l, 2);
		jp("TextLabel", {
			Size = UDim2.new(1, -100, 0, 18),
			Position = UDim2.new(0, 26, 0, 10),
			BackgroundTransparency = 1,
			Text = p,
			TextColor3 = s.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = y,
		});
		jp("TextLabel", {
			Size = UDim2.new(1, -100, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = a,
			TextColor3 = s.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = y,
		});
		local q = jp("TextButton", {
				Size = UDim2.new(0, 46, 0, 24),
				Position = UDim2.new(1, -58, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = H() and B or s.SurfaceHi,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 28,
				Parent = y,
			});
		rp(q, 12);
		local m = jp("Frame", {
				Size = UDim2.new(0, 18, 0, 18),
				Position = H() and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = q,
			});
		rp(m, 9);
		q.MouseButton1Click:Connect(function()
			x();
			local j = H();
			(r:Create(q, TweenInfo.new(.2), { BackgroundColor3 = j and B or s.SurfaceHi })):Play();
			(r:Create(m, TweenInfo.new(.2, Enum.EasingStyle.Quad), { Position = j and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0) })):Play();
		end);
		return y;
	end;
XW = function(j, r, G, a, H, x, B, y)
		local l = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 52),
				BackgroundColor3 = s.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = r,
				ZIndex = 26,
				Parent = j,
			});
		rp(l, 12);
		pp(l, s.Border, 1, .5);
		jp("TextLabel", {
			Size = UDim2.new(0, 130, 0, 14),
			Position = UDim2.new(0, 26, 0, 8),
			BackgroundTransparency = 1,
			Text = G,
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = l,
		});
		local q = jp("TextLabel", {
				Size = UDim2.new(0, 60, 0, 14),
				Position = UDim2.new(1, -70, 0, 8),
				BackgroundTransparency = 1,
				Text = tostring(x()),
				TextColor3 = s.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Right,
				ZIndex = 27,
				Parent = l,
			});
		local m = jp("Frame", {
				Size = UDim2.new(1, -52, 0, 8),
				Position = UDim2.new(0, 26, 0, 32),
				BackgroundColor3 = s.SurfaceHi,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = l,
			});
		rp(m, 4);
		local C = ((x() - a)) / ((H - a));
		local D = jp("Frame", {
				Size = UDim2.new(C, 0, 1, 0),
				BackgroundColor3 = y,
				BorderSizePixel = 0,
				ZIndex = 28,
				Parent = m,
			});
		rp(D, 4);
		local R = jp("Frame", {
				Size = UDim2.new(0, 14, 0, 14),
				Position = UDim2.new(C, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = m,
			});
		rp(R, 7);
		pp(R, Color3.fromRGB(0, 0, 0), 2, .3);
		local d = jp("TextButton", {
				Size = UDim2.new(1, -52, 0, 22),
				Position = UDim2.new(0, 26, 0, 20),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = l,
			});
		local o = false;
		local function O(j)
			local r = m.AbsolutePosition.X;
			local G = m.AbsoluteSize.X;
			if G <= 0 then
				return;
			end;
			local p = math.clamp(((j - r)) / G, 0, 1);
			local x = a + p * ((H - a));
			x = math.floor(x * 10 + .5) / 10;
			B(x);
			R.Position = UDim2.new(p, 0, .5, 0);
			D.Size = UDim2.new(p, 0, 1, 0);
			q.Text = tostring(x);
		end;
		d.InputBegan:Connect(function(j)
			if j.UserInputType == Enum.UserInputType.MouseButton1 or j.UserInputType == Enum.UserInputType.Touch then
				o = true;
				O(j.Position.X);
			end;
		end);
		d.InputChanged:Connect(function(j)
			if not o then
				return;
			end;
			if j.UserInputType == Enum.UserInputType.MouseMovement or j.UserInputType == Enum.UserInputType.Touch then
				O(j.Position.X);
			end;
		end);
		p.InputEnded:Connect(function(j)
			if j.UserInputType == Enum.UserInputType.MouseButton1 or j.UserInputType == Enum.UserInputType.Touch then
				o = false;
			end;
		end);
	end;
PW = function(j, G, p, a, H, x)
		local B = jp("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = s.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = G,
				ZIndex = 26,
				Parent = j,
			});
		rp(B, 12);
		pp(B, s.Border, 1, .5);
		local y = jp("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = H,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = B,
			});
		rp(y, 2);
		local l = jp("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = p,
				TextColor3 = s.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = B,
			});
		jp("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = a,
			TextColor3 = s.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = B,
		});
		local q, m, C = ap(B, "right", s.TextMuted, 7);
		q.Position = UDim2.new(1, -26, .5, 0);
		q.AnchorPoint = Vector2.new(.5, .5);
		B.MouseEnter:Connect(function()
			(r:Create(B, TweenInfo.new(.18), { BackgroundColor3 = s.SurfaceHi, BackgroundTransparency = .1 })):Play();
			(r:Create(l, TweenInfo.new(.18), { TextColor3 = H })):Play();
			(r:Create(m, TweenInfo.new(.18), { BackgroundColor3 = H })):Play();
			(r:Create(C, TweenInfo.new(.18), { BackgroundColor3 = H })):Play();
		end);
		B.MouseLeave:Connect(function()
			(r:Create(B, TweenInfo.new(.18), { BackgroundColor3 = s.Surface, BackgroundTransparency = .25 })):Play();
			(r:Create(l, TweenInfo.new(.18), { TextColor3 = s.TextPrimary })):Play();
			(r:Create(m, TweenInfo.new(.18), { BackgroundColor3 = s.TextMuted })):Play();
			(r:Create(C, TweenInfo.new(.18), { BackgroundColor3 = s.TextMuted })):Play();
		end);
		B.MouseButton1Click:Connect(x);
		return B;
	end;
QW = function(j, G, p, a, H, x, B)
		local y = jp("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = s.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = G,
				ZIndex = 26,
				Parent = j,
			});
		rp(y, 12);
		pp(y, s.Border, 1, .5);
		local l = s.ToggleOff;
		local q = s.Accent;
		local m = jp("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = H() and q or l,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = y,
			});
		rp(m, 2);
		local C = jp("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = p,
				TextColor3 = s.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = y,
			});
		jp("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = a,
			TextColor3 = s.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = y,
		});
		local D, R, d = ap(y, "right", H() and q or l, 7);
		D.Position = UDim2.new(1, -26, .5, 0);
		D.AnchorPoint = Vector2.new(.5, .5);
		local function o()
			local j = H();
			local r = j and q or l;
			m.BackgroundColor3 = r;
			R.BackgroundColor3 = r;
			d.BackgroundColor3 = r;
			C.TextColor3 = j and q or s.TextPrimary;
		end;
		y.MouseEnter:Connect(function()
			(r:Create(y, TweenInfo.new(.18), { BackgroundColor3 = s.SurfaceHi, BackgroundTransparency = .1 })):Play();
		end);
		y.MouseLeave:Connect(function()
			(r:Create(y, TweenInfo.new(.18), { BackgroundColor3 = s.Surface, BackgroundTransparency = .25 })):Play();
		end);
		y.MouseButton1Click:Connect(function()
			x(not H());
			o();
		end);
		return y;
	end;
local rb = {
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
local function Gb(j, r, G)
	return p.InputBegan:Connect(function(p, a)
		if a and not G then
			return;
		end;
		if p.UserInputType ~= Enum.UserInputType.Keyboard then
			return;
		end;
		if p.KeyCode == j then
			r();
		end;
	end);
end;
local function pb()
	local j = rb;
	if not j.DashEnabled then
		return;
	end;
	if tick() - j.DashLastUse < j.DashCooldown then
		return;
	end;
	j.DashLastUse = tick();
	local r = x.Character;
	local G = r and r:FindFirstChild("HumanoidRootPart");
	local p = r and r:FindFirstChildOfClass("Humanoid");
	if not ((G and p)) then
		return;
	end;
	local a = p.MoveDirection;
	if a.Magnitude < .1 then
		a = workspace.CurrentCamera.CFrame.LookVector;
	end;
	a = (Vector3.new(a.X, 0, a.Z)).Unit;
	local B = Instance.new("BodyVelocity");
	B.Velocity = a * j.DashPower;
	B.MaxForce = Vector3.new(9000000000, 0, 9000000000);
	B.P = 5000;
	B.Parent = G;
	H:AddItem(B, .18);
	local y = Instance.new("Attachment", G);
	local l = Instance.new("Trail", G);
	l.Attachment0 = y;
	l.Attachment1 = y;
	l.Lifetime = .3;
	l.Color = ColorSequence.new(s.Accent);
	H:AddItem(l, .4);
	H:AddItem(y, .4);
	sp("\240\159\146\168 Dash", s.Accent);
end;
Gb(rb.DashKey, pb);
local function ab()
	local j = rb;
	if not j.TpMouseEnabled then
		return;
	end;
	local r = x:GetMouse();
	local G = x.Character;
	local p = G and G:FindFirstChild("HumanoidRootPart");
	if not ((r and p)) then
		return;
	end;
	local a = r.Hit;
	if not a then
		return;
	end;
	pcall(function()
		p.CFrame = a + Vector3.new(0, 3, 0);
		p.AssemblyLinearVelocity = Vector3.zero;
	end);
	sp("\240\159\150\177 TP Mouse", s.Accent);
end;
Gb(rb.TpMouseKey, ab);
local function Hb()
	local j = rb;
	if j.SlideConn then
		j.SlideConn:Disconnect();
		j.SlideConn = nil;
	end;
	j.SlideActive = false;
	local r = x.Character;
	local G = r and r:FindFirstChildOfClass("Humanoid");
	if G then
		pcall(function()
			G.PlatformStand = false;
		end);
	end;
end;
local function xb()
	local j = rb;
	if not j.SlideEnabled or j.SlideActive then
		return;
	end;
	if tick() - j.SlideLastUse < 1 then
		return;
	end;
	j.SlideLastUse = tick();
	j.SlideActive = true;
	local r = x.Character;
	local p = r and r:FindFirstChild("HumanoidRootPart");
	local a = r and r:FindFirstChildOfClass("Humanoid");
	if not ((p and a)) then
		j.SlideActive = false;
		return;
	end;
	local H = a.MoveDirection;
	if H.Magnitude < .1 then
		H = p.CFrame.LookVector;
	end;
	H = (Vector3.new(H.X, 0, H.Z)).Unit;
	local B = tick();
	j.SlideConn = G.Heartbeat:Connect(function()
			if tick() - B > j.SlideDuration then
				Hb();
				return;
			end;
			if not p or not p.Parent then
				Hb();
				return;
			end;
			pcall(function()
				p.CFrame = CFrame.new(p.Position, p.Position + H);
				p.AssemblyLinearVelocity = Vector3.new(H.X * j.SlideSpeed, p.AssemblyLinearVelocity.Y, H.Z * j.SlideSpeed);
			end);
		end);
	sp("\240\159\155\183 Slide", s.Accent);
end;
Gb(rb.SlideKey, xb);
local Bb = G.Heartbeat:Connect(function()
		local j = rb;
		if not j.WallRunEnabled then
			j.WallRunActive = false;
			return;
		end;
		local r = x.Character;
		local G = r and r:FindFirstChild("HumanoidRootPart");
		local p = r and r:FindFirstChildOfClass("Humanoid");
		if not ((G and p)) then
			return;
		end;
		local a = G.Position;
		local H = {
				G.CFrame.RightVector,
				-G.CFrame.RightVector,
				G.CFrame.LookVector,
				-G.CFrame.LookVector,
			};
		local B = nil;
		for j, G in ipairs(H) do
			local p = Ray.new(a, G * 2.5);
			local H, x, y = workspace:FindPartOnRayWithIgnoreList(p, { r });
			if H and (y and math.abs(y.Y) < .3) then
				B = y;
				break;
			end;
		end;
		if B and p.FloorMaterial == Enum.Material.Air then
			j.WallRunActive = true;
			local r = G.CFrame.LookVector;
			local p = ((r - B * r:Dot(B))).Unit;
			local a = -B * j.WallRunStick;
			pcall(function()
				G.AssemblyLinearVelocity = (p * j.WallRunSpeed) + Vector3.new(a.X, math.max(G.AssemblyLinearVelocity.Y, -2), a.Z);
			end);
		else
			j.WallRunActive = false;
		end;
	end);
local yb = G.Heartbeat:Connect(function()
		local j = rb;
		if not j.MoonWalkEnabled then
			return;
		end;
		local r = x.Character;
		local G = r and r:FindFirstChildOfClass("Humanoid");
		if not G then
			return;
		end;
		if G.MoveDirection.Magnitude > .1 then
			G.WalkSpeed = math.abs(j.MoonWalkSpeed);
			local p = r:FindFirstChild("HumanoidRootPart");
			if p then
				pcall(function()
					local r = workspace.CurrentCamera;
					local G = -r.CFrame.LookVector;
					G = (Vector3.new(G.X, 0, G.Z)).Unit;
					p.AssemblyLinearVelocity = Vector3.new(G.X * math.abs(j.MoonWalkSpeed), p.AssemblyLinearVelocity.Y, G.Z * math.abs(j.MoonWalkSpeed));
				end);
			end;
		end;
	end);
local lb = G.Heartbeat:Connect(function()
		local j = rb;
		if not j.IceSkateEnabled then
			j.IceSkateVel = Vector3.zero;
			return;
		end;
		local r = x.Character;
		local G = r and r:FindFirstChild("HumanoidRootPart");
		local p = r and r:FindFirstChildOfClass("Humanoid");
		if not ((G and p)) then
			return;
		end;
		local a = p.MoveDirection;
		j.IceSkateVel = j.IceSkateVel * j.IceSkateFriction;
		if a.Magnitude > .1 then
			j.IceSkateVel = j.IceSkateVel + a * j.IceSkateAccel;
		end;
		pcall(function()
			G.AssemblyLinearVelocity = Vector3.new(j.IceSkateVel.X, G.AssemblyLinearVelocity.Y, j.IceSkateVel.Z);
		end);
	end);
local qb = nil;
local mb = G.Heartbeat:Connect(function()
		local j = rb;
		if not j.WallJumpEnabled then
			return;
		end;
		local r = x.Character;
		local G = r and r:FindFirstChild("HumanoidRootPart");
		local p = r and r:FindFirstChildOfClass("Humanoid");
		if not ((G and p)) then
			return;
		end;
		if p.FloorMaterial ~= Enum.Material.Air then
			return;
		end;
		for p, a in ipairs({
			G.CFrame.RightVector,
			-G.CFrame.RightVector,
			G.CFrame.LookVector,
			-G.CFrame.LookVector,
		}) do
			local H = Ray.new(G.Position, a * 2.5);
			local x, B, y = workspace:FindPartOnRayWithIgnoreList(H, { r });
			if x and (y and math.abs(y.Y) < .3) then
				qb = y;
				j.WallJumpLastTouch = tick();
				break;
			end;
		end;
	end);
local function sb()
	local j = rb;
	if not j.WallJumpEnabled then
		return;
	end;
	if tick() - j.WallJumpLastTouch > .35 then
		return;
	end;
	if not qb then
		return;
	end;
	local r = x.Character;
	local G = r and r:FindFirstChild("HumanoidRootPart");
	local p = r and r:FindFirstChildOfClass("Humanoid");
	if not ((G and p)) then
		return;
	end;
	local a = qb * j.WallJumpPower + Vector3.new(0, j.WallJumpPower * .9, 0);
	pcall(function()
		G.AssemblyLinearVelocity = a;
		p:ChangeState(Enum.HumanoidStateType.Jumping);
	end);
	sp("\240\159\167\151 Wall Jump", s.Accent);
end;
Gb(rb.WallJumpKey, sb, true);
local function Cb()
	local j = rb;
	j.GrappleActive = false;
	j.GrappleTarget = nil;
	if j.GrappleConn then
		j.GrappleConn:Disconnect();
		j.GrappleConn = nil;
	end;
end;
local function Db()
	local j = rb;
	if not j.GrappleEnabled then
		return;
	end;
	if j.GrappleActive then
		Cb();
		return;
	end;
	local r = x.Character;
	local p = r and r:FindFirstChild("HumanoidRootPart");
	if not p then
		return;
	end;
	local a = workspace.CurrentCamera;
	local H = a.CFrame.Position;
	local B = a.CFrame.LookVector * j.GrappleRange;
	local y = Ray.new(H, B);
	local l, q = workspace:FindPartOnRayWithIgnoreList(y, { r, a });
	if not q then
		yp("Grapple", "Aucune cible dans la port\195\169e", true);
		return;
	end;
	j.GrappleActive = true;
	j.GrappleTarget = q;
	j.GrappleConn = G.Heartbeat:Connect(function()
			if not j.GrappleActive or not j.GrappleTarget then
				return;
			end;
			local r = x.Character;
			local G = r and r:FindFirstChild("HumanoidRootPart");
			if not G then
				Cb();
				return;
			end;
			local p = j.GrappleTarget - G.Position;
			local a = p.Magnitude;
			if a < 4 then
				Cb();
				return;
			end;
			local H = p.Unit * j.GrappleSpeed;
			pcall(function()
				G.AssemblyLinearVelocity = H;
			end);
		end);
	sp("\240\159\170\157 Grapple", s.Accent);
end;
Gb(rb.GrappleKey, Db);
local function Rb()
	local j = rb;
	if j.RollConn then
		j.RollConn:Disconnect();
		j.RollConn = nil;
	end;
	j.RollActive = false;
	local r = x.Character;
	local G = r and r:FindFirstChildOfClass("Humanoid");
	if G then
		pcall(function()
			G.PlatformStand = false;
		end);
	end;
end;
local function db()
	local j = rb;
	if not j.RollEnabled or j.RollActive then
		return;
	end;
	if tick() - j.RollLastUse < .8 then
		return;
	end;
	j.RollLastUse = tick();
	j.RollActive = true;
	local r = x.Character;
	local p = r and r:FindFirstChild("HumanoidRootPart");
	local a = r and r:FindFirstChildOfClass("Humanoid");
	if not ((p and a)) then
		j.RollActive = false;
		return;
	end;
	local H = a.MoveDirection;
	if H.Magnitude < .1 then
		H = p.CFrame.LookVector;
	end;
	H = (Vector3.new(H.X, 0, H.Z)).Unit;
	local B = tick();
	local y = p.CFrame;
	j.RollConn = G.Heartbeat:Connect(function()
			local r = ((tick() - B)) / j.RollDuration;
			if r >= 1 then
				Rb();
				return;
			end;
			if not p or not p.Parent then
				Rb();
				return;
			end;
			local G = CFrame.Angles(math.rad(-360 * r), 0, 0);
			pcall(function()
				p.CFrame = (CFrame.new(y.Position + H * ((j.RollSpeed * r))) * ((y - y.Position))) * G;
				p.AssemblyLinearVelocity = H * j.RollSpeed;
			end);
		end);
	sp("\240\159\140\128 Roll", s.Accent);
end;
Gb(rb.RollKey, db);
local function ob()
	local j = rb;
	if j.CrouchSlideConn then
		j.CrouchSlideConn:Disconnect();
		j.CrouchSlideConn = nil;
	end;
	j.CrouchSlideActive = false;
	local r = x.Character;
	local G = r and r:FindFirstChildOfClass("Humanoid");
	if G then
		pcall(function()
			G.PlatformStand = false;
			G.WalkSpeed = b.WalkSpeed;
		end);
	end;
end;
local function Ob()
	local j = rb;
	if not j.CrouchSlideEnabled or j.CrouchSlideActive then
		return;
	end;
	if tick() - j.CrouchSlideLastUse < 1 then
		return;
	end;
	j.CrouchSlideLastUse = tick();
	j.CrouchSlideActive = true;
	local r = x.Character;
	local p = r and r:FindFirstChild("HumanoidRootPart");
	local a = r and r:FindFirstChildOfClass("Humanoid");
	if not ((p and a)) then
		j.CrouchSlideActive = false;
		return;
	end;
	local H = a.MoveDirection;
	if H.Magnitude < .1 then
		H = p.CFrame.LookVector;
	end;
	H = (Vector3.new(H.X, 0, H.Z)).Unit;
	pcall(function()
		a.PlatformStand = true;
	end);
	local B = tick();
	j.CrouchSlideConn = G.Heartbeat:Connect(function()
			if tick() - B > j.CrouchSlideDuration then
				ob();
				return;
			end;
			if not p or not p.Parent then
				ob();
				return;
			end;
			pcall(function()
				p.AssemblyLinearVelocity = Vector3.new(H.X * j.CrouchSlideSpeed, p.AssemblyLinearVelocity.Y, H.Z * j.CrouchSlideSpeed);
			end);
		end);
	sp("\240\159\155\157 Crouch Slide", s.Accent);
end;
Gb(rb.CrouchSlideKey, Ob);
local wb = G.Heartbeat:Connect(function()
		local j = rb;
		if not j.ParaglideEnabled then
			return;
		end;
		local r = x.Character;
		local G = r and r:FindFirstChild("HumanoidRootPart");
		local p = r and r:FindFirstChildOfClass("Humanoid");
		if not ((G and p)) then
			return;
		end;
		if G.AssemblyLinearVelocity.Y < -2 then
			j.ParaglideActive = true;
			local r = workspace.CurrentCamera;
			local p = r.CFrame.LookVector;
			p = (Vector3.new(p.X, 0, p.Z)).Unit;
			pcall(function()
				G.AssemblyLinearVelocity = Vector3.new(p.X * j.ParaglideForward, -j.ParaglideFallSpeed, p.Z * j.ParaglideForward);
			end);
		else
			j.ParaglideActive = false;
		end;
	end);
local function tb()
	local j = rb;
	if j.SlideActive then
		Hb();
	end;
	if j.RollActive then
		Rb();
	end;
	if j.CrouchSlideActive then
		ob();
	end;
	if j.GrappleActive then
		Cb();
	end;
	j.IceSkateVel = Vector3.zero;
	j.WallRunActive = false;
	j.ParaglideActive = false;
end;
local function Ab(G)
	jp("TextLabel", {
		Size = UDim2.new(1, 0, 0, 14),
		Position = UDim2.new(0, 0, 0, 76),
		BackgroundTransparency = 1,
		Text = "JOUEUR CIBL\195\137",
		TextColor3 = s.TextMuted,
		Font = Enum.Font.GothamBold,
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 25,
		Parent = G,
	});
	local p = jp("TextButton", {
			Size = UDim2.new(1, 0, 0, 44),
			Position = UDim2.new(0, 0, 0, 96),
			BackgroundColor3 = s.Surface,
			BackgroundTransparency = .25,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			ZIndex = 30,
			Parent = G,
		});
	rp(p, 10);
	pp(p, s.Border, 1, .4);
	local a = jp("TextLabel", {
			Size = UDim2.new(1, -70, 1, 0),
			Position = UDim2.new(0, 16, 0, 0),
			BackgroundTransparency = 1,
			Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 31,
			Parent = p,
		});
	local H, B, y = ap(p, "right", s.TextMuted, 8);
	H.Position = UDim2.new(1, -24, .5, 0);
	H.AnchorPoint = Vector2.new(.5, .5);
	local l = jp("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			Position = UDim2.new(0, 0, 0, 148),
			BackgroundColor3 = s.Surface,
			BackgroundTransparency = .05,
			BorderSizePixel = 0,
			Visible = false,
			AutomaticSize = Enum.AutomaticSize.Y,
			ZIndex = 40,
			Parent = G,
		});
	rp(l, 12);
	pp(l, s.Border, 1, .3);
	local q = jp("Frame", {
			Size = UDim2.new(1, -12, 0, 6),
			Position = UDim2.new(0, 6, 0, 6),
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.Y,
			ZIndex = 41,
			Parent = l,
		});
	jp("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = q });
	local function m()
		for j, r in ipairs(q:GetChildren()) do
			if r:IsA("TextButton") or (r:IsA("TextLabel") and r.Name == "EmptyLbl") then
				r:Destroy();
			end;
		end;
		local G = 0;
		for j, p in ipairs(j:GetPlayers()) do
			if p == x then
				continue;
			end;
			G = G + 1;
			local H = jp("TextButton", {
					Size = UDim2.new(1, 0, 0, 34),
					BackgroundColor3 = s.SurfaceHi,
					BackgroundTransparency = .6,
					BorderSizePixel = 0,
					Text = "",
					AutoButtonColor = false,
					LayoutOrder = G,
					ZIndex = 42,
					Parent = q,
				});
			rp(H, 8);
			local m = Cp(p);
			local C = dp(m);
			jp("TextLabel", {
				Size = UDim2.new(1, -50, 1, 0),
				Position = UDim2.new(0, 12, 0, 0),
				BackgroundTransparency = 1,
				Text = p.Name .. ("  (" .. (m .. ")")),
				TextColor3 = s.TextPrimary,
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 43,
				Parent = H,
			});
			jp("Frame", {
				Size = UDim2.new(0, 4, 0, 18),
				Position = UDim2.new(1, -14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = C,
				BorderSizePixel = 0,
				ZIndex = 43,
				Parent = H,
			});
			H.MouseEnter:Connect(function()
				(r:Create(H, TweenInfo.new(.15), { BackgroundTransparency = .25 })):Play();
			end);
			H.MouseLeave:Connect(function()
				(r:Create(H, TweenInfo.new(.15), { BackgroundTransparency = .6 })):Play();
			end);
			H.MouseButton1Click:Connect(function()
				t.TrollSelected = p;
				a.Text = p.Name;
				a.TextColor3 = s.Accent;
				l.Visible = false;
				(r:Create(B, TweenInfo.new(.15), { Rotation = 45 })):Play();
				(r:Create(y, TweenInfo.new(.15), { Rotation = -45 })):Play();
				sp("\240\159\142\175 Cible : " .. p.Name, s.Accent);
			end);
		end;
		if G == 0 then
			jp("TextLabel", {
				Name = "EmptyLbl",
				Size = UDim2.new(1, 0, 0, 34),
				BackgroundTransparency = 1,
				Text = "Aucun autre joueur",
				TextColor3 = s.TextMuted,
				Font = Enum.Font.Gotham,
				TextSize = 12,
				ZIndex = 42,
				Parent = q,
			});
		end;
	end;
	local C = false;
	p.MouseButton1Click:Connect(function()
		C = not C;
		if C then
			m();
		end;
		l.Visible = C;
		(r:Create(B, TweenInfo.new(.15), { Rotation = C and -45 or 45 })):Play();
		(r:Create(y, TweenInfo.new(.15), { Rotation = C and 45 or -45 })):Play();
	end);
	j.PlayerAdded:Connect(function()
		if C then
			m();
		end;
	end);
	j.PlayerRemoving:Connect(function(j)
		if t.TrollSelected == j then
			t.TrollSelected = nil;
			a.Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148";
			a.TextColor3 = s.TextMuted;
		end;
		if C then
			m();
		end;
	end);
end;
vW = function()
		return;
	end;
uW = function(j)
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Player",
			TextColor3 = s.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Ciblage, mouvement & statistiques",
			TextColor3 = s.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		Ab(j);
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 164),
			BackgroundTransparency = 1,
			Text = "ACTIONS CIBL\195\137ES",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		local r = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 186),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = j,
			});
		jp("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = r });
		PW(r, 1, "TP \195\128 LA CIBLE", "Te t\195\169l\195\169porte sur le joueur s\195\169lectionn\195\169", Color3.fromRGB(255, 80, 80), function()
			local j = t.TrollSelected;
			if not j or not j.Character then
				yp("Player", "Aucune cible valide", true);
				return;
			end;
			local r = j.Character:FindFirstChild("HumanoidRootPart");
			local G = x.Character;
			local p = G and G:FindFirstChild("HumanoidRootPart");
			if r and p then
				pcall(function()
					p.CFrame = r.CFrame + Vector3.new(0, 3, 3);
				end);
				sp("\240\159\142\175 TP vers " .. j.Name, Color3.fromRGB(255, 80, 80));
			end;
		end);
		PW(r, 2, "SPECTATE CIBLE", "Ta cam\195\169ra suit le joueur s\195\169lectionn\195\169", Color3.fromRGB(170, 130, 235), function()
			local j = t.TrollSelected;
			local r = workspace.CurrentCamera;
			if not j or not j.Character then
				yp("Player", "Aucune cible valide", true);
				return;
			end;
			r.CameraSubject = j.Character:FindFirstChildOfClass("Humanoid") or j.Character;
			sp("\240\159\145\129 Cam\195\169ra \226\134\146 " .. j.Name, Color3.fromRGB(170, 130, 235));
		end);
		QW(r, 3, "S\'ACCROCHER \195\128 ELLE", "Assis sur les \195\169paules (visible par tous)", function()
			return qW.conn ~= nil;
		end, function(j)
			CW();
		end, s.Accent);
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 430),
			BackgroundTransparency = 1,
			Text = "MOUVEMENT",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		local G = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 452),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = j,
			});
		jp("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = G });
		local p = 0;
		local function a()
			p = p + 1;
			return p;
		end;
		QW(G, a(), "FLY", "Vol (W/A/S/D) + emote zen", function()
			return b.FlyEnabled;
		end, function(j)
			if j ~= b.FlyEnabled then
				bp();
			end;
		end, s.Accent);
		QW(G, a(), "SPIN", "Tourne sur toi-m\195\170me", function()
			return b.SpinEnabled;
		end, function(j)
			Kp();
		end, s.Accent);
		XW(G, a(), "VITESSE SPIN", 2, 50, function()
			return b.SpinSpeed;
		end, function(j)
			Ep(j);
		end, s.Accent);
		QW(G, a(), "JERK", "Secousse rapide", function()
			return b.JerkEnabled;
		end, function(j)
			Yp();
		end, s.Accent);
		XW(G, a(), "INTENSIT\195\137 JERK", .5, 10, function()
			return b.JerkIntensity;
		end, function(j)
			Ip(j);
		end, s.Accent);
		QW(G, a(), "NOCLIP", "Traverse les murs", function()
			return b.NoclipEnabled;
		end, function(j)
			ip();
		end, s.Accent);
		QW(G, a(), "INVISIBLE", "Personne ne te voit tant que c\'est actif", function()
			return b.Invisible;
		end, function(j)
			F();
		end, s.Accent);
		QW(G, a(), "INFINITE JUMP", "Saut infini", function()
			return b.InfiniteJump;
		end, function(j)
			Sp();
		end, s.Accent);
		QW(G, a(), "ANTI-AFK", "\195\137vite le kick inactivit\195\169", function()
			return b.AntiAFK;
		end, function(j)
			Vp();
		end, s.Accent);
		QW(G, a(), "FULLBRIGHT", "\195\137claire toute la map", function()
			return b.Fullbright;
		end, function(j)
			Xp();
		end, s.Accent);
		QW(G, a(), "ANTI-FLING", "Bloque les tentatives de fling", function()
			return b.AntiFling;
		end, function(j)
			Pp();
		end, s.Accent);
		local H = rb;
		MW(G, a(), "Mouvement avanc\195\169");
		QW(G, a(), "DASH", "Bond rapide (Q)", function()
			return H.DashEnabled;
		end, function(j)
			H.DashEnabled = j;
		end, s.Accent);
		XW(G, a(), "DASH POWER", 40, 400, function()
			return H.DashPower;
		end, function(j)
			H.DashPower = j;
		end, s.Accent);
		QW(G, a(), "TELEPORT MOUSE", "TP sur le curseur (T)", function()
			return H.TpMouseEnabled;
		end, function(j)
			H.TpMouseEnabled = j;
		end, s.Accent);
		QW(G, a(), "SLIDE", "Glisse au sol (C)", function()
			return H.SlideEnabled;
		end, function(j)
			H.SlideEnabled = j;
		end, s.Accent);
		XW(G, a(), "SLIDE SPEED", 30, 200, function()
			return H.SlideSpeed;
		end, function(j)
			H.SlideSpeed = j;
		end, s.Accent);
		QW(G, a(), "WALL RUN", "Cours sur les murs", function()
			return H.WallRunEnabled;
		end, function(j)
			H.WallRunEnabled = j;
		end, s.Accent);
		XW(G, a(), "WALL RUN SPEED", 20, 120, function()
			return H.WallRunSpeed;
		end, function(j)
			H.WallRunSpeed = j;
		end, s.Accent);
		QW(G, a(), "MOON WALK", "Marche \195\160 reculons", function()
			return H.MoonWalkEnabled;
		end, function(j)
			H.MoonWalkEnabled = j;
		end, s.Accent);
		QW(G, a(), "ICE SKATE", "Glisse avec inertie", function()
			return H.IceSkateEnabled;
		end, function(j)
			H.IceSkateEnabled = j;
		end, s.Accent);
		QW(G, a(), "WALL JUMP", "Saut sur les murs (Space)", function()
			return H.WallJumpEnabled;
		end, function(j)
			H.WallJumpEnabled = j;
		end, s.Accent);
		XW(G, a(), "WALL JUMP POWER", 30, 150, function()
			return H.WallJumpPower;
		end, function(j)
			H.WallJumpPower = j;
		end, s.Accent);
		QW(G, a(), "GRAPPLE", "Crochet (G) \226\128\148 re-G pour l\195\162cher", function()
			return H.GrappleEnabled;
		end, function(j)
			H.GrappleEnabled = j;
			if not j then
				Cb();
			end;
		end, s.Accent);
		XW(G, a(), "GRAPPLE RANGE", 100, 800, function()
			return H.GrappleRange;
		end, function(j)
			H.GrappleRange = j;
		end, s.Accent);
		QW(G, a(), "ROLL", "Roulade (R)", function()
			return H.RollEnabled;
		end, function(j)
			H.RollEnabled = j;
		end, s.Accent);
		QW(G, a(), "CROUCH SLIDE", "Glisse accroupi (Ctrl)", function()
			return H.CrouchSlideEnabled;
		end, function(j)
			H.CrouchSlideEnabled = j;
		end, s.Accent);
		QW(G, a(), "PARAGLIDE", "Chute lente + avanc\195\169e auto", function()
			return H.ParaglideEnabled;
		end, function(j)
			H.ParaglideEnabled = j;
		end, s.Accent);
		XW(G, a(), "PARAGLIDE FALL", 1, 30, function()
			return H.ParaglideFallSpeed;
		end, function(j)
			H.ParaglideFallSpeed = j;
		end, s.Accent);
		XW(G, a(), "PARAGLIDE FORWARD", 0, 80, function()
			return H.ParaglideForward;
		end, function(j)
			H.ParaglideForward = j;
		end, s.Accent);
		MW(G, a(), "Stats");
		XW(G, a(), "WALKSPEED", 16, 200, function()
			return b.WalkSpeed;
		end, function(j)
			kp(j);
		end, s.Accent);
		XW(G, a(), "JUMPPOWER", 50, 500, function()
			return b.JumpPower;
		end, function(j)
			Jp(j);
		end, s.Accent);
		XW(G, a(), "GRAVITY", 0, 196, function()
			return b.Gravity;
		end, function(j)
			up(j);
		end, s.Accent);
		PW(G, a(), "RESET CHARACTER", "Respawn imm\195\169diat", Color3.fromRGB(255, 80, 80), function()
			vp();
			yp("Player", "Reset en cours...", false);
		end);
	end;
ZW = function(j)
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Animation",
			TextColor3 = s.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "10 emotes en preset + ajout dynamique",
			TextColor3 = s.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		local G = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 110),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundColor3 = s.Surface,
				BackgroundTransparency = .2,
				BorderSizePixel = 0,
				ZIndex = 26,
				Parent = j,
			});
		rp(G, 12);
		pp(G, s.Border, 1, .5);
		local a = jp("Frame", {
				Size = UDim2.new(0, 3, 0, 80),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = s.Accent,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = G,
			});
		rp(a, 2);
		jp("TextLabel", {
			Size = UDim2.new(1, -30, 0, 16),
			Position = UDim2.new(0, 26, 0, 8),
			BackgroundTransparency = 1,
			Text = "CONTR\195\148LE EMOTE",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = G,
		});
		local H = jp("TextButton", {
				Size = UDim2.new(0, 110, 0, 28),
				Position = UDim2.new(0, 26, 0, 30),
				BackgroundColor3 = Color3.fromRGB(200, 60, 60),
				BorderSizePixel = 0,
				Text = "STOP",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBold,
				TextSize = 12,
				AutoButtonColor = false,
				ZIndex = 28,
				Parent = G,
			});
		rp(H, 8);
		H.MouseEnter:Connect(function()
			(r:Create(H, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(230, 80, 80) })):Play();
		end);
		H.MouseLeave:Connect(function()
			(r:Create(H, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(200, 60, 60) })):Play();
		end);
		H.MouseButton1Click:Connect(function()
			h();
			sp("\226\143\185 Emote stopp\195\169e", Color3.fromRGB(200, 60, 60));
		end);
		local x = jp("TextButton", {
				Size = UDim2.new(0, 110, 0, 28),
				Position = UDim2.new(0, 146, 0, 30),
				BackgroundColor3 = v.loop and s.Accent or s.SurfaceHi,
				BorderSizePixel = 0,
				Text = "LOOP: OFF",
				TextColor3 = s.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				AutoButtonColor = false,
				ZIndex = 28,
				Parent = G,
			});
		rp(x, 8);
		local function B()
			x.BackgroundColor3 = v.loop and s.Accent or s.SurfaceHi;
			x.Text = v.loop and "LOOP: ON" or "LOOP: OFF";
			x.TextColor3 = v.loop and s.TextOnAccent or s.TextPrimary;
			if v.currentTrack then
				pcall(function()
					v.currentTrack.Looped = v.loop;
				end);
			end;
		end;
		x.MouseButton1Click:Connect(function()
			v.loop = not v.loop;
			B();
		end);
		local y = {
				{ label = "Action", val = Enum.AnimationPriority.Action },
				{ label = "Action2", val = Enum.AnimationPriority.Action2 },
				{ label = "Action3", val = Enum.AnimationPriority.Action3 },
				{ label = "Action4", val = Enum.AnimationPriority.Action4 },
				{ label = "Movement", val = Enum.AnimationPriority.Movement },
				{ label = "Idle", val = Enum.AnimationPriority.Idle },
				{ label = "Core", val = Enum.AnimationPriority.Core },
			};
		local l = 1;
		for j, r in ipairs(y) do
			if r.val == v.priority then
				l = j;
				break;
			end;
		end;
		local q = jp("TextButton", {
				Size = UDim2.new(0, 140, 0, 28),
				Position = UDim2.new(0, 266, 0, 30),
				BackgroundColor3 = s.SurfaceHi,
				BorderSizePixel = 0,
				Text = "PRIO: " .. y[l].label,
				TextColor3 = s.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				AutoButtonColor = false,
				ZIndex = 28,
				Parent = G,
			});
		rp(q, 8);
		q.MouseButton1Click:Connect(function()
			l = l + 1;
			if l > #y then
				l = 1;
			end;
			v.priority = y[l].val;
			q.Text = "PRIO: " .. y[l].label;
			if v.currentTrack then
				pcall(function()
					v.currentTrack.Priority = v.priority;
				end);
			end;
		end);
		jp("TextLabel", {
			Size = UDim2.new(0, 70, 0, 14),
			Position = UDim2.new(0, 26, 0, 68),
			BackgroundTransparency = 1,
			Text = "VITESSE",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = G,
		});
		local m = jp("TextLabel", {
				Size = UDim2.new(0, 50, 0, 14),
				Position = UDim2.new(1, -56, 0, 68),
				BackgroundTransparency = 1,
				Text = tostring(v.speed) .. "x",
				TextColor3 = s.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Right,
				ZIndex = 27,
				Parent = G,
			});
		local C = jp("Frame", {
				Size = UDim2.new(1, -146, 0, 8),
				Position = UDim2.new(0, 100, 0, 72),
				BackgroundColor3 = s.SurfaceHi,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = G,
			});
		rp(C, 4);
		local D = math.clamp(((v.speed - .1)) / (2.9), 0, 1);
		local R = jp("Frame", {
				Size = UDim2.new(D, 0, 1, 0),
				BackgroundColor3 = s.Accent,
				BorderSizePixel = 0,
				ZIndex = 28,
				Parent = C,
			});
		rp(R, 4);
		local d = jp("Frame", {
				Size = UDim2.new(0, 14, 0, 14),
				Position = UDim2.new(D, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = C,
			});
		rp(d, 7);
		local o = jp("TextButton", {
				Size = UDim2.new(1, -146, 0, 22),
				Position = UDim2.new(0, 100, 0, 60),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = G,
			});
		local O = false;
		local function w(j)
			local r = C.AbsolutePosition.X;
			local G = C.AbsoluteSize.X;
			if G <= 0 then
				return;
			end;
			local p = math.clamp(((j - r)) / G, 0, 1);
			local a = .1 + p * (2.9);
			a = math.floor(a * 10 + .5) / 10;
			v.speed = a;
			d.Position = UDim2.new(p, 0, .5, 0);
			R.Size = UDim2.new(p, 0, 1, 0);
			m.Text = tostring(a) .. "x";
			if v.currentTrack then
				pcall(function()
					v.currentTrack:AdjustSpeed(a);
				end);
			end;
		end;
		o.InputBegan:Connect(function(j)
			if j.UserInputType == Enum.UserInputType.MouseButton1 or j.UserInputType == Enum.UserInputType.Touch then
				O = true;
				w(j.Position.X);
			end;
		end);
		o.InputChanged:Connect(function(j)
			if not O then
				return;
			end;
			if j.UserInputType == Enum.UserInputType.MouseMovement or j.UserInputType == Enum.UserInputType.Touch then
				w(j.Position.X);
			end;
		end);
		p.InputEnded:Connect(function(j)
			if j.UserInputType == Enum.UserInputType.MouseButton1 or j.UserInputType == Enum.UserInputType.Touch then
				O = false;
			end;
		end);
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 196),
			BackgroundTransparency = 1,
			Text = "AJOUTER UNE EMOTE",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		local t = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 110),
				Position = UDim2.new(0, 0, 0, 218),
				BackgroundColor3 = s.Surface,
				BackgroundTransparency = .2,
				BorderSizePixel = 0,
				ZIndex = 26,
				Parent = j,
			});
		rp(t, 12);
		pp(t, s.Border, 1, .5);
		local A = jp("Frame", {
				Size = UDim2.new(0, 3, 0, 80),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(240, 165, 95),
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = t,
			});
		rp(A, 2);
		local L = jp("TextBox", {
				Size = UDim2.new(.4, -12, 0, 30),
				Position = UDim2.new(0, 26, 0, 20),
				BackgroundColor3 = s.SurfaceHi,
				BackgroundTransparency = .3,
				BorderSizePixel = 0,
				Text = "",
				PlaceholderText = "Nom (ex: Floss)",
				PlaceholderColor3 = s.TextMuted,
				TextColor3 = s.TextPrimary,
				Font = Enum.Font.Gotham,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				ClearTextOnFocus = false,
				ZIndex = 28,
				Parent = t,
			});
		rp(L, 8);
		jp("UIPadding", { PaddingLeft = UDim.new(0, 10), Parent = L });
		local e = jp("TextBox", {
				Size = UDim2.new(.5, -22, 0, 30),
				Position = UDim2.new(.4, 0, 0, 20),
				BackgroundColor3 = s.SurfaceHi,
				BackgroundTransparency = .3,
				BorderSizePixel = 0,
				Text = "",
				PlaceholderText = "rbxassetid://XXXXXXXXXX",
				PlaceholderColor3 = s.TextMuted,
				TextColor3 = s.TextPrimary,
				Font = Enum.Font.Gotham,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				ClearTextOnFocus = false,
				ZIndex = 28,
				Parent = t,
			});
		rp(e, 8);
		jp("UIPadding", { PaddingLeft = UDim.new(0, 10), Parent = e });
		local b = jp("TextButton", {
				Size = UDim2.new(1, -52, 0, 30),
				Position = UDim2.new(0, 26, 0, 62),
				BackgroundColor3 = s.Accent,
				BorderSizePixel = 0,
				Text = "+ AJOUTER \195\128 LA LISTE",
				TextColor3 = s.TextOnAccent,
				Font = Enum.Font.GothamBold,
				TextSize = 12,
				AutoButtonColor = false,
				ZIndex = 28,
				Parent = t,
			});
		rp(b, 8);
		b.MouseEnter:Connect(function()
			(r:Create(b, TweenInfo.new(.15), { BackgroundTransparency = .15 })):Play();
		end);
		b.MouseLeave:Connect(function()
			(r:Create(b, TweenInfo.new(.15), { BackgroundTransparency = 0 })):Play();
		end);
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 346),
			BackgroundTransparency = 1,
			Text = "MES EMOTES",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		local f = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 368),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = j,
			});
		local z = jp("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = f });
		local function g()
			for j, r in ipairs(f:GetChildren()) do
				if r:IsA("TextButton") or r:IsA("Frame") then
					r:Destroy();
				end;
			end;
			local j = 0;
			for G, p in ipairs(v.list) do
				j = j + 1;
				local a = jp("TextButton", {
						Size = UDim2.new(1, 0, 0, 50),
						BackgroundColor3 = s.Surface,
						BackgroundTransparency = .25,
						BorderSizePixel = 0,
						Text = "",
						AutoButtonColor = false,
						LayoutOrder = j,
						ZIndex = 26,
						Parent = f,
					});
				rp(a, 10);
				pp(a, s.Border, 1, .5);
				local H = jp("Frame", {
						Size = UDim2.new(0, 3, 0, 28),
						Position = UDim2.new(0, 12, .5, 0),
						AnchorPoint = Vector2.new(0, .5),
						BackgroundColor3 = s.Accent,
						BorderSizePixel = 0,
						ZIndex = 27,
						Parent = a,
					});
				rp(H, 2);
				jp("TextLabel", {
					Size = UDim2.new(1, -160, 0, 18),
					Position = UDim2.new(0, 24, 0, 8),
					BackgroundTransparency = 1,
					Text = p.name,
					TextColor3 = s.TextPrimary,
					Font = Enum.Font.GothamBold,
					TextSize = 14,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 27,
					Parent = a,
				});
				jp("TextLabel", {
					Size = UDim2.new(1, -160, 0, 12),
					Position = UDim2.new(0, 24, 0, 28),
					BackgroundTransparency = 1,
					Text = p.id,
					TextColor3 = s.TextMuted,
					Font = Enum.Font.Gotham,
					TextSize = 9,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 27,
					Parent = a,
				});
				local x = jp("TextButton", {
						Size = UDim2.new(0, 70, 0, 32),
						Position = UDim2.new(1, -160, .5, 0),
						AnchorPoint = Vector2.new(0, .5),
						BackgroundColor3 = s.Accent,
						BorderSizePixel = 0,
						Text = "\226\150\182 JOUER",
						TextColor3 = s.TextOnAccent,
						Font = Enum.Font.GothamBold,
						TextSize = 11,
						AutoButtonColor = false,
						ZIndex = 28,
						Parent = a,
					});
				rp(x, 8);
				x.MouseButton1Click:Connect(function()
					c(p);
				end);
				local B = jp("TextButton", {
						Size = UDim2.new(0, 70, 0, 32),
						Position = UDim2.new(1, -84, .5, 0),
						AnchorPoint = Vector2.new(0, .5),
						BackgroundColor3 = Color3.fromRGB(180, 60, 60),
						BorderSizePixel = 0,
						Text = "\226\156\149 SUPPR",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						Font = Enum.Font.GothamBold,
						TextSize = 10,
						AutoButtonColor = false,
						ZIndex = 28,
						Parent = a,
					});
				rp(B, 8);
				B.MouseButton1Click:Connect(function()
					for j, r in ipairs(v.list) do
						if r.name == p.name and r.id == p.id then
							table.remove(v.list, j);
							break;
						end;
					end;
					Q();
					g();
					sp("\240\159\151\145 Emote supprim\195\169e : " .. p.name, Color3.fromRGB(200, 60, 60));
				end);
				a.MouseEnter:Connect(function()
					(r:Create(a, TweenInfo.new(.15), { BackgroundTransparency = .1 })):Play();
				end);
				a.MouseLeave:Connect(function()
					(r:Create(a, TweenInfo.new(.15), { BackgroundTransparency = .25 })):Play();
				end);
			end;
		end;
		b.MouseButton1Click:Connect(function()
			local j = L.Text;
			local r = e.Text;
			if j == nil or j == "" then
				yp("Emote", "Nom manquant", true);
				return;
			end;
			if r == nil or r == "" then
				yp("Emote", "ID manquant", true);
				return;
			end;
			if not r:find("rbxassetid://") then
				if tonumber(r) then
					r = "rbxassetid://" .. r;
				else
					yp("Emote", "Format ID invalide", true);
					return;
				end;
			end;
			table.insert(v.list, { name = j, id = r });
			Q();
			L.Text = "";
			e.Text = "";
			g();
			yp("Emote", "Ajout\195\169e : " .. j, false);
			sp("\226\158\149 Emote ajout\195\169e : " .. j, s.Accent);
		end);
		g();
	end;
VW = function(j)
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169port\195\169",
			TextColor3 = s.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169portation rapide",
			TextColor3 = s.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		local r = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = j,
			});
		jp("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = r });
		PW(r, 1, "TP SPAWN", "Te t\195\169l\195\169porte au spawn", Color3.fromRGB(115, 155, 240), function()
			Mp();
		end);
		PW(r, 2, "SET MAP", "Sauvegarde ta position actuelle", Color3.fromRGB(140, 200, 155), function()
			Qp(false);
		end);
		PW(r, 3, "MAP", "TP \195\160 la position sauvegard\195\169e", Color3.fromRGB(240, 165, 95), function()
			hp();
		end);
	end;
SW = function(j)
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Auto Farm",
			TextColor3 = s.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "R\195\169cup\195\168re les pi\195\168ces automatiquement",
			TextColor3 = s.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		local r = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = j,
			});
		jp("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = r });
		local G = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 64),
				BackgroundColor3 = s.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = 1,
				ZIndex = 26,
				Parent = r,
			});
		rp(G, 12);
		pp(G, s.Border, 1, .5);
		local p = jp("Frame", {
				Size = UDim2.new(0, 3, 0, 40),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(240, 200, 120),
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = G,
			});
		rp(p, 2);
		jp("TextLabel", {
			Size = UDim2.new(1, -30, 0, 16),
			Position = UDim2.new(0, 26, 0, 8),
			BackgroundTransparency = 1,
			Text = "STATISTIQUES",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = G,
		});
		local a = jp("TextLabel", {
				Size = UDim2.new(1, -30, 0, 16),
				Position = UDim2.new(0, 26, 0, 26),
				BackgroundTransparency = 1,
				Text = "Pi\195\168ces : 0",
				TextColor3 = s.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = G,
			});
		local H = jp("TextLabel", {
				Size = UDim2.new(1, -30, 0, 16),
				Position = UDim2.new(0, 26, 0, 42),
				BackgroundTransparency = 1,
				Text = "Temps : 0s",
				TextColor3 = s.TextSecondary,
				Font = Enum.Font.Gotham,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = G,
			});
		task.spawn(function()
			while G.Parent do
				a.Text = "Pi\195\168ces : " .. k.coinsCollected;
				if k.running and k.startTime > 0 then
					H.Text = "Temps : " .. (math.floor(tick() - k.startTime) .. "s");
				else
					H.Text = "Temps : 0s";
				end;
				task.wait(.5);
			end;
		end);
		QW(r, 2, "AUTO FARM COINS", "Fly progressif + sous la map (anti-kick)", function()
			return k.running;
		end, function(j)
			HW();
		end, s.Accent);
		MW(r, 3, "R\195\169glages");
		XW(r, 4, "VITESSE FLY", 40, 400, function()
			return J.FlySpeed;
		end, function(j)
			J.FlySpeed = j;
		end, Color3.fromRGB(115, 155, 240));
		XW(r, 5, "RAYON DE COLLECTE", 20, 500, function()
			return J.CollectRadius;
		end, function(j)
			J.CollectRadius = j;
		end, Color3.fromRGB(170, 130, 235));
		XW(r, 6, "PAUSE ANTI-KICK", 0, 2, function()
			return J.AntiKickDelay;
		end, function(j)
			J.AntiKickDelay = j;
		end, Color3.fromRGB(220, 115, 115));
		XW(r, 7, "DISTANCE RAMASSAGE", 1, 10, function()
			return J.CollectDistance;
		end, function(j)
			J.CollectDistance = j;
		end, Color3.fromRGB(130, 205, 155));
		MW(r, 8, "Mode sous la map");
		QW(r, 9, "DESCENDRE SOUS LA MAP", "Apr\195\168s chaque pi\195\168ce (anti-murder)", function()
			return J.GoUnderMap;
		end, function(j)
			J.GoUnderMap = j;
		end, s.Accent);
		XW(r, 10, "PROFONDEUR", 2, 30, function()
			return J.UnderMapDepth;
		end, function(j)
			J.UnderMapDepth = j;
		end, Color3.fromRGB(240, 165, 95));
		MW(r, 11, "Avanc\195\169");
		QW(r, 12, "TP DIRECT PI\195\136CE", "TP instantan\195\169 au lieu de fly (risqu\195\169)", function()
			return J.TpDirect;
		end, function(j)
			J.TpDirect = j;
		end, s.Accent);
		QW(r, 13, "IGNORER SI MURDER PROCHE", "S\'arr\195\170te si un tueur approche", function()
			return J.IgnoreIfMurderNear;
		end, function(j)
			J.IgnoreIfMurderNear = j;
		end, s.Accent);
		XW(r, 14, "DISTANCE MURDER", 10, 200, function()
			return J.MurderDistance;
		end, function(j)
			J.MurderDistance = j;
		end, Color3.fromRGB(255, 80, 80));
		MW(r, 15, "Extras");
		QW(r, 16, "AUTO SET MAP", "Sauvegarde auto la position au respawn", function()
			return J.AutoSetMap;
		end, function(j)
			J.AutoSetMap = j;
		end, s.Accent);
		QW(r, 17, "RETOUR SPAWN APR\195\136S ROUND", "Retour au spawn \195\160 chaque respawn", function()
			return J.ReturnSpawn;
		end, function(j)
			J.ReturnSpawn = j;
		end, s.Accent);
		PW(r, 18, "RESET STATS", "Remet \195\160 0 les compteurs", Color3.fromRGB(220, 115, 115), function()
			k.coinsCollected = 0;
			k.startTime = tick();
			yp("Auto Farm", "Stats reset", false);
		end);
	end;
UW = function(j)
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Combat",
			TextColor3 = s.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Section \195\160 venir",
			TextColor3 = s.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
	end;
IW = function(j)
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Onglet Esp",
			TextColor3 = s.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 50),
			BackgroundTransparency = 1,
			Text = "R\195\148LES",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		local r = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 72),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = j,
			});
		jp("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = r });
		QW(r, 1, "ESP Murderer", "Voir le tueur", function()
			return A.EspShowMurder;
		end, function(j)
			A.EspShowMurder = j;
		end, s.Accent);
		QW(r, 2, "ESP Sheriff", "Voir le sh\195\169rif", function()
			return A.EspShowSheriff;
		end, function(j)
			A.EspShowSheriff = j;
		end, s.Accent);
		QW(r, 3, "ESP Innocent", "Voir les innocents", function()
			return A.EspShowInnocent;
		end, function(j)
			A.EspShowInnocent = j;
		end, s.Accent);
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 260),
			BackgroundTransparency = 1,
			Text = "OPTIONS",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		local G = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 282),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = j,
			});
		jp("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = G });
		QW(G, 1, "X-RAY", "Voir \195\160 travers les murs", function()
			return A.XRayEnabled;
		end, function(j)
			A.XRayEnabled = j;
			dW();
		end, s.Accent);
		QW(G, 2, "Box", "Cadre multicolore autour du joueur", function()
			return e.BoxEnabled;
		end, function(j)
			e.BoxEnabled = j;
		end, s.Accent);
		QW(G, 3, "TRACER", "Ligne multicolore vers le joueur", function()
			return e.TracerEnabled;
		end, function(j)
			e.TracerEnabled = j;
		end, s.Accent);
		QW(G, 4, "ESP COIN", "Voir toutes les pi\195\168ces de la map", function()
			return A.EspShowCoins;
		end, function(j)
			A.EspShowCoins = j;
		end, s.Accent);
	end;
iW = function(j)
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Murder",
			TextColor3 = s.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 tueur",
			TextColor3 = s.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		local r = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = j,
			});
		jp("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = r });
		QW(r, 1, "TP ALL IN FRONT", "Empile les joueurs \195\160 4 studs devant toi", function()
			return xW.running;
		end, function(j)
			lW();
		end, s.Accent);
		PW(r, 2, "TP MURDERER", "Te t\195\169l\195\169porte au tueur", Color3.fromRGB(255, 80, 80), function()
			local j = Dp();
			if not j then
				yp("Erreur", "Tueur introuvable", true);
				return;
			end;
			local r = x.Character;
			local G = r and r:FindFirstChild("HumanoidRootPart");
			local p = j.Character and j.Character:FindFirstChild("HumanoidRootPart");
			if G and p then
				pcall(function()
					G.CFrame = p.CFrame + Vector3.new(0, 3, 3);
				end);
				yp("TP", "TP vers " .. j.Name, false);
			end;
		end);
	end;
kW = function(j)
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Sheriff",
			TextColor3 = s.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 sh\195\169rif",
			TextColor3 = s.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		local r = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = j,
			});
		jp("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = r });
		QW(r, 1, "AUTO SHOOT MURDERER", "Tire auto sur le tueur (si Sheriff)", function()
			return A.AutoShootEnabled;
		end, function(j)
			A.AutoShootEnabled = j;
		end, s.Accent);
		PW(r, 2, "TP SHERIFF", "Te t\195\169l\195\169porte au sh\195\169rif", Color3.fromRGB(60, 120, 255), function()
			local j = Rp();
			if not j then
				yp("Erreur", "Sh\195\169rif introuvable", true);
				return;
			end;
			local r = x.Character;
			local G = r and r:FindFirstChild("HumanoidRootPart");
			local p = j.Character and j.Character:FindFirstChild("HumanoidRootPart");
			if G and p then
				pcall(function()
					G.CFrame = p.CFrame + Vector3.new(0, 3, 3);
				end);
				yp("TP", "TP vers " .. j.Name, false);
			end;
		end);
	end;
JW = function(j)
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Troll",
			TextColor3 = s.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Cible un joueur, puis utilise les actions",
			TextColor3 = s.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 76),
			BackgroundTransparency = 1,
			Text = "JOUEUR CIBL\195\137",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		Ab(j);
		jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 164),
			BackgroundTransparency = 1,
			Text = "ACTIONS",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		local r = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 186),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = j,
			});
		jp("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = r });
		PW(r, 1, "TP \195\128 LA CIBLE", "Te t\195\169l\195\169porte sur le joueur s\195\169lectionn\195\169", Color3.fromRGB(255, 80, 80), function()
			local j = t.TrollSelected;
			if not j or not j.Character then
				yp("Troll", "Aucune cible valide", true);
				return;
			end;
			local r = j.Character:FindFirstChild("HumanoidRootPart");
			local G = x.Character;
			local p = G and G:FindFirstChild("HumanoidRootPart");
			if r and p then
				pcall(function()
					p.CFrame = r.CFrame + Vector3.new(0, 3, 3);
				end);
				sp("\240\159\142\175 TP vers " .. j.Name, Color3.fromRGB(255, 80, 80));
			end;
		end);
		PW(r, 2, "SPECTATE CIBLE", "Ta cam\195\169ra suit le joueur s\195\169lectionn\195\169", Color3.fromRGB(170, 130, 235), function()
			local j = t.TrollSelected;
			local r = workspace.CurrentCamera;
			if not j or not j.Character then
				yp("Troll", "Aucune cible valide", true);
				return;
			end;
			r.CameraSubject = j.Character:FindFirstChildOfClass("Humanoid") or j.Character;
			sp("\240\159\145\129 Cam\195\169ra \226\134\146 " .. j.Name, Color3.fromRGB(170, 130, 235));
		end);
	end;
nW = function(j)
		if t.CurrentPage == j then
			return;
		end;
		t.CurrentPage = j;
		for r, G in pairs(t.NavItems) do
			G.setActive(r == j);
		end;
		local G = t.Scroll;
		if not G then
			return;
		end;
		local p = G:FindFirstChild("PageBody");
		if p then
			for j, G in ipairs(p:GetChildren()) do
				if G:IsA("GuiObject") then
					(r:Create(G, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
					if G:IsA("TextLabel") then
						(r:Create(G, TweenInfo.new(.15), { TextTransparency = 1 })):Play();
					end;
				end;
			end;
			task.wait(.18);
			p:Destroy();
		end;
		G.CanvasPosition = Vector2.new(0, 0);
		local a = jp("Frame", {
				Name = "PageBody",
				Size = UDim2.new(1, -48, 0, 0),
				Position = UDim2.new(0, 24, 0, 20),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 24,
				Parent = G,
			});
		if j == "home" then
			WW(a);
		elseif j == "esp" then
			IW(a);
		elseif j == "murder" then
			iW(a);
		elseif j == "sheriff" then
			kW(a);
		elseif j == "player" then
			uW(a);
		elseif j == "combat" then
			UW(a);
		elseif j == "autofarm" then
			SW(a);
		elseif j == "troll" then
			JW(a);
		elseif j == "animation" then
			ZW(a);
		elseif j == "teleport" then
			VW(a);
		elseif j == "settings" then
			YW(a);
		end;
	end;
local function Lb(j, G, p, a)
	local H = jp("TextButton", {
			Size = UDim2.new(1, 0, 0, 38),
			BackgroundColor3 = s.Surface,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			LayoutOrder = a,
			ZIndex = 20,
			Parent = j,
		});
	rp(H, 8);
	local x = jp("Frame", {
			Size = UDim2.new(0, 3, 0, 0),
			Position = UDim2.new(0, 0, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = s.Accent,
			BorderSizePixel = 0,
			ZIndex = 22,
			Parent = H,
		});
	rp(x, 2);
	local B = jp("TextLabel", {
			Size = UDim2.new(1, -20, 1, 0),
			Position = UDim2.new(0, 18, 0, 0),
			BackgroundTransparency = 1,
			Text = G,
			TextColor3 = s.TextSecondary,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 21,
			Parent = H,
		});
	local y = { active = false };
	local function l(j)
		y.active = j;
		if j then
			(r:Create(H, TweenInfo.new(.2), { BackgroundTransparency = .7 })):Play();
			(r:Create(x, TweenInfo.new(.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 3, 0, 22) })):Play();
			(r:Create(B, TweenInfo.new(.2), { TextColor3 = s.Accent, TextSize = 14 })):Play();
		else
			(r:Create(H, TweenInfo.new(.2), { BackgroundTransparency = 1 })):Play();
			(r:Create(x, TweenInfo.new(.2), { Size = UDim2.new(0, 3, 0, 0) })):Play();
			(r:Create(B, TweenInfo.new(.2), { TextColor3 = s.TextSecondary, TextSize = 13 })):Play();
		end;
	end;
	H.MouseEnter:Connect(function()
		if not y.active then
			(r:Create(H, TweenInfo.new(.15), { BackgroundTransparency = .85 })):Play();
			(r:Create(B, TweenInfo.new(.15), { TextColor3 = s.TextPrimary })):Play();
		end;
	end);
	H.MouseLeave:Connect(function()
		if not y.active then
			(r:Create(H, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
			(r:Create(B, TweenInfo.new(.15), { TextColor3 = s.TextSecondary })):Play();
		end;
	end);
	t.NavItems[p] = { btn = H, setActive = l, state = y };
	return H, l;
end;
local function eb(j, r, G)
	local p = jp("Frame", {
			Size = UDim2.new(1, -4, 0, 22),
			BackgroundTransparency = 1,
			LayoutOrder = G,
			ZIndex = 19,
			Parent = j,
		});
	jp("TextLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 8, 0, 0),
		BackgroundTransparency = 1,
		Text = string.upper(r),
		TextColor3 = s.TextMuted,
		Font = Enum.Font.GothamBold,
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 19,
		Parent = p,
	});
end;
local function bb()
	local j = jp("ScreenGui", {
			Name = "MenuV73_GUI",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			DisplayOrder = 999,
			Parent = B,
		});
	t.Gui = j;
	local G = zW("LoadingContainer", UDim2.new(0, 460, 0, 240), j);
	t.LoadingFrame = G;
	G.BackgroundTransparency = 1;
	(r:Create(G, TweenInfo.new(.5), { BackgroundTransparency = 0 })):Play();
	local p = jp("Frame", {
			Size = UDim2.new(0, 60, 0, 60),
			Position = UDim2.new(.5, 0, 0, 30),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundTransparency = 1,
			ZIndex = 8,
			Parent = G,
		});
	for j = 1, 14, 1 do
		local r = ((j - 1)) * (((math.pi * 2) / 14));
		local G = jp("Frame", {
				Size = UDim2.new(0, 5, 0, 5),
				Position = UDim2.new(.5, math.cos(r) * 22, .5, math.sin(r) * 22),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = s.Accent,
				BackgroundTransparency = 1 - ((j / 14)) * .75,
				BorderSizePixel = 0,
				ZIndex = 9,
				Parent = p,
			});
		rp(G, 2);
		R(G, "BackgroundColor3", "Accent");
	end;
	task.spawn(function()
		while p.Parent do
			p.Rotation = ((p.Rotation + 5)) % 360;
			task.wait(.02);
		end;
	end);
	jp("TextLabel", {
		Size = UDim2.new(1, 0, 0, 32),
		Position = UDim2.new(0, 0, 0, 98),
		BackgroundTransparency = 1,
		Text = "Chargement",
		TextColor3 = s.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 24,
		ZIndex = 8,
		Parent = G,
	});
	local a = jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 134),
			BackgroundTransparency = 1,
			Text = "Initialisation...",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 8,
			Parent = G,
		});
	local H = jp("Frame", {
			Size = UDim2.new(.7, 0, 0, 8),
			Position = UDim2.new(.5, 0, 0, 172),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = s.SurfaceHi,
			BackgroundTransparency = .4,
			BorderSizePixel = 0,
			ZIndex = 8,
			Parent = G,
		});
	rp(H, 4);
	local x = jp("Frame", {
			Size = UDim2.new(0, 0, 1, 0),
			BackgroundColor3 = s.Accent,
			BorderSizePixel = 0,
			ZIndex = 9,
			Parent = H,
			ClipsDescendants = true,
		});
	rp(x, 4);
	R(x, "BackgroundColor3", "Accent");
	local y = jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 192),
			BackgroundTransparency = 1,
			Text = "0 %",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 8,
			Parent = G,
		});
	local l = tick();
	task.spawn(function()
		while tick() - l < w.LoadingDuration do
			local j = math.clamp(((tick() - l)) / w.LoadingDuration, 0, 1);
			x.Size = UDim2.new(j, 0, 1, 0);
			y.Text = math.floor(j * 100) .. " %";
			if j < .3 then
				a.Text = "Initialisation...";
			elseif j < .6 then
				a.Text = "Chargement...";
			elseif j < .9 then
				a.Text = "Pr\195\169paration...";
			else
				a.Text = "Finalisation...";
			end;
			task.wait(.03);
		end;
		x.Size = UDim2.new(1, 0, 1, 0);
		y.Text = "100 %";
	end);
	return G;
end;
local function fb(j)
	local r = t.Gui;
	local G = zW("CodeContainer", UDim2.new(0, 500, 0, 380), r);
	t.CodeFrame = G;
	G.BackgroundTransparency = 1;
	local p = jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 36),
			BackgroundTransparency = 1,
			Text = "ACC\195\136S S\195\137CURIS\195\137",
			TextColor3 = s.Accent,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 12,
			Parent = G,
		});
	R(p, "TextColor3", "Accent");
	jp("TextLabel", {
		Size = UDim2.new(1, 0, 0, 38),
		Position = UDim2.new(0, 0, 0, 60),
		BackgroundTransparency = 1,
		Text = "V\195\169rification requise",
		TextColor3 = s.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 26,
		ZIndex = 12,
		Parent = G,
	});
	jp("TextLabel", {
		Size = UDim2.new(1, -60, 0, 34),
		Position = UDim2.new(0, 30, 0, 104),
		BackgroundTransparency = 1,
		Text = "Entre le code d\'acc\195\168s",
		TextColor3 = s.TextSecondary,
		Font = Enum.Font.Gotham,
		TextSize = 13,
		TextWrapped = true,
		ZIndex = 12,
		Parent = G,
	});
	local a = jp("TextBox", {
			Size = UDim2.new(.82, 0, 0, 54),
			Position = UDim2.new(.5, 0, 0, 154),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = s.Surface,
			BackgroundTransparency = .3,
			BorderSizePixel = 0,
			Text = "",
			PlaceholderText = "Code d\'acc\195\168s...",
			PlaceholderColor3 = s.TextMuted,
			TextColor3 = s.TextPrimary,
			Font = Enum.Font.GothamMedium,
			TextSize = 16,
			TextXAlignment = Enum.TextXAlignment.Center,
			ClearTextOnFocus = false,
			ZIndex = 13,
			Parent = G,
		});
	rp(a, 12);
	local H = pp(a, s.Border, 1.5, .3);
	a.Focused:Connect(function()
		H.Color = s.Accent;
		H.Transparency = .2;
	end);
	a.FocusLost:Connect(function()
		H.Color = s.Border;
		H.Transparency = .3;
	end);
	local x = jp("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 216),
			BackgroundTransparency = 1,
			Text = "",
			TextColor3 = s.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 12,
			Parent = G,
		});
	local B = jp("TextButton", {
			Size = UDim2.new(.82, 0, 0, 48),
			Position = UDim2.new(.5, 0, 0, 248),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = s.Accent,
			BorderSizePixel = 0,
			Text = "VALIDER",
			TextColor3 = s.TextOnAccent,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			AutoButtonColor = false,
			ZIndex = 13,
			Parent = G,
		});
	rp(B, 12);
	R(B, "BackgroundColor3", "Accent");
	R(B, "TextColor3", "TextOnAccent");
	local y, q, m = 0, 5, false;
	local function C()
		if m then
			return;
		end;
		if a.Text == l then
			m = true;
			t.Authenticated = true;
			x.Text = "Acc\195\168s autoris\195\169";
			x.TextColor3 = s.Success;
			H.Color = s.Success;
			task.wait(.4);
			xp(G, .35, function()
				t.CodeFrame = nil;
				if j then
					j();
				end;
			end);
		else
			y = y + 1;
			x.Text = string.format("Code incorrect \226\128\148 %d/%d", y, q);
			x.TextColor3 = s.Error;
			H.Color = s.Error;
			if y >= q then
				m = true;
				x.Text = "Acc\195\168s bloqu\195\169";
				task.wait(1.5);
				if r then
					r:Destroy();
				end;
				return;
			end;
			a.Text = "";
			pcall(function()
				a:CaptureFocus();
			end);
		end;
	end;
	B.MouseButton1Click:Connect(C);
	a.FocusLost:Connect(function(j)
		if j then
			C();
		end;
	end);
	task.spawn(function()
		task.wait(.6);
		pcall(function()
			a:CaptureFocus();
		end);
	end);
	Bp(G, .5);
	return G;
end;
local function zb(G, p)
	for a, H in ipairs(f) do
		local x = jp("Frame", {
				Size = UDim2.new(1, -10, 0, 64),
				BackgroundColor3 = s.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = a,
				ZIndex = 27,
				Parent = G,
			});
		rp(x, 12);
		pp(x, s.Border, 1, .5);
		local B = jp("Frame", {
				Size = UDim2.new(0, 10, 0, 10),
				Position = UDim2.new(0, 10, 0, 10),
				BackgroundColor3 = H.online and Color3.fromRGB(120, 220, 130) or Color3.fromRGB(110, 110, 120),
				BorderSizePixel = 0,
				ZIndex = 30,
				Parent = x,
			});
		rp(B, 5);
		jp("UIStroke", {
			Color = s.BgTop,
			Thickness = 2,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = B,
		});
		local y = jp("Frame", {
				Size = UDim2.new(0, 48, 0, 48),
				Position = UDim2.new(0, 28, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = s.SurfaceHi,
				BorderSizePixel = 0,
				ZIndex = 28,
				Parent = x,
			});
		rp(y, 24);
		local l = jp("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 29,
				Parent = y,
			});
		rp(l, 24);
		task.spawn(function()
			local r, G = pcall(function()
					return j:GetUserThumbnailAsync(H.userId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if r and G then
				l.Image = G;
			end;
		end);
		jp("TextLabel", {
			Size = UDim2.new(1, -260, 0, 18),
			Position = UDim2.new(0, 90, 0, 14),
			BackgroundTransparency = 1,
			Text = H.name,
			TextColor3 = s.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 29,
			Parent = x,
		});
		jp("TextLabel", {
			Size = UDim2.new(1, -260, 0, 14),
			Position = UDim2.new(0, 90, 0, 34),
			BackgroundTransparency = 1,
			Text = H.online and "En ligne" or "Hors ligne",
			TextColor3 = H.online and Color3.fromRGB(120, 220, 130) or s.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 29,
			Parent = x,
		});
		local q = jp("TextButton", {
				Size = UDim2.new(0, 90, 0, 30),
				Position = UDim2.new(1, -200, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = H.online and s.Accent or s.SurfaceHi,
				BackgroundTransparency = H.online and 0 or .3,
				BorderSizePixel = 0,
				Text = "REJOINDRE",
				TextColor3 = H.online and s.TextOnAccent or s.TextMuted,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				AutoButtonColor = false,
				ZIndex = 29,
				Parent = x,
			});
		rp(q, 8);
		if H.online then
			q.MouseEnter:Connect(function()
				(r:Create(q, TweenInfo.new(.15), { BackgroundTransparency = .15 })):Play();
			end);
			q.MouseLeave:Connect(function()
				(r:Create(q, TweenInfo.new(.15), { BackgroundTransparency = 0 })):Play();
			end);
			q.MouseButton1Click:Connect(function()
				yp("Communaut\195\169", "Connexion \195\160 " .. (H.name .. " en cours..."), false);
				sp("\240\159\148\151 Rejoindre " .. H.name, s.Accent);
			end);
		else
			q.MouseButton1Click:Connect(function()
				yp("Communaut\195\169", H.name .. " est hors ligne", true);
			end);
		end;
		local m = jp("TextButton", {
				Size = UDim2.new(0, 90, 0, 30),
				Position = UDim2.new(1, -100, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = s.SurfaceHi,
				BackgroundTransparency = .2,
				BorderSizePixel = 0,
				Text = "MESSAGE",
				TextColor3 = s.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				AutoButtonColor = false,
				ZIndex = 29,
				Parent = x,
			});
		rp(m, 8);
		m.MouseEnter:Connect(function()
			(r:Create(m, TweenInfo.new(.15), { BackgroundTransparency = .05, BackgroundColor3 = s.AccentSoft })):Play();
		end);
		m.MouseLeave:Connect(function()
			(r:Create(m, TweenInfo.new(.15), { BackgroundTransparency = .2, BackgroundColor3 = s.SurfaceHi })):Play();
		end);
		m.MouseButton1Click:Connect(function()
			if p then
				p(H);
			end;
		end);
	end;
end;
hW = function()
		if t.CommunityOpen and (t.CommunityFrame and t.CommunityFrame.Parent) then
			return;
		end;
		local j = t.Gui;
		if not j then
			return;
		end;
		local G = zW("CommunityFrame", UDim2.new(0, 560, 0, 600), j);
		t.CommunityFrame = G;
		t.CommunityOpen = true;
		G.BackgroundTransparency = 1;
		Hp(G, .5);
		local p = jp("TextButton", {
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
				Parent = G,
			});
		rp(p, 8);
		pp(p, s.Border, 1, .4);
		p.MouseEnter:Connect(function()
			(r:Create(p, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(200, 60, 60), BackgroundTransparency = 0 })):Play();
			(r:Create(p, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
		end);
		p.MouseLeave:Connect(function()
			(r:Create(p, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(36, 38, 48), BackgroundTransparency = .15 })):Play();
			(r:Create(p, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(220, 225, 235) })):Play();
		end);
		p.MouseButton1Click:Connect(function()
			cW();
		end);
		local a = jp("Frame", {
				Name = "CommHolder",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				ZIndex = 25,
				Parent = G,
			});
		local H, x;
		H = function()
				for j, r in ipairs(a:GetChildren()) do
					r:Destroy();
				end;
				jp("TextLabel", {
					Size = UDim2.new(1, -100, 0, 30),
					Position = UDim2.new(0, 32, 0, 22),
					BackgroundTransparency = 1,
					Text = "Communaut\195\169 Mulba",
					TextColor3 = s.TextPrimary,
					Font = Enum.Font.GothamBlack,
					TextSize = 22,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 25,
					Parent = a,
				});
				jp("TextLabel", {
					Size = UDim2.new(1, -100, 0, 18),
					Position = UDim2.new(0, 32, 0, 52),
					BackgroundTransparency = 1,
					Text = "Tous les utilisateurs du cheat \226\128\148 connect\195\169s en direct",
					TextColor3 = s.TextSecondary,
					Font = Enum.Font.Gotham,
					TextSize = 12,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 25,
					Parent = a,
				});
				local j = 0;
				for r, G in ipairs(f) do
					if G.online then
						j = j + 1;
					end;
				end;
				local r = jp("Frame", {
						Size = UDim2.new(0, 130, 0, 42),
						Position = UDim2.new(1, -160, 0, 26),
						BackgroundColor3 = s.Surface,
						BackgroundTransparency = .3,
						BorderSizePixel = 0,
						ZIndex = 26,
						Parent = a,
					});
				rp(r, 10);
				pp(r, s.Border, 1, .5);
				local G = jp("Frame", {
						Size = UDim2.new(0, 8, 0, 8),
						Position = UDim2.new(0, 14, .5, 0),
						AnchorPoint = Vector2.new(0, .5),
						BackgroundColor3 = s.Success,
						BorderSizePixel = 0,
						ZIndex = 27,
						Parent = r,
					});
				rp(G, 4);
				jp("TextLabel", {
					Size = UDim2.new(1, -34, 1, 0),
					Position = UDim2.new(0, 30, 0, 0),
					BackgroundTransparency = 1,
					Text = j .. " en ligne",
					TextColor3 = s.Success,
					Font = Enum.Font.GothamBold,
					TextSize = 12,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 27,
					Parent = r,
				});
				jp("Frame", {
					Size = UDim2.new(1, -64, 0, 1),
					Position = UDim2.new(0, 32, 0, 86),
					BackgroundColor3 = s.Border,
					BackgroundTransparency = .5,
					BorderSizePixel = 0,
					ZIndex = 25,
					Parent = a,
				});
				local p = jp("ScrollingFrame", {
						Size = UDim2.new(1, -64, 1, -130),
						Position = UDim2.new(0, 32, 0, 100),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						ScrollBarThickness = 6,
						ScrollBarImageColor3 = s.SurfaceHi,
						ScrollBarImageTransparency = .3,
						CanvasSize = UDim2.new(0, 0, 0, 0),
						AutomaticCanvasSize = Enum.AutomaticSize.Y,
						ScrollingDirection = Enum.ScrollingDirection.Y,
						ZIndex = 26,
						Parent = a,
					});
				local H = jp("Frame", {
						Size = UDim2.new(1, 0, 0, 0),
						BackgroundTransparency = 1,
						AutomaticSize = Enum.AutomaticSize.Y,
						ZIndex = 26,
						Parent = p,
					});
				jp("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = H });
				zb(H, function(j)
					x(j);
				end);
			end;
		x = function(j)
				for j, r in ipairs(a:GetChildren()) do
					r:Destroy();
				end;
				local G = jp("TextButton", {
						Size = UDim2.new(0, 90, 0, 32),
						Position = UDim2.new(0, 32, 0, 22),
						BackgroundColor3 = s.Surface,
						BackgroundTransparency = .2,
						BorderSizePixel = 0,
						Text = "\226\134\144 Retour",
						TextColor3 = s.TextPrimary,
						Font = Enum.Font.GothamBold,
						TextSize = 12,
						AutoButtonColor = false,
						ZIndex = 30,
						Parent = a,
					});
				rp(G, 8);
				pp(G, s.Border, 1, .4);
				G.MouseEnter:Connect(function()
					(r:Create(G, TweenInfo.new(.15), { BackgroundTransparency = .05, BackgroundColor3 = s.SurfaceHi })):Play();
				end);
				G.MouseLeave:Connect(function()
					(r:Create(G, TweenInfo.new(.15), { BackgroundTransparency = .2, BackgroundColor3 = s.Surface })):Play();
				end);
				G.MouseButton1Click:Connect(function()
					H();
				end);
				jp("TextLabel", {
					Size = UDim2.new(1, -200, 0, 20),
					Position = UDim2.new(0, 140, 0, 26),
					BackgroundTransparency = 1,
					Text = j.name,
					TextColor3 = s.TextPrimary,
					Font = Enum.Font.GothamBold,
					TextSize = 15,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 30,
					Parent = a,
				});
				jp("TextLabel", {
					Size = UDim2.new(1, -200, 0, 14),
					Position = UDim2.new(0, 140, 0, 46),
					BackgroundTransparency = 1,
					Text = j.online and "\226\151\143 En ligne" or "\226\151\143 Hors ligne",
					TextColor3 = j.online and Color3.fromRGB(120, 220, 130) or s.TextMuted,
					Font = Enum.Font.GothamMedium,
					TextSize = 11,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 30,
					Parent = a,
				});
				jp("Frame", {
					Size = UDim2.new(1, -64, 0, 1),
					Position = UDim2.new(0, 32, 0, 84),
					BackgroundColor3 = s.Border,
					BackgroundTransparency = .5,
					BorderSizePixel = 0,
					ZIndex = 25,
					Parent = a,
				});
				local p = jp("ScrollingFrame", {
						Size = UDim2.new(1, -64, 1, -224),
						Position = UDim2.new(0, 32, 0, 96),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						ScrollBarThickness = 6,
						ScrollBarImageColor3 = s.SurfaceHi,
						ScrollBarImageTransparency = .3,
						CanvasSize = UDim2.new(0, 0, 0, 0),
						AutomaticCanvasSize = Enum.AutomaticSize.Y,
						ScrollingDirection = Enum.ScrollingDirection.Y,
						ZIndex = 26,
						Parent = a,
					});
				local x = jp("Frame", {
						Size = UDim2.new(1, 0, 0, 0),
						BackgroundTransparency = 1,
						AutomaticSize = Enum.AutomaticSize.Y,
						ZIndex = 26,
						Parent = p,
					});
				jp("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = x });
				local B = 0;
				local function y(j, r)
					B = B + 1;
					local G = jp("Frame", {
							Size = UDim2.new(1, 0, 0, 0),
							BackgroundTransparency = 1,
							LayoutOrder = B,
							AutomaticSize = Enum.AutomaticSize.Y,
							ZIndex = 30,
							Parent = x,
						});
					local a = jp("Frame", {
							BackgroundColor3 = r and s.BubbleMine or s.BubbleOther,
							BorderSizePixel = 0,
							AutomaticSize = Enum.AutomaticSize.XY,
							ZIndex = 31,
							Parent = G,
						});
					if r then
						a.AnchorPoint = Vector2.new(1, 0);
						a.Position = UDim2.new(1, 0, 0, 0);
					else
						a.AnchorPoint = Vector2.new(0, 0);
						a.Position = UDim2.new(0, 0, 0, 0);
					end;
					rp(a, 12);
					jp("TextLabel", {
						Position = UDim2.new(0, 14, 0, 8),
						Size = UDim2.new(0, 340, 0, 0),
						BackgroundTransparency = 1,
						Text = j,
						TextColor3 = r and Color3.fromRGB(255, 255, 255) or s.TextPrimary,
						Font = Enum.Font.GothamMedium,
						TextSize = 13,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
						TextWrapped = true,
						AutomaticSize = Enum.AutomaticSize.Y,
						ZIndex = 32,
						Parent = a,
					});
					jp("Frame", {
						Size = UDim2.new(0, 14, 0, 8),
						Position = UDim2.new(0, 0, 1, 0),
						BackgroundTransparency = 1,
						ZIndex = 31,
						Parent = a,
					});
					task.defer(function()
						if p then
							p.CanvasPosition = Vector2.new(0, math.max(0, (x.AbsoluteSize.Y - p.AbsoluteSize.Y) + 40));
						end;
					end);
				end;
				local l = jp("Frame", {
						Size = UDim2.new(1, -64, 0, 54),
						Position = UDim2.new(0, 32, 1, -70),
						BackgroundColor3 = s.Surface,
						BackgroundTransparency = .2,
						BorderSizePixel = 0,
						ZIndex = 30,
						Parent = a,
					});
				rp(l, 12);
				pp(l, s.Border, 1, .4);
				local q = jp("TextBox", {
						Size = UDim2.new(1, -110, 1, 0),
						Position = UDim2.new(0, 16, 0, 0),
						BackgroundTransparency = 1,
						Text = "",
						PlaceholderText = "\195\137cris un message...",
						PlaceholderColor3 = s.TextMuted,
						TextColor3 = s.TextPrimary,
						Font = Enum.Font.Gotham,
						TextSize = 13,
						TextXAlignment = Enum.TextXAlignment.Left,
						ClearTextOnFocus = false,
						ZIndex = 31,
						Parent = l,
					});
				local m = jp("TextButton", {
						Size = UDim2.new(0, 80, 0, 38),
						Position = UDim2.new(1, -92, .5, 0),
						AnchorPoint = Vector2.new(0, .5),
						BackgroundColor3 = s.Accent,
						BorderSizePixel = 0,
						Text = "ENVOYER",
						TextColor3 = s.TextOnAccent,
						Font = Enum.Font.GothamBold,
						TextSize = 11,
						AutoButtonColor = false,
						ZIndex = 31,
						Parent = l,
					});
				rp(m, 8);
				R(m, "BackgroundColor3", "Accent");
				local function C()
					local j = q.Text;
					if j == nil or j == "" then
						return;
					end;
					q.Text = "";
					y(j, true);
					task.delay(math.random(8, 20) / 10, function()
						if not a or not a.Parent then
							return;
						end;
						local j = {
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
						y(j[math.random(1, #j)], false);
					end);
				end;
				m.MouseButton1Click:Connect(C);
				q.FocusLost:Connect(function(j)
					if j then
						C();
					end;
				end);
			end;
		H();
	end;
cW = function()
		if not ((t.CommunityFrame and t.CommunityFrame.Parent)) then
			return;
		end;
		xp(t.CommunityFrame, .35, function()
			t.CommunityFrame = nil;
			t.CommunityOpen = false;
		end);
	end;
local function gb(j)
	local r = string.lower(j);
	if r:find("salut") or r:find("bonjour") or r:find("hey") or r:find("yo") or r:find("coucou") or r:find("bonsoir") then
		return "Salut ! Je suis l\'assistance Mulba. Dis-moi ce que tu veux faire et je te guide.";
	end;
	if r:find("emote") or r:find("animation") or r:find("danser") or r:find("danse") then
		return "Pour les emotes : onglet \'Animation\' dans la sidebar. Tu as 10 emotes pr\195\170tes. Clique \'JOUER\' sur une. Tu peux aussi ajouter tes propres emotes via les champs \'Nom\' + \'ID\' en haut. STOP = arr\195\170ter, LOOP = boucler, VITESSE = ralentir/acc\195\169l\195\169rer.";
	end;
	if r:find("dash") or r:find("slide") or r:find("wall run") or r:find("grapple") or r:find("roll") or r:find("paraglide") or r:find("mouvement") then
		return "Section \'MOUVEMENT AVANC\195\137\' dans l\'onglet \'Player\'. Dash (Q), Slide (C), Wall Jump (Space), Grapple (G), Roll (R), Crouch Slide (Ctrl), TP Mouse (T).";
	end;
	if r:find("esp") or r:find("voir les joueurs") then
		return "Onglet \'ESP\' dans la sidebar. Active ESP Murderer, Sheriff, Innocent, X-Ray, Box, Tracer ou Coin.";
	end;
	if r:find("fly") or r:find("vol") then
		return "Onglet \'Player\' > MOUVEMENT > FLY. W/A/S/D pour te d\195\169placer.";
	end;
	if r:find("autofarm") or r:find("farm") or r:find("pi\195\168ce") then
		return "Onglet \'Auto Farm\' > \'AUTO FARM COINS\'.";
	end;
	if r:find("menu") or r:find("touche m") then
		return "Appuie sur M pour ouvrir/fermer le menu.";
	end;
	if r:find("merci") then
		return "Avec plaisir ! Bon jeu.";
	end;
	return "Reformule ou dis un mot-cl\195\169 : emote, fly, esp, autofarm, dash, menu.";
end;
NW = function()
		if t.AIOpen and (t.AIFrame and t.AIFrame.Parent) then
			return;
		end;
		local j = t.Gui;
		if not j then
			return;
		end;
		local G = zW("AIFrame", UDim2.new(0, 520, 0, 620), j);
		t.AIFrame = G;
		t.AIOpen = true;
		G.BackgroundTransparency = 1;
		Hp(G, .5);
		local p = jp("TextButton", {
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
				Parent = G,
			});
		rp(p, 8);
		pp(p, s.Border, 1, .4);
		p.MouseEnter:Connect(function()
			(r:Create(p, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(200, 60, 60), BackgroundTransparency = 0 })):Play();
		end);
		p.MouseLeave:Connect(function()
			(r:Create(p, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(36, 38, 48), BackgroundTransparency = .15 })):Play();
		end);
		p.MouseButton1Click:Connect(function()
			jb();
		end);
		jp("TextLabel", {
			Size = UDim2.new(1, -100, 0, 30),
			Position = UDim2.new(0, 32, 0, 22),
			BackgroundTransparency = 1,
			Text = "Assistance IA Mulba",
			TextColor3 = s.TextPrimary,
			Font = Enum.Font.GothamBlack,
			TextSize = 20,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = G,
		});
		jp("TextLabel", {
			Size = UDim2.new(1, -100, 0, 18),
			Position = UDim2.new(0, 32, 0, 50),
			BackgroundTransparency = 1,
			Text = "Pose ta question, je r\195\169ponds en direct",
			TextColor3 = s.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = G,
		});
		jp("Frame", {
			Size = UDim2.new(1, -64, 0, 1),
			Position = UDim2.new(0, 32, 0, 82),
			BackgroundColor3 = s.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = G,
		});
		local a = jp("ScrollingFrame", {
				Size = UDim2.new(1, -64, 1, -216),
				Position = UDim2.new(0, 32, 0, 96),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 6,
				ScrollBarImageColor3 = s.SurfaceHi,
				ScrollBarImageTransparency = .3,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ZIndex = 26,
				Parent = G,
			});
		local H = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 26,
				Parent = a,
			});
		jp("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = H });
		local x = 0;
		local function B(j, r)
			x = x + 1;
			local G = jp("Frame", {
					Size = UDim2.new(1, 0, 0, 0),
					BackgroundTransparency = 1,
					LayoutOrder = x,
					AutomaticSize = Enum.AutomaticSize.Y,
					ZIndex = 30,
					Parent = H,
				});
			local p = jp("Frame", {
					BackgroundColor3 = r and s.BubbleMine or s.BubbleOther,
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					ZIndex = 31,
					Parent = G,
				});
			if r then
				p.AnchorPoint = Vector2.new(1, 0);
				p.Position = UDim2.new(1, 0, 0, 0);
			else
				p.AnchorPoint = Vector2.new(0, 0);
				p.Position = UDim2.new(0, 0, 0, 0);
			end;
			rp(p, 12);
			jp("TextLabel", {
				Position = UDim2.new(0, 14, 0, 8),
				Size = UDim2.new(0, 340, 0, 0),
				BackgroundTransparency = 1,
				Text = j,
				TextColor3 = r and Color3.fromRGB(255, 255, 255) or s.TextPrimary,
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextWrapped = true,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 32,
				Parent = p,
			});
			jp("Frame", {
				Size = UDim2.new(0, 14, 0, 8),
				Position = UDim2.new(0, 0, 1, 0),
				BackgroundTransparency = 1,
				ZIndex = 31,
				Parent = p,
			});
			task.defer(function()
				if a then
					a.CanvasPosition = Vector2.new(0, math.max(0, (H.AbsoluteSize.Y - a.AbsoluteSize.Y) + 40));
				end;
			end);
		end;
		B("Salut, assistance IA Mulba. Comment je peux vous aider ?", false);
		local y = jp("Frame", {
				Size = UDim2.new(1, -64, 0, 54),
				Position = UDim2.new(0, 32, 1, -70),
				BackgroundColor3 = s.Surface,
				BackgroundTransparency = .2,
				BorderSizePixel = 0,
				ZIndex = 30,
				Parent = G,
			});
		rp(y, 12);
		pp(y, s.Border, 1, .4);
		local l = jp("TextBox", {
				Size = UDim2.new(1, -110, 1, 0),
				Position = UDim2.new(0, 16, 0, 0),
				BackgroundTransparency = 1,
				Text = "",
				PlaceholderText = "\195\137cris ta question...",
				PlaceholderColor3 = s.TextMuted,
				TextColor3 = s.TextPrimary,
				Font = Enum.Font.Gotham,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ClearTextOnFocus = false,
				ZIndex = 31,
				Parent = y,
			});
		local q = jp("TextButton", {
				Size = UDim2.new(0, 80, 0, 38),
				Position = UDim2.new(1, -92, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = s.Accent,
				BorderSizePixel = 0,
				Text = "ENVOYER",
				TextColor3 = s.TextOnAccent,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				AutoButtonColor = false,
				ZIndex = 31,
				Parent = y,
			});
		rp(q, 8);
		R(q, "BackgroundColor3", "Accent");
		local function m()
			local j = l.Text;
			if j == nil or j == "" then
				return;
			end;
			l.Text = "";
			B(j, true);
			task.delay(.6, function()
				if not G or not G.Parent then
					return;
				end;
				B(gb(j), false);
			end);
		end;
		q.MouseButton1Click:Connect(m);
		l.FocusLost:Connect(function(j)
			if j then
				m();
			end;
		end);
	end;
jb = function()
		if not ((t.AIFrame and t.AIFrame.Parent)) then
			return;
		end;
		xp(t.AIFrame, .35, function()
			t.AIFrame = nil;
			t.AIOpen = false;
		end);
	end;
KW = function()
		local G = t.Gui;
		if not G then
			return;
		end;
		if t.Shell and t.Shell.Parent then
			return;
		end;
		t.NavItems = {};
		t.CurrentPage = nil;
		local p = zW("Shell", UDim2.new(0, 820, 0, 540), G);
		t.Shell = p;
		t.MenuOpen = true;
		p.BackgroundTransparency = 1;
		Hp(p, .55);
		local a = jp("TextButton", {
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
				Parent = p,
			});
		rp(a, 8);
		pp(a, s.Border, 1, .4);
		a.MouseEnter:Connect(function()
			(r:Create(a, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(200, 60, 60), BackgroundTransparency = 0 })):Play();
		end);
		a.MouseLeave:Connect(function()
			(r:Create(a, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(36, 38, 48), BackgroundTransparency = .15 })):Play();
		end);
		a.MouseButton1Click:Connect(TW);
		local H = jp("Frame", {
				Name = "Sidebar",
				Size = UDim2.new(0, 240, 1, 0),
				BackgroundColor3 = s.SurfaceSide,
				BackgroundTransparency = .35,
				BorderSizePixel = 0,
				ZIndex = 8,
				Parent = p,
			});
		rp(H, 20);
		t.Sidebar = H;
		local B = jp("Frame", {
				Size = UDim2.new(1, 0, 0, 90),
				BackgroundColor3 = s.BgTop,
				BackgroundTransparency = .65,
				BorderSizePixel = 0,
				ZIndex = 15,
				Parent = H,
			});
		rp(B, 20);
		jp("Frame", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 1, -20),
			BackgroundColor3 = s.BgTop,
			BackgroundTransparency = .65,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = B,
		});
		local y = jp("Frame", {
				Size = UDim2.new(0, 52, 0, 52),
				Position = UDim2.new(0, 18, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 16,
				Parent = B,
			});
		rp(y, 26);
		local l = jp("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 17,
				Parent = y,
			});
		rp(l, 24);
		local q = jp("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 18,
				Parent = l,
			});
		rp(q, 24);
		task.spawn(function()
			local r, G = pcall(function()
					return j:GetUserThumbnailAsync(x.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if r and G then
				q.Image = G;
			end;
		end);
		jp("TextLabel", {
			Size = UDim2.new(1, -90, 0, 22),
			Position = UDim2.new(0, 80, 0, 24),
			BackgroundTransparency = 1,
			Text = x.DisplayName,
			TextColor3 = s.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 15,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 16,
			Parent = B,
		});
		jp("TextLabel", {
			Size = UDim2.new(1, -90, 0, 16),
			Position = UDim2.new(0, 80, 0, 46),
			BackgroundTransparency = 1,
			Text = "Premium",
			TextColor3 = s.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 16,
			Parent = B,
		});
		local m = jp("TextButton", {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -42, 0, 32),
				BackgroundColor3 = s.Accent,
				BorderSizePixel = 0,
				Text = "M",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 15,
				AutoButtonColor = false,
				ZIndex = 20,
				Parent = B,
			});
		rp(m, 15);
		local C = jp("UIStroke", {
				Color = s.AccentGlow,
				Thickness = 1.5,
				Transparency = .4,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Parent = m,
			});
		R(m, "BackgroundColor3", "Accent");
		m.MouseEnter:Connect(function()
			(r:Create(m, TweenInfo.new(.18), { Size = UDim2.new(0, 34, 0, 34), Position = UDim2.new(1, -44, 0, 30) })):Play();
			(r:Create(C, TweenInfo.new(.18), { Transparency = 0 })):Play();
		end);
		m.MouseLeave:Connect(function()
			(r:Create(m, TweenInfo.new(.18), { Size = UDim2.new(0, 30, 0, 30), Position = UDim2.new(1, -42, 0, 32) })):Play();
			(r:Create(C, TweenInfo.new(.18), { Transparency = .4 })):Play();
		end);
		m.MouseButton1Click:Connect(function()
			if hW then
				hW();
			end;
		end);
		jp("Frame", {
			Size = UDim2.new(1, -32, 0, 1),
			Position = UDim2.new(0, 16, 0, 90),
			BackgroundColor3 = s.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = H,
		});
		local D = jp("ScrollingFrame", {
				Size = UDim2.new(1, -16, 1, -110),
				Position = UDim2.new(0, 8, 0, 100),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 3,
				ScrollBarImageColor3 = s.SurfaceHi,
				ScrollBarImageTransparency = .5,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ZIndex = 18,
				Parent = H,
			});
		jp("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = D });
		eb(D, "G\195\169n\195\169ral", 1);
		Lb(D, "Accueil", "home", 2);
		Lb(D, "ESP", "esp", 3);
		eb(D, "Personnage", 4);
		Lb(D, "Player", "player", 5);
		Lb(D, "Combat", "combat", 6);
		Lb(D, "Troll", "troll", 7);
		Lb(D, "T\195\169l\195\169port\195\169", "teleport", 8);
		Lb(D, "Animation", "animation", 9);
		Lb(D, "Auto Farm", "autofarm", 10);
		eb(D, "MM2", 11);
		Lb(D, "Murder", "murder", 12);
		Lb(D, "Sheriff", "sheriff", 13);
		eb(D, "Autre", 14);
		Lb(D, "Param\195\168tres", "settings", 15);
		t.NavItems.home.btn.MouseButton1Click:Connect(function()
			nW("home");
		end);
		t.NavItems.esp.btn.MouseButton1Click:Connect(function()
			nW("esp");
		end);
		t.NavItems.murder.btn.MouseButton1Click:Connect(function()
			nW("murder");
		end);
		t.NavItems.sheriff.btn.MouseButton1Click:Connect(function()
			nW("sheriff");
		end);
		t.NavItems.player.btn.MouseButton1Click:Connect(function()
			nW("player");
		end);
		t.NavItems.combat.btn.MouseButton1Click:Connect(function()
			nW("combat");
		end);
		t.NavItems.autofarm.btn.MouseButton1Click:Connect(function()
			nW("autofarm");
		end);
		t.NavItems.teleport.btn.MouseButton1Click:Connect(function()
			nW("teleport");
		end);
		t.NavItems.troll.btn.MouseButton1Click:Connect(function()
			nW("troll");
		end);
		t.NavItems.animation.btn.MouseButton1Click:Connect(function()
			nW("animation");
		end);
		t.NavItems.settings.btn.MouseButton1Click:Connect(function()
			nW("settings");
		end);
		local d = jp("Frame", {
				Name = "Content",
				Size = UDim2.new(1, -240, 1, 0),
				Position = UDim2.new(0, 240, 0, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				ZIndex = 14,
				Parent = p,
			});
		t.Content = d;
		local o = jp("ScrollingFrame", {
				Name = "Scroll",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 6,
				ScrollBarImageColor3 = s.SurfaceHi,
				ScrollBarImageTransparency = .3,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ClipsDescendants = true,
				ZIndex = 24,
				Parent = d,
			});
		t.Scroll = o;
		task.wait(.1);
		nW("home");
	end;
x.CharacterAdded:Connect(function(j)
	j:WaitForChild("Humanoid", 10);
	task.wait(.6);
	g.nowe = false;
	g.tpwalking = false;
	Ap();
	h();
	mW();
	if tb then
		tb();
	end;
	EW();
	if A.XRayEnabled then
		task.wait(.5);
		if j then
			DW(j, x);
		end;
	end;
	if b.FlyEnabled then
		Lp();
	end;
	if b.SpinEnabled then
		gp();
	end;
	if b.JerkEnabled then
		np();
	end;
	b.Sitting = false;
	if b.Invisible then
		b.Invisible = false;
		u.saved = {};
		if u.conn then
			u.conn:Disconnect();
			u.conn = nil;
		end;
	end;
	local r = j:FindFirstChildOfClass("Humanoid");
	if r then
		r.WalkSpeed = b.WalkSpeed;
		r.UseJumpPower = true;
		r.JumpPower = b.JumpPower;
	end;
	workspace.Gravity = b.Gravity;
	if J.AutoSetMap then
		task.wait(.4);
		Qp(true);
	end;
	if J.ReturnSpawn then
		task.wait(.5);
		Mp();
	end;
end);
p.InputBegan:Connect(function(j, r)
	if r then
		return;
	end;
	if j.KeyCode == Enum.KeyCode.Escape then
		if t.CommunityOpen then
			cW();
		end;
		if t.AIOpen then
			jb();
		end;
		return;
	end;
	if j.KeyCode ~= Enum.KeyCode.M then
		return;
	end;
	if not t.Authenticated then
		return;
	end;
	if t.Shell and t.Shell.Parent then
		TW();
	else
		if KW then
			KW();
		end;
	end;
end);
local function Tb()
	N("Initialisation V73...");
	local j = B:FindFirstChild("MenuV70_GUI") or B:FindFirstChild("MenuV71_GUI") or B:FindFirstChild("MenuV72_GUI") or B:FindFirstChild("MenuV73_GUI");
	if j then
		j:Destroy();
	end;
	bb();
	task.wait(w.LoadingDuration + .4);
	gW(t.LoadingFrame, function()
		t.LoadingFrame = nil;
	end);
	task.wait(.5);
	fb(function()
		t.Authenticated = true;
		EW();
		KW();
	end);
end;
Tb();
