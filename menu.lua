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

local w = game:GetService("Players");
local v = game:GetService("TweenService");
local R = game:GetService("RunService");
local O = game:GetService("UserInputService");
local j = game:GetService("Lighting");
local l = w.LocalPlayer;
local V = l:WaitForChild("PlayerGui");
local p = workspace.CurrentCamera;
local h = "Fdvo2669";
local L = "rbxassetid://126785640171935";
local z = 2.6;
local f = {
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
local N = {};
local function c(w, v, R)
	table.insert(N, { instance = w, property = v, themeKey = R });
	return w;
end;
local function i(w, v, R)
	table.insert(N, {
		isGradient = true,
		gradient = w,
		topKey = v,
		bottomKey = R,
	});
	return w;
end;
local function s()
	local w = {};
	for R, O in ipairs(N) do
		if O.isGradient then
			if O.gradient and O.gradient.Parent then
				O.gradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, f[O.topKey]), ColorSequenceKeypoint.new(1, f[O.bottomKey]) });
				table.insert(w, O);
			end;
		else
			if O.instance and O.instance.Parent then
				local R = f[O.themeKey];
				if R then
					(v:Create(O.instance, TweenInfo.new(.35), { [O.property] = R })):Play();
				end;
				table.insert(w, O);
			end;
		end;
	end;
	N = w;
	for w, v in pairs(State.NavItems) do
		v.setActive(v.state.active);
	end;
end;
local function B(w)
	f.Accent = w.Accent;
	f.AccentDim = w.AccentDim;
	f.AccentGlow = w.AccentGlow;
	f.AccentSoft = w.AccentSoft;
	f.TextOnAccent = w.TextOnAccent;
	s();
end;
local P = {
		LoadingDuration = 3.5,
		ParticleSpawnRate = .1,
		ParticleMinSize = 2,
		ParticleMaxSize = 4,
		ParticleFallSpeed = 120,
		ParticlesPerTick = 2,
	};
