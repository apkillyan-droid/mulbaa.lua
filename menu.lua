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

local a = game:GetService("Players");
local v = game:GetService("TweenService");
local w = game:GetService("RunService");
local n = game:GetService("UserInputService");
local S = game:GetService("Lighting");
local W = a.LocalPlayer;
local G = W:WaitForChild("PlayerGui");
local b = workspace.CurrentCamera;
local s = "Fdvo2669";
local z = "rbxassetid://126785640171935";
local U = 2.6;
local m = {
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
local R = {};
local function h(a, v, w)
	table.insert(R, { instance = a, property = v, themeKey = w });
	return a;
end;
local function Q(a, v, w)
	table.insert(R, {
		isGradient = true,
		gradient = a,
		topKey = v,
		bottomKey = w,
	});
	return a;
end;
local function Z()
	local a = {};
	for w, n in ipairs(R) do
		if n.isGradient then
			if n.gradient and n.gradient.Parent then
				n.gradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, m[n.topKey]), ColorSequenceKeypoint.new(1, m[n.bottomKey]) });
				table.insert(a, n);
			end;
		else
			if n.instance and n.instance.Parent then
				local w = m[n.themeKey];
				if w then
					(v:Create(n.instance, TweenInfo.new(.35), { [n.property] = w })):Play();
				end;
				table.insert(a, n);
			end;
		end;
	end;
	R = a;
	for a, v in pairs(State.NavItems) do
		v.setActive(v.state.active);
	end;
end;
local function F(a)
	m.Accent = a.Accent;
	m.AccentDim = a.AccentDim;
	m.AccentGlow = a.AccentGlow;
	m.AccentSoft = a.AccentSoft;
	m.TextOnAccent = a.TextOnAccent;
	Z();
end;
local M = {
		LoadingDuration = 3.5,
		ParticleSpawnRate = .1,
		ParticleMinSize = 2,
		ParticleMaxSize = 4,
		ParticleFallSpeed = 120,
		ParticlesPerTick = 2,
	};
local D = {
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
local K = {
		EspEnabled = true,
		EspShowMurder = true,
		EspShowSheriff = true,
		EspShowInnocent = false,
		AutoShootEnabled = false,
		AutoShootRange = 500,
		AutoShootDelay = .15,
		TpAllDelay = .8,
		XRayEnabled = false,
		NotifKillFeed = true,
		NotifChatMsg = false,
	};
local q = {
		Murderer = Color3.fromRGB(255, 60, 60),
		Sheriff = Color3.fromRGB(60, 120, 255),
		Innocent = Color3.fromRGB(60, 255, 120),
		Box = Color3.fromRGB(255, 60, 60),
		Tracer = Color3.fromRGB(255, 60, 60),
	};
local o = {
		BoxEnabled = true,
		BoxThickness = 2,
		TracerEnabled = false,
		DistanceEnabled = true,
	};
local g = {
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
local c = { track = nil };
local l = {
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
local k = { av = nil };
local H = { conn = nil };
local L = {};
local t = {};
local j = { knownRoles = {}, seenGroundGuns = {} };
local Y = { lastRoles = {} };
local E = { savedCFrame = nil };
local y = { running = false };
local function f(...)
	print("[MENU-V71]", ...);
end;
local function C(a, v)
	local w = Instance.new(a);
	for a, v in pairs(v or {}) do
		w[a] = v;
	end;
	return w;
end;
local function B(a, v)
	return C("UICorner", { CornerRadius = UDim.new(0, v or 8), Parent = a });
end;
local function i(a, v, w, n)
	return C("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, v), ColorSequenceKeypoint.new(1, w) }), Rotation = n or 90, Parent = a });
end;
local function X(a, v, w, n)
	return C("UIStroke", {
		Color = v or m.Border,
		Thickness = w or 1,
		Transparency = n or 0,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = a,
	});
end;
local function A(a, v, w, n)
	n = n or 8;
	local S = C("Frame", { Size = UDim2.new(0, n + 2, 0, n + 2), BackgroundTransparency = 1, Parent = a });
	local W, G = (v == "right") and 45 or -45, (v == "right") and -45 or 45;
	local b = C("Frame", {
			Size = UDim2.new(0, n, 0, 2),
			Position = UDim2.new(.5, -1, .5, -3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = w or m.TextMuted,
			BorderSizePixel = 0,
			Rotation = W,
			Parent = S,
		});
	B(b, 1);
	local s = C("Frame", {
			Size = UDim2.new(0, n, 0, 2),
			Position = UDim2.new(.5, -1, .5, 3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = w or m.TextMuted,
			BorderSizePixel = 0,
			Rotation = G,
			Parent = S,
		});
	B(s, 1);
	return S, b, s;
end;
local function e(a, w)
	w = w or .45;
	local n = a.Size;
	a.Size = UDim2.new(0, n.X.Offset * .85, 0, n.Y.Offset * .85);
	a.BackgroundTransparency = 1;
	(v:Create(a, TweenInfo.new(w, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = n, BackgroundTransparency = 0 })):Play();
end;
local function V(a, w, n)
	w = w or .32;
	local S = a.Size;
	(v:Create(a, TweenInfo.new(w, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Size = UDim2.new(0, S.X.Offset * .85, 0, S.Y.Offset * .85), BackgroundTransparency = 1 })):Play();
	for a, n in ipairs(a:GetDescendants()) do
		if n:IsA("TextLabel") or n:IsA("TextBox") then
			(v:Create(n, TweenInfo.new(w * .85), { TextTransparency = 1 })):Play();
		elseif n:IsA("TextButton") then
			(v:Create(n, TweenInfo.new(w * .85), { BackgroundTransparency = 1 })):Play();
		elseif n:IsA("Frame") and n.Name ~= "ParticleZone" then
			if n.BackgroundTransparency < 1 then
				(v:Create(n, TweenInfo.new(w * .85), { BackgroundTransparency = 1 })):Play();
			end;
		elseif n:IsA("ImageLabel") then
			(v:Create(n, TweenInfo.new(w * .85), { ImageTransparency = 1 })):Play();
		elseif n:IsA("UIStroke") then
			(v:Create(n, TweenInfo.new(w * .85), { Transparency = 1 })):Play();
		end;
	end;
	local W = a.Parent and a.Parent:FindFirstChild(a.Name .. "_ShadowHolder");
	if W then
		for a, n in ipairs(W:GetChildren()) do
			if n:IsA("Frame") then
				(v:Create(n, TweenInfo.new(w * .85), { BackgroundTransparency = 1 })):Play();
			end;
		end;
	end;
	task.delay(w + .05, function()
		if W and W.Parent then
			W:Destroy();
		end;
		if a and a.Parent then
			a:Destroy();
		end;
		if n then
			n();
		end;
	end);
end;
local function I(a, w)
	w = w or .5;
	local n = a.Size;
	a.Size = UDim2.new(0, n.X.Offset * .85, 0, n.Y.Offset * .85);
	a.BackgroundTransparency = 1;
	for a, n in ipairs(a:GetDescendants()) do
		if n:IsA("TextLabel") or n:IsA("TextBox") then
			n.TextTransparency = 1;
			(v:Create(n, TweenInfo.new(w), { TextTransparency = 0 })):Play();
		elseif n:IsA("TextButton") then
			n.BackgroundTransparency = 1;
		elseif n:IsA("ImageLabel") then
			n.ImageTransparency = 1;
			(v:Create(n, TweenInfo.new(w), { ImageTransparency = 0 })):Play();
		end;
	end;
	(v:Create(a, TweenInfo.new(w, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = n, BackgroundTransparency = 0 })):Play();
end;
local function N(a, w, n)
	local S = W:FindFirstChild("PlayerGui");
	if not S then
		return;
	end;
	local G = S:FindFirstChild("MulbaNotif");
	if G then
		G:Destroy();
	end;
	local b = C("ScreenGui", {
			Name = "MulbaNotif",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 1000,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Parent = S,
		});
	local s = C("Frame", {
			Size = UDim2.new(0, 320, 0, 80),
			Position = UDim2.new(1, 20, 0, 100),
			BackgroundColor3 = m.BgTop,
			BackgroundTransparency = .05,
			BorderSizePixel = 0,
			ZIndex = 1000,
			Parent = b,
		});
	B(s, 14);
	i(s, m.BgTop, m.BgBottom, 90);
	C("UIStroke", {
		Color = n and Color3.fromRGB(255, 100, 100) or m.Accent,
		Thickness = 2,
		Transparency = .2,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = s,
	});
	C("TextLabel", {
		Size = UDim2.new(1, -60, 0, 20),
		Position = UDim2.new(0, 20, 0, 14),
		BackgroundTransparency = 1,
		Text = a,
		TextColor3 = n and Color3.fromRGB(255, 120, 120) or m.Accent,
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 1001,
		Parent = s,
	});
	C("TextLabel", {
		Size = UDim2.new(1, -60, 0, 30),
		Position = UDim2.new(0, 20, 0, 36),
		BackgroundTransparency = 1,
		Text = w,
		TextColor3 = m.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		ZIndex = 1001,
		Parent = s,
	});
	(v:Create(s, TweenInfo.new(.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.new(1, -340, 0, 100) })):Play();
	task.delay(5, function()
		if not s.Parent then
			return;
		end;
		(v:Create(s, TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(1, 20, 0, 100), BackgroundTransparency = 1 })):Play();
		for a, w in ipairs(s:GetDescendants()) do
			if w:IsA("TextLabel") then
				(v:Create(w, TweenInfo.new(.4), { TextTransparency = 1 })):Play();
			end;
		end;
		task.wait(.5);
		b:Destroy();
	end);
end;
local p = nil;
local x = nil;
local function P()
	local a = W:FindFirstChild("PlayerGui");
	if not a then
		return;
	end;
	if p and p.Parent then
		return;
	end;
	p = C("ScreenGui", {
			Name = "MulbaKillFeed",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 950,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Parent = a,
		});
	local v = C("Frame", {
			Size = UDim2.new(0, 340, 0, 500),
			Position = UDim2.new(1, -360, 1, -520),
			BackgroundTransparency = 1,
			ZIndex = 950,
			Parent = p,
		});
	x = C("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ZIndex = 951,
			Parent = v,
		});
	C("UIListLayout", {
		Padding = UDim.new(0, 6),
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Bottom,
		Parent = x,
	});
end;
local function u(a, w)
	if not K.NotifKillFeed then
		return;
	end;
	P();
	if not x then
		return;
	end;
	local n = C("Frame", {
			Size = UDim2.new(1, 0, 0, 42),
			BackgroundColor3 = m.Surface,
			BackgroundTransparency = .15,
			BorderSizePixel = 0,
			ZIndex = 952,
			Parent = x,
		});
	B(n, 10);
	C("UIStroke", {
		Color = m.Border,
		Thickness = 1,
		Transparency = .5,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = n,
	});
	C("Frame", {
		Size = UDim2.new(0, 3, 0, 26),
		Position = UDim2.new(0, 10, .5, 0),
		AnchorPoint = Vector2.new(0, .5),
		BackgroundColor3 = w or Color3.fromRGB(255, 80, 80),
		BorderSizePixel = 0,
		ZIndex = 953,
		Parent = n,
	});
	B(n:FindFirstChildOfClass("Frame"), 2);
	C("TextLabel", {
		Size = UDim2.new(1, -30, 1, 0),
		Position = UDim2.new(0, 22, 0, 0),
		BackgroundTransparency = 1,
		Text = a,
		TextColor3 = w or m.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 953,
		Parent = n,
	});
	task.delay(6, function()
		if not n.Parent then
			return;
		end;
		(v:Create(n, TweenInfo.new(.4), { BackgroundTransparency = 1 })):Play();
		for a, w in ipairs(n:GetDescendants()) do
			if w:IsA("TextLabel") then
				(v:Create(w, TweenInfo.new(.4), { TextTransparency = 1 })):Play();
			end;
			if w:IsA("Frame") then
				(v:Create(w, TweenInfo.new(.4), { BackgroundTransparency = 1 })):Play();
			end;
		end;
		task.wait(.5);
		n:Destroy();
	end);
end;
local function O(a)
	if not a then
		return "Innocent";
	end;
	if a:FindFirstChild("Role") then
		local v, w = pcall(function()
				return tostring(a.Role.Value);
			end);
		if v and (w and w ~= "") then
			return w;
		end;
	end;
	local v = a.Character;
	local w = a:FindFirstChild("Backpack");
	if v then
		if v:FindFirstChild("Knife") then
			return "Murderer";
		end;
		if v:FindFirstChild("Gun") then
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
local function J()
	for a, v in ipairs(a:GetPlayers()) do
		if v == W then
			continue;
		end;
		if O(v) == "Murderer" then
			return v;
		end;
	end;
	return nil;
end;
local function r()
	for a, v in ipairs(a:GetPlayers()) do
		if v == W then
			continue;
		end;
		if O(v) == "Sheriff" then
			return v;
		end;
	end;
	return nil;
end;
local function T(a)
	if a == "Murderer" then
		return q.Murderer;
	end;
	if a == "Sheriff" then
		return q.Sheriff;
	end;
	return q.Innocent;
end;
local function aZ(a)
	if a == "Murderer" then
		return K.EspShowMurder;
	end;
	if a == "Sheriff" then
		return K.EspShowSheriff;
	end;
	return K.EspShowInnocent;
end;
task.spawn(function()
	while true do
		task.wait(.5);
		if K.NotifKillFeed then
			for a, v in ipairs(a:GetPlayers()) do
				if v == W then
					continue;
				end;
				local w = O(v);
				local n = j.knownRoles[v];
				if w ~= n then
					j.knownRoles[v] = w;
					if w == "Murderer" then
						u("\240\159\148\170 " .. (v.Name .. " est Murderer"), Color3.fromRGB(255, 80, 80));
					elseif w == "Sheriff" then
						u("\240\159\148\171 " .. (v.Name .. " est Sheriff"), Color3.fromRGB(80, 140, 255));
					elseif n == "Murderer" or n == "Sheriff" then
						u("\240\159\146\128 " .. (v.Name .. (" n\'est plus " .. ((n or "?")))), Color3.fromRGB(200, 200, 200));
					end;
				end;
			end;
			for a, v in ipairs(workspace:GetChildren()) do
				if v:IsA("Tool") and (v.Name == "Gun" and v:FindFirstChild("Handle")) then
					if not j.seenGroundGuns[v] then
						j.seenGroundGuns[v] = true;
						u("\240\159\148\171 Gun au sol !", Color3.fromRGB(255, 180, 80));
					end;
				end;
			end;
		end;
	end;
end);
local function vZ(a)
	local v = W:FindFirstChild("PlayerGui");
	if not v then
		return;
	end;
	pcall(function()
		(game:GetService("StarterGui")):SetCore("ChatMakeSystemMessage", { Text = "[Mulba] " .. a, Color = Color3.fromRGB(115, 155, 240), Font = Enum.Font.GothamBold });
	end);
end;
local function wZ()
	local v, w = {}, {};
	for a, n in ipairs(a:GetPlayers()) do
		if n == W then
			continue;
		end;
		local S = O(n);
		if S == "Murderer" then
			table.insert(v, n.Name);
		end;
		if S == "Sheriff" then
			table.insert(w, n.Name);
		end;
	end;
	local n = #v > 0 and table.concat(v, ", ") or "?";
	local S = #w > 0 and table.concat(w, ", ") or "?";
	vZ("Murder : " .. (n .. (" | Sheriff : " .. S)));
end;
task.spawn(function()
	while true do
		task.wait(1);
		if K.NotifChatMsg then
			local v = false;
			for a, w in ipairs(a:GetPlayers()) do
				if w == W then
					continue;
				end;
				local n = O(w);
				if n ~= Y.lastRoles[w] then
					Y.lastRoles[w] = n;
					v = true;
				end;
			end;
			if v then
				wZ();
			end;
		end;
	end;
end);
local function nZ()
	local a = W.Character;
	if not a then
		return;
	end;
	local v = a:FindFirstChildOfClass("Humanoid");
	if not v then
		return;
	end;
	local w = "rbxassetid://77643987647373";
	local n = Instance.new("Animation");
	n.AnimationId = w;
	pcall(function()
		local a = v:LoadAnimation(n);
		a.Priority = Enum.AnimationPriority.Action4;
		a.Looped = true;
		a:Play();
		c.track = a;
	end);
end;
local function SZ()
	if c.track then
		pcall(function()
			c.track:Stop();
		end);
		c.track = nil;
	end;
end;
local function WZ()
	if not g.FlyEnabled and not l.nowe then
		return;
	end;
	g.FlyEnabled = false;
	l.nowe = false;
	l.tpwalking = false;
	if l.conn then
		l.conn:Disconnect();
		l.conn = nil;
	end;
	if l.bg then
		pcall(function()
			l.bg:Destroy();
		end);
		l.bg = nil;
	end;
	if l.bv then
		pcall(function()
			l.bv:Destroy();
		end);
		l.bv = nil;
	end;
	l.ctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		};
	l.lastctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		};
	l.speed = 0;
	SZ();
	local a = W.Character;
	if not a then
		return;
	end;
	local v = a:FindFirstChildOfClass("Humanoid");
	if v then
		pcall(function()
			v.PlatformStand = false;
			v:SetStateEnabled(Enum.HumanoidStateType.Climbing, true);
			v:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true);
			v:SetStateEnabled(Enum.HumanoidStateType.Flying, true);
			v:SetStateEnabled(Enum.HumanoidStateType.Freefall, true);
			v:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true);
			v:SetStateEnabled(Enum.HumanoidStateType.Jumping, true);
			v:SetStateEnabled(Enum.HumanoidStateType.Landed, true);
			v:SetStateEnabled(Enum.HumanoidStateType.Physics, true);
			v:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true);
			v:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true);
			v:SetStateEnabled(Enum.HumanoidStateType.Running, true);
			v:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true);
			v:SetStateEnabled(Enum.HumanoidStateType.Seated, true);
			v:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true);
			v:SetStateEnabled(Enum.HumanoidStateType.Swimming, true);
		end);
	end;
	local w = a:FindFirstChild("Animate");
	if w then
		w.Disabled = l.savedAnimDisabled or false;
	end;