local x = {
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
local m = {
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
local W = {
		Murderer = Color3.fromRGB(255, 60, 60),
		Sheriff = Color3.fromRGB(60, 120, 255),
		Innocent = Color3.fromRGB(60, 255, 120),
		Box = Color3.fromRGB(255, 60, 60),
		Tracer = Color3.fromRGB(255, 60, 60),
	};
local a = {
		BoxEnabled = true,
		BoxThickness = 2,
		TracerEnabled = false,
		DistanceEnabled = true,
	};
local J = {
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
local H = { track = nil };
local y = {
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
local I = { av = nil };
local d = { conn = nil };
local D = {};
local M = {};
local g = { knownRoles = {}, seenGroundGuns = {} };
local Z = { lastRoles = {} };
local Y = { savedCFrame = nil };
local q = { running = false };
local function F(...)
	print("[MENU-V71]", ...);
end;
local function G(w, v)
	local R = Instance.new(w);
	for w, v in pairs(v or {}) do
		R[w] = v;
	end;
	return R;
end;
local function K(w, v)
	return G("UICorner", { CornerRadius = UDim.new(0, v or 8), Parent = w });
end;
local function T(w, v, R, O)
	return G("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, v), ColorSequenceKeypoint.new(1, R) }), Rotation = O or 90, Parent = w });
end;
local function u(w, v, R, O)
	return G("UIStroke", {
		Color = v or f.Border,
		Thickness = R or 1,
		Transparency = O or 0,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = w,
	});
end;
local function r(w, v, R, O)
	O = O or 8;
	local j = G("Frame", { Size = UDim2.new(0, O + 2, 0, O + 2), BackgroundTransparency = 1, Parent = w });
	local l, V = (v == "right") and 45 or -45, (v == "right") and -45 or 45;
	local p = G("Frame", {
			Size = UDim2.new(0, O, 0, 2),
			Position = UDim2.new(.5, -1, .5, -3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = R or f.TextMuted,
			BorderSizePixel = 0,
			Rotation = l,
			Parent = j,
		});
	K(p, 1);
	local h = G("Frame", {
			Size = UDim2.new(0, O, 0, 2),
			Position = UDim2.new(.5, -1, .5, 3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = R or f.TextMuted,
			BorderSizePixel = 0,
			Rotation = V,
			Parent = j,
		});
	K(h, 1);
	return j, p, h;
end;
local function X(w, R)
	R = R or .45;
	local O = w.Size;
	w.Size = UDim2.new(0, O.X.Offset * .85, 0, O.Y.Offset * .85);
	w.BackgroundTransparency = 1;
	(v:Create(w, TweenInfo.new(R, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = O, BackgroundTransparency = 0 })):Play();
end;
local function e(w, R, O)
	R = R or .32;
	local j = w.Size;
	(v:Create(w, TweenInfo.new(R, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Size = UDim2.new(0, j.X.Offset * .85, 0, j.Y.Offset * .85), BackgroundTransparency = 1 })):Play();
	for w, O in ipairs(w:GetDescendants()) do
		if O:IsA("TextLabel") or O:IsA("TextBox") then
			(v:Create(O, TweenInfo.new(R * .85), { TextTransparency = 1 })):Play();
		elseif O:IsA("TextButton") then
			(v:Create(O, TweenInfo.new(R * .85), { BackgroundTransparency = 1 })):Play();
		elseif O:IsA("Frame") and O.Name ~= "ParticleZone" then
			if O.BackgroundTransparency < 1 then
				(v:Create(O, TweenInfo.new(R * .85), { BackgroundTransparency = 1 })):Play();
			end;
		elseif O:IsA("ImageLabel") then
			(v:Create(O, TweenInfo.new(R * .85), { ImageTransparency = 1 })):Play();
		elseif O:IsA("UIStroke") then
			(v:Create(O, TweenInfo.new(R * .85), { Transparency = 1 })):Play();
		end;
	end;
	local l = w.Parent and w.Parent:FindFirstChild(w.Name .. "_ShadowHolder");
	if l then
		for w, O in ipairs(l:GetChildren()) do
			if O:IsA("Frame") then
				(v:Create(O, TweenInfo.new(R * .85), { BackgroundTransparency = 1 })):Play();
			end;
		end;
	end;
	task.delay(R + .05, function()
		if l and l.Parent then
			l:Destroy();
		end;
		if w and w.Parent then
			w:Destroy();
		end;
		if O then
			O();
		end;
	end);
end;
local function n(w, R)
	R = R or .5;
	local O = w.Size;
	w.Size = UDim2.new(0, O.X.Offset * .85, 0, O.Y.Offset * .85);
	w.BackgroundTransparency = 1;
	for w, O in ipairs(w:GetDescendants()) do
		if O:IsA("TextLabel") or O:IsA("TextBox") then
			O.TextTransparency = 1;
			(v:Create(O, TweenInfo.new(R), { TextTransparency = 0 })):Play();
		elseif O:IsA("TextButton") then
			O.BackgroundTransparency = 1;
		elseif O:IsA("ImageLabel") then
			O.ImageTransparency = 1;
			(v:Create(O, TweenInfo.new(R), { ImageTransparency = 0 })):Play();
		end;
	end;
	(v:Create(w, TweenInfo.new(R, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = O, BackgroundTransparency = 0 })):Play();
end;
local function t(w, R, O)
	local j = l:FindFirstChild("PlayerGui");
	if not j then
		return;
	end;
	local V = j:FindFirstChild("MulbaNotif");
	if V then
		V:Destroy();
	end;
	local p = G("ScreenGui", {
			Name = "MulbaNotif",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 1000,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Parent = j,
		});
	local h = G("Frame", {
			Size = UDim2.new(0, 320, 0, 80),
			Position = UDim2.new(1, 20, 0, 100),
			BackgroundColor3 = f.BgTop,
			BackgroundTransparency = .05,
			BorderSizePixel = 0,
			ZIndex = 1000,
			Parent = p,
		});
	K(h, 14);
	T(h, f.BgTop, f.BgBottom, 90);
	G("UIStroke", {
		Color = O and Color3.fromRGB(255, 100, 100) or f.Accent,
		Thickness = 2,
		Transparency = .2,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = h,
	});
	G("TextLabel", {
		Size = UDim2.new(1, -60, 0, 20),
		Position = UDim2.new(0, 20, 0, 14),
		BackgroundTransparency = 1,
		Text = w,
		TextColor3 = O and Color3.fromRGB(255, 120, 120) or f.Accent,
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 1001,
		Parent = h,
	});
	G("TextLabel", {
		Size = UDim2.new(1, -60, 0, 30),
		Position = UDim2.new(0, 20, 0, 36),
		BackgroundTransparency = 1,
		Text = R,
		TextColor3 = f.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		ZIndex = 1001,
		Parent = h,
	});
	(v:Create(h, TweenInfo.new(.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.new(1, -340, 0, 100) })):Play();
	task.delay(5, function()
		if not h.Parent then
			return;
		end;
		(v:Create(h, TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(1, 20, 0, 100), BackgroundTransparency = 1 })):Play();
		for w, R in ipairs(h:GetDescendants()) do
			if R:IsA("TextLabel") then
				(v:Create(R, TweenInfo.new(.4), { TextTransparency = 1 })):Play();
			end;
		end;
		task.wait(.5);
		p:Destroy();
	end);
end;
local S = nil;
local Q = nil;
local function o()
	local w = l:FindFirstChild("PlayerGui");
	if not w then
		return;
	end;
	if S and S.Parent then
		return;
	end;
	S = G("ScreenGui", {
			Name = "MulbaKillFeed",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 950,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Parent = w,
		});
	local v = G("Frame", {
			Size = UDim2.new(0, 340, 0, 500),
			Position = UDim2.new(1, -360, 1, -520),
			BackgroundTransparency = 1,
			ZIndex = 950,
			Parent = S,
		});
	Q = G("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ZIndex = 951,
			Parent = v,
		});
	G("UIListLayout", {
		Padding = UDim.new(0, 6),
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Bottom,
		Parent = Q,
	});
end;
local function k(w, R)
	if not m.NotifKillFeed then
		return;
	end;
	o();
	if not Q then
		return;
	end;
	local O = G("Frame", {
			Size = UDim2.new(1, 0, 0, 42),
			BackgroundColor3 = f.Surface,
			BackgroundTransparency = .15,
			BorderSizePixel = 0,
			ZIndex = 952,
			Parent = Q,
		});
	K(O, 10);
	G("UIStroke", {
		Color = f.Border,
		Thickness = 1,
		Transparency = .5,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = O,
	});
	local j = G("Frame", {
			Size = UDim2.new(0, 3, 0, 26),
			Position = UDim2.new(0, 10, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = R or Color3.fromRGB(255, 80, 80),
			BorderSizePixel = 0,
			ZIndex = 953,
			Parent = O,
		});
	K(j, 2);
	G("TextLabel", {
		Size = UDim2.new(1, -30, 1, 0),
		Position = UDim2.new(0, 22, 0, 0),
		BackgroundTransparency = 1,
		Text = w,
		TextColor3 = R or f.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 953,
		Parent = O,
	});
	task.delay(6, function()
		if not O.Parent then
			return;
		end;
		(v:Create(O, TweenInfo.new(.4), { BackgroundTransparency = 1 })):Play();
		for w, R in ipairs(O:GetDescendants()) do
			if R:IsA("TextLabel") then
				(v:Create(R, TweenInfo.new(.4), { TextTransparency = 1 })):Play();
			end;
			if R:IsA("Frame") then
				(v:Create(R, TweenInfo.new(.4), { BackgroundTransparency = 1 })):Play();
			end;
		end;
		task.wait(.5);
		O:Destroy();
	end);
end;
local function E(w)
	if not w then
		return "Innocent";
	end;
	if w:FindFirstChild("Role") then
		local v, R = pcall(function()
				return tostring(w.Role.Value);
			end);
		if v and (R and R ~= "") then
			return R;
		end;
	end;
	local v = w.Character;
	local R = w:FindFirstChild("Backpack");
	if v then
		if v:FindFirstChild("Knife") then
			return "Murderer";
		end;
		if v:FindFirstChild("Gun") then
			return "Sheriff";
		end;
	end;
	if R then
		if R:FindFirstChild("Knife") then
			return "Murderer";
		end;
		if R:FindFirstChild("Gun") then
			return "Sheriff";
		end;
	end;
	return "Innocent";
end;
local function U()
	for w, v in ipairs(w:GetPlayers()) do
		if v == l then
			continue;
		end;
		if E(v) == "Murderer" then
			return v;
		end;
	end;
	return nil;
end;
local function b()
	for w, v in ipairs(w:GetPlayers()) do
		if v == l then
			continue;
		end;
		if E(v) == "Sheriff" then
			return v;
		end;
	end;
	return nil;
end;
local function A(w)
	if w == "Murderer" then
		return W.Murderer;
	end;
	if w == "Sheriff" then
		return W.Sheriff;
	end;
	return W.Innocent;
end;
local function w7(w)
	if w == "Murderer" then
		return m.EspShowMurder;
	end;
	if w == "Sheriff" then
		return m.EspShowSheriff;
	end;
	return m.EspShowInnocent;
end;
task.spawn(function()
	while true do
		task.wait(.5);
		if m.NotifKillFeed then
			for w, v in ipairs(w:GetPlayers()) do
				if v == l then
					continue;
				end;
				local R = E(v);
				local O = g.knownRoles[v];
				if R ~= O then
					g.knownRoles[v] = R;
					if R == "Murderer" then
						k("\240\159\148\170 " .. (v.Name .. " est Murderer"), Color3.fromRGB(255, 80, 80));
					elseif R == "Sheriff" then
						k("\240\159\148\171 " .. (v.Name .. " est Sheriff"), Color3.fromRGB(80, 140, 255));
					elseif O == "Murderer" or O == "Sheriff" then
						k("\240\159\146\128 " .. (v.Name .. (" n\'est plus " .. ((O or "?")))), Color3.fromRGB(200, 200, 200));
					end;
				end;
			end;
			for w, v in ipairs(workspace:GetChildren()) do
				if v:IsA("Tool") and (v.Name == "Gun" and v:FindFirstChild("Handle")) then
					if not g.seenGroundGuns[v] then
						g.seenGroundGuns[v] = true;
						k("\240\159\148\171 Gun au sol !", Color3.fromRGB(255, 180, 80));
					end;
				end;
			end;
		end;
	end;
end);
local function v7(w)
	local v = l:FindFirstChild("PlayerGui");
	if not v then
		return;
	end;
	pcall(function()
		(game:GetService("StarterGui")):SetCore("ChatMakeSystemMessage", { Text = "[Mulba] " .. w, Color = Color3.fromRGB(115, 155, 240), Font = Enum.Font.GothamBold });
	end);
end;
local function R7()
	local v, R = {}, {};
	for w, O in ipairs(w:GetPlayers()) do
		if O == l then
			continue;
		end;
		local j = E(O);
		if j == "Murderer" then
			table.insert(v, O.Name);
		end;
		if j == "Sheriff" then
			table.insert(R, O.Name);
		end;
	end;
	local O = #v > 0 and table.concat(v, ", ") or "?";
	local j = #R > 0 and table.concat(R, ", ") or "?";
	v7("Murder : " .. (O .. (" | Sheriff : " .. j)));
end;
task.spawn(function()
	while true do
		task.wait(1);
		if m.NotifChatMsg then
			local v = false;
			for w, R in ipairs(w:GetPlayers()) do
				if R == l then
					continue;
				end;
				local O = E(R);
				if O ~= Z.lastRoles[R] then
					Z.lastRoles[R] = O;
					v = true;
				end;
			end;
			if v then
				R7();
			end;
		end;
	end;
end);
local function O7()
	local w = l.Character;
	if not w then
		return;
	end;
	local v = w:FindFirstChildOfClass("Humanoid");
	if not v then
		return;
	end;
	local R = "rbxassetid://77643987647373";
	local O = Instance.new("Animation");
	O.AnimationId = R;
	pcall(function()
		local w = v:LoadAnimation(O);
		w.Priority = Enum.AnimationPriority.Action4;
		w.Looped = true;
		w:Play();
		H.track = w;
	end);
end;
local function j7()
	if H.track then
		pcall(function()
			H.track:Stop();
		end);
		H.track = nil;
	end;
end;
local function l7()
	if not J.FlyEnabled and not y.nowe then
		return;
	end;
	J.FlyEnabled = false;
	y.nowe = false;
	y.tpwalking = false;
	if y.conn then
		y.conn:Disconnect();
		y.conn = nil;
	end;
	if y.bg then
		pcall(function()
			y.bg:Destroy();
		end);
		y.bg = nil;
	end;
	if y.bv then
		pcall(function()
			y.bv:Destroy();
		end);
		y.bv = nil;
	end;
	y.ctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		};
	y.lastctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		};
	y.speed = 0;
	j7();
	local w = l.Character;
	if not w then
		return;
	end;
	local v = w:FindFirstChildOfClass("Humanoid");
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
	local R = w:FindFirstChild("Animate");
	if R then
		R.Disabled = y.savedAnimDisabled or false;
	end;
end;
local function V7()
	local w = l.Character;
	if not w then
		return;
	end;
	local v = w:FindFirstChildOfClass("Humanoid");
	if not v then
		return;
	end;
	J.FlyEnabled = true;
	y.nowe = true;
	y.tpwalking = true;
	y.savedAnimDisabled = w:FindFirstChild("Animate") and w.Animate.Disabled or false;
	local j = math.clamp(math.floor(J.FlySpeed / 10), 1, 50);
	for w = 1, j, 1 do
		task.spawn(function()
			local w = R.Heartbeat;
			while y.tpwalking and w:Wait() do
				local w = l.Character;
				local v = w and w:FindFirstChildOfClass("Humanoid");
				if not ((w and (v and v.Parent))) then
					break;
				end;
				if v.MoveDirection.Magnitude > 0 then
					pcall(function()
						w:TranslateBy(v.MoveDirection);
					end);
				end;
			end;
		end);
	end;
	local V = w:FindFirstChild("Animate");
	if V then
		V.Disabled = true;
	end;
	for w, v in next, v:GetPlayingAnimationTracks() do
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
	local p = (v.RigType == Enum.HumanoidRigType.R6);
	local h = p and w:FindFirstChild("Torso") or w:FindFirstChild("UpperTorso");
	if not h then
		h = w:FindFirstChild("HumanoidRootPart");
	end;
	if not h then
		l7();
		return;
	end;
	local L = Instance.new("BodyGyro");
	L.P = 90000;
	L.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000);
	L.CFrame = h.CFrame;
	L.Parent = h;
	y.bg = L;
	local z = Instance.new("BodyVelocity");
	z.Velocity = Vector3.new(0, .1, 0);
	z.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000);
	z.Parent = h;
	y.bv = z;
	pcall(function()
		v.PlatformStand = true;
	end);
	task.wait(.15);
	O7();
	y.conn = R.RenderStepped:Connect(function()
			if not y.nowe then
				return;
			end;
			local w = l.Character;
			if not w then
				return;
			end;
			local v = w:FindFirstChildOfClass("Humanoid");
			if not v or v.Health <= 0 then
				return;
			end;
			local R = workspace.CurrentCamera;
			if not R then
				return;
			end;
			local j = y.ctrl;
			j.f = O:IsKeyDown(Enum.KeyCode.W) and 1 or 0;
			j.b = O:IsKeyDown(Enum.KeyCode.S) and 1 or 0;
			j.l = O:IsKeyDown(Enum.KeyCode.A) and 1 or 0;
			j.r = O:IsKeyDown(Enum.KeyCode.D) and 1 or 0;
			local V = y.maxspeed;
			if j.l + j.r ~= 0 or j.f + j.b ~= 0 then
				y.speed = (y.speed + .5) + (y.speed / V);
				if y.speed > V then
					y.speed = V;
				end;
			elseif not ((j.l + j.r ~= 0 or j.f + j.b ~= 0)) and y.speed ~= 0 then
				y.speed = y.speed - 1;
				if y.speed < 0 then
					y.speed = 0;
				end;
			end;
			if y.bv then
				if (j.l + j.r) ~= 0 or (j.f + j.b) ~= 0 then
					y.bv.Velocity = (((R.CFrame.LookVector * ((j.f + j.b))) + (((R.CFrame * (CFrame.new(j.l + j.r, ((j.f + j.b)) * .2, 0)).p) - R.CFrame.p)))) * y.speed;
					y.lastctrl = {
							f = j.f,
							b = j.b,
							l = j.l,
							r = j.r,
						};
				elseif (j.l + j.r) == 0 and ((j.f + j.b) == 0 and y.speed ~= 0) then
					y.bv.Velocity = (((R.CFrame.LookVector * ((y.lastctrl.f + y.lastctrl.b))) + (((R.CFrame * (CFrame.new(y.lastctrl.l + y.lastctrl.r, ((y.lastctrl.f + y.lastctrl.b)) * .2, 0)).p) - R.CFrame.p)))) * y.speed;
				else
					y.bv.Velocity = Vector3.new(0, 0, 0);
				end;
			end;
			if y.bg then
				y.bg.CFrame = R.CFrame * CFrame.Angles(-math.rad(((((j.f + j.b)) * 50) * y.speed) / V), 0, 0);
			end;
		end);
end;
local function p7()
	if J.FlyEnabled or y.nowe then
		l7();
	else
		V7();
	end;
end;
local function h7()
	if y.bindConn then
		y.bindConn:Disconnect();
		y.bindConn = nil;
	end;
	if not J.FlyBind then
		return;
	end;
	y.bindConn = O.InputBegan:Connect(function(w, v)
			if v then
				return;
			end;
			if w.UserInputType ~= Enum.UserInputType.Keyboard then
				return;
			end;
			if w.KeyCode == J.FlyBind then
				p7();
			end;
		end);
end;
local function L7(w)
	J.FlyBind = w;
	h7();
end;
local function z7()
	J.SpinEnabled = false;
	if I.av then
		I.av:Destroy();
		I.av = nil;
	end;
end;
local function f7()
	local w = l.Character;
	if not w then
		return;
	end;
	local v = w:FindFirstChild("HumanoidRootPart");
	if not v then
		return;
	end;
	J.SpinEnabled = true;
	local R = Instance.new("BodyAngularVelocity");
	R.AngularVelocity = Vector3.new(0, J.SpinSpeed, 0);
	R.MaxTorque = Vector3.new(0, 9000000000, 0);
	R.P = 1250;
	R.Parent = v;
	I.av = R;
end;
local function C7()
	if J.SpinEnabled then
		z7();
	else
		f7();
	end;
end;
local function N7(w)
	J.SpinSpeed = w;
	if I.av then
		I.av.AngularVelocity = Vector3.new(0, w, 0);
	end;
end;
local function c7()
	J.JerkEnabled = false;
	if d.conn then
		d.conn:Disconnect();
		d.conn = nil;
	end;
	local w = l.Character;
	local v = w and w:FindFirstChild("HumanoidRootPart");
	if v then
		pcall(function()
			v.AssemblyLinearVelocity = Vector3.zero;
			v.Velocity = Vector3.zero;
		end);
	end;
end;
local function i7()
	local w = l.Character;
	if not w then
		return;
	end;
	local v = w:FindFirstChild("HumanoidRootPart");
	if not v then
		return;
	end;
	J.JerkEnabled = true;
	d.conn = R.Heartbeat:Connect(function()
			if not J.JerkEnabled then
				return;
			end;
			local w = l.Character;
			local v = w and w:FindFirstChild("HumanoidRootPart");
			if not v then
				return;
			end;
			local R = J.JerkIntensity;
			local O = Vector3.new((((math.random() - .5)) * R) * 8, (((math.random() - .5)) * R) * 8, (((math.random() - .5)) * R) * 8);
			pcall(function()
				v.AssemblyLinearVelocity = v.AssemblyLinearVelocity + O;
				v.Velocity = v.Velocity + O;
			end);
		end);
end;
local function s7()
	if J.JerkEnabled then
		c7();
	else
		i7();
	end;
end;
local function B7(w)
	J.JerkIntensity = w;
end;
local function P7()
	J.Sitting = not J.Sitting;
	local w = l.Character;
	local v = w and w:FindFirstChildOfClass("Humanoid");
	if not v then
		return;
	end;
	v.Sit = J.Sitting;
end;
task.spawn(function()
	while true do
		task.wait(.15);
		if J.NoclipEnabled and not J.FlyEnabled then
			local w = l.Character;
			if w then
				for w, v in ipairs(w:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide then
						v.CanCollide = false;
					end;
				end;
			end;
		end;
	end;
end);
local function x7()
	J.NoclipEnabled = not J.NoclipEnabled;
	local w = l.Character;
	if w and not J.NoclipEnabled then
		for w, v in ipairs(w:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = true;
			end;
		end;
	end;
end;
local function m7(w)
	J.WalkSpeed = w;
	local v = l.Character;
	local R = v and v:FindFirstChildOfClass("Humanoid");
	if R then
		R.WalkSpeed = w;
	end;
end;
local function W7(w)
	J.JumpPower = w;
	local v = l.Character;
	local R = v and v:FindFirstChildOfClass("Humanoid");
	if R then
		R.UseJumpPower = true;
		R.JumpPower = w;
	end;
end;
local function a7(w)
	J.Gravity = w;
	workspace.Gravity = w;
end;
local J7 = nil;
local function H7()
	J.InfiniteJump = not J.InfiniteJump;
	if J.InfiniteJump then
		if J7 then
			J7:Disconnect();
		end;
		J7 = O.JumpRequest:Connect(function()
				local w = l.Character;
				local v = w and w:FindFirstChildOfClass("Humanoid");
				if v then
					v:ChangeState(Enum.HumanoidStateType.Jumping);
				end;
			end);
	else
		if J7 then
			J7:Disconnect();
			J7 = nil;
		end;
	end;
end;
local y7 = nil;
local function I7()
	J.AntiAFK = not J.AntiAFK;
	if J.AntiAFK then
		if y7 then
			y7:Disconnect();
		end;
		y7 = l.Idled:Connect(function()
				local w = game:GetService("VirtualUser");
				w:CaptureController();
				w:ClickButton2(Vector2.new());
			end);
	else
		if y7 then
			y7:Disconnect();
			y7 = nil;
		end;
	end;
end;
local d7 = {};
local function D7()
	J.Fullbright = not J.Fullbright;
	if J.Fullbright then
		d7.Ambient = j.Ambient;
		d7.OutdoorAmbient = j.OutdoorAmbient;
		d7.Brightness = j.Brightness;
		d7.ClockTime = j.ClockTime;
		j.Ambient = Color3.fromRGB(255, 255, 255);
		j.OutdoorAmbient = Color3.fromRGB(255, 255, 255);
		j.Brightness = 3;
		j.ClockTime = 14;
		local w = j:FindFirstChild("MulbaFullbright");
		if not w then
			w = Instance.new("ColorCorrectionEffect");
			w.Name = "MulbaFullbright";
			w.Parent = j;
		end;
	else
		if d7.Ambient then
			j.Ambient = d7.Ambient;
		end;
		if d7.OutdoorAmbient then
			j.OutdoorAmbient = d7.OutdoorAmbient;
		end;
		if d7.Brightness then
			j.Brightness = d7.Brightness;
		end;
		if d7.ClockTime then
			j.ClockTime = d7.ClockTime;
		end;
		local w = j:FindFirstChild("MulbaFullbright");
		if w then
			w:Destroy();
		end;
	end;
end;
local function M7()
	J.AntiFling = not J.AntiFling;
end;
task.spawn(function()
	while true do
		task.wait(.1);
		if J.AntiFling then
			local w = l.Character;
			local v = w and w:FindFirstChild("HumanoidRootPart");
			if v then
				for w, v in ipairs(v:GetChildren()) do
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
local function g7()
	local w = l.Character;
	local v = w and w:FindFirstChildOfClass("Humanoid");
	if v then
		v.Health = 0;
	end;
end;
local function Z7()
	local w = l.Character;
	local v = w and w:FindFirstChild("HumanoidRootPart");
	if not v then
		return;
	end;
	for w, R in ipairs(workspace:GetDescendants()) do
		if R:IsA("SpawnLocation") then
			pcall(function()
				v.CFrame = R.CFrame + Vector3.new(0, 3, 0);
			end);
			return;
		end;
	end;
end;
local function Y7()
	local w = l.Character;
	local v = w and w:FindFirstChild("HumanoidRootPart");
	if not v then
		return;
	end;
	Y.savedCFrame = v.CFrame;
	t("MAP", "Position sauvegard\195\169e", false);
end;
local function q7()
	if not Y.savedCFrame then
		t("MAP", "Aucune position sauvegard\195\169e", true);
		return;
	end;
	local w = l.Character;
	local v = w and w:FindFirstChild("HumanoidRootPart");
	if not v then
		return;
	end;
	pcall(function()
		v.CFrame = Y.savedCFrame + Vector3.new(0, 3, 0);
	end);
	t("MAP", "TP \195\160 la position sauvegard\195\169e", false);
end;
local function F7()
	local w = {};
	for v, R in ipairs(workspace:GetDescendants()) do
		if R:IsA("BasePart") then
			local v = R.Name;
			if v == "Coin" or v:find("Coin") or v:find("coin") then
				if R.Transparency < 1 then
					table.insert(w, R);
				end;
			end;
		end;
	end;
	return w;
end;
local function G7()
	local w = l.Character;
	return w and w:FindFirstChild("HumanoidRootPart");
end;
local function K7(w, v)
	local R = G7();
	if not R then
		return;
	end;
	v = v or 120;
	local O = R.Position;
	local j = w - O;
	local l = j.Magnitude;
	if l < 1 then
		return;
	end;
	local V = 4;
	local p = math.max(1, math.floor(l / V));
	local h = math.max(.02, ((l / v)) / p);
	for w = 1, p, 1 do
		if not q.running then
			return;
		end;
		local v = w / p;
		local l = O + j * v;
		pcall(function()
			R.CFrame = CFrame.new(l);
			R.AssemblyLinearVelocity = Vector3.zero;
			R.Velocity = Vector3.zero;
		end);
		task.wait(h);
	end;
end;
local function T7(w, v)
	local R = G7();
	if not R then
		return;
	end;
	local O = Vector3.new(w or R.Position.X, -50, v or R.Position.Z);
	K7(O, 250);
end;
local function u7()
	if q.running then
		return;
	end;
	q.running = true;
	task.spawn(function()
		while q.running do
			local w = l.Character;
			local v = w and w:FindFirstChild("HumanoidRootPart");
			if not v then
				task.wait(.3);
				continue;
			end;
			local R = F7();
			if #R == 0 then
				T7();
				task.wait(2);
				continue;
			end;
			local O, j = nil, math.huge;
			for w, R in ipairs(R) do
				if R and R.Parent then
					local w = ((R.Position - v.Position)).Magnitude;
					if w < j then
						j = w;
						O = R;
					end;
				end;
			end;
			if O then
				local w = O.Position + Vector3.new(0, 2, 0);
				K7(w, 150);
				task.wait(.15);
				task.wait(.1);
				T7(O.Position.X, O.Position.Z);
				task.wait(.1);
			else
				task.wait(.3);
			end;
		end;
	end);
end;
local function r7()
	q.running = false;
	local w = l.Character;
	local v = w and w:FindFirstChildOfClass("Humanoid");
	if v then
		v.WalkSpeed = J.WalkSpeed;
	end;
end;
local function X7()
	if q.running then
		r7();
	else
		u7();
	end;
end;
local e7 = { running = false, conn = nil };
local function n7()
	if e7.running then
		return;
	end;
	e7.running = true;
	e7.conn = R.Heartbeat:Connect(function()
			if not e7.running then
				return;
			end;
			local v = l.Character;
			if not v then
				return;
			end;
			local R = v:FindFirstChild("HumanoidRootPart");
			if not R then
				return;
			end;
			local O = R.CFrame;
			local j = 4;
			local V = O.Position + (O.LookVector * j);
			for w, v in ipairs(w:GetPlayers()) do
				if v ~= l and v.Character then
					local w = v.Character:FindFirstChild("HumanoidRootPart");
					if w then
						pcall(function()
							w.CFrame = CFrame.new(V, V + O.LookVector);
							w.AssemblyLinearVelocity = Vector3.zero;
							w.Velocity = Vector3.zero;
						end);
					end;
				end;
			end;
		end);
end;
local function t7()
	e7.running = false;
	if e7.conn then
		e7.conn:Disconnect();
		e7.conn = nil;
	end;
end;
local function S7()
	if e7.running then
		t7();
	else
		n7();
	end;
end;
local Q7 = { conn = nil, weld = nil, target = nil };
local function o7()
	if Q7.conn then
		Q7.conn:Disconnect();
		Q7.conn = nil;
	end;
	if Q7.weld and Q7.weld.Parent then
		Q7.weld:Destroy();
	end;
	Q7.weld = nil;
	Q7.target = nil;
	local w = l.Character;
	local v = w and w:FindFirstChildOfClass("Humanoid");
	if v then
		pcall(function()
			v.PlatformStand = false;
			v.Sit = false;
		end);
	end;
end;
local function k7()
	local w = x.TrollSelected;
	if not w or not w.Character then
		t("Attach", "Aucune cible valide", true);
		return;
	end;
	local v = w.Character:FindFirstChild("Head");
	local O = l.Character;
	local j = O and O:FindFirstChild("HumanoidRootPart");
	if not v or not j then
		t("Attach", "Impossible de s\'accrocher", true);
		return;
	end;
	local V = v:FindFirstChild("MulbaAttachPoint");
	if not V then
		V = Instance.new("Attachment");
		V.Name = "MulbaAttachPoint";
		V.CFrame = CFrame.new(0, .7, 0);
		V.Parent = v;
	end;
	local p = Instance.new("WeldConstraint");
	p.Part0 = j;
	p.Part1 = v;
	p.Parent = j;
	Q7.weld = p;
	Q7.target = w;
	j.CFrame = v.CFrame * CFrame.new(0, 2, 0);
	local h = O:FindFirstChildOfClass("Humanoid");
	if h then
		pcall(function()
			h.PlatformStand = true;
		end);
	end;
	Q7.conn = R.Heartbeat:Connect(function()
			local w = Q7.target;
			if not w or not w.Character then
				o7();
				return;
			end;
			local v = w.Character:FindFirstChild("Head");
			if not v then
				o7();
				return;
			end;
			local R = l.Character;
			local O = R and R:FindFirstChild("HumanoidRootPart");
			if not O then
				return;
			end;
			if not Q7.weld or not Q7.weld.Parent then
				local w = Instance.new("WeldConstraint");
				w.Part0 = O;
				w.Part1 = v;
				w.Parent = O;
				Q7.weld = w;
			end;
			pcall(function()
				O.CFrame = v.CFrame * CFrame.new(0, 2, 0);
				O.AssemblyLinearVelocity = Vector3.zero;
				O.Velocity = Vector3.zero;
			end);
		end);
	t("Attach", "Accroch\195\169 \195\160 " .. w.Name, false);
end;
local function E7()
	if Q7.conn then
		o7();
	else
		k7();
	end;
end;
local function U7(w, v)
	if not w then
		return;
	end;
	if M[v] and M[v].Parent then
		return;
	end;
	local R = G("Highlight", {
			FillColor = Color3.fromRGB(255, 255, 255),
			FillTransparency = .85,
			OutlineColor = Color3.fromRGB(255, 255, 255),
			OutlineTransparency = 0,
			DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
			Adornee = w,
			Parent = w,
		});
	M[v] = R;
end;
local function b7(w)
	local v = M[w];
	if v and v.Parent then
		v:Destroy();
	end;
	M[w] = nil;
end;
local function A7()
	if m.XRayEnabled then
		for w, v in ipairs(w:GetPlayers()) do
			if v.Character then
				U7(v.Character, v);
			end;
		end;
	else
		for w in pairs(M) do
			b7(w);
		end;
	end;
end;
local function wx(w)
	if w == l then
		return;
	end;
	if D[w] then
		local v = pcall(function()
				D[w].Box.Visible = D[w].Box.Visible;
			end);
		if v then
			return;
		end;
		removeESP(w);
	end;
	local v = Drawing.new("Square");
	v.Thickness = a.BoxThickness;
	v.Filled = false;
	v.Visible = false;
	local R = Drawing.new("Text");
	R.Center = true;
	R.Outline = true;
	R.Size = 16;
	R.Visible = false;
	local O = Drawing.new("Text");
	O.Center = true;
	O.Outline = true;
	O.Size = 13;
	O.Visible = false;
	local j = Drawing.new("Line");
	j.Thickness = 1;
	j.Visible = false;
	D[w] = {
			Box = v,
			Text = R,
			DistanceText = O,
			Tracer = j,
		};
end;
local function vx(w)
	local v = D[w];
	if v then
		for w, v in pairs(v) do
			pcall(function()
				v:Remove();
			end);
		end;
		D[w] = nil;
	end;
end;
local function Rx(w)
	local v, R = p:WorldToViewportPoint(w);
	return Vector2.new(v.X, v.Y), R;
end;
R.RenderStepped:Connect(function()
	if not m.EspEnabled then
		for w, v in pairs(D) do
			pcall(function()
				v.Box.Visible = false;
				v.Text.Visible = false;
				v.DistanceText.Visible = false;
				v.Tracer.Visible = false;
			end);
		end;
		return;
	end;
	local w = workspace.CurrentCamera;
	if w then
		p = w;
	end;
	local v = l.Character;
	local R = v and v:FindFirstChild("HumanoidRootPart");
	local O = R and R.Position;
	for w, v in pairs(D) do
		local R = pcall(function()
				return v.Box.Visible;
			end);
		if not R then
			D[w] = nil;
			continue;
		end;
		local j = w.Character;
		local l = j and j:FindFirstChild("HumanoidRootPart");
		local V = j and j:FindFirstChild("Head");
		local h = j and j:FindFirstChildOfClass("Humanoid");
		local L = function()
				pcall(function()
					v.Box.Visible = false;
					v.Text.Visible = false;
					v.DistanceText.Visible = false;
					v.Tracer.Visible = false;
				end);
			end;
		if not ((l and (V and (h and h.Health > 0)))) then
			L();
			continue;
		end;
		local z = E(w);
		if not w7(z) then
			L();
			continue;
		end;
		local f, C = Rx(V.Position + Vector3.new(0, .5, 0));
		local N, c = Rx(l.Position - Vector3.new(0, 3, 0));
		if C or c then
			local R = math.abs(f.Y - N.Y);
			local j = R / 2;
			local V = A(z);
			local h = ((tick() * .5)) % 1;
			local L = Color3.fromHSV(h, 1, 1);
			if a.BoxEnabled then
				pcall(function()
					v.Box.Size = Vector2.new(j, R);
					v.Box.Position = Vector2.new(f.X - j / 2, f.Y);
					v.Box.Color = L;
					v.Box.Thickness = 2;
					v.Box.Visible = true;
				end);
			else
				pcall(function()
					v.Box.Visible = false;
				end);
			end;
			pcall(function()
				v.Text.Text = w.DisplayName .. (" [" .. (z .. "]"));
				v.Text.Position = Vector2.new(f.X, f.Y - 18);
				v.Text.Color = V;
				v.Text.Visible = true;
			end);
			if a.DistanceEnabled and O then
				pcall(function()
					local w = ((l.Position - O)).Magnitude;
					v.DistanceText.Text = string.format("%.1f m", w * .28);
					v.DistanceText.Position = Vector2.new(f.X, N.Y + 2);
					v.DistanceText.Color = V;
					v.DistanceText.Visible = true;
				end);
			else
				pcall(function()
					v.DistanceText.Visible = false;
				end);
			end;
			if a.TracerEnabled then
				pcall(function()
					v.Tracer.From = Vector2.new(p.ViewportSize.X / 2, p.ViewportSize.Y);
					v.Tracer.To = Vector2.new(f.X, f.Y);
					v.Tracer.Color = L;
					v.Tracer.Thickness = 1;
					v.Tracer.Visible = true;
				end);
			else
				pcall(function()
					v.Tracer.Visible = false;
				end);
			end;
		else
			L();
		end;
	end;
end);
w.PlayerAdded:Connect(function(w)
	task.wait(1);
	wx(w);
	if m.XRayEnabled and w.Character then
		U7(w.Character, w);
	end;
end);
w.PlayerRemoving:Connect(function(w)
	vx(w);
	b7(w);
	g.knownRoles[w] = nil;
	Z.lastRoles[w] = nil;
end);
for w, v in ipairs(w:GetPlayers()) do
	wx(v);
end;
local function Ox(w)
	local R = w.AbsoluteSize;
	if R.X < 5 or R.Y < 5 then
		return;
	end;
	local O = math.random(P.ParticleMinSize, P.ParticleMaxSize);
	local j = math.random(0, math.max(1, R.X - O));
	local l = ((R.Y + 40)) / P.ParticleFallSpeed;
	local V = G("Frame", {
			Size = UDim2.new(0, O, 0, O),
			Position = UDim2.new(0, j, 0, -O),
			BackgroundColor3 = f.Particle,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 5,
			Parent = w,
		});
	K(V, math.floor(O / 2));
	local p = v:Create(V, TweenInfo.new(l, Enum.EasingStyle.Linear), { Position = UDim2.new(0, j + math.random(-40, 40), 0, R.Y + 20), BackgroundTransparency = .85 + math.random() * .1 });
	p:Play();
	p.Completed:Connect(function()
		V:Destroy();
	end);
end;
local function jx(w)
	task.spawn(function()
		while w and w.Parent do
			for v = 1, P.ParticlesPerTick, 1 do
				Ox(w);
			end;
			task.wait(P.ParticleSpawnRate);
		end;
	end);
end;
local function lx(w, v, O)
	local j = G("Frame", {
			Name = w .. "_ShadowHolder",
			Size = v,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ZIndex = 1,
			Parent = O,
		});
	for w = 1, 6, 1 do
		local v = G("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				BackgroundTransparency = .88 + (w * .008),
				BorderSizePixel = 0,
				ZIndex = 1,
				Parent = j,
			});
		K(v, 20 + w * 5);
	end;
	local l = G("Frame", {
			Name = w,
			Size = v,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundColor3 = f.BgTop,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Active = true,
			Draggable = true,
			ZIndex = 2,
			Parent = O,
		});
	K(l, 20);
	u(l, f.Border, 1, .4);
	T(l, f.BgTop, f.BgBottom, 90);
	R.Heartbeat:Connect(function()
		if j.Parent and l.Parent then
			j.Position = l.Position + UDim2.new(0, 0, 0, 12);
			j.Size = l.Size;
			j.Visible = l.Visible;
		end;
	end);
	local V = G("Frame", {
			Name = "ParticleZone",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			ZIndex = 5,
			Parent = l,
		});
	K(V, 20);
	jx(V);
	return l;
end;
local function Vx(w, v)
	e(w, .35, v);
end;
local function px()
	if not ((x.Shell and x.Shell.Parent)) then
		return;
	end;
	e(x.Shell, .35, function()
		x.Shell = nil;
		x.Sidebar = nil;
		x.Content = nil;
		x.Scroll = nil;
		x.NavItems = {};
		x.CurrentPage = nil;
		x.MenuOpen = false;
	end);
end;
task.spawn(function()
	while true do
		task.wait(m.AutoShootDelay);
		if not m.AutoShootEnabled then
			continue;
		end;
		local w = E(l);
		if w ~= "Sheriff" then
			continue;
		end;
		local v = l.Character;
		if not v then
			continue;
		end;
		local R = v:FindFirstChild("Gun");
		if not R then
			local w = l:FindFirstChild("Backpack");
			if w then
				local R = w:FindFirstChild("Gun");
				if R then
					pcall(function()
						v.Humanoid:EquipTool(R);
					end);
				end;
			end;
			continue;
		end;
		local O = U();
		if not O then
			continue;
		end;
		local j = O.Character;
		if not j then
			continue;
		end;
		local V = j:FindFirstChild("HumanoidRootPart");
		local p = j:FindFirstChild("Head");
		if not V then
			continue;
		end;
		local h = v:FindFirstChild("HumanoidRootPart");
		if not h then
			continue;
		end;
		local L = ((V.Position - h.Position)).Magnitude;
		if L > m.AutoShootRange then
			continue;
		end;
		local z = workspace.CurrentCamera;
		if z then
			pcall(function()
				z.CFrame = CFrame.new(z.CFrame.Position, p and p.Position or V.Position);
			end);
		end;
		pcall(function()
			R:Activate();
		end);
	end;
end);
local hx, Lx, zx;
local fx, Cx, Nx, cx, ix, sx;
local Bx, Px, xx, mx, Wx;
local ax, Jx, Hx, yx, Ix, dx;
Lx = function()
		local O = l:FindFirstChild("PlayerGui");
		if O then
			local w = O:FindFirstChild("MulbaHeadGui");
			if w then
				w:Destroy();
			end;
		end;
		local j = l.Character;
		if not j or not j:FindFirstChild("Head") then
			task.delay(1, function()
				if Lx then
					Lx();
				end;
			end);
			return;
		end;
		local V = j:FindFirstChild("Head");
		if not V then
			return;
		end;
		local p = G("ScreenGui", {
				Name = "MulbaHeadGui",
				ResetOnSpawn = false,
				IgnoreGuiInset = true,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				DisplayOrder = 997,
				Parent = O,
			});
		local h, L = 200, 50;
		local f = G("TextButton", {
				Size = UDim2.new(0, h, 0, L),
				Position = UDim2.new(0, 0, 0, 0),
				AnchorPoint = Vector2.new(.5, 1),
				BackgroundColor3 = Color3.fromRGB(12, 16, 28),
				BackgroundTransparency = .05,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				Active = true,
				ZIndex = 1,
				Parent = p,
			});
		K(f, 25);
		T(f, Color3.fromRGB(16, 22, 38), Color3.fromRGB(8, 10, 18), 90);
		G("UIStroke", {
			Color = Color3.fromRGB(90, 150, 255),
			Thickness = 1.5,
			Transparency = .15,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = f,
		});
		local C = G("Frame", {
				Size = UDim2.new(0, 36, 0, 36),
				Position = UDim2.new(0, 8, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = f,
			});
		K(C, 18);
		local N = G("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 7,
				Parent = C,
			});
		K(N, 16);
		local c = G("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 8,
				Parent = N,
			});
		K(c, 16);
		task.spawn(function()
			local v, R = pcall(function()
					return w:GetUserThumbnailAsync(l.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if v and R then
				c.Image = R;
			end;
		end);
		local i = G("TextLabel", {
				Size = UDim2.new(1, -90, 0, 16),
				Position = UDim2.new(0, 52, 0, 8),
				BackgroundTransparency = 1,
				Text = "Mulba Menu",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = f,
			});
		local s = G("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 180, 255)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(170, 120, 255)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 120, 200)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(255, 180, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 255, 180)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 180, 255)),
				}), Rotation = 0, Parent = i });
		task.spawn(function()
			while s.Parent do
				s.Rotation = ((s.Rotation + 3)) % 360;
				task.wait(.03);
			end;
		end);
		G("TextLabel", {
			Size = UDim2.new(1, -90, 0, 12),
			Position = UDim2.new(0, 52, 0, 23),
			BackgroundTransparency = 1,
			Text = l.DisplayName .. " / lifetime",
			TextColor3 = Color3.fromRGB(220, 225, 235),
			Font = Enum.Font.GothamMedium,
			TextSize = 9,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 9,
			Parent = f,
		});
		local B = G("TextLabel", {
				Size = UDim2.new(1, -90, 0, 14),
				Position = UDim2.new(0, 52, 0, 35),
				BackgroundTransparency = 1,
				Text = "Cr\195\169ateur",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = f,
			});
		local P = G("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 80, 80)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(255, 180, 80)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 255, 80)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(120, 255, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 200, 255)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 80, 80)),
				}), Rotation = 0, Parent = B });
		task.spawn(function()
			while P.Parent do
				P.Rotation = ((P.Rotation + 4)) % 360;
				task.wait(.03);
			end;
		end);
		local m = G("Frame", {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -38, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = f,
			});
		K(m, 15);
		local W = G("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Text = "M",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 15,
				ZIndex = 8,
				Parent = m,
			});
		G("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 230, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(90, 150, 255)) }), Rotation = 90, Parent = W });
		f.BackgroundTransparency = 1;
		f.Size = UDim2.new(0, h * .7, 0, L * .7);
		for w, R in ipairs(f:GetDescendants()) do
			if R:IsA("TextLabel") then
				R.TextTransparency = 1;
				(v:Create(R, TweenInfo.new(.5), { TextTransparency = 0 })):Play();
			end;
			if R:IsA("ImageLabel") then
				R.ImageTransparency = 1;
				(v:Create(R, TweenInfo.new(.5), { ImageTransparency = 0 })):Play();
			end;
		end;
		(v:Create(f, TweenInfo.new(.55, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, h, 0, L), BackgroundTransparency = .05 })):Play();
		R.RenderStepped:Connect(function()
			if not p.Parent then
				return;
			end;
			if not ((f and f.Parent)) then
				return;
			end;
			local w = l.Character;
			if not w then
				f.Visible = false;
				return;
			end;
			local v = w:FindFirstChild("Head");
			if not v then
				f.Visible = false;
				return;
			end;
			local R = workspace.CurrentCamera;
			if not R then
				return;
			end;
			local O = v.Position + Vector3.new(0, z, 0);
			local j, V = R:WorldToViewportPoint(O);
			if not V then
				f.Visible = false;
				return;
			end;
			f.Visible = true;
			f.Position = UDim2.new(0, j.X, 0, j.Y);
		end);
		f.MouseButton1Click:Connect(function()
			if not x.Authenticated then
				return;
			end;
			if x.Shell and x.Shell.Parent then
				return;
			end;
			if hx then
				hx();
			end;
		end);
		x.BillboardRef = p;
	end;