end;
local function GZ()
	local a = W.Character;
	if not a then
		return;
	end;
	local v = a:FindFirstChildOfClass("Humanoid");
	if not v then
		return;
	end;
	g.FlyEnabled = true;
	l.nowe = true;
	l.tpwalking = true;
	l.savedAnimDisabled = a:FindFirstChild("Animate") and a.Animate.Disabled or false;
	local S = math.clamp(math.floor(g.FlySpeed / 10), 1, 50);
	for a = 1, S, 1 do
		task.spawn(function()
			local a = w.Heartbeat;
			while l.tpwalking and a:Wait() do
				local a = W.Character;
				local v = a and a:FindFirstChildOfClass("Humanoid");
				if not ((a and (v and v.Parent))) then
					break;
				end;
				if v.MoveDirection.Magnitude > 0 then
					pcall(function()
						a:TranslateBy(v.MoveDirection);
					end);
				end;
			end;
		end);
	end;
	local G = a:FindFirstChild("Animate");
	if G then
		G.Disabled = true;
	end;
	for a, v in next, v:GetPlayingAnimationTracks() do
		pcall(function()
			v:AdjustSpeed(0);
		end);
	end;
	pcall(function()
		v:SetStateEnabled(Enum.HumanoidStateType.Climbing, false);
		v:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false);
		v:SetStateEnabled(Enum.HumanoidStateType.Flying, false);
		v:SetStateEnabled(Enum.HumanoidStateType.Freefall, false);
		v:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false);
		v:SetStateEnabled(Enum.HumanoidStateType.Jumping, false);
		v:SetStateEnabled(Enum.HumanoidStateType.Landed, false);
		v:SetStateEnabled(Enum.HumanoidStateType.Physics, false);
		v:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false);
		v:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false);
		v:SetStateEnabled(Enum.HumanoidStateType.Running, false);
		v:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false);
		v:SetStateEnabled(Enum.HumanoidStateType.Seated, false);
		v:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false);
		v:SetStateEnabled(Enum.HumanoidStateType.Swimming, false);
		v:ChangeState(Enum.HumanoidStateType.Swimming);
	end);
	local b = (v.RigType == Enum.HumanoidRigType.R6);
	local s = b and a:FindFirstChild("Torso") or a:FindFirstChild("UpperTorso");
	if not s then
		s = a:FindFirstChild("HumanoidRootPart");
	end;
	if not s then
		WZ();
		return;
	end;
	local z = Instance.new("BodyGyro");
	z.P = 90000;
	z.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000);
	z.CFrame = s.CFrame;
	z.Parent = s;
	l.bg = z;
	local U = Instance.new("BodyVelocity");
	U.Velocity = Vector3.new(0, .1, 0);
	U.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000);
	U.Parent = s;
	l.bv = U;
	pcall(function()
		v.PlatformStand = true;
	end);
	task.wait(.15);
	nZ();
	l.conn = w.RenderStepped:Connect(function()
			if not l.nowe then
				return;
			end;
			local a = W.Character;
			if not a then
				return;
			end;
			local v = a:FindFirstChildOfClass("Humanoid");
			if not v or v.Health <= 0 then
				return;
			end;
			local w = workspace.CurrentCamera;
			if not w then
				return;
			end;
			local S = l.ctrl;
			S.f = n:IsKeyDown(Enum.KeyCode.W) and 1 or 0;
			S.b = n:IsKeyDown(Enum.KeyCode.S) and 1 or 0;
			S.l = n:IsKeyDown(Enum.KeyCode.A) and 1 or 0;
			S.r = n:IsKeyDown(Enum.KeyCode.D) and 1 or 0;
			local G = l.maxspeed;
			if S.l + S.r ~= 0 or S.f + S.b ~= 0 then
				l.speed = (l.speed + .5) + (l.speed / G);
				if l.speed > G then
					l.speed = G;
				end;
			elseif not ((S.l + S.r ~= 0 or S.f + S.b ~= 0)) and l.speed ~= 0 then
				l.speed = l.speed - 1;
				if l.speed < 0 then
					l.speed = 0;
				end;
			end;
			if l.bv then
				if (S.l + S.r) ~= 0 or (S.f + S.b) ~= 0 then
					l.bv.Velocity = (((w.CFrame.LookVector * ((S.f + S.b))) + (((w.CFrame * (CFrame.new(S.l + S.r, ((S.f + S.b)) * .2, 0)).p) - w.CFrame.p)))) * l.speed;
					l.lastctrl = {
							f = S.f,
							b = S.b,
							l = S.l,
							r = S.r,
						};
				elseif (S.l + S.r) == 0 and ((S.f + S.b) == 0 and l.speed ~= 0) then
					l.bv.Velocity = (((w.CFrame.LookVector * ((l.lastctrl.f + l.lastctrl.b))) + (((w.CFrame * (CFrame.new(l.lastctrl.l + l.lastctrl.r, ((l.lastctrl.f + l.lastctrl.b)) * .2, 0)).p) - w.CFrame.p)))) * l.speed;
				else
					l.bv.Velocity = Vector3.new(0, 0, 0);
				end;
			end;
			if l.bg then
				l.bg.CFrame = w.CFrame * CFrame.Angles(-math.rad(((((S.f + S.b)) * 50) * l.speed) / G), 0, 0);
			end;
		end);
end;
local function bZ()
	if g.FlyEnabled or l.nowe then
		WZ();
	else
		GZ();
	end;
end;
local function sZ()
	if l.bindConn then
		l.bindConn:Disconnect();
		l.bindConn = nil;
	end;
	if not g.FlyBind then
		return;
	end;
	l.bindConn = n.InputBegan:Connect(function(a, v)
			if v then
				return;
			end;
			if a.UserInputType ~= Enum.UserInputType.Keyboard then
				return;
			end;
			if a.KeyCode == g.FlyBind then
				bZ();
			end;
		end);
end;
local function zZ(a)
	g.FlyBind = a;
	sZ();
end;
local function UZ()
	g.SpinEnabled = false;
	if k.av then
		k.av:Destroy();
		k.av = nil;
	end;
end;
local function mZ()
	local a = W.Character;
	if not a then
		return;
	end;
	local v = a:FindFirstChild("HumanoidRootPart");
	if not v then
		return;
	end;
	g.SpinEnabled = true;
	local w = Instance.new("BodyAngularVelocity");
	w.AngularVelocity = Vector3.new(0, g.SpinSpeed, 0);
	w.MaxTorque = Vector3.new(0, 9000000000, 0);
	w.P = 1250;
	w.Parent = v;
	k.av = w;
end;
local function dZ()
	if g.SpinEnabled then
		UZ();
	else
		mZ();
	end;
end;
local function RZ(a)
	g.SpinSpeed = a;
	if k.av then
		k.av.AngularVelocity = Vector3.new(0, a, 0);
	end;
end;
local function hZ()
	g.JerkEnabled = false;
	if H.conn then
		H.conn:Disconnect();
		H.conn = nil;
	end;
	local a = W.Character;
	local v = a and a:FindFirstChild("HumanoidRootPart");
	if v then
		pcall(function()
			v.AssemblyLinearVelocity = Vector3.zero;
			v.Velocity = Vector3.zero;
		end);
	end;
end;
local function QZ()
	local a = W.Character;
	if not a then
		return;
	end;
	local v = a:FindFirstChild("HumanoidRootPart");
	if not v then
		return;
	end;
	g.JerkEnabled = true;
	H.conn = w.Heartbeat:Connect(function()
			if not g.JerkEnabled then
				return;
			end;
			local a = W.Character;
			local v = a and a:FindFirstChild("HumanoidRootPart");
			if not v then
				return;
			end;
			local w = g.JerkIntensity;
			local n = Vector3.new((((math.random() - .5)) * w) * 8, (((math.random() - .5)) * w) * 8, (((math.random() - .5)) * w) * 8);
			pcall(function()
				v.AssemblyLinearVelocity = v.AssemblyLinearVelocity + n;
				v.Velocity = v.Velocity + n;
			end);
		end);
end;
local function ZZ()
	if g.JerkEnabled then
		hZ();
	else
		QZ();
	end;
end;
local function FZ(a)
	g.JerkIntensity = a;
end;
local function MZ()
	g.Sitting = not g.Sitting;
	local a = W.Character;
	local v = a and a:FindFirstChildOfClass("Humanoid");
	if not v then
		return;
	end;
	v.Sit = g.Sitting;
end;
task.spawn(function()
	while true do
		task.wait(.15);
		if g.NoclipEnabled and not g.FlyEnabled then
			local a = W.Character;
			if a then
				for a, v in ipairs(a:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide then
						v.CanCollide = false;
					end;
				end;
			end;
		end;
	end;
end);
local function DZ()
	g.NoclipEnabled = not g.NoclipEnabled;
	local a = W.Character;
	if a and not g.NoclipEnabled then
		for a, v in ipairs(a:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = true;
			end;
		end;
	end;
end;
local function KZ(a)
	g.WalkSpeed = a;
	local v = W.Character;
	local w = v and v:FindFirstChildOfClass("Humanoid");
	if w then
		w.WalkSpeed = a;
	end;
end;
local function qZ(a)
	g.JumpPower = a;
	local v = W.Character;
	local w = v and v:FindFirstChildOfClass("Humanoid");
	if w then
		w.UseJumpPower = true;
		w.JumpPower = a;
	end;
end;
local function oZ(a)
	g.Gravity = a;
	workspace.Gravity = a;
end;
local gZ = nil;
local function cZ()
	g.InfiniteJump = not g.InfiniteJump;
	if g.InfiniteJump then
		if gZ then
			gZ:Disconnect();
		end;
		gZ = n.JumpRequest:Connect(function()
				local a = W.Character;
				local v = a and a:FindFirstChildOfClass("Humanoid");
				if v then
					v:ChangeState(Enum.HumanoidStateType.Jumping);
				end;
			end);
	else
		if gZ then
			gZ:Disconnect();
			gZ = nil;
		end;
	end;
end;
local lZ = nil;
local function kZ()
	g.AntiAFK = not g.AntiAFK;
	if g.AntiAFK then
		if lZ then
			lZ:Disconnect();
		end;
		lZ = W.Idled:Connect(function()
				local a = game:GetService("VirtualUser");
				a:CaptureController();
				a:ClickButton2(Vector2.new());
			end);
	else
		if lZ then
			lZ:Disconnect();
			lZ = nil;
		end;
	end;
end;
local HZ = {};
local function LZ()
	g.Fullbright = not g.Fullbright;
	if g.Fullbright then
		HZ.Ambient = S.Ambient;
		HZ.OutdoorAmbient = S.OutdoorAmbient;
		HZ.Brightness = S.Brightness;
		HZ.ClockTime = S.ClockTime;
		S.Ambient = Color3.fromRGB(255, 255, 255);
		S.OutdoorAmbient = Color3.fromRGB(255, 255, 255);
		S.Brightness = 3;
		S.ClockTime = 14;
		local a = S:FindFirstChild("MulbaFullbright");
		if not a then
			a = Instance.new("ColorCorrectionEffect");
			a.Name = "MulbaFullbright";
			a.Parent = S;
		end;
	else
		if HZ.Ambient then
			S.Ambient = HZ.Ambient;
		end;
		if HZ.OutdoorAmbient then
			S.OutdoorAmbient = HZ.OutdoorAmbient;
		end;
		if HZ.Brightness then
			S.Brightness = HZ.Brightness;
		end;
		if HZ.ClockTime then
			S.ClockTime = HZ.ClockTime;
		end;
		local a = S:FindFirstChild("MulbaFullbright");
		if a then
			a:Destroy();
		end;
	end;
end;
local function tZ()
	g.AntiFling = not g.AntiFling;
end;
task.spawn(function()
	while true do
		task.wait(.1);
		if g.AntiFling then
			local a = W.Character;
			local v = a and a:FindFirstChild("HumanoidRootPart");
			if v then
				for a, v in ipairs(v:GetChildren()) do
					if v:IsA("BodyVelocity") then
						if v.Velocity.Magnitude > 500 then
							v.Velocity = v.Velocity.Unit * 500;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local function jZ()
	local a = W.Character;
	local v = a and a:FindFirstChildOfClass("Humanoid");
	if v then
		v.Health = 0;
	end;
end;
local function YZ()
	local a = W.Character;
	local v = a and a:FindFirstChild("HumanoidRootPart");
	if not v then
		return;
	end;
	for a, w in ipairs(workspace:GetDescendants()) do
		if w:IsA("SpawnLocation") then
			pcall(function()
				v.CFrame = w.CFrame + Vector3.new(0, 3, 0);
			end);
			return;
		end;
	end;
end;
local function EZ()
	local a = W.Character;
	local v = a and a:FindFirstChild("HumanoidRootPart");
	if not v then
		return;
	end;
	E.savedCFrame = v.CFrame;
	N("MAP", "Position sauvegard\195\169e", false);
end;
local function yZ()
	if not E.savedCFrame then
		N("MAP", "Aucune position sauvegard\195\169e", true);
		return;
	end;
	local a = W.Character;
	local v = a and a:FindFirstChild("HumanoidRootPart");
	if not v then
		return;
	end;
	pcall(function()
		v.CFrame = E.savedCFrame + Vector3.new(0, 3, 0);
	end);
	N("MAP", "TP \195\160 la position sauvegard\195\169e", false);
end;
local function fZ()
	local a = {};
	for v, w in ipairs(workspace:GetDescendants()) do
		if w:IsA("BasePart") then
			local v = w.Name;
			if v == "Coin" or v:find("Coin") or v:find("coin") then
				if w.Transparency < 1 then
					table.insert(a, w);
				end;
			end;
		end;
	end;
	return a;
end;
local function CZ()
	if y.running then
		return;
	end;
	y.running = true;
	task.spawn(function()
		while y.running do
			local a = W.Character;
			local v = a and a:FindFirstChild("HumanoidRootPart");
			if not v then
				task.wait(.3);
				continue;
			end;
			local w = fZ();
			if #w == 0 then
				task.wait(2);
				continue;
			end;
			local n, S = nil, math.huge;
			for a, w in ipairs(w) do
				if w and w.Parent then
					local a = ((w.Position - v.Position)).Magnitude;
					if a < S then
						S = a;
						n = w;
					end;
				end;
			end;
			if n then
				if S <= 50 then
					pcall(function()
						v.CFrame = CFrame.new(n.Position + Vector3.new(0, 2, 0));
					end);
					task.wait(.35);
				else
					pcall(function()
						local w = ((n.Position - v.Position)).Unit;
						v.CFrame = CFrame.new(v.Position, v.Position + Vector3.new(w.X, 0, w.Z));
						local S = a:FindFirstChildOfClass("Humanoid");
						if S then
							S.WalkSpeed = 32;
						end;
						S:MoveTo(n.Position);
					end);
					task.wait(.5);
				end;
			else
				task.wait(.3);
			end;
		end;
		local a = W.Character;
		local v = a and a:FindFirstChildOfClass("Humanoid");
		if v then
			v.WalkSpeed = g.WalkSpeed;
		end;
	end);
end;
local function BZ()
	y.running = false;
	local a = W.Character;
	local v = a and a:FindFirstChildOfClass("Humanoid");
	if v then
		v.WalkSpeed = g.WalkSpeed;
	end;
end;
local function iZ()
	if y.running then
		BZ();
	else
		CZ();
	end;
end;
local XZ = { running = false, conn = nil };
local function AZ()
	if XZ.running then
		return;
	end;
	XZ.running = true;
	XZ.conn = w.Heartbeat:Connect(function()
			if not XZ.running then
				return;
			end;
			local v = W.Character;
			if not v then
				return;
			end;
			local w = v:FindFirstChild("HumanoidRootPart");
			if not w then
				return;
			end;
			local n = w.CFrame;
			local S = 4;
			local G = n.Position + (n.LookVector * S);
			for a, v in ipairs(a:GetPlayers()) do
				if v ~= W and v.Character then
					local a = v.Character:FindFirstChild("HumanoidRootPart");
					if a then
						pcall(function()
							a.CFrame = CFrame.new(G, G + n.LookVector);
							a.AssemblyLinearVelocity = Vector3.zero;
							a.Velocity = Vector3.zero;
						end);
					end;
				end;
			end;
		end);
end;
local function eZ()
	XZ.running = false;
	if XZ.conn then
		XZ.conn:Disconnect();
		XZ.conn = nil;
	end;
end;
local function VZ()
	if XZ.running then
		eZ();
	else
		AZ();
	end;
end;
local IZ = { conn = nil, weld = nil, target = nil };
local function NZ()
	if IZ.conn then
		IZ.conn:Disconnect();
		IZ.conn = nil;
	end;
	if IZ.weld and IZ.weld.Parent then
		IZ.weld:Destroy();
	end;
	IZ.weld = nil;
	IZ.target = nil;
	local a = W.Character;
	local v = a and a:FindFirstChildOfClass("Humanoid");
	if v then
		pcall(function()
			v.PlatformStand = false;
			v.Sit = false;
		end);
	end;
end;
local function pZ()
	local a = D.TrollSelected;
	if not a or not a.Character then
		N("Attach", "Aucune cible valide", true);
		return;
	end;
	local v = a.Character:FindFirstChild("Head");
	local n = W.Character;
	local S = n and n:FindFirstChild("HumanoidRootPart");
	if not v or not S then
		N("Attach", "Impossible de s\'accrocher", true);
		return;
	end;
	local G = v:FindFirstChild("MulbaAttachPoint");
	if not G then
		G = Instance.new("Attachment");
		G.Name = "MulbaAttachPoint";
		G.CFrame = CFrame.new(0, .7, 0);
		G.Parent = v;
	end;
	local b = Instance.new("WeldConstraint");
	b.Part0 = S;
	b.Part1 = v;
	b.Parent = S;
	IZ.weld = b;
	IZ.target = a;
	S.CFrame = v.CFrame * CFrame.new(0, 2, 0);
	local s = n:FindFirstChildOfClass("Humanoid");
	if s then
		pcall(function()
			s.PlatformStand = true;
		end);
	end;
	IZ.conn = w.Heartbeat:Connect(function()
			local a = IZ.target;
			if not a or not a.Character then
				NZ();
				return;
			end;
			local v = a.Character:FindFirstChild("Head");
			if not v then
				NZ();
				return;
			end;
			local w = W.Character;
			local n = w and w:FindFirstChild("HumanoidRootPart");
			if not n then
				return;
			end;
			if not IZ.weld or not IZ.weld.Parent then
				local a = Instance.new("WeldConstraint");
				a.Part0 = n;
				a.Part1 = v;
				a.Parent = n;
				IZ.weld = a;
			end;
			pcall(function()
				n.CFrame = v.CFrame * CFrame.new(0, 2, 0);
				n.AssemblyLinearVelocity = Vector3.zero;
				n.Velocity = Vector3.zero;
			end);
		end);
	N("Attach", "Accroch\195\169 \195\160 " .. a.Name, false);
end;
local function xZ()
	if IZ.conn then
		NZ();
	else
		pZ();
	end;
end;
local function PZ(a, v)
	if not a then
		return;
	end;
	if t[v] and t[v].Parent then
		return;
	end;
	local w = C("Highlight", {
			FillColor = Color3.fromRGB(255, 255, 255),
			FillTransparency = .85,
			OutlineColor = Color3.fromRGB(255, 255, 255),
			OutlineTransparency = 0,
			DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
			Adornee = a,
			Parent = a,
		});
	t[v] = w;
end;
local function uZ(a)
	local v = t[a];
	if v and v.Parent then
		v:Destroy();
	end;
	t[a] = nil;
end;
local function OZ()
	if K.XRayEnabled then
		for a, v in ipairs(a:GetPlayers()) do
			if v.Character then
				PZ(v.Character, v);
			end;
		end;
	else
		for a in pairs(t) do
			uZ(a);
		end;
	end;
end;
local function JZ(a)
	if a == W then
		return;
	end;
	if L[a] then
		local v = pcall(function()
				L[a].Box.Visible = L[a].Box.Visible;
			end);
		if v then
			return;
		end;
		removeESP(a);
	end;
	local v = Drawing.new("Square");
	v.Thickness = o.BoxThickness;
	v.Filled = false;
	v.Visible = false;
	local w = Drawing.new("Text");
	w.Center = true;
	w.Outline = true;
	w.Size = 16;
	w.Visible = false;
	local n = Drawing.new("Text");
	n.Center = true;
	n.Outline = true;
	n.Size = 13;
	n.Visible = false;
	local S = Drawing.new("Line");
	S.Thickness = 1;
	S.Visible = false;
	L[a] = {
			Box = v,
			Text = w,
			DistanceText = n,
			Tracer = S,
		};
end;
local function rZ(a)
	local v = L[a];
	if v then
		for a, v in pairs(v) do
			pcall(function()
				v:Remove();
			end);
		end;
		L[a] = nil;
	end;
end;
local function TZ(a)
	local v, w = b:WorldToViewportPoint(a);
	return Vector2.new(v.X, v.Y), w;
end;
w.RenderStepped:Connect(function()
	if not K.EspEnabled then
		for a, v in pairs(L) do
			pcall(function()
				v.Box.Visible = false;
				v.Text.Visible = false;
				v.DistanceText.Visible = false;
				v.Tracer.Visible = false;
			end);
		end;
		return;
	end;
	local a = workspace.CurrentCamera;
	if a then
		b = a;
	end;
	local v = W.Character;
	local w = v and v:FindFirstChild("HumanoidRootPart");
	local n = w and w.Position;
	for a, v in pairs(L) do
		local w = pcall(function()
				return v.Box.Visible;
			end);
		if not w then
			L[a] = nil;
			continue;
		end;
		local S = a.Character;
		local W = S and S:FindFirstChild("HumanoidRootPart");
		local G = S and S:FindFirstChild("Head");
		local s = S and S:FindFirstChildOfClass("Humanoid");
		local z = function()
				pcall(function()
					v.Box.Visible = false;
					v.Text.Visible = false;
					v.DistanceText.Visible = false;
					v.Tracer.Visible = false;
				end);
			end;
		if not ((W and (G and (s and s.Health > 0)))) then
			z();
			continue;
		end;
		local U = O(a);
		if not aZ(U) then
			z();
			continue;
		end;
		local m, d = TZ(G.Position + Vector3.new(0, .5, 0));
		local R, h = TZ(W.Position - Vector3.new(0, 3, 0));
		if d or h then
			local w = math.abs(m.Y - R.Y);
			local S = w / 2;
			local G = T(U);
			local s = ((tick() * .5)) % 1;
			local z = Color3.fromHSV(s, 1, 1);
			if o.BoxEnabled then
				pcall(function()
					v.Box.Size = Vector2.new(S, w);
					v.Box.Position = Vector2.new(m.X - S / 2, m.Y);
					v.Box.Color = z;
					v.Box.Thickness = 2;
					v.Box.Visible = true;
				end);
			else
				pcall(function()
					v.Box.Visible = false;
				end);
			end;
			pcall(function()
				v.Text.Text = a.DisplayName .. (" [" .. (U .. "]"));
				v.Text.Position = Vector2.new(m.X, m.Y - 18);
				v.Text.Color = G;
				v.Text.Visible = true;
			end);
			if o.DistanceEnabled and n then
				pcall(function()
					local a = ((W.Position - n)).Magnitude;
					v.DistanceText.Text = string.format("%.1f m", a * .28);
					v.DistanceText.Position = Vector2.new(m.X, R.Y + 2);
					v.DistanceText.Color = G;
					v.DistanceText.Visible = true;
				end);
			else
				pcall(function()
					v.DistanceText.Visible = false;
				end);
			end;
			if o.TracerEnabled then
				pcall(function()
					v.Tracer.From = Vector2.new(b.ViewportSize.X / 2, b.ViewportSize.Y);
					v.Tracer.To = Vector2.new(m.X, m.Y);
					v.Tracer.Color = z;
					v.Tracer.Thickness = 1;
					v.Tracer.Visible = true;
				end);
			else
				pcall(function()
					v.Tracer.Visible = false;
				end);
			end;
		else
			z();
		end;
	end;
end);
a.PlayerAdded:Connect(function(a)
	task.wait(1);
	JZ(a);
	if K.XRayEnabled and a.Character then
		PZ(a.Character, a);
	end;
end);
a.PlayerRemoving:Connect(function(a)
	rZ(a);
	uZ(a);
	j.knownRoles[a] = nil;
	Y.lastRoles[a] = nil;
end);
for a, v in ipairs(a:GetPlayers()) do
	JZ(v);
end;
local function as(a)
	local w = a.AbsoluteSize;
	if w.X < 5 or w.Y < 5 then
		return;
	end;
	local n = math.random(M.ParticleMinSize, M.ParticleMaxSize);
	local S = math.random(0, math.max(1, w.X - n));
	local W = ((w.Y + 40)) / M.ParticleFallSpeed;
	local G = C("Frame", {
			Size = UDim2.new(0, n, 0, n),
			Position = UDim2.new(0, S, 0, -n),
			BackgroundColor3 = m.Particle,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 5,
			Parent = a,
		});
	B(G, math.floor(n / 2));
	local b = v:Create(G, TweenInfo.new(W, Enum.EasingStyle.Linear), { Position = UDim2.new(0, S + math.random(-40, 40), 0, w.Y + 20), BackgroundTransparency = .85 + math.random() * .1 });
	b:Play();
	b.Completed:Connect(function()
		G:Destroy();
	end);
end;
local function vs(a)
	task.spawn(function()
		while a and a.Parent do
			for v = 1, M.ParticlesPerTick, 1 do
				as(a);
			end;
			task.wait(M.ParticleSpawnRate);
		end;
	end);
end;
local function ws(a, v, n)
	local S = C("Frame", {
			Name = a .. "_ShadowHolder",
			Size = v,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ZIndex = 1,
			Parent = n,
		});
	for a = 1, 6, 1 do
		local v = C("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				BackgroundTransparency = .88 + (a * .008),
				BorderSizePixel = 0,
				ZIndex = 1,
				Parent = S,
			});
		B(v, 20 + a * 5);
	end;
	local W = C("Frame", {
			Name = a,
			Size = v,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundColor3 = m.BgTop,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Active = true,
			Draggable = true,
			ZIndex = 2,
			Parent = n,
		});
	B(W, 20);
	X(W, m.Border, 1, .4);
	i(W, m.BgTop, m.BgBottom, 90);
	w.Heartbeat:Connect(function()
		if S.Parent and W.Parent then
			S.Position = W.Position + UDim2.new(0, 0, 0, 12);
			S.Size = W.Size;
			S.Visible = W.Visible;
		end;
	end);
	local G = C("Frame", {
			Name = "ParticleZone",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			ZIndex = 5,
			Parent = W,
		});
	B(G, 20);
	vs(G);
	return W;
end;
local function ns(a, v)
	V(a, .35, v);
end;
local function Ss()
	if not ((D.Shell and D.Shell.Parent)) then
		return;
	end;
	V(D.Shell, .35, function()
		D.Shell = nil;
		D.Sidebar = nil;
		D.Content = nil;
		D.Scroll = nil;
		D.NavItems = {};
		D.CurrentPage = nil;
		D.MenuOpen = false;
	end);
end;
task.spawn(function()
	while true do
		task.wait(K.AutoShootDelay);
		if not K.AutoShootEnabled then
			continue;
		end;
		local a = O(W);
		if a ~= "Sheriff" then
			continue;
		end;
		local v = W.Character;
		if not v then
			continue;
		end;
		local w = v:FindFirstChild("Gun");
		if not w then
			local a = W:FindFirstChild("Backpack");
			if a then
				local w = a:FindFirstChild("Gun");
				if w then
					pcall(function()
						v.Humanoid:EquipTool(w);
					end);
				end;
			end;
			continue;
		end;
		local n = J();
		if not n then
			continue;
		end;
		local S = n.Character;
		if not S then
			continue;
		end;
		local G = S:FindFirstChild("HumanoidRootPart");
		local b = S:FindFirstChild("Head");
		if not G then
			continue;
		end;
		local s = v:FindFirstChild("HumanoidRootPart");
		if not s then
			continue;
		end;
		local z = ((G.Position - s.Position)).Magnitude;
		if z > K.AutoShootRange then
			continue;
		end;
		local U = workspace.CurrentCamera;
		if U then
			pcall(function()
				U.CFrame = CFrame.new(U.CFrame.Position, b and b.Position or G.Position);
			end);
		end;
		pcall(function()
			w:Activate();
		end);
	end;
end);
local Ws, Gs, bs;
local ss, zs, Us, ms, ds, Rs;
local hs, Qs, Zs, Fs, Ms;
local Ds, Ks, qs, os, gs, cs;
Gs = function()
		local n = W:FindFirstChild("PlayerGui");
		if n then
			local a = n:FindFirstChild("MulbaHeadGui");
			if a then
				a:Destroy();
			end;
		end;
		local S = W.Character;
		if not S or not S:FindFirstChild("Head") then
			task.delay(1, function()
				if Gs then
					Gs();
				end;
			end);
			return;
		end;
		local G = S:FindFirstChild("Head");
		if not G then
			return;
		end;
		local b = C("ScreenGui", {
				Name = "MulbaHeadGui",
				ResetOnSpawn = false,
				IgnoreGuiInset = true,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				DisplayOrder = 997,
				Parent = n,
			});
		local s, z = 200, 50;
		local m = C("TextButton", {
				Size = UDim2.new(0, s, 0, z),
				Position = UDim2.new(0, 0, 0, 0),
				AnchorPoint = Vector2.new(.5, 1),
				BackgroundColor3 = Color3.fromRGB(12, 16, 28),
				BackgroundTransparency = .05,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				Active = true,
				ZIndex = 1,
				Parent = b,
			});
		B(m, 25);
		i(m, Color3.fromRGB(16, 22, 38), Color3.fromRGB(8, 10, 18), 90);
		C("UIStroke", {
			Color = Color3.fromRGB(90, 150, 255),
			Thickness = 1.5,
			Transparency = .15,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = m,
		});
		local d = C("Frame", {
				Size = UDim2.new(0, 36, 0, 36),
				Position = UDim2.new(0, 8, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = m,
			});
		B(d, 18);
		local R = C("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 7,
				Parent = d,
			});
		B(R, 16);
		local h = C("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 8,
				Parent = R,
			});
		B(h, 16);
		task.spawn(function()
			local v, w = pcall(function()
					return a:GetUserThumbnailAsync(W.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if v and w then
				h.Image = w;
			end;
		end);
		local Q = C("TextLabel", {
				Size = UDim2.new(1, -90, 0, 16),
				Position = UDim2.new(0, 52, 0, 8),
				BackgroundTransparency = 1,
				Text = "Mulba Menu",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = m,
			});
		local Z = C("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 180, 255)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(170, 120, 255)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 120, 200)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(255, 180, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 255, 180)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 180, 255)),
				}), Rotation = 0, Parent = Q });
		task.spawn(function()
			while Z.Parent do
				Z.Rotation = ((Z.Rotation + 3)) % 360;
				task.wait(.03);
			end;
		end);
		C("TextLabel", {
			Size = UDim2.new(1, -90, 0, 12),
			Position = UDim2.new(0, 52, 0, 23),
			BackgroundTransparency = 1,
			Text = W.DisplayName .. " / lifetime",
			TextColor3 = Color3.fromRGB(220, 225, 235),
			Font = Enum.Font.GothamMedium,
			TextSize = 9,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 9,
			Parent = m,
		});
		local F = C("TextLabel", {
				Size = UDim2.new(1, -90, 0, 14),
				Position = UDim2.new(0, 52, 0, 35),
				BackgroundTransparency = 1,
				Text = "Cr\195\169ateur",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = m,
			});
		local M = C("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 80, 80)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(255, 180, 80)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 255, 80)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(120, 255, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 200, 255)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 80, 80)),
				}), Rotation = 0, Parent = F });
		task.spawn(function()
			while M.Parent do
				M.Rotation = ((M.Rotation + 4)) % 360;
				task.wait(.03);
			end;
		end);
		local K = C("Frame", {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -38, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = m,
			});
		B(K, 15);
		local q = C("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Text = "M",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 15,
				ZIndex = 8,
				Parent = K,
			});
		C("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 230, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(90, 150, 255)) }), Rotation = 90, Parent = q });
		m.BackgroundTransparency = 1;
		m.Size = UDim2.new(0, s * .7, 0, z * .7);
		for a, w in ipairs(m:GetDescendants()) do
			if w:IsA("TextLabel") then
				w.TextTransparency = 1;
				(v:Create(w, TweenInfo.new(.5), { TextTransparency = 0 })):Play();
			end;
			if w:IsA("ImageLabel") then
				w.ImageTransparency = 1;
				(v:Create(w, TweenInfo.new(.5), { ImageTransparency = 0 })):Play();
			end;
		end;
		(v:Create(m, TweenInfo.new(.55, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, s, 0, z), BackgroundTransparency = .05 })):Play();
		w.RenderStepped:Connect(function()
			if not b.Parent then
				return;
			end;
			if not ((m and m.Parent)) then
				return;
			end;
			local a = W.Character;
			if not a then
				m.Visible = false;
				return;
			end;
			local v = a:FindFirstChild("Head");
			if not v then
				m.Visible = false;
				return;
			end;
			local w = workspace.CurrentCamera;
			if not w then
				return;
			end;
			local n = v.Position + Vector3.new(0, U, 0);
			local S, G = w:WorldToViewportPoint(n);
			if not G then
				m.Visible = false;
				return;
			end;
			m.Visible = true;
			m.Position = UDim2.new(0, S.X, 0, S.Y);
		end);
		m.MouseButton1Click:Connect(function()
			if not D.Authenticated then
				return;
			end;
			if D.Shell and D.Shell.Parent then
				return;
			end;
			if Ws then
				Ws();
			end;
		end);
		D.BillboardRef = b;
	end;