fx = function(w)
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 42),
			BackgroundTransparency = 1,
			Text = "Bienvenue sur Mulba",
			TextColor3 = f.TextPrimary,
			Font = Enum.Font.GothamBlack,
			TextSize = 30,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 46),
			BackgroundTransparency = 1,
			Text = "Menu premium \226\128\162 Murder Mystery 2",
			TextColor3 = f.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		local v = G("Frame", {
				Size = UDim2.new(0, 140, 0, 58),
				Position = UDim2.new(1, -140, 0, 0),
				BackgroundColor3 = f.Surface,
				BackgroundTransparency = .35,
				BorderSizePixel = 0,
				ZIndex = 26,
				Parent = w,
			});
		K(v, 10);
		u(v, f.Border, 1, .5);
		local O = G("TextLabel", {
				Size = UDim2.new(1, -16, 0, 20),
				Position = UDim2.new(0, 8, 0, 8),
				BackgroundTransparency = 1,
				Text = "FPS: 0",
				TextColor3 = f.Success,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = v,
			});
		local j = G("TextLabel", {
				Size = UDim2.new(1, -16, 0, 20),
				Position = UDim2.new(0, 8, 0, 30),
				BackgroundTransparency = 1,
				Text = "MS: 0",
				TextColor3 = f.Accent,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = v,
			});
		task.spawn(function()
			local w = 0;
			local V = tick();
			R.RenderStepped:Connect(function()
				w = w + 1;
			end);
			while v.Parent do
				local v = tick();
				local R = v - V;
				if R >= .5 then
					local p = math.floor(w / R);
					w = 0;
					V = v;
					local h, L = pcall(function()
							return math.floor(l:GetNetworkPing() * 1000);
						end);
					local z = h and L or 0;
					pcall(function()
						O.Text = "FPS: " .. p;
						O.TextColor3 = p >= 50 and f.Success or (p >= 30 and Color3.fromRGB(240, 200, 120) or f.Error);
						j.Text = "MS: " .. z;
						j.TextColor3 = z <= 80 and f.Success or (z <= 150 and Color3.fromRGB(240, 200, 120) or f.Error);
					end);
				end;
				task.wait(.1);
			end;
		end);
		G("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundColor3 = f.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = w,
		});
		local V = 100;
		local function p(v, R)
			G("TextLabel", {
				Size = UDim2.new(1, 0, 0, 20),
				Position = UDim2.new(0, 0, 0, V),
				BackgroundTransparency = 1,
				Text = v,
				TextColor3 = f.Accent,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 25,
				Parent = w,
			});
			V = V + 26;
			G("TextLabel", {
				Size = UDim2.new(1, -8, 0, 0),
				Position = UDim2.new(0, 0, 0, V),
				BackgroundTransparency = 1,
				Text = R,
				TextColor3 = f.TextSecondary,
				Font = Enum.Font.Gotham,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextWrapped = true,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = w,
			});
			V = (V + #R * 5) + 30;
		end;
		p("\226\150\186 ESP", "Box et tracer multicolores, r\195\180les, x-ray.");
		p("\226\150\186 PLAYER", "Ciblage, TP, spectate, s\'accrocher, Fly + zen.");
		p("\226\150\186 MURDER", "TP ALL IN FRONT (4 studs), TP tueur.");
		p("\226\150\186 SHERIFF", "Auto Shoot, TP sh\195\169rif.");
		p("\226\150\186 T\195\137L\195\137PORT\195\137", "TP spawn, SET MAP, MAP.");
		p("\226\150\186 AUTO FARM", "Fly progressif vers les pi\195\168ces (anti-kick).");
		p("\226\150\186 PARAM\195\136TRES", "Notif kill feed, notif chat, spam chat.");
		G("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, V),
			BackgroundColor3 = f.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = w,
		});
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 24),
			Position = UDim2.new(0, 0, 0, V + 10),
			BackgroundTransparency = 1,
			Text = "\240\159\146\161 Appuie sur M pour ouvrir ou fermer le menu",
			TextColor3 = f.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
	end;
Cx = function(w)
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Param\195\168tres",
			TextColor3 = f.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 16),
			Position = UDim2.new(0, 0, 0, 50),
			BackgroundTransparency = 1,
			Text = "COULEUR D\'ACCENT",
			TextColor3 = f.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		local R = G("Frame", {
				Size = UDim2.new(1, 0, 0, 140),
				Position = UDim2.new(0, 0, 0, 72),
				BackgroundTransparency = 1,
				ZIndex = 25,
				Parent = w,
			});
		G("UIGridLayout", {
			CellSize = UDim2.new(0, 58, 0, 58),
			CellPadding = UDim2.new(0, 14, 0, 14),
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Parent = R,
		});
		local O = {};
		for w, j in ipairs(C) do
			local l = G("TextButton", {
					BackgroundColor3 = j.Accent,
					BorderSizePixel = 0,
					Text = "",
					AutoButtonColor = false,
					LayoutOrder = w,
					ZIndex = 26,
					Parent = R,
				});
			K(l, 29);
			local V = G("UIStroke", {
					Color = f.TextPrimary,
					Thickness = 2,
					Transparency = (j.name == x.CurrentPreset) and 0 or 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Parent = l,
				});
			O[j.name] = V;
			l.MouseButton1Click:Connect(function()
				if x.CurrentPreset == j.name then
					return;
				end;
				x.CurrentPreset = j.name;
				B(j);
				for w, R in pairs(O) do
					(v:Create(R, TweenInfo.new(.2), { Transparency = (w == j.name) and 0 or 1 })):Play();
				end;
			end);
		end;
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 16),
			Position = UDim2.new(0, 0, 0, 240),
			BackgroundTransparency = 1,
			Text = "NOTIFICATIONS",
			TextColor3 = f.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		local j = G("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 262),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = w,
			});
		G("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = j });
		dx(j, 1, "NOTIFICATION", "Kill feed bas droite (Murder/Sheriff/Gun au sol)", function()
			return m.NotifKillFeed;
		end, function(w)
			m.NotifKillFeed = w;
		end, Color3.fromRGB(255, 140, 80));
		dx(j, 2, "NOTIF MESSAGE CHAT", "Murder/Sheriff dans ton chat (local)", function()
			return m.NotifChatMsg;
		end, function(w)
			m.NotifChatMsg = w;
		end, Color3.fromRGB(115, 155, 240));
		Hx(j, 3, "SPAM CHAT", "Renvoie Murder/Sheriff dans le chat", Color3.fromRGB(240, 165, 95), function()
			R7();
			task.wait(.05);
			R7();
			task.wait(.05);
			R7();
		end);
	end;
Ix = function(w, v, R)
		local O = G("Frame", {
				Size = UDim2.new(1, 0, 0, 26),
				BackgroundTransparency = 1,
				LayoutOrder = v,
				ZIndex = 19,
				Parent = w,
			});
		G("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 4, 0, 0),
			BackgroundTransparency = 1,
			Text = string.upper(R),
			TextColor3 = f.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 19,
			Parent = O,
		});
		G("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 1, -1),
			BackgroundColor3 = f.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 19,
			Parent = O,
		});
	end;