ss = function(a)
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 42),
			BackgroundTransparency = 1,
			Text = "Bienvenue sur Mulba",
			TextColor3 = m.TextPrimary,
			Font = Enum.Font.GothamBlack,
			TextSize = 30,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 46),
			BackgroundTransparency = 1,
			Text = "Menu premium \226\128\162 Murder Mystery 2",
			TextColor3 = m.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		local v = C("Frame", {
				Size = UDim2.new(0, 140, 0, 58),
				Position = UDim2.new(1, -140, 0, 0),
				BackgroundColor3 = m.Surface,
				BackgroundTransparency = .35,
				BorderSizePixel = 0,
				ZIndex = 26,
				Parent = a,
			});
		B(v, 10);
		X(v, m.Border, 1, .5);
		local n = C("TextLabel", {
				Size = UDim2.new(1, -16, 0, 20),
				Position = UDim2.new(0, 8, 0, 8),
				BackgroundTransparency = 1,
				Text = "FPS: 0",
				TextColor3 = m.Success,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = v,
			});
		local S = C("TextLabel", {
				Size = UDim2.new(1, -16, 0, 20),
				Position = UDim2.new(0, 8, 0, 30),
				BackgroundTransparency = 1,
				Text = "MS: 0",
				TextColor3 = m.Accent,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = v,
			});
		task.spawn(function()
			local a = 0;
			local G = tick();
			w.RenderStepped:Connect(function()
				a = a + 1;
			end);
			while v.Parent do
				local v = tick();
				local w = v - G;
				if w >= .5 then
					local b = math.floor(a / w);
					a = 0;
					G = v;
					local s, z = pcall(function()
							return math.floor(W:GetNetworkPing() * 1000);
						end);
					local U = s and z or 0;
					pcall(function()
						n.Text = "FPS: " .. b;
						n.TextColor3 = b >= 50 and m.Success or (b >= 30 and Color3.fromRGB(240, 200, 120) or m.Error);
						S.Text = "MS: " .. U;
						S.TextColor3 = U <= 80 and m.Success or (U <= 150 and Color3.fromRGB(240, 200, 120) or m.Error);
					end);
				end;
				task.wait(.1);
			end;
		end);
		C("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundColor3 = m.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = a,
		});
		local G = 100;
		local function b(v, w)
			C("TextLabel", {
				Size = UDim2.new(1, 0, 0, 20),
				Position = UDim2.new(0, 0, 0, G),
				BackgroundTransparency = 1,
				Text = v,
				TextColor3 = m.Accent,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 25,
				Parent = a,
			});
			G = G + 26;
			C("TextLabel", {
				Size = UDim2.new(1, -8, 0, 0),
				Position = UDim2.new(0, 0, 0, G),
				BackgroundTransparency = 1,
				Text = w,
				TextColor3 = m.TextSecondary,
				Font = Enum.Font.Gotham,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextWrapped = true,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = a,
			});
			G = (G + #w * 5) + 30;
		end;
		b("\226\150\186 ESP", "Box et tracer multicolores, r\195\180les, x-ray.");
		b("\226\150\186 PLAYER", "Ciblage, TP, spectate, s\'accrocher, Fly + zen.");
		b("\226\150\186 MURDER", "TP ALL IN FRONT (4 studs), TP tueur.");
		b("\226\150\186 SHERIFF", "Auto Shoot, TP sh\195\169rif.");
		b("\226\150\186 T\195\137L\195\137PORT\195\137", "TP spawn, SET MAP, MAP.");
		b("\226\150\186 AUTO FARM", "R\195\169cup\195\168re les pi\195\168ces (marche/TP proche).");
		b("\226\150\186 PARAM\195\136TRES", "Notif kill feed, notif chat, spam chat.");
		C("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, G),
			BackgroundColor3 = m.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = a,
		});
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 24),
			Position = UDim2.new(0, 0, 0, G + 10),
			BackgroundTransparency = 1,
			Text = "\240\159\146\161 Appuie sur M pour ouvrir ou fermer le menu",
			TextColor3 = m.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
	end;