ax = function(w, R, O, j, l, V, p)
		local h = G("Frame", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = f.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = R,
				ZIndex = 26,
				Parent = w,
			});
		K(h, 12);
		u(h, f.Border, 1, .5);
		local L = G("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = p,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = h,
			});
		K(L, 2);
		G("TextLabel", {
			Size = UDim2.new(1, -100, 0, 18),
			Position = UDim2.new(0, 26, 0, 10),
			BackgroundTransparency = 1,
			Text = O,
			TextColor3 = f.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = h,
		});
		G("TextLabel", {
			Size = UDim2.new(1, -100, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = j,
			TextColor3 = f.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = h,
		});
		local z = G("TextButton", {
				Size = UDim2.new(0, 46, 0, 24),
				Position = UDim2.new(1, -58, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = l() and p or f.SurfaceHi,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 28,
				Parent = h,
			});
		K(z, 12);
		local C = G("Frame", {
				Size = UDim2.new(0, 18, 0, 18),
				Position = l() and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = z,
			});
		K(C, 9);
		z.MouseButton1Click:Connect(function()
			V();
			local w = l();
			(v:Create(z, TweenInfo.new(.2), { BackgroundColor3 = w and p or f.SurfaceHi })):Play();
			(v:Create(C, TweenInfo.new(.2, Enum.EasingStyle.Quad), { Position = w and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0) })):Play();
		end);
		return h;
	end;
Jx = function(w, v, R, j, l, V, p, h)
		local L = G("Frame", {
				Size = UDim2.new(1, 0, 0, 52),
				BackgroundColor3 = f.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = v,
				ZIndex = 26,
				Parent = w,
			});
		K(L, 12);
		u(L, f.Border, 1, .5);
		G("TextLabel", {
			Size = UDim2.new(0, 130, 0, 14),
			Position = UDim2.new(0, 26, 0, 8),
			BackgroundTransparency = 1,
			Text = R,
			TextColor3 = f.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = L,
		});
		local z = G("TextLabel", {
				Size = UDim2.new(0, 60, 0, 14),
				Position = UDim2.new(1, -70, 0, 8),
				BackgroundTransparency = 1,
				Text = tostring(V()),
				TextColor3 = f.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Right,
				ZIndex = 27,
				Parent = L,
			});
		local C = G("Frame", {
				Size = UDim2.new(1, -52, 0, 8),
				Position = UDim2.new(0, 26, 0, 32),
				BackgroundColor3 = f.SurfaceHi,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = L,
			});
		K(C, 4);
		local N = ((V() - j)) / ((l - j));
		local c = G("Frame", {
				Size = UDim2.new(N, 0, 1, 0),
				BackgroundColor3 = h,
				BorderSizePixel = 0,
				ZIndex = 28,
				Parent = C,
			});
		K(c, 4);
		local i = G("Frame", {
				Size = UDim2.new(0, 14, 0, 14),
				Position = UDim2.new(N, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = C,
			});
		K(i, 7);
		u(i, Color3.fromRGB(0, 0, 0), 2, .3);
		local s = G("TextButton", {
				Size = UDim2.new(1, -52, 0, 22),
				Position = UDim2.new(0, 26, 0, 20),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = L,
			});
		local B = false;
		local function P(w)
			local v = C.AbsolutePosition.X;
			local R = C.AbsoluteSize.X;
			if R <= 0 then
				return;
			end;
			local O = math.clamp(((w - v)) / R, 0, 1);
			local V = j + O * ((l - j));
			V = math.floor(V * 10 + .5) / 10;
			p(V);
			i.Position = UDim2.new(O, 0, .5, 0);
			c.Size = UDim2.new(O, 0, 1, 0);
			z.Text = tostring(V);
		end;
		s.InputBegan:Connect(function(w)
			if w.UserInputType == Enum.UserInputType.MouseButton1 or w.UserInputType == Enum.UserInputType.Touch then
				B = true;
				P(w.Position.X);
			end;
		end);
		s.InputChanged:Connect(function(w)
			if not B then
				return;
			end;
			if w.UserInputType == Enum.UserInputType.MouseMovement or w.UserInputType == Enum.UserInputType.Touch then
				P(w.Position.X);
			end;
		end);
		O.InputEnded:Connect(function(w)
			if w.UserInputType == Enum.UserInputType.MouseButton1 or w.UserInputType == Enum.UserInputType.Touch then
				B = false;
			end;
		end);
	end;
Hx = function(w, R, O, j, l, V)
		local p = G("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = f.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = R,
				ZIndex = 26,
				Parent = w,
			});
		K(p, 12);
		u(p, f.Border, 1, .5);
		local h = G("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = l,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = p,
			});
		K(h, 2);
		local L = G("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = O,
				TextColor3 = f.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = p,
			});
		G("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = j,
			TextColor3 = f.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = p,
		});
		local z, C, N = r(p, "right", f.TextMuted, 7);
		z.Position = UDim2.new(1, -26, .5, 0);
		z.AnchorPoint = Vector2.new(.5, .5);
		p.MouseEnter:Connect(function()
			(v:Create(p, TweenInfo.new(.18), { BackgroundColor3 = f.SurfaceHi, BackgroundTransparency = .1 })):Play();
			(v:Create(L, TweenInfo.new(.18), { TextColor3 = l })):Play();
			(v:Create(C, TweenInfo.new(.18), { BackgroundColor3 = l })):Play();
			(v:Create(N, TweenInfo.new(.18), { BackgroundColor3 = l })):Play();
		end);
		p.MouseLeave:Connect(function()
			(v:Create(p, TweenInfo.new(.18), { BackgroundColor3 = f.Surface, BackgroundTransparency = .25 })):Play();
			(v:Create(L, TweenInfo.new(.18), { TextColor3 = f.TextPrimary })):Play();
			(v:Create(C, TweenInfo.new(.18), { BackgroundColor3 = f.TextMuted })):Play();
			(v:Create(N, TweenInfo.new(.18), { BackgroundColor3 = f.TextMuted })):Play();
		end);
		p.MouseButton1Click:Connect(V);
		return p;
	end;
dx = function(w, R, O, j, l, V, p)
		local h = G("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = f.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = R,
				ZIndex = 26,
				Parent = w,
			});
		K(h, 12);
		u(h, f.Border, 1, .5);
		local L = G("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = l() and p or f.TextMuted,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = h,
			});
		K(L, 2);
		local z = G("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = O,
				TextColor3 = f.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = h,
			});
		G("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = j,
			TextColor3 = f.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = h,
		});
		local C, N, c = r(h, "right", l() and p or f.TextMuted, 7);
		C.Position = UDim2.new(1, -26, .5, 0);
		C.AnchorPoint = Vector2.new(.5, .5);
		local function i()
			local w = l();
			L.BackgroundColor3 = w and p or f.TextMuted;
			N.BackgroundColor3 = w and p or f.TextMuted;
			c.BackgroundColor3 = w and p or f.TextMuted;
			z.TextColor3 = w and p or f.TextPrimary;
		end;
		h.MouseEnter:Connect(function()
			(v:Create(h, TweenInfo.new(.18), { BackgroundColor3 = f.SurfaceHi, BackgroundTransparency = .1 })):Play();
		end);
		h.MouseLeave:Connect(function()
			(v:Create(h, TweenInfo.new(.18), { BackgroundColor3 = f.Surface, BackgroundTransparency = .25 })):Play();
		end);
		h.MouseButton1Click:Connect(function()
			V(not l());
			i();
		end);
		return h;
	end;
local function Dx(R)
	G("TextLabel", {
		Size = UDim2.new(1, 0, 0, 14),
		Position = UDim2.new(0, 0, 0, 76),
		BackgroundTransparency = 1,
		Text = "JOUEUR CIBL\195\137",
		TextColor3 = f.TextMuted,
		Font = Enum.Font.GothamBold,
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 25,
		Parent = R,
	});
	local O = G("TextButton", {
			Size = UDim2.new(1, 0, 0, 44),
			Position = UDim2.new(0, 0, 0, 96),
			BackgroundColor3 = f.Surface,
			BackgroundTransparency = .25,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			ZIndex = 30,
			Parent = R,
		});
	K(O, 10);
	u(O, f.Border, 1, .4);
	local j = G("TextLabel", {
			Size = UDim2.new(1, -70, 1, 0),
			Position = UDim2.new(0, 16, 0, 0),
			BackgroundTransparency = 1,
			Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148",
			TextColor3 = f.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 31,
			Parent = O,
		});
	local V, p, h = r(O, "right", f.TextMuted, 8);
	V.Position = UDim2.new(1, -24, .5, 0);
	V.AnchorPoint = Vector2.new(.5, .5);
	local L = G("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			Position = UDim2.new(0, 0, 0, 148),
			BackgroundColor3 = f.Surface,
			BackgroundTransparency = .05,
			BorderSizePixel = 0,
			Visible = false,
			AutomaticSize = Enum.AutomaticSize.Y,
			ZIndex = 40,
			Parent = R,
		});
	K(L, 12);
	u(L, f.Border, 1, .3);
	local z = G("Frame", {
			Size = UDim2.new(1, -12, 0, 6),
			Position = UDim2.new(0, 6, 0, 6),
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.Y,
			ZIndex = 41,
			Parent = L,
		});
	G("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = z });
	local function C()
		for w, v in ipairs(z:GetChildren()) do
			if v:IsA("TextButton") or (v:IsA("TextLabel") and v.Name == "EmptyLbl") then
				v:Destroy();
			end;
		end;
		local R = 0;
		for w, O in ipairs(w:GetPlayers()) do
			if O == l then
				continue;
			end;
			R = R + 1;
			local V = G("TextButton", {
					Size = UDim2.new(1, 0, 0, 34),
					BackgroundColor3 = f.SurfaceHi,
					BackgroundTransparency = .6,
					BorderSizePixel = 0,
					Text = "",
					AutoButtonColor = false,
					LayoutOrder = R,
					ZIndex = 42,
					Parent = z,
				});
			K(V, 8);
			local C = E(O);
			local N = A(C);
			G("TextLabel", {
				Size = UDim2.new(1, -50, 1, 0),
				Position = UDim2.new(0, 12, 0, 0),
				BackgroundTransparency = 1,
				Text = O.Name .. ("  (" .. (C .. ")")),
				TextColor3 = f.TextPrimary,
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 43,
				Parent = V,
			});
			G("Frame", {
				Size = UDim2.new(0, 4, 0, 18),
				Position = UDim2.new(1, -14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = N,
				BorderSizePixel = 0,
				ZIndex = 43,
				Parent = V,
			});
			V.MouseEnter:Connect(function()
				(v:Create(V, TweenInfo.new(.15), { BackgroundTransparency = .25 })):Play();
			end);
			V.MouseLeave:Connect(function()
				(v:Create(V, TweenInfo.new(.15), { BackgroundTransparency = .6 })):Play();
			end);
			V.MouseButton1Click:Connect(function()
				x.TrollSelected = O;
				j.Text = O.Name;
				j.TextColor3 = f.Accent;
				L.Visible = false;
				(v:Create(p, TweenInfo.new(.15), { Rotation = 45 })):Play();
				(v:Create(h, TweenInfo.new(.15), { Rotation = -45 })):Play();
				k("\240\159\142\175 Cible : " .. O.Name, f.Accent);
			end);
		end;
		if R == 0 then
			G("TextLabel", {
				Name = "EmptyLbl",
				Size = UDim2.new(1, 0, 0, 34),
				BackgroundTransparency = 1,
				Text = "Aucun autre joueur",
				TextColor3 = f.TextMuted,
				Font = Enum.Font.Gotham,
				TextSize = 12,
				ZIndex = 42,
				Parent = z,
			});
		end;
	end;
	local N = false;
	O.MouseButton1Click:Connect(function()
		N = not N;
		if N then
			C();
		end;
		L.Visible = N;
		(v:Create(p, TweenInfo.new(.15), { Rotation = N and -45 or 45 })):Play();
		(v:Create(h, TweenInfo.new(.15), { Rotation = N and 45 or -45 })):Play();
	end);
	w.PlayerAdded:Connect(function()
		if N then
			C();
		end;
	end);
	w.PlayerRemoving:Connect(function(w)
		if x.TrollSelected == w then
			x.TrollSelected = nil;
			j.Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148";
			j.TextColor3 = f.TextMuted;
		end;
		if N then
			C();
		end;
	end);
end;
yx = function()
		return;
	end;
Bx = function(w)
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Player",
			TextColor3 = f.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Ciblage, mouvement & statistiques",
			TextColor3 = f.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		Dx(w);
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 164),
			BackgroundTransparency = 1,
			Text = "ACTIONS CIBL\195\137ES",
			TextColor3 = f.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		local v = G("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 186),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = w,
			});
		G("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = v });
		Hx(v, 1, "TP \195\128 LA CIBLE", "Te t\195\169l\195\169porte sur le joueur s\195\169lectionn\195\169", Color3.fromRGB(255, 80, 80), function()
			local w = x.TrollSelected;
			if not w or not w.Character then
				t("Player", "Aucune cible valide", true);
				return;
			end;
			local v = w.Character:FindFirstChild("HumanoidRootPart");
			local R = l.Character;
			local O = R and R:FindFirstChild("HumanoidRootPart");
			if v and O then
				pcall(function()
					O.CFrame = v.CFrame + Vector3.new(0, 3, 3);
				end);
				k("\240\159\142\175 TP vers " .. w.Name, Color3.fromRGB(255, 80, 80));
			end;
		end);
		Hx(v, 2, "SPECTATE CIBLE", "Ta cam\195\169ra suit le joueur s\195\169lectionn\195\169", Color3.fromRGB(170, 130, 235), function()
			local w = x.TrollSelected;
			local v = workspace.CurrentCamera;
			if not w or not w.Character then
				t("Player", "Aucune cible valide", true);
				return;
			end;
			v.CameraSubject = w.Character:FindFirstChildOfClass("Humanoid") or w.Character;
			k("\240\159\145\129 Cam\195\169ra \226\134\146 " .. w.Name, Color3.fromRGB(170, 130, 235));
		end);
		dx(v, 3, "S\'ACCROCHER \195\128 ELLE", "Assis sur les \195\169paules (visible par tous)", function()
			return Q7.conn ~= nil;
		end, function(w)
			E7();
		end, Color3.fromRGB(130, 205, 155));
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 430),
			BackgroundTransparency = 1,
			Text = "MOUVEMENT",
			TextColor3 = f.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		local R = G("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 452),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = w,
			});
		G("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = R });
		local O = 0;
		local function j()
			O = O + 1;
			return O;
		end;
		dx(R, j(), "FLY", "Vol (W/A/S/D) + emote zen", function()
			return J.FlyEnabled;
		end, function(w)
			if w ~= J.FlyEnabled then
				p7();
			end;
		end, Color3.fromRGB(115, 155, 240));
		dx(R, j(), "SPIN", "Tourne sur toi-m\195\170me", function()
			return J.SpinEnabled;
		end, function(w)
			C7();
		end, Color3.fromRGB(170, 130, 235));
		Jx(R, j(), "VITESSE SPIN", 2, 50, function()
			return J.SpinSpeed;
		end, function(w)
			N7(w);
		end, Color3.fromRGB(170, 130, 235));
		dx(R, j(), "JERK", "Secousse rapide", function()
			return J.JerkEnabled;
		end, function(w)
			s7();
		end, Color3.fromRGB(240, 165, 95));
		Jx(R, j(), "INTENSIT\195\137 JERK", .5, 10, function()
			return J.JerkIntensity;
		end, function(w)
			B7(w);
		end, Color3.fromRGB(240, 165, 95));
		dx(R, j(), "NOCLIP", "Traverse les murs", function()
			return J.NoclipEnabled;
		end, function(w)
			x7();
		end, Color3.fromRGB(130, 205, 155));
		dx(R, j(), "INFINITE JUMP", "Saut infini", function()
			return J.InfiniteJump;
		end, function(w)
			H7();
		end, Color3.fromRGB(240, 165, 95));
		dx(R, j(), "ANTI-AFK", "\195\137vite le kick inactivit\195\169", function()
			return J.AntiAFK;
		end, function(w)
			I7();
		end, Color3.fromRGB(140, 200, 155));
		dx(R, j(), "FULLBRIGHT", "\195\137claire toute la map", function()
			return J.Fullbright;
		end, function(w)
			D7();
		end, Color3.fromRGB(255, 215, 120));
		dx(R, j(), "ANTI-FLING", "Bloque les tentatives de fling", function()
			return J.AntiFling;
		end, function(w)
			M7();
		end, Color3.fromRGB(220, 115, 115));
		Ix(R, j(), "Stats");
		Jx(R, j(), "WALKSPEED", 16, 200, function()
			return J.WalkSpeed;
		end, function(w)
			m7(w);
		end, Color3.fromRGB(115, 155, 240));
		Jx(R, j(), "JUMPPOWER", 50, 500, function()
			return J.JumpPower;
		end, function(w)
			W7(w);
		end, Color3.fromRGB(130, 205, 155));
		Jx(R, j(), "GRAVITY", 0, 196, function()
			return J.Gravity;
		end, function(w)
			a7(w);
		end, Color3.fromRGB(170, 130, 235));
		Hx(R, j(), "RESET CHARACTER", "Respawn imm\195\169diat", Color3.fromRGB(255, 80, 80), function()
			g7();
			t("Player", "Reset en cours...", false);
		end);
	end;
Wx = function(w)
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169port\195\169",
			TextColor3 = f.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169portation rapide",
			TextColor3 = f.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		local v = G("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = w,
			});
		G("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = v });
		Hx(v, 1, "TP SPAWN", "Te t\195\169l\195\169porte au spawn", Color3.fromRGB(115, 155, 240), function()
			Z7();
		end);
		Hx(v, 2, "SET MAP", "Sauvegarde ta position actuelle", Color3.fromRGB(140, 200, 155), function()
			Y7();
		end);
		Hx(v, 3, "MAP", "TP \195\160 la position sauvegard\195\169e", Color3.fromRGB(240, 165, 95), function()
			q7();
		end);
	end;
mx = function(w)
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Animation",
			TextColor3 = f.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Animations visibles par tous",
			TextColor3 = f.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		local v = G("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = w,
			});
		G("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = v });
		ax(v, 1, "SIT", "Assieds ton personnage", function()
			return J.Sitting;
		end, function()
			P7();
		end, Color3.fromRGB(140, 200, 155));
	end;
xx = function(w)
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Auto Farm",
			TextColor3 = f.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "R\195\169cup\195\168re les pi\195\168ces automatiquement",
			TextColor3 = f.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		local v = G("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = w,
			});
		G("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = v });
		dx(v, 1, "AUTO FARM COINS", "Fly progressif vers les pi\195\168ces (anti-kick)", function()
			return q.running;
		end, function(w)
			X7();
		end, Color3.fromRGB(240, 200, 120));
	end;
Px = function(w)
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Combat",
			TextColor3 = f.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Section \195\160 venir",
			TextColor3 = f.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
	end;
Nx = function(w)
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "ESP",
			TextColor3 = f.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Affichage des r\195\180les MM2",
			TextColor3 = f.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundTransparency = 1,
			Text = "R\195\148LES",
			TextColor3 = f.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		local v = G("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 102),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = w,
			});
		G("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = v });
		dx(v, 1, "ESP Murderer", "Voir le tueur", function()
			return m.EspShowMurder;
		end, function(w)
			m.EspShowMurder = w;
		end, W.Murderer);
		dx(v, 2, "ESP Sheriff", "Voir le sh\195\169rif", function()
			return m.EspShowSheriff;
		end, function(w)
			m.EspShowSheriff = w;
		end, W.Sheriff);
		dx(v, 3, "ESP Innocent", "Voir les innocents", function()
			return m.EspShowInnocent;
		end, function(w)
			m.EspShowInnocent = w;
		end, W.Innocent);
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 290),
			BackgroundTransparency = 1,
			Text = "OPTIONS",
			TextColor3 = f.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		local R = G("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 312),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = w,
			});
		G("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = R });
		dx(R, 1, "X-RAY", "Voir \195\160 travers les murs", function()
			return m.XRayEnabled;
		end, function(w)
			m.XRayEnabled = w;
			A7();
		end, Color3.fromRGB(255, 215, 120));
		dx(R, 2, "Box", "Cadre multicolore autour du joueur", function()
			return a.BoxEnabled;
		end, function(w)
			a.BoxEnabled = w;
		end, W.Box);
		dx(R, 3, "TRACER", "Ligne multicolore vers le joueur", function()
			return a.TracerEnabled;
		end, function(w)
			a.TracerEnabled = w;
		end, W.Tracer);
	end;
cx = function(w)
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Murder",
			TextColor3 = f.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 tueur",
			TextColor3 = f.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		local v = G("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = w,
			});
		G("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = v });
		dx(v, 1, "TP ALL IN FRONT", "Empile les joueurs \195\160 4 studs devant toi", function()
			return e7.running;
		end, function(w)
			S7();
		end, Color3.fromRGB(240, 165, 95));
		Hx(v, 2, "TP MURDERER", "Te t\195\169l\195\169porte au tueur", Color3.fromRGB(255, 80, 80), function()
			local w = U();
			if not w then
				t("Erreur", "Tueur introuvable", true);
				return;
			end;
			local v = l.Character;
			local R = v and v:FindFirstChild("HumanoidRootPart");
			local O = w.Character and w.Character:FindFirstChild("HumanoidRootPart");
			if R and O then
				pcall(function()
					R.CFrame = O.CFrame + Vector3.new(0, 3, 3);
				end);
				t("TP", "TP vers " .. w.Name, false);
			end;
		end);
	end;
ix = function(w)
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Sheriff",
			TextColor3 = f.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 sh\195\169rif",
			TextColor3 = f.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = w,
		});
		local v = G("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = w,
			});
		G("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = v });
		dx(v, 1, "AUTO SHOOT MURDERER", "Tire auto sur le tueur (si Sheriff)", function()
			return m.AutoShootEnabled;
		end, function(w)
			m.AutoShootEnabled = w;
		end, Color3.fromRGB(70, 130, 240));
		Hx(v, 2, "TP SHERIFF", "Te t\195\169l\195\169porte au sh\195\169rif", Color3.fromRGB(60, 120, 255), function()
			local w = b();
			if not w then
				t("Erreur", "Sh\195\169rif introuvable", true);
				return;
			end;
			local v = l.Character;
			local R = v and v:FindFirstChild("HumanoidRootPart");
			local O = w.Character and w.Character:FindFirstChild("HumanoidRootPart");
			if R and O then
				pcall(function()
					R.CFrame = O.CFrame + Vector3.new(0, 3, 3);
				end);
				t("TP", "TP vers " .. w.Name, false);
			end;
		end);
	end;
sx = function(R)
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Troll",
			TextColor3 = f.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = R,
		});
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Cible un joueur, puis utilise les actions",
			TextColor3 = f.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = R,
		});
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 76),
			BackgroundTransparency = 1,
			Text = "JOUEUR CIBL\195\137",
			TextColor3 = f.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = R,
		});
		local O = G("TextButton", {
				Size = UDim2.new(1, 0, 0, 44),
				Position = UDim2.new(0, 0, 0, 96),
				BackgroundColor3 = f.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = R,
			});
		K(O, 10);
		u(O, f.Border, 1, .4);
		local j = G("TextLabel", {
				Size = UDim2.new(1, -70, 1, 0),
				Position = UDim2.new(0, 16, 0, 0),
				BackgroundTransparency = 1,
				Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148",
				TextColor3 = f.TextMuted,
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 31,
				Parent = O,
			});
		local V, p, h = r(O, "right", f.TextMuted, 8);
		V.Position = UDim2.new(1, -24, .5, 0);
		V.AnchorPoint = Vector2.new(.5, .5);
		local L = G("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 148),
				BackgroundColor3 = f.Surface,
				BackgroundTransparency = .05,
				BorderSizePixel = 0,
				Visible = false,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 40,
				Parent = R,
			});
		K(L, 12);
		u(L, f.Border, 1, .3);
		local z = G("Frame", {
				Size = UDim2.new(1, -12, 0, 6),
				Position = UDim2.new(0, 6, 0, 6),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 41,
				Parent = L,
			});
		G("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = z });
		local function C()
			for w, v in ipairs(z:GetChildren()) do
				if v:IsA("TextButton") or (v:IsA("TextLabel") and v.Name == "EmptyLbl") then
					v:Destroy();
				end;
			end;
			local R = 0;
			for w, O in ipairs(w:GetPlayers()) do
				if O == l then
					continue;
				end;
				R = R + 1;
				local V = G("TextButton", {
						Size = UDim2.new(1, 0, 0, 34),
						BackgroundColor3 = f.SurfaceHi,
						BackgroundTransparency = .6,
						BorderSizePixel = 0,
						Text = "",
						AutoButtonColor = false,
						LayoutOrder = R,
						ZIndex = 42,
						Parent = z,
					});
				K(V, 8);
				local C = E(O);
				local N = A(C);
				G("TextLabel", {
					Size = UDim2.new(1, -50, 1, 0),
					Position = UDim2.new(0, 12, 0, 0),
					BackgroundTransparency = 1,
					Text = O.Name .. ("  (" .. (C .. ")")),
					TextColor3 = f.TextPrimary,
					Font = Enum.Font.GothamMedium,
					TextSize = 13,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 43,
					Parent = V,
				});
				G("Frame", {
					Size = UDim2.new(0, 4, 0, 18),
					Position = UDim2.new(1, -14, .5, 0),
					AnchorPoint = Vector2.new(0, .5),
					BackgroundColor3 = N,
					BorderSizePixel = 0,
					ZIndex = 43,
					Parent = V,
				});
				V.MouseEnter:Connect(function()
					(v:Create(V, TweenInfo.new(.15), { BackgroundTransparency = .25 })):Play();
				end);
				V.MouseLeave:Connect(function()
					(v:Create(V, TweenInfo.new(.15), { BackgroundTransparency = .6 })):Play();
				end);
				V.MouseButton1Click:Connect(function()
					x.TrollSelected = O;
					j.Text = O.Name;
					j.TextColor3 = f.Accent;
					L.Visible = false;
					(v:Create(p, TweenInfo.new(.15), { Rotation = 45 })):Play();
					(v:Create(h, TweenInfo.new(.15), { Rotation = -45 })):Play();
					k("\240\159\142\175 Cible : " .. O.Name, f.Accent);
				end);
			end;
			if R == 0 then
				G("TextLabel", {
					Name = "EmptyLbl",
					Size = UDim2.new(1, 0, 0, 34),
					BackgroundTransparency = 1,
					Text = "Aucun autre joueur",
					TextColor3 = f.TextMuted,
					Font = Enum.Font.Gotham,
					TextSize = 12,
					ZIndex = 42,
					Parent = z,
				});
			end;
		end;
		local N = false;
		O.MouseButton1Click:Connect(function()
			N = not N;
			if N then
				C();
			end;
			L.Visible = N;
			(v:Create(p, TweenInfo.new(.15), { Rotation = N and -45 or 45 })):Play();
			(v:Create(h, TweenInfo.new(.15), { Rotation = N and 45 or -45 })):Play();
		end);
		w.PlayerAdded:Connect(function()
			if N then
				C();
			end;
		end);
		w.PlayerRemoving:Connect(function(w)
			if x.TrollSelected == w then
				x.TrollSelected = nil;
				j.Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148";
				j.TextColor3 = f.TextMuted;
			end;
			if N then
				C();
			end;
		end);
		G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 164),
			BackgroundTransparency = 1,
			Text = "ACTIONS",
			TextColor3 = f.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = R,
		});
		local c = G("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 186),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = R,
			});
		G("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = c });
		Hx(c, 1, "TP \195\128 LA CIBLE", "Te t\195\169l\195\169porte sur le joueur s\195\169lectionn\195\169", Color3.fromRGB(255, 80, 80), function()
			local w = x.TrollSelected;
			if not w or not w.Character then
				t("Troll", "Aucune cible valide", true);
				return;
			end;
			local v = w.Character:FindFirstChild("HumanoidRootPart");
			local R = l.Character;
			local O = R and R:FindFirstChild("HumanoidRootPart");
			if v and O then
				pcall(function()
					O.CFrame = v.CFrame + Vector3.new(0, 3, 3);
				end);
				k("\240\159\142\175 TP vers " .. w.Name, Color3.fromRGB(255, 80, 80));
			end;
		end);
		Hx(c, 2, "SPECTATE CIBLE", "Ta cam\195\169ra suit le joueur s\195\169lectionn\195\169", Color3.fromRGB(170, 130, 235), function()
			local w = x.TrollSelected;
			local v = workspace.CurrentCamera;
			if not w or not w.Character then
				t("Troll", "Aucune cible valide", true);
				return;
			end;
			v.CameraSubject = w.Character:FindFirstChildOfClass("Humanoid") or w.Character;
			k("\240\159\145\129 Cam\195\169ra \226\134\146 " .. w.Name, Color3.fromRGB(170, 130, 235));
		end);
	end;
zx = function(w)
		if x.CurrentPage == w then
			return;
		end;
		x.CurrentPage = w;
		for v, R in pairs(x.NavItems) do
			R.setActive(v == w);
		end;
		local R = x.Scroll;
		if not R then
			return;
		end;
		local O = R:FindFirstChild("PageBody");
		if O then
			for w, R in ipairs(O:GetChildren()) do
				if R:IsA("GuiObject") then
					(v:Create(R, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
					if R:IsA("TextLabel") then
						(v:Create(R, TweenInfo.new(.15), { TextTransparency = 1 })):Play();
					end;
				end;
			end;
			task.wait(.18);
			O:Destroy();
		end;
		R.CanvasPosition = Vector2.new(0, 0);
		local j = G("Frame", {
				Name = "PageBody",
				Size = UDim2.new(1, -48, 0, 0),
				Position = UDim2.new(0, 24, 0, 20),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 24,
				Parent = R,
			});
		if w == "home" then
			fx(j);
		elseif w == "esp" then
			Nx(j);
		elseif w == "murder" then
			cx(j);
		elseif w == "sheriff" then
			ix(j);
		elseif w == "player" then
			Bx(j);
		elseif w == "combat" then
			Px(j);
		elseif w == "autofarm" then
			xx(j);
		elseif w == "troll" then
			sx(j);
		elseif w == "animation" then
			mx(j);
		elseif w == "teleport" then
			Wx(j);
		elseif w == "settings" then
			Cx(j);
		end;
	end;
local function Mx(w, R, O, j)
	local l = G("TextButton", {
			Size = UDim2.new(1, 0, 0, 38),
			BackgroundColor3 = f.Surface,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			LayoutOrder = j,
			ZIndex = 20,
			Parent = w,
		});
	K(l, 8);
	local V = G("Frame", {
			Size = UDim2.new(0, 3, 0, 0),
			Position = UDim2.new(0, 0, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = f.Accent,
			BorderSizePixel = 0,
			ZIndex = 22,
			Parent = l,
		});
	K(V, 2);
	local p = G("TextLabel", {
			Size = UDim2.new(1, -20, 1, 0),
			Position = UDim2.new(0, 18, 0, 0),
			BackgroundTransparency = 1,
			Text = R,
			TextColor3 = f.TextSecondary,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 21,
			Parent = l,
		});
	local h = { active = false };
	local function L(w)
		h.active = w;
		if w then
			(v:Create(l, TweenInfo.new(.2), { BackgroundTransparency = .7 })):Play();
			(v:Create(V, TweenInfo.new(.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 3, 0, 22) })):Play();
			(v:Create(p, TweenInfo.new(.2), { TextColor3 = f.Accent, TextSize = 14 })):Play();
		else
			(v:Create(l, TweenInfo.new(.2), { BackgroundTransparency = 1 })):Play();
			(v:Create(V, TweenInfo.new(.2), { Size = UDim2.new(0, 3, 0, 0) })):Play();
			(v:Create(p, TweenInfo.new(.2), { TextColor3 = f.TextSecondary, TextSize = 13 })):Play();
		end;
	end;
	l.MouseEnter:Connect(function()
		if not h.active then
			(v:Create(l, TweenInfo.new(.15), { BackgroundTransparency = .85 })):Play();
			(v:Create(p, TweenInfo.new(.15), { TextColor3 = f.TextPrimary })):Play();
		end;
	end);
	l.MouseLeave:Connect(function()
		if not h.active then
			(v:Create(l, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
			(v:Create(p, TweenInfo.new(.15), { TextColor3 = f.TextSecondary })):Play();
		end;
	end);
	x.NavItems[O] = { btn = l, setActive = L, state = h };
	return l, L;
end;
local function gx(w, v, R)
	local O = G("Frame", {
			Size = UDim2.new(1, -4, 0, 22),
			BackgroundTransparency = 1,
			LayoutOrder = R,
			ZIndex = 19,
			Parent = w,
		});
	G("TextLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 8, 0, 0),
		BackgroundTransparency = 1,
		Text = string.upper(v),
		TextColor3 = f.TextMuted,
		Font = Enum.Font.GothamBold,
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 19,
		Parent = O,
	});
end;
local function Zx()
	local w = G("ScreenGui", {
			Name = "MenuV71_GUI",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			DisplayOrder = 999,
			Parent = V,
		});
	x.Gui = w;
	local R = lx("LoadingContainer", UDim2.new(0, 460, 0, 240), w);
	x.LoadingFrame = R;
	R.BackgroundTransparency = 1;
	(v:Create(R, TweenInfo.new(.5), { BackgroundTransparency = 0 })):Play();
	local O = G("Frame", {
			Size = UDim2.new(0, 60, 0, 60),
			Position = UDim2.new(.5, 0, 0, 30),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundTransparency = 1,
			ZIndex = 8,
			Parent = R,
		});
	for w = 1, 14, 1 do
		local v = ((w - 1)) * (((math.pi * 2) / 14));
		local R = G("Frame", {
				Size = UDim2.new(0, 5, 0, 5),
				Position = UDim2.new(.5, math.cos(v) * 22, .5, math.sin(v) * 22),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = f.Accent,
				BackgroundTransparency = 1 - ((w / 14)) * .75,
				BorderSizePixel = 0,
				ZIndex = 9,
				Parent = O,
			});
		K(R, 2);
		c(R, "BackgroundColor3", "Accent");
	end;
	task.spawn(function()
		while O.Parent do
			O.Rotation = ((O.Rotation + 5)) % 360;
			task.wait(.02);
		end;
	end);
	G("TextLabel", {
		Size = UDim2.new(1, 0, 0, 32),
		Position = UDim2.new(0, 0, 0, 98),
		BackgroundTransparency = 1,
		Text = "Chargement",
		TextColor3 = f.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 24,
		ZIndex = 8,
		Parent = R,
	});
	local j = G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 134),
			BackgroundTransparency = 1,
			Text = "Initialisation...",
			TextColor3 = f.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 8,
			Parent = R,
		});
	local l = G("Frame", {
			Size = UDim2.new(.7, 0, 0, 8),
			Position = UDim2.new(.5, 0, 0, 172),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = f.SurfaceHi,
			BackgroundTransparency = .4,
			BorderSizePixel = 0,
			ZIndex = 8,
			Parent = R,
		});
	K(l, 4);
	local p = G("Frame", {
			Size = UDim2.new(0, 0, 1, 0),
			BackgroundColor3 = f.Accent,
			BorderSizePixel = 0,
			ZIndex = 9,
			Parent = l,
			ClipsDescendants = true,
		});
	K(p, 4);
	c(p, "BackgroundColor3", "Accent");
	local h = G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 192),
			BackgroundTransparency = 1,
			Text = "0 %",
			TextColor3 = f.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 8,
			Parent = R,
		});
	local L = tick();
	task.spawn(function()
		while tick() - L < P.LoadingDuration do
			local w = math.clamp(((tick() - L)) / P.LoadingDuration, 0, 1);
			p.Size = UDim2.new(w, 0, 1, 0);
			h.Text = math.floor(w * 100) .. " %";
			if w < .3 then
				j.Text = "Initialisation...";
			elseif w < .6 then
				j.Text = "Chargement...";
			elseif w < .9 then
				j.Text = "Pr\195\169paration...";
			else
				j.Text = "Finalisation...";
			end;
			task.wait(.03);
		end;
		p.Size = UDim2.new(1, 0, 1, 0);
		h.Text = "100 %";
	end);
	return R;