zs = function(a)
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Param\195\168tres",
			TextColor3 = m.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 16),
			Position = UDim2.new(0, 0, 0, 50),
			BackgroundTransparency = 1,
			Text = "COULEUR D\'ACCENT",
			TextColor3 = m.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		local w = C("Frame", {
				Size = UDim2.new(1, 0, 0, 140),
				Position = UDim2.new(0, 0, 0, 72),
				BackgroundTransparency = 1,
				ZIndex = 25,
				Parent = a,
			});
		C("UIGridLayout", {
			CellSize = UDim2.new(0, 58, 0, 58),
			CellPadding = UDim2.new(0, 14, 0, 14),
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Parent = w,
		});
		local n = {};
		for a, S in ipairs(d) do
			local W = C("TextButton", {
					BackgroundColor3 = S.Accent,
					BorderSizePixel = 0,
					Text = "",
					AutoButtonColor = false,
					LayoutOrder = a,
					ZIndex = 26,
					Parent = w,
				});
			B(W, 29);
			local G = C("UIStroke", {
					Color = m.TextPrimary,
					Thickness = 2,
					Transparency = (S.name == D.CurrentPreset) and 0 or 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Parent = W,
				});
			n[S.name] = G;
			W.MouseButton1Click:Connect(function()
				if D.CurrentPreset == S.name then
					return;
				end;
				D.CurrentPreset = S.name;
				F(S);
				for a, w in pairs(n) do
					(v:Create(w, TweenInfo.new(.2), { Transparency = (a == S.name) and 0 or 1 })):Play();
				end;
			end);
		end;
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 16),
			Position = UDim2.new(0, 0, 0, 240),
			BackgroundTransparency = 1,
			Text = "NOTIFICATIONS",
			TextColor3 = m.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		local S = C("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 262),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = a,
			});
		C("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = S });
		cs(S, 1, "NOTIFICATION", "Kill feed bas droite (Murder/Sheriff/Gun au sol)", function()
			return K.NotifKillFeed;
		end, function(a)
			K.NotifKillFeed = a;
		end, Color3.fromRGB(255, 140, 80));
		cs(S, 2, "NOTIF MESSAGE CHAT", "Murder/Sheriff dans ton chat (local)", function()
			return K.NotifChatMsg;
		end, function(a)
			K.NotifChatMsg = a;
		end, Color3.fromRGB(115, 155, 240));
		qs(S, 3, "SPAM CHAT", "Renvoie Murder/Sheriff dans le chat", Color3.fromRGB(240, 165, 95), function()
			wZ();
			task.wait(.05);
			wZ();
			task.wait(.05);
			wZ();
		end);
	end;
gs = function(a, v, w)
		local n = C("Frame", {
				Size = UDim2.new(1, 0, 0, 26),
				BackgroundTransparency = 1,
				LayoutOrder = v,
				ZIndex = 19,
				Parent = a,
			});
		C("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 4, 0, 0),
			BackgroundTransparency = 1,
			Text = string.upper(w),
			TextColor3 = m.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 19,
			Parent = n,
		});
		C("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 1, -1),
			BackgroundColor3 = m.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 19,
			Parent = n,
		});
	end;
Ds = function(a, w, n, S, W, G, b)
		local s = C("Frame", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = m.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = w,
				ZIndex = 26,
				Parent = a,
			});
		B(s, 12);
		X(s, m.Border, 1, .5);
		local z = C("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = b,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = s,
			});
		B(z, 2);
		C("TextLabel", {
			Size = UDim2.new(1, -100, 0, 18),
			Position = UDim2.new(0, 26, 0, 10),
			BackgroundTransparency = 1,
			Text = n,
			TextColor3 = m.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = s,
		});
		C("TextLabel", {
			Size = UDim2.new(1, -100, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = S,
			TextColor3 = m.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = s,
		});
		local U = C("TextButton", {
				Size = UDim2.new(0, 46, 0, 24),
				Position = UDim2.new(1, -58, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = W() and b or m.SurfaceHi,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 28,
				Parent = s,
			});
		B(U, 12);
		local d = C("Frame", {
				Size = UDim2.new(0, 18, 0, 18),
				Position = W() and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = U,
			});
		B(d, 9);
		U.MouseButton1Click:Connect(function()
			G();
			local a = W();
			(v:Create(U, TweenInfo.new(.2), { BackgroundColor3 = a and b or m.SurfaceHi })):Play();
			(v:Create(d, TweenInfo.new(.2, Enum.EasingStyle.Quad), { Position = a and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0) })):Play();
		end);
		return s;
	end;
Ks = function(a, v, w, S, W, G, b, s)
		local z = C("Frame", {
				Size = UDim2.new(1, 0, 0, 52),
				BackgroundColor3 = m.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = v,
				ZIndex = 26,
				Parent = a,
			});
		B(z, 12);
		X(z, m.Border, 1, .5);
		C("TextLabel", {
			Size = UDim2.new(0, 130, 0, 14),
			Position = UDim2.new(0, 26, 0, 8),
			BackgroundTransparency = 1,
			Text = w,
			TextColor3 = m.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = z,
		});
		local U = C("TextLabel", {
				Size = UDim2.new(0, 60, 0, 14),
				Position = UDim2.new(1, -70, 0, 8),
				BackgroundTransparency = 1,
				Text = tostring(G()),
				TextColor3 = m.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Right,
				ZIndex = 27,
				Parent = z,
			});
		local d = C("Frame", {
				Size = UDim2.new(1, -52, 0, 8),
				Position = UDim2.new(0, 26, 0, 32),
				BackgroundColor3 = m.SurfaceHi,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = z,
			});
		B(d, 4);
		local R = ((G() - S)) / ((W - S));
		local h = C("Frame", {
				Size = UDim2.new(R, 0, 1, 0),
				BackgroundColor3 = s,
				BorderSizePixel = 0,
				ZIndex = 28,
				Parent = d,
			});
		B(h, 4);
		local Q = C("Frame", {
				Size = UDim2.new(0, 14, 0, 14),
				Position = UDim2.new(R, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = d,
			});
		B(Q, 7);
		X(Q, Color3.fromRGB(0, 0, 0), 2, .3);
		local Z = C("TextButton", {
				Size = UDim2.new(1, -52, 0, 22),
				Position = UDim2.new(0, 26, 0, 20),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = z,
			});
		local F = false;
		local function M(a)
			local v = d.AbsolutePosition.X;
			local w = d.AbsoluteSize.X;
			if w <= 0 then
				return;
			end;
			local n = math.clamp(((a - v)) / w, 0, 1);
			local G = S + n * ((W - S));
			G = math.floor(G * 10 + .5) / 10;
			b(G);
			Q.Position = UDim2.new(n, 0, .5, 0);
			h.Size = UDim2.new(n, 0, 1, 0);
			U.Text = tostring(G);
		end;
		Z.InputBegan:Connect(function(a)
			if a.UserInputType == Enum.UserInputType.MouseButton1 or a.UserInputType == Enum.UserInputType.Touch then
				F = true;
				M(a.Position.X);
			end;
		end);
		Z.InputChanged:Connect(function(a)
			if not F then
				return;
			end;
			if a.UserInputType == Enum.UserInputType.MouseMovement or a.UserInputType == Enum.UserInputType.Touch then
				M(a.Position.X);
			end;
		end);
		n.InputEnded:Connect(function(a)
			if a.UserInputType == Enum.UserInputType.MouseButton1 or a.UserInputType == Enum.UserInputType.Touch then
				F = false;
			end;
		end);
	end;
qs = function(a, w, n, S, W, G)
		local b = C("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = m.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = w,
				ZIndex = 26,
				Parent = a,
			});
		B(b, 12);
		X(b, m.Border, 1, .5);
		local s = C("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = W,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = b,
			});
		B(s, 2);
		local z = C("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = n,
				TextColor3 = m.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = b,
			});
		C("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = S,
			TextColor3 = m.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = b,
		});
		local U, d, R = A(b, "right", m.TextMuted, 7);
		U.Position = UDim2.new(1, -26, .5, 0);
		U.AnchorPoint = Vector2.new(.5, .5);
		b.MouseEnter:Connect(function()
			(v:Create(b, TweenInfo.new(.18), { BackgroundColor3 = m.SurfaceHi, BackgroundTransparency = .1 })):Play();
			(v:Create(z, TweenInfo.new(.18), { TextColor3 = W })):Play();
			(v:Create(d, TweenInfo.new(.18), { BackgroundColor3 = W })):Play();
			(v:Create(R, TweenInfo.new(.18), { BackgroundColor3 = W })):Play();
		end);
		b.MouseLeave:Connect(function()
			(v:Create(b, TweenInfo.new(.18), { BackgroundColor3 = m.Surface, BackgroundTransparency = .25 })):Play();
			(v:Create(z, TweenInfo.new(.18), { TextColor3 = m.TextPrimary })):Play();
			(v:Create(d, TweenInfo.new(.18), { BackgroundColor3 = m.TextMuted })):Play();
			(v:Create(R, TweenInfo.new(.18), { BackgroundColor3 = m.TextMuted })):Play();
		end);
		b.MouseButton1Click:Connect(G);
		return b;
	end;
cs = function(a, w, n, S, W, G, b)
		local s = C("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = m.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = w,
				ZIndex = 26,
				Parent = a,
			});
		B(s, 12);
		X(s, m.Border, 1, .5);
		local z = C("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = W() and b or m.TextMuted,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = s,
			});
		B(z, 2);
		local U = C("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = n,
				TextColor3 = m.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = s,
			});
		C("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = S,
			TextColor3 = m.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = s,
		});
		local d, R, h = A(s, "right", W() and b or m.TextMuted, 7);
		d.Position = UDim2.new(1, -26, .5, 0);
		d.AnchorPoint = Vector2.new(.5, .5);
		local function Q()
			local a = W();
			z.BackgroundColor3 = a and b or m.TextMuted;
			R.BackgroundColor3 = a and b or m.TextMuted;
			h.BackgroundColor3 = a and b or m.TextMuted;
			U.TextColor3 = a and b or m.TextPrimary;
		end;
		s.MouseEnter:Connect(function()
			(v:Create(s, TweenInfo.new(.18), { BackgroundColor3 = m.SurfaceHi, BackgroundTransparency = .1 })):Play();
		end);
		s.MouseLeave:Connect(function()
			(v:Create(s, TweenInfo.new(.18), { BackgroundColor3 = m.Surface, BackgroundTransparency = .25 })):Play();
		end);
		s.MouseButton1Click:Connect(function()
			G(not W());
			Q();
		end);
		return s;
	end;
local function ls(w)
	C("TextLabel", {
		Size = UDim2.new(1, 0, 0, 14),
		Position = UDim2.new(0, 0, 0, 76),
		BackgroundTransparency = 1,
		Text = "JOUEUR CIBL\195\137",
		TextColor3 = m.TextMuted,
		Font = Enum.Font.GothamBold,
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 25,
		Parent = w,
	});
	local n = C("TextButton", {
			Size = UDim2.new(1, 0, 0, 44),
			Position = UDim2.new(0, 0, 0, 96),
			BackgroundColor3 = m.Surface,
			BackgroundTransparency = .25,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			ZIndex = 30,
			Parent = w,
		});
	B(n, 10);
	X(n, m.Border, 1, .4);
	local S = C("TextLabel", {
			Size = UDim2.new(1, -70, 1, 0),
			Position = UDim2.new(0, 16, 0, 0),
			BackgroundTransparency = 1,
			Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148",
			TextColor3 = m.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 31,
			Parent = n,
		});
	local G, b, s = A(n, "right", m.TextMuted, 8);
	G.Position = UDim2.new(1, -24, .5, 0);
	G.AnchorPoint = Vector2.new(.5, .5);
	local z = C("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			Position = UDim2.new(0, 0, 0, 148),
			BackgroundColor3 = m.Surface,
			BackgroundTransparency = .05,
			BorderSizePixel = 0,
			Visible = false,
			AutomaticSize = Enum.AutomaticSize.Y,
			ZIndex = 40,
			Parent = w,
		});
	B(z, 12);
	X(z, m.Border, 1, .3);
	local U = C("Frame", {
			Size = UDim2.new(1, -12, 0, 6),
			Position = UDim2.new(0, 6, 0, 6),
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.Y,
			ZIndex = 41,
			Parent = z,
		});
	C("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = U });
	local function d()
		for a, v in ipairs(U:GetChildren()) do
			if v:IsA("TextButton") or (v:IsA("TextLabel") and v.Name == "EmptyLbl") then
				v:Destroy();
			end;
		end;
		local w = 0;
		for a, n in ipairs(a:GetPlayers()) do
			if n == W then
				continue;
			end;
			w = w + 1;
			local G = C("TextButton", {
					Size = UDim2.new(1, 0, 0, 34),
					BackgroundColor3 = m.SurfaceHi,
					BackgroundTransparency = .6,
					BorderSizePixel = 0,
					Text = "",
					AutoButtonColor = false,
					LayoutOrder = w,
					ZIndex = 42,
					Parent = U,
				});
			B(G, 8);
			local d = O(n);
			local R = T(d);
			C("TextLabel", {
				Size = UDim2.new(1, -50, 1, 0),
				Position = UDim2.new(0, 12, 0, 0),
				BackgroundTransparency = 1,
				Text = n.Name .. ("  (" .. (d .. ")")),
				TextColor3 = m.TextPrimary,
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 43,
				Parent = G,
			});
			C("Frame", {
				Size = UDim2.new(0, 4, 0, 18),
				Position = UDim2.new(1, -14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = R,
				BorderSizePixel = 0,
				ZIndex = 43,
				Parent = G,
			});
			G.MouseEnter:Connect(function()
				(v:Create(G, TweenInfo.new(.15), { BackgroundTransparency = .25 })):Play();
			end);
			G.MouseLeave:Connect(function()
				(v:Create(G, TweenInfo.new(.15), { BackgroundTransparency = .6 })):Play();
			end);
			G.MouseButton1Click:Connect(function()
				D.TrollSelected = n;
				S.Text = n.Name;
				S.TextColor3 = m.Accent;
				z.Visible = false;
				(v:Create(b, TweenInfo.new(.15), { Rotation = 45 })):Play();
				(v:Create(s, TweenInfo.new(.15), { Rotation = -45 })):Play();
				u("\240\159\142\175 Cible : " .. n.Name, m.Accent);
			end);
		end;
		if w == 0 then
			C("TextLabel", {
				Name = "EmptyLbl",
				Size = UDim2.new(1, 0, 0, 34),
				BackgroundTransparency = 1,
				Text = "Aucun autre joueur",
				TextColor3 = m.TextMuted,
				Font = Enum.Font.Gotham,
				TextSize = 12,
				ZIndex = 42,
				Parent = U,
			});
		end;
	end;
	local R = false;
	n.MouseButton1Click:Connect(function()
		R = not R;
		if R then
			d();
		end;
		z.Visible = R;
		(v:Create(b, TweenInfo.new(.15), { Rotation = R and -45 or 45 })):Play();
		(v:Create(s, TweenInfo.new(.15), { Rotation = R and 45 or -45 })):Play();
	end);
	a.PlayerAdded:Connect(function()
		if R then
			d();
		end;
	end);
	a.PlayerRemoving:Connect(function(a)
		if D.TrollSelected == a then
			D.TrollSelected = nil;
			S.Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148";
			S.TextColor3 = m.TextMuted;
		end;
		if R then
			d();
		end;
	end);
end;
os = function()
		return;
	end;
hs = function(a)
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Player",
			TextColor3 = m.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Ciblage, mouvement & statistiques",
			TextColor3 = m.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		ls(a);
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 164),
			BackgroundTransparency = 1,
			Text = "ACTIONS CIBL\195\137ES",
			TextColor3 = m.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		local v = C("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 186),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = a,
			});
		C("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = v });
		qs(v, 1, "TP \195\128 LA CIBLE", "Te t\195\169l\195\169porte sur le joueur s\195\169lectionn\195\169", Color3.fromRGB(255, 80, 80), function()
			local a = D.TrollSelected;
			if not a or not a.Character then
				N("Player", "Aucune cible valide", true);
				return;
			end;
			local v = a.Character:FindFirstChild("HumanoidRootPart");
			local w = W.Character;
			local n = w and w:FindFirstChild("HumanoidRootPart");
			if v and n then
				pcall(function()
					n.CFrame = v.CFrame + Vector3.new(0, 3, 3);
				end);
				u("\240\159\142\175 TP vers " .. a.Name, Color3.fromRGB(255, 80, 80));
			end;
		end);
		qs(v, 2, "SPECTATE CIBLE", "Ta cam\195\169ra suit le joueur s\195\169lectionn\195\169", Color3.fromRGB(170, 130, 235), function()
			local a = D.TrollSelected;
			local v = workspace.CurrentCamera;
			if not a or not a.Character then
				N("Player", "Aucune cible valide", true);
				return;
			end;
			v.CameraSubject = a.Character:FindFirstChildOfClass("Humanoid") or a.Character;
			u("\240\159\145\129 Cam\195\169ra \226\134\146 " .. a.Name, Color3.fromRGB(170, 130, 235));
		end);
		cs(v, 3, "S\'ACCROCHER \195\128 ELLE", "Assis sur les \195\169paules (visible par tous)", function()
			return IZ.conn ~= nil;
		end, function(a)
			xZ();
		end, Color3.fromRGB(130, 205, 155));
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 430),
			BackgroundTransparency = 1,
			Text = "MOUVEMENT",
			TextColor3 = m.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		local w = C("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 452),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = a,
			});
		C("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = w });
		local n = 0;
		local function S()
			n = n + 1;
			return n;
		end;
		cs(w, S(), "FLY", "Vol (W/A/S/D) + emote zen", function()
			return g.FlyEnabled;
		end, function(a)
			if a ~= g.FlyEnabled then
				bZ();
			end;
		end, Color3.fromRGB(115, 155, 240));
		cs(w, S(), "SPIN", "Tourne sur toi-m\195\170me", function()
			return g.SpinEnabled;
		end, function(a)
			dZ();
		end, Color3.fromRGB(170, 130, 235));
		Ks(w, S(), "VITESSE SPIN", 2, 50, function()
			return g.SpinSpeed;
		end, function(a)
			RZ(a);
		end, Color3.fromRGB(170, 130, 235));
		cs(w, S(), "JERK", "Secousse rapide", function()
			return g.JerkEnabled;
		end, function(a)
			ZZ();
		end, Color3.fromRGB(240, 165, 95));
		Ks(w, S(), "INTENSIT\195\137 JERK", .5, 10, function()
			return g.JerkIntensity;
		end, function(a)
			FZ(a);
		end, Color3.fromRGB(240, 165, 95));
		cs(w, S(), "NOCLIP", "Traverse les murs", function()
			return g.NoclipEnabled;
		end, function(a)
			DZ();
		end, Color3.fromRGB(130, 205, 155));
		cs(w, S(), "INFINITE JUMP", "Saut infini", function()
			return g.InfiniteJump;
		end, function(a)
			cZ();
		end, Color3.fromRGB(240, 165, 95));
		cs(w, S(), "ANTI-AFK", "\195\137vite le kick inactivit\195\169", function()
			return g.AntiAFK;
		end, function(a)
			kZ();
		end, Color3.fromRGB(140, 200, 155));
		cs(w, S(), "FULLBRIGHT", "\195\137claire toute la map", function()
			return g.Fullbright;
		end, function(a)
			LZ();
		end, Color3.fromRGB(255, 215, 120));
		cs(w, S(), "ANTI-FLING", "Bloque les tentatives de fling", function()
			return g.AntiFling;
		end, function(a)
			tZ();
		end, Color3.fromRGB(220, 115, 115));
		gs(w, S(), "Stats");
		Ks(w, S(), "WALKSPEED", 16, 200, function()
			return g.WalkSpeed;
		end, function(a)
			KZ(a);
		end, Color3.fromRGB(115, 155, 240));
		Ks(w, S(), "JUMPPOWER", 50, 500, function()
			return g.JumpPower;
		end, function(a)
			qZ(a);
		end, Color3.fromRGB(130, 205, 155));
		Ks(w, S(), "GRAVITY", 0, 196, function()
			return g.Gravity;
		end, function(a)
			oZ(a);
		end, Color3.fromRGB(170, 130, 235));
		qs(w, S(), "RESET CHARACTER", "Respawn imm\195\169diat", Color3.fromRGB(255, 80, 80), function()
			jZ();
			N("Player", "Reset en cours...", false);
		end);
	end;
Ms = function(a)
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169port\195\169",
			TextColor3 = m.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169portation rapide",
			TextColor3 = m.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		local v = C("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = a,
			});
		C("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = v });
		qs(v, 1, "TP SPAWN", "Te t\195\169l\195\169porte au spawn", Color3.fromRGB(115, 155, 240), function()
			YZ();
		end);
		qs(v, 2, "SET MAP", "Sauvegarde ta position actuelle", Color3.fromRGB(140, 200, 155), function()
			EZ();
		end);
		qs(v, 3, "MAP", "TP \195\160 la position sauvegard\195\169e", Color3.fromRGB(240, 165, 95), function()
			yZ();
		end);
	end;
Fs = function(a)
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Animation",
			TextColor3 = m.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Animations visibles par tous",
			TextColor3 = m.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		local v = C("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = a,
			});
		C("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = v });
		Ds(v, 1, "SIT", "Assieds ton personnage", function()
			return g.Sitting;
		end, function()
			MZ();
		end, Color3.fromRGB(140, 200, 155));
	end;
Zs = function(a)
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Auto Farm",
			TextColor3 = m.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "R\195\169cup\195\168re les pi\195\168ces automatiquement",
			TextColor3 = m.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		local v = C("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = a,
			});
		C("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = v });
		cs(v, 1, "AUTO FARM COINS", "TP si proche, sinon marche (anti-kick)", function()
			return y.running;
		end, function(a)
			iZ();
		end, Color3.fromRGB(240, 200, 120));
	end;
Qs = function(a)
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Combat",
			TextColor3 = m.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Section \195\160 venir",
			TextColor3 = m.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
	end;
Us = function(a)
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "ESP",
			TextColor3 = m.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Affichage des r\195\180les MM2",
			TextColor3 = m.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundTransparency = 1,
			Text = "R\195\148LES",
			TextColor3 = m.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		local v = C("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 102),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = a,
			});
		C("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = v });
		cs(v, 1, "ESP Murderer", "Voir le tueur", function()
			return K.EspShowMurder;
		end, function(a)
			K.EspShowMurder = a;
		end, q.Murderer);
		cs(v, 2, "ESP Sheriff", "Voir le sh\195\169rif", function()
			return K.EspShowSheriff;
		end, function(a)
			K.EspShowSheriff = a;
		end, q.Sheriff);
		cs(v, 3, "ESP Innocent", "Voir les innocents", function()
			return K.EspShowInnocent;
		end, function(a)
			K.EspShowInnocent = a;
		end, q.Innocent);
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 290),
			BackgroundTransparency = 1,
			Text = "OPTIONS",
			TextColor3 = m.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		local w = C("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 312),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = a,
			});
		C("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = w });
		cs(w, 1, "X-RAY", "Voir \195\160 travers les murs", function()
			return K.XRayEnabled;
		end, function(a)
			K.XRayEnabled = a;
			OZ();
		end, Color3.fromRGB(255, 215, 120));
		cs(w, 2, "Box", "Cadre multicolore autour du joueur", function()
			return o.BoxEnabled;
		end, function(a)
			o.BoxEnabled = a;
		end, q.Box);
		cs(w, 3, "TRACER", "Ligne multicolore vers le joueur", function()
			return o.TracerEnabled;
		end, function(a)
			o.TracerEnabled = a;
		end, q.Tracer);
	end;
ms = function(a)
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Murder",
			TextColor3 = m.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 tueur",
			TextColor3 = m.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		local v = C("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = a,
			});
		C("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = v });
		cs(v, 1, "TP ALL IN FRONT", "Empile les joueurs \195\160 4 studs devant toi", function()
			return XZ.running;
		end, function(a)
			VZ();
		end, Color3.fromRGB(240, 165, 95));
		qs(v, 2, "TP MURDERER", "Te t\195\169l\195\169porte au tueur", Color3.fromRGB(255, 80, 80), function()
			local a = J();
			if not a then
				N("Erreur", "Tueur introuvable", true);
				return;
			end;
			local v = W.Character;
			local w = v and v:FindFirstChild("HumanoidRootPart");
			local n = a.Character and a.Character:FindFirstChild("HumanoidRootPart");
			if w and n then
				pcall(function()
					w.CFrame = n.CFrame + Vector3.new(0, 3, 3);
				end);
				N("TP", "TP vers " .. a.Name, false);
			end;
		end);
	end;
ds = function(a)
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Sheriff",
			TextColor3 = m.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 sh\195\169rif",
			TextColor3 = m.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = a,
		});
		local v = C("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = a,
			});
		C("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = v });
		cs(v, 1, "AUTO SHOOT MURDERER", "Tire auto sur le tueur (si Sheriff)", function()
			return K.AutoShootEnabled;
		end, function(a)
			K.AutoShootEnabled = a;
		end, Color3.fromRGB(70, 130, 240));
		qs(v, 2, "TP SHERIFF", "Te t\195\169l\195\169porte au sh\195\169rif", Color3.fromRGB(60, 120, 255), function()
			local a = r();
			if not a then
				N("Erreur", "Sh\195\169rif introuvable", true);
				return;
			end;
			local v = W.Character;
			local w = v and v:FindFirstChild("HumanoidRootPart");
			local n = a.Character and a.Character:FindFirstChild("HumanoidRootPart");
			if w and n then
				pcall(function()
					w.CFrame = n.CFrame + Vector3.new(0, 3, 3);
				end);
				N("TP", "TP vers " .. a.Name, false);
			end;
		end);
	end;
Rs = function(w)
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Troll",
			TextColor3 = m.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Cible un joueur, puis utilise les actions",
			TextColor3 = m.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 76),
			BackgroundTransparency = 1,
			Text = "JOUEUR CIBL\195\137",
			TextColor3 = m.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		local n = C("TextButton", {
				Size = UDim2.new(1, 0, 0, 44),
				Position = UDim2.new(0, 0, 0, 96),
				BackgroundColor3 = m.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = w,
			});
		B(n, 10);
		X(n, m.Border, 1, .4);
		local S = C("TextLabel", {
				Size = UDim2.new(1, -70, 1, 0),
				Position = UDim2.new(0, 16, 0, 0),
				BackgroundTransparency = 1,
				Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148",
				TextColor3 = m.TextMuted,
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 31,
				Parent = n,
			});
		local G, b, s = A(n, "right", m.TextMuted, 8);
		G.Position = UDim2.new(1, -24, .5, 0);
		G.AnchorPoint = Vector2.new(.5, .5);
		local z = C("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 148),
				BackgroundColor3 = m.Surface,
				BackgroundTransparency = .05,
				BorderSizePixel = 0,
				Visible = false,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 40,
				Parent = w,
			});
		B(z, 12);
		X(z, m.Border, 1, .3);
		local U = C("Frame", {
				Size = UDim2.new(1, -12, 0, 6),
				Position = UDim2.new(0, 6, 0, 6),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 41,
				Parent = z,
			});
		C("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = U });
		local function d()
			for a, v in ipairs(U:GetChildren()) do
				if v:IsA("TextButton") or (v:IsA("TextLabel") and v.Name == "EmptyLbl") then
					v:Destroy();
				end;
			end;
			local w = 0;
			for a, n in ipairs(a:GetPlayers()) do
				if n == W then
					continue;
				end;
				w = w + 1;
				local G = C("TextButton", {
						Size = UDim2.new(1, 0, 0, 34),
						BackgroundColor3 = m.SurfaceHi,
						BackgroundTransparency = .6,
						BorderSizePixel = 0,
						Text = "",
						AutoButtonColor = false,
						LayoutOrder = w,
						ZIndex = 42,
						Parent = U,
					});
				B(G, 8);
				local d = O(n);
				local R = T(d);
				C("TextLabel", {
					Size = UDim2.new(1, -50, 1, 0),
					Position = UDim2.new(0, 12, 0, 0),
					BackgroundTransparency = 1,
					Text = n.Name .. ("  (" .. (d .. ")")),
					TextColor3 = m.TextPrimary,
					Font = Enum.Font.GothamMedium,
					TextSize = 13,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 43,
					Parent = G,
				});
				C("Frame", {
					Size = UDim2.new(0, 4, 0, 18),
					Position = UDim2.new(1, -14, .5, 0),
					AnchorPoint = Vector2.new(0, .5),
					BackgroundColor3 = R,
					BorderSizePixel = 0,
					ZIndex = 43,
					Parent = G,
				});
				G.MouseEnter:Connect(function()
					(v:Create(G, TweenInfo.new(.15), { BackgroundTransparency = .25 })):Play();
				end);
				G.MouseLeave:Connect(function()
					(v:Create(G, TweenInfo.new(.15), { BackgroundTransparency = .6 })):Play();
				end);
				G.MouseButton1Click:Connect(function()
					D.TrollSelected = n;
					S.Text = n.Name;
					S.TextColor3 = m.Accent;
					z.Visible = false;
					(v:Create(b, TweenInfo.new(.15), { Rotation = 45 })):Play();
					(v:Create(s, TweenInfo.new(.15), { Rotation = -45 })):Play();
					u("\240\159\142\175 Cible : " .. n.Name, m.Accent);
				end);
			end;
			if w == 0 then
				C("TextLabel", {
					Name = "EmptyLbl",
					Size = UDim2.new(1, 0, 0, 34),
					BackgroundTransparency = 1,
					Text = "Aucun autre joueur",
					TextColor3 = m.TextMuted,
					Font = Enum.Font.Gotham,
					TextSize = 12,
					ZIndex = 42,
					Parent = U,
				});
			end;
		end;
		local R = false;
		n.MouseButton1Click:Connect(function()
			R = not R;
			if R then
				d();
			end;
			z.Visible = R;
			(v:Create(b, TweenInfo.new(.15), { Rotation = R and -45 or 45 })):Play();
			(v:Create(s, TweenInfo.new(.15), { Rotation = R and 45 or -45 })):Play();
		end);
		a.PlayerAdded:Connect(function()
			if R then
				d();
			end;
		end);
		a.PlayerRemoving:Connect(function(a)
			if D.TrollSelected == a then
				D.TrollSelected = nil;
				S.Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148";
				S.TextColor3 = m.TextMuted;
			end;
			if R then
				d();
			end;
		end);
		C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 164),
			BackgroundTransparency = 1,
			Text = "ACTIONS",
			TextColor3 = m.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		local h = C("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 186),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = w,
			});
		C("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = h });
		qs(h, 1, "TP \195\128 LA CIBLE", "Te t\195\169l\195\169porte sur le joueur s\195\169lectionn\195\169", Color3.fromRGB(255, 80, 80), function()
			local a = D.TrollSelected;
			if not a or not a.Character then
				N("Troll", "Aucune cible valide", true);
				return;
			end;
			local v = a.Character:FindFirstChild("HumanoidRootPart");
			local w = W.Character;
			local n = w and w:FindFirstChild("HumanoidRootPart");
			if v and n then
				pcall(function()
					n.CFrame = v.CFrame + Vector3.new(0, 3, 3);
				end);
				u("\240\159\142\175 TP vers " .. a.Name, Color3.fromRGB(255, 80, 80));
			end;
		end);
		qs(h, 2, "SPECTATE CIBLE", "Ta cam\195\169ra suit le joueur s\195\169lectionn\195\169", Color3.fromRGB(170, 130, 235), function()
			local a = D.TrollSelected;
			local v = workspace.CurrentCamera;
			if not a or not a.Character then
				N("Troll", "Aucune cible valide", true);
				return;
			end;
			v.CameraSubject = a.Character:FindFirstChildOfClass("Humanoid") or a.Character;
			u("\240\159\145\129 Cam\195\169ra \226\134\146 " .. a.Name, Color3.fromRGB(170, 130, 235));
		end);
	end;
bs = function(a)
		if D.CurrentPage == a then
			return;
		end;
		D.CurrentPage = a;
		for v, w in pairs(D.NavItems) do
			w.setActive(v == a);
		end;
		local w = D.Scroll;
		if not w then
			return;
		end;
		local n = w:FindFirstChild("PageBody");
		if n then
			for a, w in ipairs(n:GetChildren()) do
				if w:IsA("GuiObject") then
					(v:Create(w, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
					if w:IsA("TextLabel") then
						(v:Create(w, TweenInfo.new(.15), { TextTransparency = 1 })):Play();
					end;
				end;
			end;
			task.wait(.18);
			n:Destroy();
		end;
		w.CanvasPosition = Vector2.new(0, 0);
		local S = C("Frame", {
				Name = "PageBody",
				Size = UDim2.new(1, -48, 0, 0),
				Position = UDim2.new(0, 24, 0, 20),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 24,
				Parent = w,
			});
		if a == "home" then
			ss(S);
		elseif a == "esp" then
			Us(S);
		elseif a == "murder" then
			ms(S);
		elseif a == "sheriff" then
			ds(S);
		elseif a == "player" then
			hs(S);
		elseif a == "combat" then
			Qs(S);
		elseif a == "autofarm" then
			Zs(S);
		elseif a == "troll" then
			Rs(S);
		elseif a == "animation" then
			Fs(S);
		elseif a == "teleport" then
			Ms(S);
		elseif a == "settings" then
			zs(S);
		end;
	end;
local function ks(a, w, n, S)
	local W = C("TextButton", {
			Size = UDim2.new(1, 0, 0, 38),
			BackgroundColor3 = m.Surface,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			LayoutOrder = S,
			ZIndex = 20,
			Parent = a,
		});
	B(W, 8);
	local G = C("Frame", {
			Size = UDim2.new(0, 3, 0, 0),
			Position = UDim2.new(0, 0, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = m.Accent,
			BorderSizePixel = 0,
			ZIndex = 22,
			Parent = W,
		});
	B(G, 2);
	local b = C("TextLabel", {
			Size = UDim2.new(1, -20, 1, 0),
			Position = UDim2.new(0, 18, 0, 0),
			BackgroundTransparency = 1,
			Text = w,
			TextColor3 = m.TextSecondary,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 21,
			Parent = W,
		});
	local s = { active = false };
	local function z(a)
		s.active = a;
		if a then
			(v:Create(W, TweenInfo.new(.2), { BackgroundTransparency = .7 })):Play();
			(v:Create(G, TweenInfo.new(.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 3, 0, 22) })):Play();
			(v:Create(b, TweenInfo.new(.2), { TextColor3 = m.Accent, TextSize = 14 })):Play();
		else
			(v:Create(W, TweenInfo.new(.2), { BackgroundTransparency = 1 })):Play();
			(v:Create(G, TweenInfo.new(.2), { Size = UDim2.new(0, 3, 0, 0) })):Play();
			(v:Create(b, TweenInfo.new(.2), { TextColor3 = m.TextSecondary, TextSize = 13 })):Play();
		end;
	end;
	W.MouseEnter:Connect(function()
		if not s.active then
			(v:Create(W, TweenInfo.new(.15), { BackgroundTransparency = .85 })):Play();
			(v:Create(b, TweenInfo.new(.15), { TextColor3 = m.TextPrimary })):Play();
		end;
	end);
	W.MouseLeave:Connect(function()
		if not s.active then
			(v:Create(W, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
			(v:Create(b, TweenInfo.new(.15), { TextColor3 = m.TextSecondary })):Play();
		end;
	end);
	D.NavItems[n] = { btn = W, setActive = z, state = s };
	return W, z;
end;
local function Hs(a, v, w)
	local n = C("Frame", {
			Size = UDim2.new(1, -4, 0, 22),
			BackgroundTransparency = 1,
			LayoutOrder = w,
			ZIndex = 19,
			Parent = a,
		});
	C("TextLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 8, 0, 0),
		BackgroundTransparency = 1,
		Text = string.upper(v),
		TextColor3 = m.TextMuted,
		Font = Enum.Font.GothamBold,
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 19,
		Parent = n,
	});
end;
local function Ls()
	local a = C("ScreenGui", {
			Name = "MenuV71_GUI",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			DisplayOrder = 999,
			Parent = G,
		});
	D.Gui = a;
	local w = ws("LoadingContainer", UDim2.new(0, 460, 0, 240), a);
	D.LoadingFrame = w;
	w.BackgroundTransparency = 1;
	(v:Create(w, TweenInfo.new(.5), { BackgroundTransparency = 0 })):Play();
	local n = C("Frame", {
			Size = UDim2.new(0, 60, 0, 60),
			Position = UDim2.new(.5, 0, 0, 30),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundTransparency = 1,
			ZIndex = 8,
			Parent = w,
		});
	for a = 1, 14, 1 do
		local v = ((a - 1)) * (((math.pi * 2) / 14));
		local w = C("Frame", {
				Size = UDim2.new(0, 5, 0, 5),
				Position = UDim2.new(.5, math.cos(v) * 22, .5, math.sin(v) * 22),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = m.Accent,
				BackgroundTransparency = 1 - ((a / 14)) * .75,
				BorderSizePixel = 0,
				ZIndex = 9,
				Parent = n,
			});
		B(w, 2);
		h(w, "BackgroundColor3", "Accent");
	end;
	task.spawn(function()
		while n.Parent do
			n.Rotation = ((n.Rotation + 5)) % 360;
			task.wait(.02);
		end;
	end);
	C("TextLabel", {
		Size = UDim2.new(1, 0, 0, 32),
		Position = UDim2.new(0, 0, 0, 98),
		BackgroundTransparency = 1,
		Text = "Chargement",
		TextColor3 = m.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 24,
		ZIndex = 8,
		Parent = w,
	});
	local S = C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 134),
			BackgroundTransparency = 1,
			Text = "Initialisation...",
			TextColor3 = m.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 8,
			Parent = w,
		});
	local W = C("Frame", {
			Size = UDim2.new(.7, 0, 0, 8),
			Position = UDim2.new(.5, 0, 0, 172),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = m.SurfaceHi,
			BackgroundTransparency = .4,
			BorderSizePixel = 0,
			ZIndex = 8,
			Parent = w,
		});
	B(W, 4);
	local b = C("Frame", {
			Size = UDim2.new(0, 0, 1, 0),
			BackgroundColor3 = m.Accent,
			BorderSizePixel = 0,
			ZIndex = 9,
			Parent = W,
			ClipsDescendants = true,
		});
	B(b, 4);
	h(b, "BackgroundColor3", "Accent");
	local s = C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 192),
			BackgroundTransparency = 1,
			Text = "0 %",
			TextColor3 = m.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 8,
			Parent = w,
		});
	local z = tick();
	task.spawn(function()
		while tick() - z < M.LoadingDuration do
			local a = math.clamp(((tick() - z)) / M.LoadingDuration, 0, 1);
			b.Size = UDim2.new(a, 0, 1, 0);
			s.Text = math.floor(a * 100) .. " %";
			if a < .3 then
				S.Text = "Initialisation...";
			elseif a < .6 then
				S.Text = "Chargement...";
			elseif a < .9 then
				S.Text = "Pr\195\169paration...";
			else
				S.Text = "Finalisation...";
			end;
			task.wait(.03);
		end;
		b.Size = UDim2.new(1, 0, 1, 0);
		s.Text = "100 %";
	end);
	return w;