end;
local function Yx(w)
	local v = x.Gui;
	local R = lx("CodeContainer", UDim2.new(0, 500, 0, 380), v);
	x.CodeFrame = R;
	R.BackgroundTransparency = 1;
	local O = G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 36),
			BackgroundTransparency = 1,
			Text = "ACC\195\136S S\195\137CURIS\195\137",
			TextColor3 = f.Accent,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 12,
			Parent = R,
		});
	c(O, "TextColor3", "Accent");
	G("TextLabel", {
		Size = UDim2.new(1, 0, 0, 38),
		Position = UDim2.new(0, 0, 0, 60),
		BackgroundTransparency = 1,
		Text = "V\195\169rification requise",
		TextColor3 = f.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 26,
		ZIndex = 12,
		Parent = R,
	});
	G("TextLabel", {
		Size = UDim2.new(1, -60, 0, 34),
		Position = UDim2.new(0, 30, 0, 104),
		BackgroundTransparency = 1,
		Text = "Entre le code d\'acc\195\168s",
		TextColor3 = f.TextSecondary,
		Font = Enum.Font.Gotham,
		TextSize = 13,
		TextWrapped = true,
		ZIndex = 12,
		Parent = R,
	});
	local j = G("TextBox", {
			Size = UDim2.new(.82, 0, 0, 54),
			Position = UDim2.new(.5, 0, 0, 154),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = f.Surface,
			BackgroundTransparency = .3,
			BorderSizePixel = 0,
			Text = "",
			PlaceholderText = "Code d\'acc\195\168s...",
			PlaceholderColor3 = f.TextMuted,
			TextColor3 = f.TextPrimary,
			Font = Enum.Font.GothamMedium,
			TextSize = 16,
			TextXAlignment = Enum.TextXAlignment.Center,
			ClearTextOnFocus = false,
			ZIndex = 13,
			Parent = R,
		});
	K(j, 12);
	local l = u(j, f.Border, 1.5, .3);
	j.Focused:Connect(function()
		l.Color = f.Accent;
		l.Transparency = .2;
	end);
	j.FocusLost:Connect(function()
		l.Color = f.Border;
		l.Transparency = .3;
	end);
	local V = G("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 216),
			BackgroundTransparency = 1,
			Text = "",
			TextColor3 = f.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 12,
			Parent = R,
		});
	local p = G("TextButton", {
			Size = UDim2.new(.82, 0, 0, 48),
			Position = UDim2.new(.5, 0, 0, 248),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = f.Accent,
			BorderSizePixel = 0,
			Text = "VALIDER",
			TextColor3 = f.TextOnAccent,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			AutoButtonColor = false,
			ZIndex = 13,
			Parent = R,
		});
	K(p, 12);
	c(p, "BackgroundColor3", "Accent");
	c(p, "TextColor3", "TextOnAccent");
	local L, z, C = 0, 5, false;
	local function N()
		if C then
			return;
		end;
		if j.Text == h then
			C = true;
			x.Authenticated = true;
			V.Text = "Acc\195\168s autoris\195\169";
			V.TextColor3 = f.Success;
			l.Color = f.Success;
			task.wait(.4);
			e(R, .35, function()
				x.CodeFrame = nil;
				if w then
					w();
				end;
			end);
		else
			L = L + 1;
			V.Text = string.format("Code incorrect \226\128\148 %d/%d", L, z);
			V.TextColor3 = f.Error;
			l.Color = f.Error;
			if L >= z then
				C = true;
				V.Text = "Acc\195\168s bloqu\195\169";
				task.wait(1.5);
				if v then
					v:Destroy();
				end;
				return;
			end;
			j.Text = "";
			pcall(function()
				j:CaptureFocus();
			end);
		end;
	end;
	p.MouseButton1Click:Connect(N);
	j.FocusLost:Connect(function(w)
		if w then
			N();
		end;
	end);
	task.spawn(function()
		task.wait(.6);
		pcall(function()
			j:CaptureFocus();
		end);
	end);
	n(R, .5);
	return R;