end;
local function ts(a)
	local v = D.Gui;
	local w = ws("CodeContainer", UDim2.new(0, 500, 0, 380), v);
	D.CodeFrame = w;
	w.BackgroundTransparency = 1;
	local n = C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 36),
			BackgroundTransparency = 1,
			Text = "ACC\195\136S S\195\137CURIS\195\137",
			TextColor3 = m.Accent,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 12,
			Parent = w,
		});
	h(n, "TextColor3", "Accent");
	C("TextLabel", {
		Size = UDim2.new(1, 0, 0, 38),
		Position = UDim2.new(0, 0, 0, 60),
		BackgroundTransparency = 1,
		Text = "V\195\169rification requise",
		TextColor3 = m.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 26,
		ZIndex = 12,
		Parent = w,
	});
	C("TextLabel", {
		Size = UDim2.new(1, -60, 0, 34),
		Position = UDim2.new(0, 30, 0, 104),
		BackgroundTransparency = 1,
		Text = "Entre le code d\'acc\195\168s",
		TextColor3 = m.TextSecondary,
		Font = Enum.Font.Gotham,
		TextSize = 13,
		TextWrapped = true,
		ZIndex = 12,
		Parent = w,
	});
	local S = C("TextBox", {
			Size = UDim2.new(.82, 0, 0, 54),
			Position = UDim2.new(.5, 0, 0, 154),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = m.Surface,
			BackgroundTransparency = .3,
			BorderSizePixel = 0,
			Text = "",
			PlaceholderText = "Code d\'acc\195\168s...",
			PlaceholderColor3 = m.TextMuted,
			TextColor3 = m.TextPrimary,
			Font = Enum.Font.GothamMedium,
			TextSize = 16,
			TextXAlignment = Enum.TextXAlignment.Center,
			ClearTextOnFocus = false,
			ZIndex = 13,
			Parent = w,
		});
	B(S, 12);
	local W = X(S, m.Border, 1.5, .3);
	S.Focused:Connect(function()
		W.Color = m.Accent;
		W.Transparency = .2;
	end);
	S.FocusLost:Connect(function()
		W.Color = m.Border;
		W.Transparency = .3;
	end);
	local G = C("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 216),
			BackgroundTransparency = 1,
			Text = "",
			TextColor3 = m.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 12,
			Parent = w,
		});
	local b = C("TextButton", {
			Size = UDim2.new(.82, 0, 0, 48),
			Position = UDim2.new(.5, 0, 0, 248),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = m.Accent,
			BorderSizePixel = 0,
			Text = "VALIDER",
			TextColor3 = m.TextOnAccent,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			AutoButtonColor = false,
			ZIndex = 13,
			Parent = w,
		});
	B(b, 12);
	h(b, "BackgroundColor3", "Accent");
	h(b, "TextColor3", "TextOnAccent");
	local z, U, d = 0, 5, false;
	local function R()
		if d then
			return;
		end;
		if S.Text == s then
			d = true;
			D.Authenticated = true;
			G.Text = "Acc\195\168s autoris\195\169";
			G.TextColor3 = m.Success;
			W.Color = m.Success;
			task.wait(.4);
			V(w, .35, function()
				D.CodeFrame = nil;
				if a then
					a();
				end;
			end);
		else
			z = z + 1;
			G.Text = string.format("Code incorrect \226\128\148 %d/%d", z, U);
			G.TextColor3 = m.Error;
			W.Color = m.Error;
			if z >= U then
				d = true;
				G.Text = "Acc\195\168s bloqu\195\169";
				task.wait(1.5);
				if v then
					v:Destroy();
				end;
				return;
			end;
			S.Text = "";
			pcall(function()
				S:CaptureFocus();
			end);
		end;
	end;
	b.MouseButton1Click:Connect(R);
	S.FocusLost:Connect(function(a)
		if a then
			R();
		end;
	end);
	task.spawn(function()
		task.wait(.6);
		pcall(function()
			S:CaptureFocus();
		end);
	end);
	I(w, .5);
	return w;
end;
Ws = function()
		local w = D.Gui;
		if not w then
			return;
		end;
		if D.Shell and D.Shell.Parent then
			return;
		end;
		D.NavItems = {};
		D.CurrentPage = nil;
		local n = ws("Shell", UDim2.new(0, 820, 0, 540), w);
		D.Shell = n;
		D.MenuOpen = true;
		n.BackgroundTransparency = 1;
		e(n, .55);
		local S = C("TextButton", {
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
				Parent = n,
			});
		B(S, 8);
		X(S, m.Border, 1, .4);
		S.MouseEnter:Connect(function()
			(v:Create(S, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(200, 60, 60), BackgroundTransparency = 0 })):Play();
			(v:Create(S, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
		end);
		S.MouseLeave:Connect(function()
			(v:Create(S, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(36, 38, 48), BackgroundTransparency = .15 })):Play();
			(v:Create(S, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(220, 225, 235) })):Play();
		end);
		S.MouseButton1Click:Connect(Ss);
		local G = C("Frame", {
				Name = "Sidebar",
				Size = UDim2.new(0, 240, 1, 0),
				BackgroundColor3 = m.SurfaceSide,
				BackgroundTransparency = .35,
				BorderSizePixel = 0,
				ZIndex = 8,
				Parent = n,
			});
		B(G, 20);
		D.Sidebar = G;
		local b = C("Frame", {
				Size = UDim2.new(1, 0, 0, 90),
				BackgroundColor3 = m.BgTop,
				BackgroundTransparency = .65,
				BorderSizePixel = 0,
				ZIndex = 15,
				Parent = G,
			});
		B(b, 20);
		C("Frame", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 1, -20),
			BackgroundColor3 = m.BgTop,
			BackgroundTransparency = .65,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = b,
		});
		local s = C("Frame", {
				Size = UDim2.new(0, 52, 0, 52),
				Position = UDim2.new(0, 18, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 16,
				Parent = b,
			});
		B(s, 26);
		local z = C("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 17,
				Parent = s,
			});
		B(z, 24);
		local U = C("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 18,
				Parent = z,
			});
		B(U, 24);
		task.spawn(function()
			local v, w = pcall(function()
					return a:GetUserThumbnailAsync(W.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if v and w then
				U.Image = w;
			end;
		end);
		C("TextLabel", {
			Size = UDim2.new(1, -90, 0, 22),
			Position = UDim2.new(0, 80, 0, 24),
			BackgroundTransparency = 1,
			Text = W.DisplayName,
			TextColor3 = m.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 15,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 16,
			Parent = b,
		});
		C("TextLabel", {
			Size = UDim2.new(1, -90, 0, 16),
			Position = UDim2.new(0, 80, 0, 46),
			BackgroundTransparency = 1,
			Text = "Premium",
			TextColor3 = m.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 16,
			Parent = b,
		});
		C("Frame", {
			Size = UDim2.new(1, -32, 0, 1),
			Position = UDim2.new(0, 16, 0, 90),
			BackgroundColor3 = m.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = G,
		});
		local d = C("ScrollingFrame", {
				Size = UDim2.new(1, -16, 1, -110),
				Position = UDim2.new(0, 8, 0, 100),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 3,
				ScrollBarImageColor3 = m.SurfaceHi,
				ScrollBarImageTransparency = .5,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ZIndex = 18,
				Parent = G,
			});
		C("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = d });
		Hs(d, "G\195\169n\195\169ral", 1);
		ks(d, "Accueil", "home", 2);
		ks(d, "ESP", "esp", 3);
		Hs(d, "Personnage", 4);
		ks(d, "Player", "player", 5);
		ks(d, "Combat", "combat", 6);
		ks(d, "Troll", "troll", 7);
		ks(d, "T\195\169l\195\169port\195\169", "teleport", 8);
		ks(d, "Animation", "animation", 9);
		ks(d, "Auto Farm", "autofarm", 10);
		Hs(d, "MM2", 11);
		ks(d, "Murder", "murder", 12);
		ks(d, "Sheriff", "sheriff", 13);
		Hs(d, "Autre", 14);
		ks(d, "Param\195\168tres", "settings", 15);
		D.NavItems.home.btn.MouseButton1Click:Connect(function()
			bs("home");
		end);
		D.NavItems.esp.btn.MouseButton1Click:Connect(function()
			bs("esp");
		end);
		D.NavItems.murder.btn.MouseButton1Click:Connect(function()
			bs("murder");
		end);
		D.NavItems.sheriff.btn.MouseButton1Click:Connect(function()
			bs("sheriff");
		end);
		D.NavItems.player.btn.MouseButton1Click:Connect(function()
			bs("player");
		end);
		D.NavItems.combat.btn.MouseButton1Click:Connect(function()
			bs("combat");
		end);
		D.NavItems.autofarm.btn.MouseButton1Click:Connect(function()
			bs("autofarm");
		end);
		D.NavItems.teleport.btn.MouseButton1Click:Connect(function()
			bs("teleport");
		end);
		D.NavItems.troll.btn.MouseButton1Click:Connect(function()
			bs("troll");
		end);
		D.NavItems.animation.btn.MouseButton1Click:Connect(function()
			bs("animation");
		end);
		D.NavItems.settings.btn.MouseButton1Click:Connect(function()
			bs("settings");
		end);
		local R = C("Frame", {
				Name = "Content",
				Size = UDim2.new(1, -240, 1, 0),
				Position = UDim2.new(0, 240, 0, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				ZIndex = 14,
				Parent = n,
			});
		D.Content = R;
		local h = C("ScrollingFrame", {
				Name = "Scroll",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 6,
				ScrollBarImageColor3 = m.SurfaceHi,
				ScrollBarImageTransparency = .3,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ClipsDescendants = true,
				ZIndex = 24,
				Parent = R,
			});
		D.Scroll = h;
		task.wait(.1);
		bs("home");
	end;
W.CharacterAdded:Connect(function(a)
	a:WaitForChild("Humanoid", 10);
	task.wait(.6);
	l.nowe = false;
	l.tpwalking = false;
	SZ();
	NZ();
	Gs();
	if K.XRayEnabled then
		task.wait(.5);
		if a then
			PZ(a, W);
		end;
	end;
	if g.FlyEnabled then
		WZ();
	end;
	if g.SpinEnabled then
		UZ();
	end;
	if g.JerkEnabled then
		hZ();
	end;
	g.Sitting = false;
	local v = a:FindFirstChildOfClass("Humanoid");
	if v then
		v.WalkSpeed = g.WalkSpeed;
		v.UseJumpPower = true;
		v.JumpPower = g.JumpPower;
	end;
	workspace.Gravity = g.Gravity;
end);
n.InputBegan:Connect(function(a, v)
	if v then
		return;
	end;
	if a.KeyCode ~= Enum.KeyCode.M then
		return;
	end;
	if not D.Authenticated then
		return;
	end;
	if D.Shell and D.Shell.Parent then
		Ss();
	else
		if Ws then
			Ws();
		end;
	end;
end);
local function js()
	f("Initialisation...");
	local a = G:FindFirstChild("MenuV70_GUI") or G:FindFirstChild("MenuV71_GUI");
	if a then
		a:Destroy();
	end;
	Ls();
	task.wait(M.LoadingDuration + .4);
	ns(D.LoadingFrame, function()
		D.LoadingFrame = nil;
	end);
	task.wait(.5);
	ts(function()
		D.Authenticated = true;
		Gs();
		Ws();
	end);
end;
js();