end;
hx = function()
		local R = x.Gui;
		if not R then
			return;
		end;
		if x.Shell and x.Shell.Parent then
			return;
		end;
		x.NavItems = {};
		x.CurrentPage = nil;
		local O = lx("Shell", UDim2.new(0, 820, 0, 540), R);
		x.Shell = O;
		x.MenuOpen = true;
		O.BackgroundTransparency = 1;
		X(O, .55);
		local j = G("TextButton", {
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
				Parent = O,
			});
		K(j, 8);
		u(j, f.Border, 1, .4);
		j.MouseEnter:Connect(function()
			(v:Create(j, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(200, 60, 60), BackgroundTransparency = 0 })):Play();
			(v:Create(j, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
		end);
		j.MouseLeave:Connect(function()
			(v:Create(j, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(36, 38, 48), BackgroundTransparency = .15 })):Play();
			(v:Create(j, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(220, 225, 235) })):Play();
		end);
		j.MouseButton1Click:Connect(px);
		local V = G("Frame", {
				Name = "Sidebar",
				Size = UDim2.new(0, 240, 1, 0),
				BackgroundColor3 = f.SurfaceSide,
				BackgroundTransparency = .35,
				BorderSizePixel = 0,
				ZIndex = 8,
				Parent = O,
			});
		K(V, 20);
		x.Sidebar = V;
		local p = G("Frame", {
				Size = UDim2.new(1, 0, 0, 90),
				BackgroundColor3 = f.BgTop,
				BackgroundTransparency = .65,
				BorderSizePixel = 0,
				ZIndex = 15,
				Parent = V,
			});
		K(p, 20);
		G("Frame", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 1, -20),
			BackgroundColor3 = f.BgTop,
			BackgroundTransparency = .65,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = p,
		});
		local h = G("Frame", {
				Size = UDim2.new(0, 52, 0, 52),
				Position = UDim2.new(0, 18, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 16,
				Parent = p,
			});
		K(h, 26);
		local L = G("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 17,
				Parent = h,
			});
		K(L, 24);
		local z = G("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 18,
				Parent = L,
			});
		K(z, 24);
		task.spawn(function()
			local v, R = pcall(function()
					return w:GetUserThumbnailAsync(l.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if v and R then
				z.Image = R;
			end;
		end);
		G("TextLabel", {
			Size = UDim2.new(1, -90, 0, 22),
			Position = UDim2.new(0, 80, 0, 24),
			BackgroundTransparency = 1,
			Text = l.DisplayName,
			TextColor3 = f.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 15,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 16,
			Parent = p,
		});
		G("TextLabel", {
			Size = UDim2.new(1, -90, 0, 16),
			Position = UDim2.new(0, 80, 0, 46),
			BackgroundTransparency = 1,
			Text = "Premium",
			TextColor3 = f.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 16,
			Parent = p,
		});
		G("Frame", {
			Size = UDim2.new(1, -32, 0, 1),
			Position = UDim2.new(0, 16, 0, 90),
			BackgroundColor3 = f.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = V,
		});
		local C = G("ScrollingFrame", {
				Size = UDim2.new(1, -16, 1, -110),
				Position = UDim2.new(0, 8, 0, 100),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 3,
				ScrollBarImageColor3 = f.SurfaceHi,
				ScrollBarImageTransparency = .5,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ZIndex = 18,
				Parent = V,
			});
		G("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = C });
		gx(C, "G\195\169n\195\169ral", 1);
		Mx(C, "Accueil", "home", 2);
		Mx(C, "ESP", "esp", 3);
		gx(C, "Personnage", 4);
		Mx(C, "Player", "player", 5);
		Mx(C, "Combat", "combat", 6);
		Mx(C, "Troll", "troll", 7);
		Mx(C, "T\195\169l\195\169port\195\169", "teleport", 8);
		Mx(C, "Animation", "animation", 9);
		Mx(C, "Auto Farm", "autofarm", 10);
		gx(C, "MM2", 11);
		Mx(C, "Murder", "murder", 12);
		Mx(C, "Sheriff", "sheriff", 13);
		gx(C, "Autre", 14);
		Mx(C, "Param\195\168tres", "settings", 15);
		x.NavItems.home.btn.MouseButton1Click:Connect(function()
			zx("home");
		end);
		x.NavItems.esp.btn.MouseButton1Click:Connect(function()
			zx("esp");
		end);
		x.NavItems.murder.btn.MouseButton1Click:Connect(function()
			zx("murder");
		end);
		x.NavItems.sheriff.btn.MouseButton1Click:Connect(function()
			zx("sheriff");
		end);
		x.NavItems.player.btn.MouseButton1Click:Connect(function()
			zx("player");
		end);
		x.NavItems.combat.btn.MouseButton1Click:Connect(function()
			zx("combat");
		end);
		x.NavItems.autofarm.btn.MouseButton1Click:Connect(function()
			zx("autofarm");
		end);
		x.NavItems.teleport.btn.MouseButton1Click:Connect(function()
			zx("teleport");
		end);
		x.NavItems.troll.btn.MouseButton1Click:Connect(function()
			zx("troll");
		end);
		x.NavItems.animation.btn.MouseButton1Click:Connect(function()
			zx("animation");
		end);
		x.NavItems.settings.btn.MouseButton1Click:Connect(function()
			zx("settings");
		end);
		local N = G("Frame", {
				Name = "Content",
				Size = UDim2.new(1, -240, 1, 0),
				Position = UDim2.new(0, 240, 0, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				ZIndex = 14,
				Parent = O,
			});
		x.Content = N;
		local c = G("ScrollingFrame", {
				Name = "Scroll",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 6,
				ScrollBarImageColor3 = f.SurfaceHi,
				ScrollBarImageTransparency = .3,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ClipsDescendants = true,
				ZIndex = 24,
				Parent = N,
			});
		x.Scroll = c;
		task.wait(.1);
		zx("home");
	end;
l.CharacterAdded:Connect(function(w)
	w:WaitForChild("Humanoid", 10);
	task.wait(.6);
	y.nowe = false;
	y.tpwalking = false;
	j7();
	o7();
	Lx();
	if m.XRayEnabled then
		task.wait(.5);
		if w then
			U7(w, l);
		end;
	end;
	if J.FlyEnabled then
		l7();
	end;
	if J.SpinEnabled then
		z7();
	end;
	if J.JerkEnabled then
		c7();
	end;
	J.Sitting = false;
	local v = w:FindFirstChildOfClass("Humanoid");
	if v then
		v.WalkSpeed = J.WalkSpeed;
		v.UseJumpPower = true;
		v.JumpPower = J.JumpPower;
	end;
	workspace.Gravity = J.Gravity;
end);
O.InputBegan:Connect(function(w, v)
	if v then
		return;
	end;
	if w.KeyCode ~= Enum.KeyCode.M then
		return;
	end;
	if not x.Authenticated then
		return;
	end;
	if x.Shell and x.Shell.Parent then
		px();
	else
		if hx then
			hx();
		end;
	end;
end);
local function qx()
	F("Initialisation...");
	local w = V:FindFirstChild("MenuV70_GUI") or V:FindFirstChild("MenuV71_GUI");
	if w then
		w:Destroy();
	end;
	Zx();
	task.wait(P.LoadingDuration + .4);
	Vx(x.LoadingFrame, function()
		x.LoadingFrame = nil;
	end);
	task.wait(.5);
	Yx(function()
		x.Authenticated = true;
		Lx();
		hx();
	end);
end;
qx();
