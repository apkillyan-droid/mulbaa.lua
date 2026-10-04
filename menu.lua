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

local Y = game:GetService("Players");
local L = game:GetService("TweenService");
local j = game:GetService("RunService");
local F = game:GetService("UserInputService");
local w = game:GetService("Lighting");
local H = Y.LocalPlayer;
local v = H:WaitForChild("PlayerGui");
local S = workspace.CurrentCamera;
local O = "Fdvo2669";
local b = "rbxassetid://126785640171935";
local Z = 2.6;
local A = {
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
local k = {
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
local r = {};
local function Q(Y, L, j)
	table.insert(r, { instance = Y, property = L, themeKey = j });
	return Y;
end;
local function W(Y, L, j)
	table.insert(r, {
		isGradient = true,
		gradient = Y,
		topKey = L,
		bottomKey = j,
	});
	return Y;
end;
local function t()
	local Y = {};
	for j, F in ipairs(r) do
		if F.isGradient then
			if F.gradient and F.gradient.Parent then
				F.gradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, A[F.topKey]), ColorSequenceKeypoint.new(1, A[F.bottomKey]) });
				table.insert(Y, F);
			end;
		else
			if F.instance and F.instance.Parent then
				local j = A[F.themeKey];
				if j then
					(L:Create(F.instance, TweenInfo.new(.35), { [F.property] = j })):Play();
				end;
				table.insert(Y, F);
			end;
		end;
	end;
	r = Y;
	for Y, L in pairs(State.NavItems) do
		L.setActive(L.state.active);
	end;
end;
local function d(Y)
	A.Accent = Y.Accent;
	A.AccentDim = Y.AccentDim;
	A.AccentGlow = Y.AccentGlow;
	A.AccentSoft = Y.AccentSoft;
	A.TextOnAccent = Y.TextOnAccent;
	t();
end;
local m = {
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
local y = {
		EspEnabled = true,
		EspShowMurder = true,
		EspShowSheriff = true,
		EspShowInnocent = false,
		AutoShootEnabled = false,
		AutoShootRange = 500,
		AutoShootDelay = .15,
		TpAllDelay = .8,
		XRayEnabled = false,
		NotifKillFeed = false,
		NotifChatMsg = false,
	};
local P = {
		Murderer = Color3.fromRGB(255, 60, 60),
		Sheriff = Color3.fromRGB(60, 120, 255),
		Innocent = Color3.fromRGB(60, 255, 120),
		Box = Color3.fromRGB(255, 60, 60),
		Tracer = Color3.fromRGB(255, 60, 60),
	};
local g = {
		BoxEnabled = true,
		BoxThickness = 2,
		TracerEnabled = false,
		DistanceEnabled = true,
	};
local i = {
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
local K = { track = nil };
local V = {
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
local n = { av = nil };
local f = { conn = nil };
local C = {};
local z = {};
local U = { knownRoles = {} };
local B = { lastRoles = {} };
local p = { savedCFrame = nil };
local c = { running = false };
local function T(...)
	print("[MENU-V71]", ...);
end;
local function q(Y, L)
	local j = Instance.new(Y);
	for Y, L in pairs(L or {}) do
		j[Y] = L;
	end;
	return j;
end;
local function a(Y, L)
	return q("UICorner", { CornerRadius = UDim.new(0, L or 8), Parent = Y });
end;
local function u(Y, L, j, F)
	return q("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, L), ColorSequenceKeypoint.new(1, j) }), Rotation = F or 90, Parent = Y });
end;
local function s(Y, L, j, F)
	return q("UIStroke", {
		Color = L or A.Border,
		Thickness = j or 1,
		Transparency = F or 0,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = Y,
	});
end;
local function e(Y, L, j, F)
	F = F or 8;
	local w = q("Frame", { Size = UDim2.new(0, F + 2, 0, F + 2), BackgroundTransparency = 1, Parent = Y });
	local H, v = (L == "right") and 45 or -45, (L == "right") and -45 or 45;
	local S = q("Frame", {
			Size = UDim2.new(0, F, 0, 2),
			Position = UDim2.new(.5, -1, .5, -3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = j or A.TextMuted,
			BorderSizePixel = 0,
			Rotation = H,
			Parent = w,
		});
	a(S, 1);
	local O = q("Frame", {
			Size = UDim2.new(0, F, 0, 2),
			Position = UDim2.new(.5, -1, .5, 3),
			AnchorPoint = Vector2.new(1, .5),
			BackgroundColor3 = j or A.TextMuted,
			BorderSizePixel = 0,
			Rotation = v,
			Parent = w,
		});
	a(O, 1);
	return w, S, O;
end;
local function l(Y, j)
	j = j or .45;
	local F = Y.Size;
	Y.Size = UDim2.new(0, F.X.Offset * .85, 0, F.Y.Offset * .85);
	Y.BackgroundTransparency = 1;
	(L:Create(Y, TweenInfo.new(j, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = F, BackgroundTransparency = 0 })):Play();
end;
local function D(Y, j, F)
	j = j or .32;
	local w = Y.Size;
	(L:Create(Y, TweenInfo.new(j, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Size = UDim2.new(0, w.X.Offset * .85, 0, w.Y.Offset * .85), BackgroundTransparency = 1 })):Play();
	for Y, F in ipairs(Y:GetDescendants()) do
		if F:IsA("TextLabel") or F:IsA("TextBox") then
			(L:Create(F, TweenInfo.new(j * .85), { TextTransparency = 1 })):Play();
		elseif F:IsA("TextButton") then
			(L:Create(F, TweenInfo.new(j * .85), { BackgroundTransparency = 1 })):Play();
		elseif F:IsA("Frame") and F.Name ~= "ParticleZone" then
			if F.BackgroundTransparency < 1 then
				(L:Create(F, TweenInfo.new(j * .85), { BackgroundTransparency = 1 })):Play();
			end;
		elseif F:IsA("ImageLabel") then
			(L:Create(F, TweenInfo.new(j * .85), { ImageTransparency = 1 })):Play();
		elseif F:IsA("UIStroke") then
			(L:Create(F, TweenInfo.new(j * .85), { Transparency = 1 })):Play();
		end;
	end;
	local H = Y.Parent and Y.Parent:FindFirstChild(Y.Name .. "_ShadowHolder");
	if H then
		for Y, F in ipairs(H:GetChildren()) do
			if F:IsA("Frame") then
				(L:Create(F, TweenInfo.new(j * .85), { BackgroundTransparency = 1 })):Play();
			end;
		end;
	end;
	task.delay(j + .05, function()
		if H and H.Parent then
			H:Destroy();
		end;
		if Y and Y.Parent then
			Y:Destroy();
		end;
		if F then
			F();
		end;
	end);
end;
local function R(Y, j)
	j = j or .5;
	local F = Y.Size;
	Y.Size = UDim2.new(0, F.X.Offset * .85, 0, F.Y.Offset * .85);
	Y.BackgroundTransparency = 1;
	for Y, F in ipairs(Y:GetDescendants()) do
		if F:IsA("TextLabel") or F:IsA("TextBox") then
			F.TextTransparency = 1;
			(L:Create(F, TweenInfo.new(j), { TextTransparency = 0 })):Play();
		elseif F:IsA("TextButton") then
			F.BackgroundTransparency = 1;
		elseif F:IsA("ImageLabel") then
			F.ImageTransparency = 1;
			(L:Create(F, TweenInfo.new(j), { ImageTransparency = 0 })):Play();
		end;
	end;
	(L:Create(Y, TweenInfo.new(j, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = F, BackgroundTransparency = 0 })):Play();
end;
local function o(Y, j, F)
	local w = H:FindFirstChild("PlayerGui");
	if not w then
		return;
	end;
	local v = w:FindFirstChild("MulbaNotif");
	if v then
		v:Destroy();
	end;
	local S = q("ScreenGui", {
			Name = "MulbaNotif",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 1000,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Parent = w,
		});
	local O = q("Frame", {
			Size = UDim2.new(0, 320, 0, 80),
			Position = UDim2.new(1, 20, 0, 100),
			BackgroundColor3 = A.BgTop,
			BackgroundTransparency = .05,
			BorderSizePixel = 0,
			ZIndex = 1000,
			Parent = S,
		});
	a(O, 14);
	u(O, A.BgTop, A.BgBottom, 90);
	q("UIStroke", {
		Color = F and Color3.fromRGB(255, 100, 100) or A.Accent,
		Thickness = 2,
		Transparency = .2,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = O,
	});
	q("TextLabel", {
		Size = UDim2.new(1, -60, 0, 20),
		Position = UDim2.new(0, 20, 0, 14),
		BackgroundTransparency = 1,
		Text = Y,
		TextColor3 = F and Color3.fromRGB(255, 120, 120) or A.Accent,
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 1001,
		Parent = O,
	});
	q("TextLabel", {
		Size = UDim2.new(1, -60, 0, 30),
		Position = UDim2.new(0, 20, 0, 36),
		BackgroundTransparency = 1,
		Text = j,
		TextColor3 = A.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		ZIndex = 1001,
		Parent = O,
	});
	(L:Create(O, TweenInfo.new(.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Position = UDim2.new(1, -340, 0, 100) })):Play();
	task.delay(5, function()
		if not O.Parent then
			return;
		end;
		(L:Create(O, TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(1, 20, 0, 100), BackgroundTransparency = 1 })):Play();
		for Y, j in ipairs(O:GetDescendants()) do
			if j:IsA("TextLabel") then
				(L:Create(j, TweenInfo.new(.4), { TextTransparency = 1 })):Play();
			end;
		end;
		task.wait(.5);
		S:Destroy();
	end);
end;
local X = nil;
local I = nil;
local function M()
	local Y = H:FindFirstChild("PlayerGui");
	if not Y then
		return;
	end;
	if X and X.Parent then
		return;
	end;
	X = q("ScreenGui", {
			Name = "MulbaKillFeed",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			DisplayOrder = 950,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Parent = Y,
		});
	local L = q("Frame", {
			Size = UDim2.new(0, 320, 0, 400),
			Position = UDim2.new(1, -340, 1, -420),
			BackgroundTransparency = 1,
			ZIndex = 950,
			Parent = X,
		});
	I = q("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ZIndex = 951,
			Parent = L,
		});
	q("UIListLayout", {
		Padding = UDim.new(0, 6),
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Bottom,
		Parent = I,
	});
end;
local function N(Y, j)
	M();
	if not I then
		return;
	end;
	local F = q("Frame", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundColor3 = Color3.fromRGB(15, 17, 24),
			BackgroundTransparency = .15,
			BorderSizePixel = 0,
			ZIndex = 952,
			Parent = I,
		});
	a(F, 8);
	q("UIStroke", {
		Color = j or Color3.fromRGB(255, 80, 80),
		Thickness = 1.5,
		Transparency = .2,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Parent = F,
	});
	q("TextLabel", {
		Size = UDim2.new(1, -16, 1, 0),
		Position = UDim2.new(0, 10, 0, 0),
		BackgroundTransparency = 1,
		Text = Y,
		TextColor3 = j or Color3.fromRGB(255, 80, 80),
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 953,
		Parent = F,
	});
	task.delay(5, function()
		if not F.Parent then
			return;
		end;
		(L:Create(F, TweenInfo.new(.4), { BackgroundTransparency = 1 })):Play();
		for Y, j in ipairs(F:GetDescendants()) do
			if j:IsA("TextLabel") then
				(L:Create(j, TweenInfo.new(.4), { TextTransparency = 1 })):Play();
			end;
		end;
		task.wait(.5);
		F:Destroy();
	end);
end;
task.spawn(function()
	while true do
		task.wait(.5);
		if y.NotifKillFeed then
			for Y, L in ipairs(Y:GetPlayers()) do
				if L == H then
					continue;
				end;
				local j = getPlayerRole(L);
				local F = U.knownRoles[L];
				if j ~= F then
					U.knownRoles[L] = j;
					if j == "Murderer" then
						N("\240\159\148\170 " .. (L.Name .. " est Murderer"), Color3.fromRGB(255, 80, 80));
					elseif j == "Sheriff" then
						N("\240\159\148\171 " .. (L.Name .. " est Sheriff"), Color3.fromRGB(80, 140, 255));
					elseif F == "Murderer" or F == "Sheriff" then
						N("\240\159\146\128 " .. (L.Name .. (" n\'est plus " .. ((F or "?")))), Color3.fromRGB(200, 200, 200));
					end;
				end;
			end;
			for Y, L in ipairs(workspace:GetChildren()) do
				if L:IsA("Tool") and (L.Name == "Gun" and L:FindFirstChild("Handle")) then
					if not L:GetAttribute("MulbaFeedSeen") then
						L:SetAttribute("MulbaFeedSeen", true);
						N("\240\159\148\171 Gun au sol !", Color3.fromRGB(255, 180, 80));
					end;
				end;
			end;
		end;
	end;
end);
local function h(Y)
	local L = H:FindFirstChild("PlayerGui");
	if not L then
		return;
	end;
	pcall(function()
		(game:GetService("StarterGui")):SetCore("ChatMakeSystemMessage", { Text = "[Mulba] " .. Y, Color = Color3.fromRGB(115, 155, 240), Font = Enum.Font.GothamBold });
	end);
end;
local function x()
	local L, j = {}, {};
	for Y, F in ipairs(Y:GetPlayers()) do
		if F == H then
			continue;
		end;
		local w = getPlayerRole(F);
		if w == "Murderer" then
			table.insert(L, F.Name);
		end;
		if w == "Sheriff" then
			table.insert(j, F.Name);
		end;
	end;
	local F = #L > 0 and table.concat(L, ", ") or "?";
	local w = #j > 0 and table.concat(j, ", ") or "?";
	h("Murder : " .. (F .. (" | Sheriff : " .. w)));
end;
task.spawn(function()
	while true do
		task.wait(1);
		if y.NotifChatMsg then
			local L = false;
			for Y, j in ipairs(Y:GetPlayers()) do
				if j == H then
					continue;
				end;
				local F = getPlayerRole(j);
				if F ~= B.lastRoles[j] then
					B.lastRoles[j] = F;
					L = true;
				end;
			end;
			if L then
				x();
			end;
		end;
	end;
end);
local function G()
	local Y = H.Character;
	if not Y then
		return;
	end;
	local L = Y:FindFirstChildOfClass("Humanoid");
	if not L then
		return;
	end;
	local j = "rbxassetid://77643987647373";
	local F = Instance.new("Animation");
	F.AnimationId = j;
	pcall(function()
		local Y = L:LoadAnimation(F);
		Y.Priority = Enum.AnimationPriority.Action4;
		Y.Looped = true;
		Y:Play();
		K.track = Y;
	end);
end;
local function J()
	if K.track then
		pcall(function()
			K.track:Stop();
		end);
		K.track = nil;
	end;
end;
local function YK()
	if not i.FlyEnabled and not V.nowe then
		return;
	end;
	i.FlyEnabled = false;
	V.nowe = false;
	V.tpwalking = false;
	if V.conn then
		V.conn:Disconnect();
		V.conn = nil;
	end;
	if V.bg then
		pcall(function()
			V.bg:Destroy();
		end);
		V.bg = nil;
	end;
	if V.bv then
		pcall(function()
			V.bv:Destroy();
		end);
		V.bv = nil;
	end;
	V.ctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		};
	V.lastctrl = {
			f = 0,
			b = 0,
			l = 0,
			r = 0,
		};
	V.speed = 0;
	J();
	local Y = H.Character;
	if not Y then
		return;
	end;
	local L = Y:FindFirstChildOfClass("Humanoid");
	if L then
		pcall(function()
			L.PlatformStand = false;
			L:SetStateEnabled(Enum.HumanoidStateType.Climbing, true);
			L:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true);
			L:SetStateEnabled(Enum.HumanoidStateType.Flying, true);
			L:SetStateEnabled(Enum.HumanoidStateType.Freefall, true);
			L:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true);
			L:SetStateEnabled(Enum.HumanoidStateType.Jumping, true);
			L:SetStateEnabled(Enum.HumanoidStateType.Landed, true);
			L:SetStateEnabled(Enum.HumanoidStateType.Physics, true);
			L:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true);
			L:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true);
			L:SetStateEnabled(Enum.HumanoidStateType.Running, true);
			L:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true);
			L:SetStateEnabled(Enum.HumanoidStateType.Seated, true);
			L:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true);
			L:SetStateEnabled(Enum.HumanoidStateType.Swimming, true);
		end);
	end;
	local j = Y:FindFirstChild("Animate");
	if j then
		j.Disabled = V.savedAnimDisabled or false;
	end;
end;
local function LK()
	local Y = H.Character;
	if not Y then
		return;
	end;
	local L = Y:FindFirstChildOfClass("Humanoid");
	if not L then
		return;
	end;
	i.FlyEnabled = true;
	V.nowe = true;
	V.tpwalking = true;
	V.savedAnimDisabled = Y:FindFirstChild("Animate") and Y.Animate.Disabled or false;
	local w = math.clamp(math.floor(i.FlySpeed / 10), 1, 50);
	for Y = 1, w, 1 do
		task.spawn(function()
			local Y = j.Heartbeat;
			while V.tpwalking and Y:Wait() do
				local Y = H.Character;
				local L = Y and Y:FindFirstChildOfClass("Humanoid");
				if not ((Y and (L and L.Parent))) then
					break;
				end;
				if L.MoveDirection.Magnitude > 0 then
					pcall(function()
						Y:TranslateBy(L.MoveDirection);
					end);
				end;
			end;
		end);
	end;
	local v = Y:FindFirstChild("Animate");
	if v then
		v.Disabled = true;
	end;
	for Y, L in next, L:GetPlayingAnimationTracks() do
		pcall(function()
			L:AdjustSpeed(0);
		end);
	end;
	pcall(function()
		L:SetStateEnabled(Enum.HumanoidStateType.Climbing, false);
		L:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false);
		L:SetStateEnabled(Enum.HumanoidStateType.Flying, false);
		L:SetStateEnabled(Enum.HumanoidStateType.Freefall, false);
		L:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false);
		L:SetStateEnabled(Enum.HumanoidStateType.Jumping, false);
		L:SetStateEnabled(Enum.HumanoidStateType.Landed, false);
		L:SetStateEnabled(Enum.HumanoidStateType.Physics, false);
		L:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false);
		L:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false);
		L:SetStateEnabled(Enum.HumanoidStateType.Running, false);
		L:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false);
		L:SetStateEnabled(Enum.HumanoidStateType.Seated, false);
		L:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false);
		L:SetStateEnabled(Enum.HumanoidStateType.Swimming, false);
		L:ChangeState(Enum.HumanoidStateType.Swimming);
	end);
	local S = (L.RigType == Enum.HumanoidRigType.R6);
	local O = S and Y:FindFirstChild("Torso") or Y:FindFirstChild("UpperTorso");
	if not O then
		O = Y:FindFirstChild("HumanoidRootPart");
	end;
	if not O then
		YK();
		return;
	end;
	local b = Instance.new("BodyGyro");
	b.P = 90000;
	b.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000);
	b.CFrame = O.CFrame;
	b.Parent = O;
	V.bg = b;
	local Z = Instance.new("BodyVelocity");
	Z.Velocity = Vector3.new(0, .1, 0);
	Z.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000);
	Z.Parent = O;
	V.bv = Z;
	pcall(function()
		L.PlatformStand = true;
	end);
	task.wait(.15);
	G();
	V.conn = j.RenderStepped:Connect(function()
			if not V.nowe then
				return;
			end;
			local Y = H.Character;
			if not Y then
				return;
			end;
			local L = Y:FindFirstChildOfClass("Humanoid");
			if not L or L.Health <= 0 then
				return;
			end;
			local j = workspace.CurrentCamera;
			if not j then
				return;
			end;
			local w = V.ctrl;
			w.f = F:IsKeyDown(Enum.KeyCode.W) and 1 or 0;
			w.b = F:IsKeyDown(Enum.KeyCode.S) and 1 or 0;
			w.l = F:IsKeyDown(Enum.KeyCode.A) and 1 or 0;
			w.r = F:IsKeyDown(Enum.KeyCode.D) and 1 or 0;
			local v = V.maxspeed;
			if w.l + w.r ~= 0 or w.f + w.b ~= 0 then
				V.speed = (V.speed + .5) + (V.speed / v);
				if V.speed > v then
					V.speed = v;
				end;
			elseif not ((w.l + w.r ~= 0 or w.f + w.b ~= 0)) and V.speed ~= 0 then
				V.speed = V.speed - 1;
				if V.speed < 0 then
					V.speed = 0;
				end;
			end;
			if V.bv then
				if (w.l + w.r) ~= 0 or (w.f + w.b) ~= 0 then
					V.bv.Velocity = (((j.CFrame.LookVector * ((w.f + w.b))) + (((j.CFrame * (CFrame.new(w.l + w.r, ((w.f + w.b)) * .2, 0)).p) - j.CFrame.p)))) * V.speed;
					V.lastctrl = {
							f = w.f,
							b = w.b,
							l = w.l,
							r = w.r,
						};
				elseif (w.l + w.r) == 0 and ((w.f + w.b) == 0 and V.speed ~= 0) then
					V.bv.Velocity = (((j.CFrame.LookVector * ((V.lastctrl.f + V.lastctrl.b))) + (((j.CFrame * (CFrame.new(V.lastctrl.l + V.lastctrl.r, ((V.lastctrl.f + V.lastctrl.b)) * .2, 0)).p) - j.CFrame.p)))) * V.speed;
				else
					V.bv.Velocity = Vector3.new(0, 0, 0);
				end;
			end;
			if V.bg then
				V.bg.CFrame = j.CFrame * CFrame.Angles(-math.rad(((((w.f + w.b)) * 50) * V.speed) / v), 0, 0);
			end;
		end);
end;
local function jK()
	if i.FlyEnabled or V.nowe then
		YK();
	else
		LK();
	end;
end;
local function FK()
	if V.bindConn then
		V.bindConn:Disconnect();
		V.bindConn = nil;
	end;
	if not i.FlyBind then
		return;
	end;
	V.bindConn = F.InputBegan:Connect(function(Y, L)
			if L then
				return;
			end;
			if Y.UserInputType ~= Enum.UserInputType.Keyboard then
				return;
			end;
			if Y.KeyCode == i.FlyBind then
				jK();
			end;
		end);
end;
local function wK(Y)
	i.FlyBind = Y;
	FK();
end;
local function HK()
	i.SpinEnabled = false;
	if n.av then
		n.av:Destroy();
		n.av = nil;
	end;
end;
local function vK()
	local Y = H.Character;
	if not Y then
		return;
	end;
	local L = Y:FindFirstChild("HumanoidRootPart");
	if not L then
		return;
	end;
	i.SpinEnabled = true;
	local j = Instance.new("BodyAngularVelocity");
	j.AngularVelocity = Vector3.new(0, i.SpinSpeed, 0);
	j.MaxTorque = Vector3.new(0, 9000000000, 0);
	j.P = 1250;
	j.Parent = L;
	n.av = j;
end;
local function SK()
	if i.SpinEnabled then
		HK();
	else
		vK();
	end;
end;
local function OK(Y)
	i.SpinSpeed = Y;
	if n.av then
		n.av.AngularVelocity = Vector3.new(0, Y, 0);
	end;
end;
local function bK()
	i.JerkEnabled = false;
	if f.conn then
		f.conn:Disconnect();
		f.conn = nil;
	end;
	local Y = H.Character;
	local L = Y and Y:FindFirstChild("HumanoidRootPart");
	if L then
		pcall(function()
			L.AssemblyLinearVelocity = Vector3.zero;
			L.Velocity = Vector3.zero;
		end);
	end;
end;
local function ZK()
	local Y = H.Character;
	if not Y then
		return;
	end;
	local L = Y:FindFirstChild("HumanoidRootPart");
	if not L then
		return;
	end;
	i.JerkEnabled = true;
	f.conn = j.Heartbeat:Connect(function()
			if not i.JerkEnabled then
				return;
			end;
			local Y = H.Character;
			local L = Y and Y:FindFirstChild("HumanoidRootPart");
			if not L then
				return;
			end;
			local j = i.JerkIntensity;
			local F = Vector3.new((((math.random() - .5)) * j) * 8, (((math.random() - .5)) * j) * 8, (((math.random() - .5)) * j) * 8);
			pcall(function()
				L.AssemblyLinearVelocity = L.AssemblyLinearVelocity + F;
				L.Velocity = L.Velocity + F;
			end);
		end);
end;
local function AK()
	if i.JerkEnabled then
		bK();
	else
		ZK();
	end;
end;
local function kK(Y)
	i.JerkIntensity = Y;
end;
local function rK()
	i.Sitting = not i.Sitting;
	local Y = H.Character;
	local L = Y and Y:FindFirstChildOfClass("Humanoid");
	if not L then
		return;
	end;
	L.Sit = i.Sitting;
end;
task.spawn(function()
	while true do
		task.wait(.15);
		if i.NoclipEnabled and not i.FlyEnabled then
			local Y = H.Character;
			if Y then
				for Y, L in ipairs(Y:GetDescendants()) do
					if L:IsA("BasePart") and L.CanCollide then
						L.CanCollide = false;
					end;
				end;
			end;
		end;
	end;
end);
local function QK()
	i.NoclipEnabled = not i.NoclipEnabled;
	local Y = H.Character;
	if Y and not i.NoclipEnabled then
		for Y, L in ipairs(Y:GetDescendants()) do
			if L:IsA("BasePart") then
				L.CanCollide = true;
			end;
		end;
	end;
end;
local function WK(Y)
	i.WalkSpeed = Y;
	local L = H.Character;
	local j = L and L:FindFirstChildOfClass("Humanoid");
	if j then
		j.WalkSpeed = Y;
	end;
end;
local function tK(Y)
	i.JumpPower = Y;
	local L = H.Character;
	local j = L and L:FindFirstChildOfClass("Humanoid");
	if j then
		j.UseJumpPower = true;
		j.JumpPower = Y;
	end;
end;
local function dK(Y)
	i.Gravity = Y;
	workspace.Gravity = Y;
end;
local mK = nil;
local function EK()
	i.InfiniteJump = not i.InfiniteJump;
	if i.InfiniteJump then
		if mK then
			mK:Disconnect();
		end;
		mK = F.JumpRequest:Connect(function()
				local Y = H.Character;
				local L = Y and Y:FindFirstChildOfClass("Humanoid");
				if L then
					L:ChangeState(Enum.HumanoidStateType.Jumping);
				end;
			end);
	else
		if mK then
			mK:Disconnect();
			mK = nil;
		end;
	end;
end;
local yK = nil;
local function PK()
	i.AntiAFK = not i.AntiAFK;
	if i.AntiAFK then
		if yK then
			yK:Disconnect();
		end;
		yK = H.Idled:Connect(function()
				local Y = game:GetService("VirtualUser");
				Y:CaptureController();
				Y:ClickButton2(Vector2.new());
			end);
	else
		if yK then
			yK:Disconnect();
			yK = nil;
		end;
	end;
end;
local gK = {};
local function iK()
	i.Fullbright = not i.Fullbright;
	if i.Fullbright then
		gK.Ambient = w.Ambient;
		gK.OutdoorAmbient = w.OutdoorAmbient;
		gK.Brightness = w.Brightness;
		gK.ClockTime = w.ClockTime;
		w.Ambient = Color3.fromRGB(255, 255, 255);
		w.OutdoorAmbient = Color3.fromRGB(255, 255, 255);
		w.Brightness = 3;
		w.ClockTime = 14;
		local Y = w:FindFirstChild("MulbaFullbright");
		if not Y then
			Y = Instance.new("ColorCorrectionEffect");
			Y.Name = "MulbaFullbright";
			Y.Parent = w;
		end;
	else
		if gK.Ambient then
			w.Ambient = gK.Ambient;
		end;
		if gK.OutdoorAmbient then
			w.OutdoorAmbient = gK.OutdoorAmbient;
		end;
		if gK.Brightness then
			w.Brightness = gK.Brightness;
		end;
		if gK.ClockTime then
			w.ClockTime = gK.ClockTime;
		end;
		local Y = w:FindFirstChild("MulbaFullbright");
		if Y then
			Y:Destroy();
		end;
	end;
end;
local function KK()
	i.AntiFling = not i.AntiFling;
end;
task.spawn(function()
	while true do
		task.wait(.1);
		if i.AntiFling then
			local Y = H.Character;
			local L = Y and Y:FindFirstChild("HumanoidRootPart");
			if L then
				for Y, L in ipairs(L:GetChildren()) do
					if L:IsA("BodyVelocity") then
						if L.Velocity.Magnitude > 500 then
							L.Velocity = L.Velocity.Unit * 500;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local function VK()
	local Y = H.Character;
	local L = Y and Y:FindFirstChildOfClass("Humanoid");
	if L then
		L.Health = 0;
	end;
end;
local function nK()
	local Y = H.Character;
	local L = Y and Y:FindFirstChild("HumanoidRootPart");
	if not L then
		return;
	end;
	for Y, j in ipairs(workspace:GetDescendants()) do
		if j:IsA("SpawnLocation") then
			pcall(function()
				L.CFrame = j.CFrame + Vector3.new(0, 3, 0);
			end);
			return;
		end;
	end;
end;
local function fK()
	local Y = H.Character;
	local L = Y and Y:FindFirstChild("HumanoidRootPart");
	if not L then
		return;
	end;
	p.savedCFrame = L.CFrame;
	o("MAP", "Position sauvegard\195\169e", false);
end;
local function CK()
	if not p.savedCFrame then
		o("MAP", "Aucune position sauvegard\195\169e", true);
		return;
	end;
	local Y = H.Character;
	local L = Y and Y:FindFirstChild("HumanoidRootPart");
	if not L then
		return;
	end;
	pcall(function()
		L.CFrame = p.savedCFrame + Vector3.new(0, 3, 0);
	end);
	o("MAP", "TP \195\160 la position sauvegard\195\169e", false);
end;
local function zK()
	local Y = {};
	for L, j in ipairs(workspace:GetDescendants()) do
		if j:IsA("BasePart") then
			local L = j.Name;
			if L == "Coin" or L:find("Coin") or L:find("coin") then
				if j.Transparency < 1 then
					table.insert(Y, j);
				end;
			end;
		end;
	end;
	return Y;
end;
local function UK()
	if c.running then
		return;
	end;
	c.running = true;
	task.spawn(function()
		while c.running do
			local Y = H.Character;
			local L = Y and Y:FindFirstChild("HumanoidRootPart");
			if not L then
				task.wait(.3);
				continue;
			end;
			local j = zK();
			if #j == 0 then
				task.wait(2);
				continue;
			end;
			for Y, j in ipairs(j) do
				if not c.running then
					break;
				end;
				if j and j.Parent then
					pcall(function()
						L.CFrame = CFrame.new(L.Position.X, -50, L.Position.Z);
					end);
					task.wait(.05);
					pcall(function()
						L.CFrame = CFrame.new(j.Position + Vector3.new(0, 2, 0));
					end);
					task.wait(.1);
					pcall(function()
						L.CFrame = CFrame.new(j.Position.X, -50, j.Position.Z);
					end);
					task.wait(.05);
				end;
			end;
			task.wait(.3);
		end;
	end);
end;
local function BK()
	c.running = false;
end;
local function pK()
	if c.running then
		BK();
	else
		UK();
	end;
end;
local cK = { running = false, conn = nil };
local function TK()
	if cK.running then
		return;
	end;
	cK.running = true;
	cK.conn = j.Heartbeat:Connect(function()
			if not cK.running then
				return;
			end;
			local L = H.Character;
			if not L then
				return;
			end;
			local j = L:FindFirstChild("HumanoidRootPart");
			if not j then
				return;
			end;
			local F = j.CFrame;
			local w = 6;
			local v = F.Position + (F.LookVector * w);
			for Y, L in ipairs(Y:GetPlayers()) do
				if L ~= H and L.Character then
					local Y = L.Character:FindFirstChild("HumanoidRootPart");
					if Y then
						pcall(function()
							Y.CFrame = CFrame.new(v, v + F.LookVector);
							Y.AssemblyLinearVelocity = Vector3.zero;
							Y.Velocity = Vector3.zero;
						end);
					end;
				end;
			end;
		end);
end;
local function qK()
	cK.running = false;
	if cK.conn then
		cK.conn:Disconnect();
		cK.conn = nil;
	end;
end;
local function aK()
	if cK.running then
		qK();
	else
		TK();
	end;
end;
local uK = {
		conn = nil,
		seat = nil,
		weld = nil,
		target = nil,
	};
local function sK()
	if uK.conn then
		uK.conn:Disconnect();
		uK.conn = nil;
	end;
	if uK.seat and uK.seat.Parent then
		uK.seat:Destroy();
	end;
	uK.seat = nil;
	uK.weld = nil;
	uK.target = nil;
	local Y = H.Character;
	local L = Y and Y:FindFirstChildOfClass("Humanoid");
	if L then
		pcall(function()
			L.Sit = false;
			L.PlatformStand = false;
		end);
	end;
end;
local function eK()
	local Y = E.TrollSelected;
	if not Y or not Y.Character then
		o("Attach", "Aucune cible valide", true);
		return;
	end;
	local L = Y.Character;
	local F = L:FindFirstChild("Head");
	if not F then
		o("Attach", "T\195\170te introuvable", true);
		return;
	end;
	uK.target = Y;
	local w = Instance.new("Seat");
	w.Name = "MulbaAttachSeat";
	w.Size = Vector3.new(1, .2, 1);
	w.Transparency = 1;
	w.CanCollide = false;
	w.Anchored = false;
	w.CFrame = F.CFrame * CFrame.new(0, .7, 0);
	w.Parent = L;
	local v = Instance.new("WeldConstraint");
	v.Part0 = w;
	v.Part1 = F;
	v.Parent = w;
	uK.seat = w;
	uK.weld = v;
	task.wait(.1);
	local S = H.Character;
	local O = S and S:FindFirstChild("Humanoid");
	if O then
		task.wait(.1);
		pcall(function()
			w:Sit(O);
		end);
		local Y = S:FindFirstChild("HumanoidRootPart");
		if Y then
			Y.CFrame = w.CFrame + Vector3.new(0, 2, 0);
		end;
	end;
	uK.conn = j.Heartbeat:Connect(function()
			local Y = uK.target;
			if not Y or not Y.Character then
				return;
			end;
			local L = Y.Character:FindFirstChild("Head");
			if not L then
				return;
			end;
			local j = H.Character;
			local F = j and j:FindFirstChildOfClass("Humanoid");
			if not F then
				return;
			end;
			if not F.Sit then
				if uK.seat and uK.seat.Parent then
					pcall(function()
						uK.seat:Sit(F);
					end);
				end;
			end;
		end);
	o("Attach", "Assis sur " .. Y.Name, false);
end;
local function lK()
	if uK.conn then
		sK();
	else
		eK();
	end;
end;
local function DK(Y)
	if not Y then
		return "Innocent";
	end;
	if Y:FindFirstChild("Role") then
		local L, j = pcall(function()
				return tostring(Y.Role.Value);
			end);
		if L and (j and j ~= "") then
			return j;
		end;
	end;
	local L = Y.Character;
	local j = Y:FindFirstChild("Backpack");
	if L then
		if L:FindFirstChild("Knife") then
			return "Murderer";
		end;
		if L:FindFirstChild("Gun") then
			return "Sheriff";
		end;
	end;
	if j then
		if j:FindFirstChild("Knife") then
			return "Murderer";
		end;
		if j:FindFirstChild("Gun") then
			return "Sheriff";
		end;
	end;
	return "Innocent";
end;
local function RK()
	for Y, L in ipairs(Y:GetPlayers()) do
		if L == H then
			continue;
		end;
		if DK(L) == "Murderer" then
			return L;
		end;
	end;
	return nil;
end;
local function oK()
	for Y, L in ipairs(Y:GetPlayers()) do
		if L == H then
			continue;
		end;
		if DK(L) == "Sheriff" then
			return L;
		end;
	end;
	return nil;
end;
local function XK(Y)
	if Y == "Murderer" then
		return P.Murderer;
	end;
	if Y == "Sheriff" then
		return P.Sheriff;
	end;
	return P.Innocent;
end;
local function IK(Y)
	if Y == "Murderer" then
		return y.EspShowMurder;
	end;
	if Y == "Sheriff" then
		return y.EspShowSheriff;
	end;
	return y.EspShowInnocent;
end;
local function MK(Y, L)
	if not Y then
		return;
	end;
	if z[L] and z[L].Parent then
		return;
	end;
	local j = q("Highlight", {
			FillColor = Color3.fromRGB(255, 255, 255),
			FillTransparency = .85,
			OutlineColor = Color3.fromRGB(255, 255, 255),
			OutlineTransparency = 0,
			DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
			Adornee = Y,
			Parent = Y,
		});
	z[L] = j;
end;
local function NK(Y)
	local L = z[Y];
	if L and L.Parent then
		L:Destroy();
	end;
	z[Y] = nil;
end;
local function hK()
	if y.XRayEnabled then
		for Y, L in ipairs(Y:GetPlayers()) do
			if L.Character then
				MK(L.Character, L);
			end;
		end;
	else
		for Y in pairs(z) do
			NK(Y);
		end;
	end;
end;
local function xK(Y)
	if Y == H then
		return;
	end;
	if C[Y] then
		local L = pcall(function()
				C[Y].Box.Visible = C[Y].Box.Visible;
			end);
		if L then
			return;
		end;
		removeESP(Y);
	end;
	local L = Drawing.new("Square");
	L.Thickness = g.BoxThickness;
	L.Filled = false;
	L.Visible = false;
	local j = Drawing.new("Text");
	j.Center = true;
	j.Outline = true;
	j.Size = 16;
	j.Visible = false;
	local F = Drawing.new("Text");
	F.Center = true;
	F.Outline = true;
	F.Size = 13;
	F.Visible = false;
	local w = Drawing.new("Line");
	w.Thickness = 1;
	w.Visible = false;
	C[Y] = {
			Box = L,
			Text = j,
			DistanceText = F,
			Tracer = w,
		};
end;
local function GK(Y)
	local L = C[Y];
	if L then
		for Y, L in pairs(L) do
			pcall(function()
				L:Remove();
			end);
		end;
		C[Y] = nil;
	end;
end;
local function JK(Y)
	local L, j = S:WorldToViewportPoint(Y);
	return Vector2.new(L.X, L.Y), j;
end;
j.RenderStepped:Connect(function()
	if not y.EspEnabled then
		for Y, L in pairs(C) do
			pcall(function()
				L.Box.Visible = false;
				L.Text.Visible = false;
				L.DistanceText.Visible = false;
				L.Tracer.Visible = false;
			end);
		end;
		return;
	end;
	local Y = workspace.CurrentCamera;
	if Y then
		S = Y;
	end;
	local L = H.Character;
	local j = L and L:FindFirstChild("HumanoidRootPart");
	local F = j and j.Position;
	for Y, L in pairs(C) do
		local j = pcall(function()
				return L.Box.Visible;
			end);
		if not j then
			C[Y] = nil;
			continue;
		end;
		local w = Y.Character;
		local H = w and w:FindFirstChild("HumanoidRootPart");
		local v = w and w:FindFirstChild("Head");
		local O = w and w:FindFirstChildOfClass("Humanoid");
		local b = function()
				pcall(function()
					L.Box.Visible = false;
					L.Text.Visible = false;
					L.DistanceText.Visible = false;
					L.Tracer.Visible = false;
				end);
			end;
		if not ((H and (v and (O and O.Health > 0)))) then
			b();
			continue;
		end;
		local Z = DK(Y);
		if not IK(Z) then
			b();
			continue;
		end;
		local A, k = JK(v.Position + Vector3.new(0, .5, 0));
		local r, Q = JK(H.Position - Vector3.new(0, 3, 0));
		if k or Q then
			local j = math.abs(A.Y - r.Y);
			local w = j / 2;
			local v = XK(Z);
			local O = ((tick() * .5)) % 1;
			local b = Color3.fromHSV(O, 1, 1);
			if g.BoxEnabled then
				pcall(function()
					L.Box.Size = Vector2.new(w, j);
					L.Box.Position = Vector2.new(A.X - w / 2, A.Y);
					L.Box.Color = b;
					L.Box.Thickness = 2;
					L.Box.Visible = true;
				end);
			else
				pcall(function()
					L.Box.Visible = false;
				end);
			end;
			pcall(function()
				L.Text.Text = Y.DisplayName .. (" [" .. (Z .. "]"));
				L.Text.Position = Vector2.new(A.X, A.Y - 18);
				L.Text.Color = v;
				L.Text.Visible = true;
			end);
			if g.DistanceEnabled and F then
				pcall(function()
					local Y = ((H.Position - F)).Magnitude;
					L.DistanceText.Text = string.format("%.1f m", Y * .28);
					L.DistanceText.Position = Vector2.new(A.X, r.Y + 2);
					L.DistanceText.Color = v;
					L.DistanceText.Visible = true;
				end);
			else
				pcall(function()
					L.DistanceText.Visible = false;
				end);
			end;
			if g.TracerEnabled then
				pcall(function()
					L.Tracer.From = Vector2.new(S.ViewportSize.X / 2, S.ViewportSize.Y);
					L.Tracer.To = Vector2.new(A.X, A.Y);
					L.Tracer.Color = b;
					L.Tracer.Thickness = 1;
					L.Tracer.Visible = true;
				end);
			else
				pcall(function()
					L.Tracer.Visible = false;
				end);
			end;
		else
			b();
		end;
	end;
end);
Y.PlayerAdded:Connect(function(Y)
	task.wait(1);
	xK(Y);
	if y.XRayEnabled and Y.Character then
		MK(Y.Character, Y);
	end;
end);
Y.PlayerRemoving:Connect(function(Y)
	GK(Y);
	NK(Y);
	U.knownRoles[Y] = nil;
	B.lastRoles[Y] = nil;
end);
for Y, L in ipairs(Y:GetPlayers()) do
	xK(L);
end;
local function YJ(Y)
	local j = Y.AbsoluteSize;
	if j.X < 5 or j.Y < 5 then
		return;
	end;
	local F = math.random(m.ParticleMinSize, m.ParticleMaxSize);
	local w = math.random(0, math.max(1, j.X - F));
	local H = ((j.Y + 40)) / m.ParticleFallSpeed;
	local v = q("Frame", {
			Size = UDim2.new(0, F, 0, F),
			Position = UDim2.new(0, w, 0, -F),
			BackgroundColor3 = A.Particle,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 5,
			Parent = Y,
		});
	a(v, math.floor(F / 2));
	local S = L:Create(v, TweenInfo.new(H, Enum.EasingStyle.Linear), { Position = UDim2.new(0, w + math.random(-40, 40), 0, j.Y + 20), BackgroundTransparency = .85 + math.random() * .1 });
	S:Play();
	S.Completed:Connect(function()
		v:Destroy();
	end);
end;
local function LJ(Y)
	task.spawn(function()
		while Y and Y.Parent do
			for L = 1, m.ParticlesPerTick, 1 do
				YJ(Y);
			end;
			task.wait(m.ParticleSpawnRate);
		end;
	end);
end;
local function jJ(Y, L, F)
	local w = q("Frame", {
			Name = Y .. "_ShadowHolder",
			Size = L,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ZIndex = 1,
			Parent = F,
		});
	for Y = 1, 6, 1 do
		local L = q("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				BackgroundTransparency = .88 + (Y * .008),
				BorderSizePixel = 0,
				ZIndex = 1,
				Parent = w,
			});
		a(L, 20 + Y * 5);
	end;
	local H = q("Frame", {
			Name = Y,
			Size = L,
			Position = UDim2.new(.5, 0, .5, 0),
			AnchorPoint = Vector2.new(.5, .5),
			BackgroundColor3 = A.BgTop,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Active = true,
			Draggable = true,
			ZIndex = 2,
			Parent = F,
		});
	a(H, 20);
	s(H, A.Border, 1, .4);
	u(H, A.BgTop, A.BgBottom, 90);
	j.Heartbeat:Connect(function()
		if w.Parent and H.Parent then
			w.Position = H.Position + UDim2.new(0, 0, 0, 12);
			w.Size = H.Size;
			w.Visible = H.Visible;
		end;
	end);
	local v = q("Frame", {
			Name = "ParticleZone",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			ZIndex = 5,
			Parent = H,
		});
	a(v, 20);
	LJ(v);
	return H;
end;
local function FJ(Y, L)
	D(Y, .35, L);
end;
local function wJ()
	if not ((E.Shell and E.Shell.Parent)) then
		return;
	end;
	D(E.Shell, .35, function()
		E.Shell = nil;
		E.Sidebar = nil;
		E.Content = nil;
		E.Scroll = nil;
		E.NavItems = {};
		E.CurrentPage = nil;
		E.MenuOpen = false;
	end);
end;
task.spawn(function()
	while true do
		task.wait(y.AutoShootDelay);
		if not y.AutoShootEnabled then
			continue;
		end;
		local Y = DK(H);
		if Y ~= "Sheriff" then
			continue;
		end;
		local L = H.Character;
		if not L then
			continue;
		end;
		local j = L:FindFirstChild("Gun");
		if not j then
			local Y = H:FindFirstChild("Backpack");
			if Y then
				local j = Y:FindFirstChild("Gun");
				if j then
					pcall(function()
						L.Humanoid:EquipTool(j);
					end);
				end;
			end;
			continue;
		end;
		local F = RK();
		if not F then
			continue;
		end;
		local w = F.Character;
		if not w then
			continue;
		end;
		local v = w:FindFirstChild("HumanoidRootPart");
		local S = w:FindFirstChild("Head");
		if not v then
			continue;
		end;
		local O = L:FindFirstChild("HumanoidRootPart");
		if not O then
			continue;
		end;
		local b = ((v.Position - O.Position)).Magnitude;
		if b > y.AutoShootRange then
			continue;
		end;
		local Z = workspace.CurrentCamera;
		if Z then
			pcall(function()
				Z.CFrame = CFrame.new(Z.CFrame.Position, S and S.Position or v.Position);
			end);
		end;
		pcall(function()
			j:Activate();
		end);
	end;
end);
local HJ, vJ, SJ;
local OJ, bJ, ZJ, AJ, kJ, rJ;
local QJ, WJ, tJ, dJ, mJ;
local EJ, yJ, PJ, gJ, iJ, KJ, VJ;
vJ = function()
		local F = H:FindFirstChild("PlayerGui");
		if F then
			local Y = F:FindFirstChild("MulbaHeadGui");
			if Y then
				Y:Destroy();
			end;
		end;
		local w = H.Character;
		if not w or not w:FindFirstChild("Head") then
			task.delay(1, function()
				if vJ then
					vJ();
				end;
			end);
			return;
		end;
		local v = w:FindFirstChild("Head");
		if not v then
			return;
		end;
		local S = q("ScreenGui", {
				Name = "MulbaHeadGui",
				ResetOnSpawn = false,
				IgnoreGuiInset = true,
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				DisplayOrder = 997,
				Parent = F,
			});
		local O, b = 200, 50;
		local A = q("TextButton", {
				Size = UDim2.new(0, O, 0, b),
				Position = UDim2.new(0, 0, 0, 0),
				AnchorPoint = Vector2.new(.5, 1),
				BackgroundColor3 = Color3.fromRGB(12, 16, 28),
				BackgroundTransparency = .05,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				Active = true,
				ZIndex = 1,
				Parent = S,
			});
		a(A, 25);
		u(A, Color3.fromRGB(16, 22, 38), Color3.fromRGB(8, 10, 18), 90);
		q("UIStroke", {
			Color = Color3.fromRGB(90, 150, 255),
			Thickness = 1.5,
			Transparency = .15,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Parent = A,
		});
		local k = q("Frame", {
				Size = UDim2.new(0, 36, 0, 36),
				Position = UDim2.new(0, 8, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = A,
			});
		a(k, 18);
		local r = q("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 7,
				Parent = k,
			});
		a(r, 16);
		local Q = q("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 8,
				Parent = r,
			});
		a(Q, 16);
		task.spawn(function()
			local L, j = pcall(function()
					return Y:GetUserThumbnailAsync(H.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if L and j then
				Q.Image = j;
			end;
		end);
		local W = q("TextLabel", {
				Size = UDim2.new(1, -90, 0, 16),
				Position = UDim2.new(0, 52, 0, 8),
				BackgroundTransparency = 1,
				Text = "Mulba Menu",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = A,
			});
		local t = q("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 180, 255)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(170, 120, 255)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 120, 200)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(255, 180, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 255, 180)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 180, 255)),
				}), Rotation = 0, Parent = W });
		task.spawn(function()
			while t.Parent do
				t.Rotation = ((t.Rotation + 3)) % 360;
				task.wait(.03);
			end;
		end);
		q("TextLabel", {
			Size = UDim2.new(1, -90, 0, 12),
			Position = UDim2.new(0, 52, 0, 23),
			BackgroundTransparency = 1,
			Text = H.DisplayName .. " / lifetime",
			TextColor3 = Color3.fromRGB(220, 225, 235),
			Font = Enum.Font.GothamMedium,
			TextSize = 9,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 9,
			Parent = A,
		});
		local d = q("TextLabel", {
				Size = UDim2.new(1, -90, 0, 14),
				Position = UDim2.new(0, 52, 0, 35),
				BackgroundTransparency = 1,
				Text = "Cr\195\169ateur",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBold,
				TextSize = 10,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 9,
				Parent = A,
			});
		local m = q("UIGradient", { Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 80, 80)),
					ColorSequenceKeypoint.new(.2, Color3.fromRGB(255, 180, 80)),
					ColorSequenceKeypoint.new(.4, Color3.fromRGB(255, 255, 80)),
					ColorSequenceKeypoint.new(.6, Color3.fromRGB(120, 255, 120)),
					ColorSequenceKeypoint.new(.8, Color3.fromRGB(120, 200, 255)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 80, 80)),
				}), Rotation = 0, Parent = d });
		task.spawn(function()
			while m.Parent do
				m.Rotation = ((m.Rotation + 4)) % 360;
				task.wait(.03);
			end;
		end);
		local y = q("Frame", {
				Size = UDim2.new(0, 30, 0, 30),
				Position = UDim2.new(1, -38, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 6,
				Parent = A,
			});
		a(y, 15);
		local P = q("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Text = "M",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.GothamBlack,
				TextSize = 15,
				ZIndex = 8,
				Parent = y,
			});
		q("UIGradient", { Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 230, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(90, 150, 255)) }), Rotation = 90, Parent = P });
		A.BackgroundTransparency = 1;
		A.Size = UDim2.new(0, O * .7, 0, b * .7);
		for Y, j in ipairs(A:GetDescendants()) do
			if j:IsA("TextLabel") then
				j.TextTransparency = 1;
				(L:Create(j, TweenInfo.new(.5), { TextTransparency = 0 })):Play();
			end;
			if j:IsA("ImageLabel") then
				j.ImageTransparency = 1;
				(L:Create(j, TweenInfo.new(.5), { ImageTransparency = 0 })):Play();
			end;
		end;
		(L:Create(A, TweenInfo.new(.55, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, O, 0, b), BackgroundTransparency = .05 })):Play();
		j.RenderStepped:Connect(function()
			if not S.Parent then
				return;
			end;
			if not ((A and A.Parent)) then
				return;
			end;
			local Y = H.Character;
			if not Y then
				A.Visible = false;
				return;
			end;
			local L = Y:FindFirstChild("Head");
			if not L then
				A.Visible = false;
				return;
			end;
			local j = workspace.CurrentCamera;
			if not j then
				return;
			end;
			local F = L.Position + Vector3.new(0, Z, 0);
			local w, v = j:WorldToViewportPoint(F);
			if not v then
				A.Visible = false;
				return;
			end;
			A.Visible = true;
			A.Position = UDim2.new(0, w.X, 0, w.Y);
		end);
		A.MouseButton1Click:Connect(function()
			if not E.Authenticated then
				return;
			end;
			if E.Shell and E.Shell.Parent then
				return;
			end;
			if HJ then
				HJ();
			end;
		end);
		E.BillboardRef = S;
	end;
OJ = function(Y)
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 42),
			BackgroundTransparency = 1,
			Text = "Bienvenue sur Mulba",
			TextColor3 = A.TextPrimary,
			Font = Enum.Font.GothamBlack,
			TextSize = 30,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 46),
			BackgroundTransparency = 1,
			Text = "Menu premium \226\128\162 Murder Mystery 2",
			TextColor3 = A.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		local L = q("Frame", {
				Size = UDim2.new(0, 140, 0, 58),
				Position = UDim2.new(1, -140, 0, 0),
				BackgroundColor3 = A.Surface,
				BackgroundTransparency = .35,
				BorderSizePixel = 0,
				ZIndex = 26,
				Parent = Y,
			});
		a(L, 10);
		s(L, A.Border, 1, .5);
		local F = q("TextLabel", {
				Size = UDim2.new(1, -16, 0, 20),
				Position = UDim2.new(0, 8, 0, 8),
				BackgroundTransparency = 1,
				Text = "FPS: 0",
				TextColor3 = A.Success,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = L,
			});
		local w = q("TextLabel", {
				Size = UDim2.new(1, -16, 0, 20),
				Position = UDim2.new(0, 8, 0, 30),
				BackgroundTransparency = 1,
				Text = "MS: 0",
				TextColor3 = A.Accent,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = L,
			});
		task.spawn(function()
			local Y = 0;
			local v = tick();
			j.RenderStepped:Connect(function()
				Y = Y + 1;
			end);
			while L.Parent do
				local L = tick();
				local j = L - v;
				if j >= .5 then
					local S = math.floor(Y / j);
					Y = 0;
					v = L;
					local O, b = pcall(function()
							return math.floor(H:GetNetworkPing() * 1000);
						end);
					local Z = O and b or 0;
					pcall(function()
						F.Text = "FPS: " .. S;
						F.TextColor3 = S >= 50 and A.Success or (S >= 30 and Color3.fromRGB(240, 200, 120) or A.Error);
						w.Text = "MS: " .. Z;
						w.TextColor3 = Z <= 80 and A.Success or (Z <= 150 and Color3.fromRGB(240, 200, 120) or A.Error);
					end);
				end;
				task.wait(.1);
			end;
		end);
		q("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundColor3 = A.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = Y,
		});
		local v = 100;
		local function S(L, j)
			q("TextLabel", {
				Size = UDim2.new(1, 0, 0, 20),
				Position = UDim2.new(0, 0, 0, v),
				BackgroundTransparency = 1,
				Text = L,
				TextColor3 = A.Accent,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 25,
				Parent = Y,
			});
			v = v + 26;
			q("TextLabel", {
				Size = UDim2.new(1, -8, 0, 0),
				Position = UDim2.new(0, 0, 0, v),
				BackgroundTransparency = 1,
				Text = j,
				TextColor3 = A.TextSecondary,
				Font = Enum.Font.Gotham,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextWrapped = true,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = Y,
			});
			v = (v + #j * 5) + 30;
		end;
		S("\226\150\186 ESP", "Box multicolore, tracer multicolore, r\195\180les, x-ray.");
		S("\226\150\186 PLAYER", "Ciblage, TP, spectate, s\'accrocher assis, Fly + zen, etc.");
		S("\226\150\186 MURDER", "TP ALL IN FRONT (empil\195\169s devant), TP tueur.");
		S("\226\150\186 SHERIFF", "Auto Shoot, TP sh\195\169rif.");
		S("\226\150\186 T\195\137L\195\137PORT\195\137", "TP spawn, SET MAP, MAP.");
		S("\226\150\186 AUTO FARM", "R\195\169cup\195\168re les pi\195\168ces automatiquement.");
		S("\226\150\186 TROLL", "Cible, TP, spectate.");
		S("\226\150\186 ANIMATION", "Sit.");
		q("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 0, v),
			BackgroundColor3 = A.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 25,
			Parent = Y,
		});
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 24),
			Position = UDim2.new(0, 0, 0, v + 10),
			BackgroundTransparency = 1,
			Text = "\240\159\146\161 Appuie sur M pour ouvrir ou fermer le menu",
			TextColor3 = A.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
	end;
bJ = function(Y)
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Param\195\168tres",
			TextColor3 = A.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 22,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 16),
			Position = UDim2.new(0, 0, 0, 50),
			BackgroundTransparency = 1,
			Text = "COULEUR D\'ACCENT",
			TextColor3 = A.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		local j = q("Frame", {
				Size = UDim2.new(1, 0, 0, 140),
				Position = UDim2.new(0, 0, 0, 72),
				BackgroundTransparency = 1,
				ZIndex = 25,
				Parent = Y,
			});
		q("UIGridLayout", {
			CellSize = UDim2.new(0, 58, 0, 58),
			CellPadding = UDim2.new(0, 14, 0, 14),
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Parent = j,
		});
		local F = {};
		for Y, w in ipairs(k) do
			local H = q("TextButton", {
					BackgroundColor3 = w.Accent,
					BorderSizePixel = 0,
					Text = "",
					AutoButtonColor = false,
					LayoutOrder = Y,
					ZIndex = 26,
					Parent = j,
				});
			a(H, 29);
			local v = q("UIStroke", {
					Color = A.TextPrimary,
					Thickness = 2,
					Transparency = (w.name == E.CurrentPreset) and 0 or 1,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Parent = H,
				});
			F[w.name] = v;
			H.MouseButton1Click:Connect(function()
				if E.CurrentPreset == w.name then
					return;
				end;
				E.CurrentPreset = w.name;
				d(w);
				for Y, j in pairs(F) do
					(L:Create(j, TweenInfo.new(.2), { Transparency = (Y == w.name) and 0 or 1 })):Play();
				end;
			end);
		end;
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 16),
			Position = UDim2.new(0, 0, 0, 240),
			BackgroundTransparency = 1,
			Text = "NOTIFICATIONS",
			TextColor3 = A.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		local w = q("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 262),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = Y,
			});
		q("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = w });
		VJ(w, 1, "NOTIFICATION", "Kill feed en bas \195\160 droite (Murder/Sheriff/Gun au sol)", function()
			return y.NotifKillFeed;
		end, function(Y)
			y.NotifKillFeed = Y;
		end, Color3.fromRGB(255, 140, 80));
		VJ(w, 2, "NOTIF MESSAGE CHAT", "Affiche Murder/Sheriff dans ton chat (local)", function()
			return y.NotifChatMsg;
		end, function(Y)
			y.NotifChatMsg = Y;
		end, Color3.fromRGB(115, 155, 240));
		PJ(w, 3, "SPAM CHAT", "Renvoie Murder/Sheriff dans le chat", Color3.fromRGB(240, 165, 95), function()
			x();
			task.wait(.05);
			x();
			task.wait(.05);
			x();
		end);
	end;
iJ = function(Y, L, j)
		local F = q("Frame", {
				Size = UDim2.new(1, 0, 0, 26),
				BackgroundTransparency = 1,
				LayoutOrder = L,
				ZIndex = 19,
				Parent = Y,
			});
		q("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 4, 0, 0),
			BackgroundTransparency = 1,
			Text = string.upper(j),
			TextColor3 = A.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 19,
			Parent = F,
		});
		q("Frame", {
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0, 0, 1, -1),
			BackgroundColor3 = A.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 19,
			Parent = F,
		});
	end;
EJ = function(Y, j, F, w, H, v, S)
		local O = q("Frame", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = A.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = j,
				ZIndex = 26,
				Parent = Y,
			});
		a(O, 12);
		s(O, A.Border, 1, .5);
		local b = q("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = S,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = O,
			});
		a(b, 2);
		q("TextLabel", {
			Size = UDim2.new(1, -100, 0, 18),
			Position = UDim2.new(0, 26, 0, 10),
			BackgroundTransparency = 1,
			Text = F,
			TextColor3 = A.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = O,
		});
		q("TextLabel", {
			Size = UDim2.new(1, -100, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = w,
			TextColor3 = A.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = O,
		});
		local Z = q("TextButton", {
				Size = UDim2.new(0, 46, 0, 24),
				Position = UDim2.new(1, -58, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = H() and S or A.SurfaceHi,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 28,
				Parent = O,
			});
		a(Z, 12);
		local k = q("Frame", {
				Size = UDim2.new(0, 18, 0, 18),
				Position = H() and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = Z,
			});
		a(k, 9);
		Z.MouseButton1Click:Connect(function()
			v();
			local Y = H();
			(L:Create(Z, TweenInfo.new(.2), { BackgroundColor3 = Y and S or A.SurfaceHi })):Play();
			(L:Create(k, TweenInfo.new(.2, Enum.EasingStyle.Quad), { Position = Y and UDim2.new(1, -21, .5, 0) or UDim2.new(0, 3, .5, 0) })):Play();
		end);
		return O;
	end;
yJ = function(Y, L, j, w, H, v, S, O)
		local b = q("Frame", {
				Size = UDim2.new(1, 0, 0, 52),
				BackgroundColor3 = A.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				LayoutOrder = L,
				ZIndex = 26,
				Parent = Y,
			});
		a(b, 12);
		s(b, A.Border, 1, .5);
		q("TextLabel", {
			Size = UDim2.new(0, 130, 0, 14),
			Position = UDim2.new(0, 26, 0, 8),
			BackgroundTransparency = 1,
			Text = j,
			TextColor3 = A.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = b,
		});
		local Z = q("TextLabel", {
				Size = UDim2.new(0, 60, 0, 14),
				Position = UDim2.new(1, -70, 0, 8),
				BackgroundTransparency = 1,
				Text = tostring(v()),
				TextColor3 = A.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Right,
				ZIndex = 27,
				Parent = b,
			});
		local k = q("Frame", {
				Size = UDim2.new(1, -52, 0, 8),
				Position = UDim2.new(0, 26, 0, 32),
				BackgroundColor3 = A.SurfaceHi,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = b,
			});
		a(k, 4);
		local r = ((v() - w)) / ((H - w));
		local Q = q("Frame", {
				Size = UDim2.new(r, 0, 1, 0),
				BackgroundColor3 = O,
				BorderSizePixel = 0,
				ZIndex = 28,
				Parent = k,
			});
		a(Q, 4);
		local W = q("Frame", {
				Size = UDim2.new(0, 14, 0, 14),
				Position = UDim2.new(r, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0,
				ZIndex = 29,
				Parent = k,
			});
		a(W, 7);
		s(W, Color3.fromRGB(0, 0, 0), 2, .3);
		local t = q("TextButton", {
				Size = UDim2.new(1, -52, 0, 22),
				Position = UDim2.new(0, 26, 0, 20),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = b,
			});
		local d = false;
		local function m(Y)
			local L = k.AbsolutePosition.X;
			local j = k.AbsoluteSize.X;
			if j <= 0 then
				return;
			end;
			local F = math.clamp(((Y - L)) / j, 0, 1);
			local v = w + F * ((H - w));
			v = math.floor(v * 10 + .5) / 10;
			S(v);
			W.Position = UDim2.new(F, 0, .5, 0);
			Q.Size = UDim2.new(F, 0, 1, 0);
			Z.Text = tostring(v);
		end;
		t.InputBegan:Connect(function(Y)
			if Y.UserInputType == Enum.UserInputType.MouseButton1 or Y.UserInputType == Enum.UserInputType.Touch then
				d = true;
				m(Y.Position.X);
			end;
		end);
		t.InputChanged:Connect(function(Y)
			if not d then
				return;
			end;
			if Y.UserInputType == Enum.UserInputType.MouseMovement or Y.UserInputType == Enum.UserInputType.Touch then
				m(Y.Position.X);
			end;
		end);
		F.InputEnded:Connect(function(Y)
			if Y.UserInputType == Enum.UserInputType.MouseButton1 or Y.UserInputType == Enum.UserInputType.Touch then
				d = false;
			end;
		end);
	end;
PJ = function(Y, j, F, w, H, v)
		local S = q("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = A.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = j,
				ZIndex = 26,
				Parent = Y,
			});
		a(S, 12);
		s(S, A.Border, 1, .5);
		local O = q("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = H,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = S,
			});
		a(O, 2);
		local b = q("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = F,
				TextColor3 = A.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = S,
			});
		q("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = w,
			TextColor3 = A.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = S,
		});
		local Z, k, r = e(S, "right", A.TextMuted, 7);
		Z.Position = UDim2.new(1, -26, .5, 0);
		Z.AnchorPoint = Vector2.new(.5, .5);
		S.MouseEnter:Connect(function()
			(L:Create(S, TweenInfo.new(.18), { BackgroundColor3 = A.SurfaceHi, BackgroundTransparency = .1 })):Play();
			(L:Create(b, TweenInfo.new(.18), { TextColor3 = H })):Play();
			(L:Create(k, TweenInfo.new(.18), { BackgroundColor3 = H })):Play();
			(L:Create(r, TweenInfo.new(.18), { BackgroundColor3 = H })):Play();
		end);
		S.MouseLeave:Connect(function()
			(L:Create(S, TweenInfo.new(.18), { BackgroundColor3 = A.Surface, BackgroundTransparency = .25 })):Play();
			(L:Create(b, TweenInfo.new(.18), { TextColor3 = A.TextPrimary })):Play();
			(L:Create(k, TweenInfo.new(.18), { BackgroundColor3 = A.TextMuted })):Play();
			(L:Create(r, TweenInfo.new(.18), { BackgroundColor3 = A.TextMuted })):Play();
		end);
		S.MouseButton1Click:Connect(v);
		return S;
	end;
VJ = function(Y, j, F, w, H, v, S)
		local O = q("TextButton", {
				Size = UDim2.new(1, 0, 0, 58),
				BackgroundColor3 = A.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = j,
				ZIndex = 26,
				Parent = Y,
			});
		a(O, 12);
		s(O, A.Border, 1, .5);
		local b = q("Frame", {
				Size = UDim2.new(0, 3, 0, 32),
				Position = UDim2.new(0, 14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = H() and S or A.TextMuted,
				BorderSizePixel = 0,
				ZIndex = 27,
				Parent = O,
			});
		a(b, 2);
		local Z = q("TextLabel", {
				Size = UDim2.new(1, -60, 0, 18),
				Position = UDim2.new(0, 26, 0, 10),
				BackgroundTransparency = 1,
				Text = F,
				TextColor3 = A.TextPrimary,
				Font = Enum.Font.GothamBold,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 27,
				Parent = O,
			});
		q("TextLabel", {
			Size = UDim2.new(1, -60, 0, 14),
			Position = UDim2.new(0, 26, 0, 32),
			BackgroundTransparency = 1,
			Text = w,
			TextColor3 = A.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 27,
			Parent = O,
		});
		local k, r, Q = e(O, "right", H() and S or A.TextMuted, 7);
		k.Position = UDim2.new(1, -26, .5, 0);
		k.AnchorPoint = Vector2.new(.5, .5);
		local function W()
			local Y = H();
			b.BackgroundColor3 = Y and S or A.TextMuted;
			r.BackgroundColor3 = Y and S or A.TextMuted;
			Q.BackgroundColor3 = Y and S or A.TextMuted;
			Z.TextColor3 = Y and S or A.TextPrimary;
		end;
		O.MouseEnter:Connect(function()
			(L:Create(O, TweenInfo.new(.18), { BackgroundColor3 = A.SurfaceHi, BackgroundTransparency = .1 })):Play();
		end);
		O.MouseLeave:Connect(function()
			(L:Create(O, TweenInfo.new(.18), { BackgroundColor3 = A.Surface, BackgroundTransparency = .25 })):Play();
		end);
		O.MouseButton1Click:Connect(function()
			v(not H());
			W();
		end);
		return O;
	end;
local function nJ(j)
	q("TextLabel", {
		Size = UDim2.new(1, 0, 0, 14),
		Position = UDim2.new(0, 0, 0, 76),
		BackgroundTransparency = 1,
		Text = "JOUEUR CIBL\195\137",
		TextColor3 = A.TextMuted,
		Font = Enum.Font.GothamBold,
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 25,
		Parent = j,
	});
	local F = q("TextButton", {
			Size = UDim2.new(1, 0, 0, 44),
			Position = UDim2.new(0, 0, 0, 96),
			BackgroundColor3 = A.Surface,
			BackgroundTransparency = .25,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			ZIndex = 30,
			Parent = j,
		});
	a(F, 10);
	s(F, A.Border, 1, .4);
	local w = q("TextLabel", {
			Size = UDim2.new(1, -70, 1, 0),
			Position = UDim2.new(0, 16, 0, 0),
			BackgroundTransparency = 1,
			Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148",
			TextColor3 = A.TextMuted,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 31,
			Parent = F,
		});
	local v, S, O = e(F, "right", A.TextMuted, 8);
	v.Position = UDim2.new(1, -24, .5, 0);
	v.AnchorPoint = Vector2.new(.5, .5);
	local b = q("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			Position = UDim2.new(0, 0, 0, 148),
			BackgroundColor3 = A.Surface,
			BackgroundTransparency = .05,
			BorderSizePixel = 0,
			Visible = false,
			AutomaticSize = Enum.AutomaticSize.Y,
			ZIndex = 40,
			Parent = j,
		});
	a(b, 12);
	s(b, A.Border, 1, .3);
	local Z = q("Frame", {
			Size = UDim2.new(1, -12, 0, 6),
			Position = UDim2.new(0, 6, 0, 6),
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.Y,
			ZIndex = 41,
			Parent = b,
		});
	q("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = Z });
	local function k()
		for Y, L in ipairs(Z:GetChildren()) do
			if L:IsA("TextButton") or (L:IsA("TextLabel") and L.Name == "EmptyLbl") then
				L:Destroy();
			end;
		end;
		local j = 0;
		for Y, F in ipairs(Y:GetPlayers()) do
			if F == H then
				continue;
			end;
			j = j + 1;
			local v = q("TextButton", {
					Size = UDim2.new(1, 0, 0, 34),
					BackgroundColor3 = A.SurfaceHi,
					BackgroundTransparency = .6,
					BorderSizePixel = 0,
					Text = "",
					AutoButtonColor = false,
					LayoutOrder = j,
					ZIndex = 42,
					Parent = Z,
				});
			a(v, 8);
			local k = DK(F);
			local r = XK(k);
			q("TextLabel", {
				Size = UDim2.new(1, -50, 1, 0),
				Position = UDim2.new(0, 12, 0, 0),
				BackgroundTransparency = 1,
				Text = F.Name .. ("  (" .. (k .. ")")),
				TextColor3 = A.TextPrimary,
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 43,
				Parent = v,
			});
			q("Frame", {
				Size = UDim2.new(0, 4, 0, 18),
				Position = UDim2.new(1, -14, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = r,
				BorderSizePixel = 0,
				ZIndex = 43,
				Parent = v,
			});
			v.MouseEnter:Connect(function()
				(L:Create(v, TweenInfo.new(.15), { BackgroundTransparency = .25 })):Play();
			end);
			v.MouseLeave:Connect(function()
				(L:Create(v, TweenInfo.new(.15), { BackgroundTransparency = .6 })):Play();
			end);
			v.MouseButton1Click:Connect(function()
				E.TrollSelected = F;
				w.Text = F.Name;
				w.TextColor3 = A.Accent;
				b.Visible = false;
				(L:Create(S, TweenInfo.new(.15), { Rotation = 45 })):Play();
				(L:Create(O, TweenInfo.new(.15), { Rotation = -45 })):Play();
			end);
		end;
		if j == 0 then
			q("TextLabel", {
				Name = "EmptyLbl",
				Size = UDim2.new(1, 0, 0, 34),
				BackgroundTransparency = 1,
				Text = "Aucun autre joueur",
				TextColor3 = A.TextMuted,
				Font = Enum.Font.Gotham,
				TextSize = 12,
				ZIndex = 42,
				Parent = Z,
			});
		end;
	end;
	local r = false;
	F.MouseButton1Click:Connect(function()
		r = not r;
		if r then
			k();
		end;
		b.Visible = r;
		(L:Create(S, TweenInfo.new(.15), { Rotation = r and -45 or 45 })):Play();
		(L:Create(O, TweenInfo.new(.15), { Rotation = r and 45 or -45 })):Play();
	end);
	Y.PlayerAdded:Connect(function()
		if r then
			k();
		end;
	end);
	Y.PlayerRemoving:Connect(function(Y)
		if E.TrollSelected == Y then
			E.TrollSelected = nil;
			w.Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148";
			w.TextColor3 = A.TextMuted;
		end;
		if r then
			k();
		end;
	end);
end;
gJ = function()
		return;
	end;
QJ = function(Y)
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Player",
			TextColor3 = A.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Ciblage, mouvement & statistiques",
			TextColor3 = A.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		nJ(Y);
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 164),
			BackgroundTransparency = 1,
			Text = "ACTIONS CIBL\195\137ES",
			TextColor3 = A.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		local L = q("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 186),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = Y,
			});
		q("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = L });
		PJ(L, 1, "TP \195\128 LA CIBLE", "Te t\195\169l\195\169porte sur le joueur s\195\169lectionn\195\169", Color3.fromRGB(255, 80, 80), function()
			local Y = E.TrollSelected;
			if not Y or not Y.Character then
				o("Player", "Aucune cible valide", true);
				return;
			end;
			local L = Y.Character:FindFirstChild("HumanoidRootPart");
			local j = H.Character;
			local F = j and j:FindFirstChild("HumanoidRootPart");
			if L and F then
				pcall(function()
					F.CFrame = L.CFrame + Vector3.new(0, 3, 3);
				end);
				o("Player", "TP \226\134\146 " .. Y.Name, false);
			end;
		end);
		PJ(L, 2, "SPECTATE CIBLE", "Ta cam\195\169ra suit le joueur s\195\169lectionn\195\169", Color3.fromRGB(170, 130, 235), function()
			local Y = E.TrollSelected;
			local L = workspace.CurrentCamera;
			if not Y or not Y.Character then
				o("Player", "Aucune cible valide", true);
				return;
			end;
			L.CameraSubject = Y.Character:FindFirstChildOfClass("Humanoid") or Y.Character;
			o("Player", "Cam\195\169ra \226\134\146 " .. Y.Name, false);
		end);
		VJ(L, 3, "S\'ACCROCHER \195\128 ELLE", "Assis sur les \195\169paules (visible par tous)", function()
			return uK.conn ~= nil;
		end, function(Y)
			lK();
		end, Color3.fromRGB(130, 205, 155));
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 430),
			BackgroundTransparency = 1,
			Text = "MOUVEMENT",
			TextColor3 = A.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		local j = q("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 452),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = Y,
			});
		q("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = j });
		local F = 0;
		local function w()
			F = F + 1;
			return F;
		end;
		VJ(j, w(), "FLY", "Vol (W/A/S/D) + emote zen", function()
			return i.FlyEnabled;
		end, function(Y)
			if Y ~= i.FlyEnabled then
				jK();
			end;
		end, Color3.fromRGB(115, 155, 240));
		VJ(j, w(), "SPIN", "Tourne sur toi-m\195\170me", function()
			return i.SpinEnabled;
		end, function(Y)
			SK();
		end, Color3.fromRGB(170, 130, 235));
		yJ(j, w(), "VITESSE SPIN", 2, 50, function()
			return i.SpinSpeed;
		end, function(Y)
			OK(Y);
		end, Color3.fromRGB(170, 130, 235));
		VJ(j, w(), "JERK", "Secousse rapide", function()
			return i.JerkEnabled;
		end, function(Y)
			AK();
		end, Color3.fromRGB(240, 165, 95));
		yJ(j, w(), "INTENSIT\195\137 JERK", .5, 10, function()
			return i.JerkIntensity;
		end, function(Y)
			kK(Y);
		end, Color3.fromRGB(240, 165, 95));
		VJ(j, w(), "NOCLIP", "Traverse les murs", function()
			return i.NoclipEnabled;
		end, function(Y)
			QK();
		end, Color3.fromRGB(130, 205, 155));
		VJ(j, w(), "INFINITE JUMP", "Saut infini", function()
			return i.InfiniteJump;
		end, function(Y)
			EK();
		end, Color3.fromRGB(240, 165, 95));
		VJ(j, w(), "ANTI-AFK", "\195\137vite le kick inactivit\195\169", function()
			return i.AntiAFK;
		end, function(Y)
			PK();
		end, Color3.fromRGB(140, 200, 155));
		VJ(j, w(), "FULLBRIGHT", "\195\137claire toute la map", function()
			return i.Fullbright;
		end, function(Y)
			iK();
		end, Color3.fromRGB(255, 215, 120));
		VJ(j, w(), "ANTI-FLING", "Bloque les tentatives de fling", function()
			return i.AntiFling;
		end, function(Y)
			KK();
		end, Color3.fromRGB(220, 115, 115));
		iJ(j, w(), "Stats");
		yJ(j, w(), "WALKSPEED", 16, 200, function()
			return i.WalkSpeed;
		end, function(Y)
			WK(Y);
		end, Color3.fromRGB(115, 155, 240));
		yJ(j, w(), "JUMPPOWER", 50, 500, function()
			return i.JumpPower;
		end, function(Y)
			tK(Y);
		end, Color3.fromRGB(130, 205, 155));
		yJ(j, w(), "GRAVITY", 0, 196, function()
			return i.Gravity;
		end, function(Y)
			dK(Y);
		end, Color3.fromRGB(170, 130, 235));
		PJ(j, w(), "RESET CHARACTER", "Respawn imm\195\169diat", Color3.fromRGB(255, 80, 80), function()
			VK();
			o("Player", "Reset en cours...", false);
		end);
	end;
mJ = function(Y)
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169port\195\169",
			TextColor3 = A.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "T\195\169l\195\169portation rapide",
			TextColor3 = A.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		local L = q("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = Y,
			});
		q("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = L });
		PJ(L, 1, "TP SPAWN", "Te t\195\169l\195\169porte au spawn", Color3.fromRGB(115, 155, 240), function()
			nK();
		end);
		PJ(L, 2, "SET MAP", "Sauvegarde ta position actuelle", Color3.fromRGB(140, 200, 155), function()
			fK();
		end);
		PJ(L, 3, "MAP", "TP \195\160 la position sauvegard\195\169e", Color3.fromRGB(240, 165, 95), function()
			CK();
		end);
	end;
dJ = function(Y)
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Animation",
			TextColor3 = A.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Animations visibles par tous",
			TextColor3 = A.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		local L = q("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = Y,
			});
		q("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = L });
		EJ(L, 1, "SIT", "Assieds ton personnage", function()
			return i.Sitting;
		end, function()
			rK();
		end, Color3.fromRGB(140, 200, 155));
	end;
tJ = function(Y)
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Auto Farm",
			TextColor3 = A.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "R\195\169cup\195\168re les pi\195\168ces automatiquement",
			TextColor3 = A.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		local L = q("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = Y,
			});
		q("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = L });
		VJ(L, 1, "AUTO FARM COINS", "TP auto sur les pi\195\168ces (mode sous-sol)", function()
			return c.running;
		end, function(Y)
			pK();
		end, Color3.fromRGB(240, 200, 120));
	end;
WJ = function(Y)
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Combat",
			TextColor3 = A.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Section \195\160 venir",
			TextColor3 = A.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
	end;
ZJ = function(Y)
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "ESP",
			TextColor3 = A.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Affichage des r\195\180les MM2",
			TextColor3 = A.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 80),
			BackgroundTransparency = 1,
			Text = "R\195\148LES",
			TextColor3 = A.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		local L = q("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 102),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = Y,
			});
		q("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = L });
		VJ(L, 1, "ESP Murderer", "Voir le tueur", function()
			return y.EspShowMurder;
		end, function(Y)
			y.EspShowMurder = Y;
		end, P.Murderer);
		VJ(L, 2, "ESP Sheriff", "Voir le sh\195\169rif", function()
			return y.EspShowSheriff;
		end, function(Y)
			y.EspShowSheriff = Y;
		end, P.Sheriff);
		VJ(L, 3, "ESP Innocent", "Voir les innocents", function()
			return y.EspShowInnocent;
		end, function(Y)
			y.EspShowInnocent = Y;
		end, P.Innocent);
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 290),
			BackgroundTransparency = 1,
			Text = "OPTIONS",
			TextColor3 = A.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		local j = q("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 312),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = Y,
			});
		q("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder, Parent = j });
		VJ(j, 1, "X-RAY", "Voir \195\160 travers les murs", function()
			return y.XRayEnabled;
		end, function(Y)
			y.XRayEnabled = Y;
			hK();
		end, Color3.fromRGB(255, 215, 120));
		VJ(j, 2, "Box", "Cadre multicolore autour du joueur", function()
			return g.BoxEnabled;
		end, function(Y)
			g.BoxEnabled = Y;
		end, P.Box);
		VJ(j, 3, "TRACER", "Ligne multicolore vers le joueur", function()
			return g.TracerEnabled;
		end, function(Y)
			g.TracerEnabled = Y;
		end, P.Tracer);
	end;
AJ = function(Y)
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Murder",
			TextColor3 = A.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 tueur",
			TextColor3 = A.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		local L = q("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = Y,
			});
		q("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = L });
		VJ(L, 1, "TP ALL IN FRONT", "Empile tous les joueurs devant toi", function()
			return cK.running;
		end, function(Y)
			aK();
		end, Color3.fromRGB(240, 165, 95));
		PJ(L, 2, "TP MURDERER", "Te t\195\169l\195\169porte au tueur", Color3.fromRGB(255, 80, 80), function()
			local Y = RK();
			if not Y then
				o("Erreur", "Tueur introuvable", true);
				return;
			end;
			local L = H.Character;
			local j = L and L:FindFirstChild("HumanoidRootPart");
			local F = Y.Character and Y.Character:FindFirstChild("HumanoidRootPart");
			if j and F then
				pcall(function()
					j.CFrame = F.CFrame + Vector3.new(0, 3, 3);
				end);
				o("TP", "TP vers " .. Y.Name, false);
			end;
		end);
	end;
kJ = function(Y)
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Sheriff",
			TextColor3 = A.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Actions c\195\180t\195\169 sh\195\169rif",
			TextColor3 = A.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = Y,
		});
		local L = q("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 76),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = Y,
			});
		q("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = L });
		VJ(L, 1, "AUTO SHOOT MURDERER", "Tire auto sur le tueur (si Sheriff)", function()
			return y.AutoShootEnabled;
		end, function(Y)
			y.AutoShootEnabled = Y;
		end, Color3.fromRGB(70, 130, 240));
		PJ(L, 2, "TP SHERIFF", "Te t\195\169l\195\169porte au sh\195\169rif", Color3.fromRGB(60, 120, 255), function()
			local Y = oK();
			if not Y then
				o("Erreur", "Sh\195\169rif introuvable", true);
				return;
			end;
			local L = H.Character;
			local j = L and L:FindFirstChild("HumanoidRootPart");
			local F = Y.Character and Y.Character:FindFirstChild("HumanoidRootPart");
			if j and F then
				pcall(function()
					j.CFrame = F.CFrame + Vector3.new(0, 3, 3);
				end);
				o("TP", "TP vers " .. Y.Name, false);
			end;
		end);
	end;
rJ = function(j)
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 32),
			BackgroundTransparency = 1,
			Text = "Troll",
			TextColor3 = A.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 24,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.new(0, 0, 0, 38),
			BackgroundTransparency = 1,
			Text = "Cible un joueur, puis utilise les actions",
			TextColor3 = A.TextSecondary,
			Font = Enum.Font.Gotham,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 76),
			BackgroundTransparency = 1,
			Text = "JOUEUR CIBL\195\137",
			TextColor3 = A.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		local F = q("TextButton", {
				Size = UDim2.new(1, 0, 0, 44),
				Position = UDim2.new(0, 0, 0, 96),
				BackgroundColor3 = A.Surface,
				BackgroundTransparency = .25,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 30,
				Parent = j,
			});
		a(F, 10);
		s(F, A.Border, 1, .4);
		local w = q("TextLabel", {
				Size = UDim2.new(1, -70, 1, 0),
				Position = UDim2.new(0, 16, 0, 0),
				BackgroundTransparency = 1,
				Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148",
				TextColor3 = A.TextMuted,
				Font = Enum.Font.GothamMedium,
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 31,
				Parent = F,
			});
		local v, S, O = e(F, "right", A.TextMuted, 8);
		v.Position = UDim2.new(1, -24, .5, 0);
		v.AnchorPoint = Vector2.new(.5, .5);
		local b = q("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 148),
				BackgroundColor3 = A.Surface,
				BackgroundTransparency = .05,
				BorderSizePixel = 0,
				Visible = false,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 40,
				Parent = j,
			});
		a(b, 12);
		s(b, A.Border, 1, .3);
		local Z = q("Frame", {
				Size = UDim2.new(1, -12, 0, 6),
				Position = UDim2.new(0, 6, 0, 6),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 41,
				Parent = b,
			});
		q("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = Z });
		local function k()
			for Y, L in ipairs(Z:GetChildren()) do
				if L:IsA("TextButton") or (L:IsA("TextLabel") and L.Name == "EmptyLbl") then
					L:Destroy();
				end;
			end;
			local j = 0;
			for Y, F in ipairs(Y:GetPlayers()) do
				if F == H then
					continue;
				end;
				j = j + 1;
				local v = q("TextButton", {
						Size = UDim2.new(1, 0, 0, 34),
						BackgroundColor3 = A.SurfaceHi,
						BackgroundTransparency = .6,
						BorderSizePixel = 0,
						Text = "",
						AutoButtonColor = false,
						LayoutOrder = j,
						ZIndex = 42,
						Parent = Z,
					});
				a(v, 8);
				local k = DK(F);
				local r = XK(k);
				q("TextLabel", {
					Size = UDim2.new(1, -50, 1, 0),
					Position = UDim2.new(0, 12, 0, 0),
					BackgroundTransparency = 1,
					Text = F.Name .. ("  (" .. (k .. ")")),
					TextColor3 = A.TextPrimary,
					Font = Enum.Font.GothamMedium,
					TextSize = 13,
					TextXAlignment = Enum.TextXAlignment.Left,
					ZIndex = 43,
					Parent = v,
				});
				q("Frame", {
					Size = UDim2.new(0, 4, 0, 18),
					Position = UDim2.new(1, -14, .5, 0),
					AnchorPoint = Vector2.new(0, .5),
					BackgroundColor3 = r,
					BorderSizePixel = 0,
					ZIndex = 43,
					Parent = v,
				});
				v.MouseEnter:Connect(function()
					(L:Create(v, TweenInfo.new(.15), { BackgroundTransparency = .25 })):Play();
				end);
				v.MouseLeave:Connect(function()
					(L:Create(v, TweenInfo.new(.15), { BackgroundTransparency = .6 })):Play();
				end);
				v.MouseButton1Click:Connect(function()
					E.TrollSelected = F;
					w.Text = F.Name;
					w.TextColor3 = A.Accent;
					b.Visible = false;
					(L:Create(S, TweenInfo.new(.15), { Rotation = 45 })):Play();
					(L:Create(O, TweenInfo.new(.15), { Rotation = -45 })):Play();
				end);
			end;
			if j == 0 then
				q("TextLabel", {
					Name = "EmptyLbl",
					Size = UDim2.new(1, 0, 0, 34),
					BackgroundTransparency = 1,
					Text = "Aucun autre joueur",
					TextColor3 = A.TextMuted,
					Font = Enum.Font.Gotham,
					TextSize = 12,
					ZIndex = 42,
					Parent = Z,
				});
			end;
		end;
		local r = false;
		F.MouseButton1Click:Connect(function()
			r = not r;
			if r then
				k();
			end;
			b.Visible = r;
			(L:Create(S, TweenInfo.new(.15), { Rotation = r and -45 or 45 })):Play();
			(L:Create(O, TweenInfo.new(.15), { Rotation = r and 45 or -45 })):Play();
		end);
		Y.PlayerAdded:Connect(function()
			if r then
				k();
			end;
		end);
		Y.PlayerRemoving:Connect(function(Y)
			if E.TrollSelected == Y then
				E.TrollSelected = nil;
				w.Text = "\226\128\148 Aucun joueur s\195\169lectionn\195\169 \226\128\148";
				w.TextColor3 = A.TextMuted;
			end;
			if r then
				k();
			end;
		end);
		q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 14),
			Position = UDim2.new(0, 0, 0, 164),
			BackgroundTransparency = 1,
			Text = "ACTIONS",
			TextColor3 = A.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 25,
			Parent = j,
		});
		local Q = q("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 186),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 25,
				Parent = j,
			});
		q("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder, Parent = Q });
		PJ(Q, 1, "TP \195\128 LA CIBLE", "Te t\195\169l\195\169porte sur le joueur s\195\169lectionn\195\169", Color3.fromRGB(255, 80, 80), function()
			local Y = E.TrollSelected;
			if not Y or not Y.Character then
				o("Troll", "Aucune cible valide", true);
				return;
			end;
			local L = Y.Character:FindFirstChild("HumanoidRootPart");
			local j = H.Character;
			local F = j and j:FindFirstChild("HumanoidRootPart");
			if L and F then
				pcall(function()
					F.CFrame = L.CFrame + Vector3.new(0, 3, 3);
				end);
				o("Troll", "TP \226\134\146 " .. Y.Name, false);
			end;
		end);
		PJ(Q, 2, "SPECTATE CIBLE", "Ta cam\195\169ra suit le joueur s\195\169lectionn\195\169", Color3.fromRGB(170, 130, 235), function()
			local Y = E.TrollSelected;
			local L = workspace.CurrentCamera;
			if not Y or not Y.Character then
				o("Troll", "Aucune cible valide", true);
				return;
			end;
			L.CameraSubject = Y.Character:FindFirstChildOfClass("Humanoid") or Y.Character;
			o("Troll", "Cam\195\169ra \226\134\146 " .. Y.Name, false);
		end);
	end;
SJ = function(Y)
		if E.CurrentPage == Y then
			return;
		end;
		E.CurrentPage = Y;
		for L, j in pairs(E.NavItems) do
			j.setActive(L == Y);
		end;
		local j = E.Scroll;
		if not j then
			return;
		end;
		local F = j:FindFirstChild("PageBody");
		if F then
			for Y, j in ipairs(F:GetChildren()) do
				if j:IsA("GuiObject") then
					(L:Create(j, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
					if j:IsA("TextLabel") then
						(L:Create(j, TweenInfo.new(.15), { TextTransparency = 1 })):Play();
					end;
				end;
			end;
			task.wait(.18);
			F:Destroy();
		end;
		j.CanvasPosition = Vector2.new(0, 0);
		local w = q("Frame", {
				Name = "PageBody",
				Size = UDim2.new(1, -48, 0, 0),
				Position = UDim2.new(0, 24, 0, 20),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.Y,
				ZIndex = 24,
				Parent = j,
			});
		if Y == "home" then
			OJ(w);
		elseif Y == "esp" then
			ZJ(w);
		elseif Y == "murder" then
			AJ(w);
		elseif Y == "sheriff" then
			kJ(w);
		elseif Y == "player" then
			QJ(w);
		elseif Y == "combat" then
			WJ(w);
		elseif Y == "autofarm" then
			tJ(w);
		elseif Y == "troll" then
			rJ(w);
		elseif Y == "animation" then
			dJ(w);
		elseif Y == "teleport" then
			mJ(w);
		elseif Y == "settings" then
			bJ(w);
		end;
	end;
local function fJ(Y, j, F, w)
	local H = q("TextButton", {
			Size = UDim2.new(1, 0, 0, 38),
			BackgroundColor3 = A.Surface,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Text = "",
			AutoButtonColor = false,
			LayoutOrder = w,
			ZIndex = 20,
			Parent = Y,
		});
	a(H, 8);
	local v = q("Frame", {
			Size = UDim2.new(0, 3, 0, 0),
			Position = UDim2.new(0, 0, .5, 0),
			AnchorPoint = Vector2.new(0, .5),
			BackgroundColor3 = A.Accent,
			BorderSizePixel = 0,
			ZIndex = 22,
			Parent = H,
		});
	a(v, 2);
	local S = q("TextLabel", {
			Size = UDim2.new(1, -20, 1, 0),
			Position = UDim2.new(0, 18, 0, 0),
			BackgroundTransparency = 1,
			Text = j,
			TextColor3 = A.TextSecondary,
			Font = Enum.Font.GothamMedium,
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 21,
			Parent = H,
		});
	local O = { active = false };
	local function b(Y)
		O.active = Y;
		if Y then
			(L:Create(H, TweenInfo.new(.2), { BackgroundTransparency = .7 })):Play();
			(L:Create(v, TweenInfo.new(.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, 3, 0, 22) })):Play();
			(L:Create(S, TweenInfo.new(.2), { TextColor3 = A.Accent, TextSize = 14 })):Play();
		else
			(L:Create(H, TweenInfo.new(.2), { BackgroundTransparency = 1 })):Play();
			(L:Create(v, TweenInfo.new(.2), { Size = UDim2.new(0, 3, 0, 0) })):Play();
			(L:Create(S, TweenInfo.new(.2), { TextColor3 = A.TextSecondary, TextSize = 13 })):Play();
		end;
	end;
	H.MouseEnter:Connect(function()
		if not O.active then
			(L:Create(H, TweenInfo.new(.15), { BackgroundTransparency = .85 })):Play();
			(L:Create(S, TweenInfo.new(.15), { TextColor3 = A.TextPrimary })):Play();
		end;
	end);
	H.MouseLeave:Connect(function()
		if not O.active then
			(L:Create(H, TweenInfo.new(.15), { BackgroundTransparency = 1 })):Play();
			(L:Create(S, TweenInfo.new(.15), { TextColor3 = A.TextSecondary })):Play();
		end;
	end);
	E.NavItems[F] = { btn = H, setActive = b, state = O };
	return H, b;
end;
local function CJ(Y, L, j)
	local F = q("Frame", {
			Size = UDim2.new(1, -4, 0, 22),
			BackgroundTransparency = 1,
			LayoutOrder = j,
			ZIndex = 19,
			Parent = Y,
		});
	q("TextLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 8, 0, 0),
		BackgroundTransparency = 1,
		Text = string.upper(L),
		TextColor3 = A.TextMuted,
		Font = Enum.Font.GothamBold,
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 19,
		Parent = F,
	});
end;
local function zJ()
	local Y = q("ScreenGui", {
			Name = "MenuV71_GUI",
			ResetOnSpawn = false,
			IgnoreGuiInset = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			DisplayOrder = 999,
			Parent = v,
		});
	E.Gui = Y;
	local j = jJ("LoadingContainer", UDim2.new(0, 460, 0, 240), Y);
	E.LoadingFrame = j;
	j.BackgroundTransparency = 1;
	(L:Create(j, TweenInfo.new(.5), { BackgroundTransparency = 0 })):Play();
	local F = q("Frame", {
			Size = UDim2.new(0, 60, 0, 60),
			Position = UDim2.new(.5, 0, 0, 30),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundTransparency = 1,
			ZIndex = 8,
			Parent = j,
		});
	for Y = 1, 14, 1 do
		local L = ((Y - 1)) * (((math.pi * 2) / 14));
		local j = q("Frame", {
				Size = UDim2.new(0, 5, 0, 5),
				Position = UDim2.new(.5, math.cos(L) * 22, .5, math.sin(L) * 22),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = A.Accent,
				BackgroundTransparency = 1 - ((Y / 14)) * .75,
				BorderSizePixel = 0,
				ZIndex = 9,
				Parent = F,
			});
		a(j, 2);
		Q(j, "BackgroundColor3", "Accent");
	end;
	task.spawn(function()
		while F.Parent do
			F.Rotation = ((F.Rotation + 5)) % 360;
			task.wait(.02);
		end;
	end);
	q("TextLabel", {
		Size = UDim2.new(1, 0, 0, 32),
		Position = UDim2.new(0, 0, 0, 98),
		BackgroundTransparency = 1,
		Text = "Chargement",
		TextColor3 = A.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 24,
		ZIndex = 8,
		Parent = j,
	});
	local w = q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 134),
			BackgroundTransparency = 1,
			Text = "Initialisation...",
			TextColor3 = A.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 8,
			Parent = j,
		});
	local H = q("Frame", {
			Size = UDim2.new(.7, 0, 0, 8),
			Position = UDim2.new(.5, 0, 0, 172),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = A.SurfaceHi,
			BackgroundTransparency = .4,
			BorderSizePixel = 0,
			ZIndex = 8,
			Parent = j,
		});
	a(H, 4);
	local S = q("Frame", {
			Size = UDim2.new(0, 0, 1, 0),
			BackgroundColor3 = A.Accent,
			BorderSizePixel = 0,
			ZIndex = 9,
			Parent = H,
			ClipsDescendants = true,
		});
	a(S, 4);
	Q(S, "BackgroundColor3", "Accent");
	local O = q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 192),
			BackgroundTransparency = 1,
			Text = "0 %",
			TextColor3 = A.TextMuted,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 8,
			Parent = j,
		});
	local b = tick();
	task.spawn(function()
		while tick() - b < m.LoadingDuration do
			local Y = math.clamp(((tick() - b)) / m.LoadingDuration, 0, 1);
			S.Size = UDim2.new(Y, 0, 1, 0);
			O.Text = math.floor(Y * 100) .. " %";
			if Y < .3 then
				w.Text = "Initialisation...";
			elseif Y < .6 then
				w.Text = "Chargement...";
			elseif Y < .9 then
				w.Text = "Pr\195\169paration...";
			else
				w.Text = "Finalisation...";
			end;
			task.wait(.03);
		end;
		S.Size = UDim2.new(1, 0, 1, 0);
		O.Text = "100 %";
	end);
	return j;
end;
local function UJ(Y)
	local L = E.Gui;
	local j = jJ("CodeContainer", UDim2.new(0, 500, 0, 380), L);
	E.CodeFrame = j;
	j.BackgroundTransparency = 1;
	local F = q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 18),
			Position = UDim2.new(0, 0, 0, 36),
			BackgroundTransparency = 1,
			Text = "ACC\195\136S S\195\137CURIS\195\137",
			TextColor3 = A.Accent,
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			ZIndex = 12,
			Parent = j,
		});
	Q(F, "TextColor3", "Accent");
	q("TextLabel", {
		Size = UDim2.new(1, 0, 0, 38),
		Position = UDim2.new(0, 0, 0, 60),
		BackgroundTransparency = 1,
		Text = "V\195\169rification requise",
		TextColor3 = A.TextPrimary,
		Font = Enum.Font.GothamBold,
		TextSize = 26,
		ZIndex = 12,
		Parent = j,
	});
	q("TextLabel", {
		Size = UDim2.new(1, -60, 0, 34),
		Position = UDim2.new(0, 30, 0, 104),
		BackgroundTransparency = 1,
		Text = "Entre le code d\'acc\195\168s",
		TextColor3 = A.TextSecondary,
		Font = Enum.Font.Gotham,
		TextSize = 13,
		TextWrapped = true,
		ZIndex = 12,
		Parent = j,
	});
	local w = q("TextBox", {
			Size = UDim2.new(.82, 0, 0, 54),
			Position = UDim2.new(.5, 0, 0, 154),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = A.Surface,
			BackgroundTransparency = .3,
			BorderSizePixel = 0,
			Text = "",
			PlaceholderText = "Code d\'acc\195\168s...",
			PlaceholderColor3 = A.TextMuted,
			TextColor3 = A.TextPrimary,
			Font = Enum.Font.GothamMedium,
			TextSize = 16,
			TextXAlignment = Enum.TextXAlignment.Center,
			ClearTextOnFocus = false,
			ZIndex = 13,
			Parent = j,
		});
	a(w, 12);
	local H = s(w, A.Border, 1.5, .3);
	w.Focused:Connect(function()
		H.Color = A.Accent;
		H.Transparency = .2;
	end);
	w.FocusLost:Connect(function()
		H.Color = A.Border;
		H.Transparency = .3;
	end);
	local v = q("TextLabel", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 0, 216),
			BackgroundTransparency = 1,
			Text = "",
			TextColor3 = A.TextMuted,
			Font = Enum.Font.Gotham,
			TextSize = 12,
			ZIndex = 12,
			Parent = j,
		});
	local S = q("TextButton", {
			Size = UDim2.new(.82, 0, 0, 48),
			Position = UDim2.new(.5, 0, 0, 248),
			AnchorPoint = Vector2.new(.5, 0),
			BackgroundColor3 = A.Accent,
			BorderSizePixel = 0,
			Text = "VALIDER",
			TextColor3 = A.TextOnAccent,
			Font = Enum.Font.GothamBold,
			TextSize = 14,
			AutoButtonColor = false,
			ZIndex = 13,
			Parent = j,
		});
	a(S, 12);
	Q(S, "BackgroundColor3", "Accent");
	Q(S, "TextColor3", "TextOnAccent");
	local b, Z, k = 0, 5, false;
	local function r()
		if k then
			return;
		end;
		if w.Text == O then
			k = true;
			E.Authenticated = true;
			v.Text = "Acc\195\168s autoris\195\169";
			v.TextColor3 = A.Success;
			H.Color = A.Success;
			task.wait(.4);
			D(j, .35, function()
				E.CodeFrame = nil;
				if Y then
					Y();
				end;
			end);
		else
			b = b + 1;
			v.Text = string.format("Code incorrect \226\128\148 %d/%d", b, Z);
			v.TextColor3 = A.Error;
			H.Color = A.Error;
			if b >= Z then
				k = true;
				v.Text = "Acc\195\168s bloqu\195\169";
				task.wait(1.5);
				if L then
					L:Destroy();
				end;
				return;
			end;
			w.Text = "";
			pcall(function()
				w:CaptureFocus();
			end);
		end;
	end;
	S.MouseButton1Click:Connect(r);
	w.FocusLost:Connect(function(Y)
		if Y then
			r();
		end;
	end);
	task.spawn(function()
		task.wait(.6);
		pcall(function()
			w:CaptureFocus();
		end);
	end);
	R(j, .5);
	return j;
end;
HJ = function()
		local j = E.Gui;
		if not j then
			return;
		end;
		if E.Shell and E.Shell.Parent then
			return;
		end;
		E.NavItems = {};
		E.CurrentPage = nil;
		local F = jJ("Shell", UDim2.new(0, 820, 0, 540), j);
		E.Shell = F;
		E.MenuOpen = true;
		F.BackgroundTransparency = 1;
		l(F, .55);
		local w = q("TextButton", {
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
				Parent = F,
			});
		a(w, 8);
		s(w, A.Border, 1, .4);
		w.MouseEnter:Connect(function()
			(L:Create(w, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(200, 60, 60), BackgroundTransparency = 0 })):Play();
			(L:Create(w, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
		end);
		w.MouseLeave:Connect(function()
			(L:Create(w, TweenInfo.new(.15), { BackgroundColor3 = Color3.fromRGB(36, 38, 48), BackgroundTransparency = .15 })):Play();
			(L:Create(w, TweenInfo.new(.15), { TextColor3 = Color3.fromRGB(220, 225, 235) })):Play();
		end);
		w.MouseButton1Click:Connect(wJ);
		local v = q("Frame", {
				Name = "Sidebar",
				Size = UDim2.new(0, 240, 1, 0),
				BackgroundColor3 = A.SurfaceSide,
				BackgroundTransparency = .35,
				BorderSizePixel = 0,
				ZIndex = 8,
				Parent = F,
			});
		a(v, 20);
		E.Sidebar = v;
		local S = q("Frame", {
				Size = UDim2.new(1, 0, 0, 90),
				BackgroundColor3 = A.BgTop,
				BackgroundTransparency = .65,
				BorderSizePixel = 0,
				ZIndex = 15,
				Parent = v,
			});
		a(S, 20);
		q("Frame", {
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.new(0, 0, 1, -20),
			BackgroundColor3 = A.BgTop,
			BackgroundTransparency = .65,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = S,
		});
		local O = q("Frame", {
				Size = UDim2.new(0, 52, 0, 52),
				Position = UDim2.new(0, 18, .5, 0),
				AnchorPoint = Vector2.new(0, .5),
				BackgroundColor3 = Color3.fromRGB(70, 130, 245),
				BorderSizePixel = 0,
				ZIndex = 16,
				Parent = S,
			});
		a(O, 26);
		local b = q("Frame", {
				Size = UDim2.new(1, -4, 1, -4),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundColor3 = Color3.fromRGB(50, 100, 220),
				BorderSizePixel = 0,
				ZIndex = 17,
				Parent = O,
			});
		a(b, 24);
		local Z = q("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(.5, 0, .5, 0),
				AnchorPoint = Vector2.new(.5, .5),
				BackgroundTransparency = 1,
				Image = "",
				ZIndex = 18,
				Parent = b,
			});
		a(Z, 24);
		task.spawn(function()
			local L, j = pcall(function()
					return Y:GetUserThumbnailAsync(H.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100);
				end);
			if L and j then
				Z.Image = j;
			end;
		end);
		q("TextLabel", {
			Size = UDim2.new(1, -90, 0, 22),
			Position = UDim2.new(0, 80, 0, 24),
			BackgroundTransparency = 1,
			Text = H.DisplayName,
			TextColor3 = A.TextPrimary,
			Font = Enum.Font.GothamBold,
			TextSize = 15,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 16,
			Parent = S,
		});
		q("TextLabel", {
			Size = UDim2.new(1, -90, 0, 16),
			Position = UDim2.new(0, 80, 0, 46),
			BackgroundTransparency = 1,
			Text = "Premium",
			TextColor3 = A.Accent,
			Font = Enum.Font.GothamMedium,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 16,
			Parent = S,
		});
		q("Frame", {
			Size = UDim2.new(1, -32, 0, 1),
			Position = UDim2.new(0, 16, 0, 90),
			BackgroundColor3 = A.Border,
			BackgroundTransparency = .5,
			BorderSizePixel = 0,
			ZIndex = 15,
			Parent = v,
		});
		local k = q("ScrollingFrame", {
				Size = UDim2.new(1, -16, 1, -110),
				Position = UDim2.new(0, 8, 0, 100),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 3,
				ScrollBarImageColor3 = A.SurfaceHi,
				ScrollBarImageTransparency = .5,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ZIndex = 18,
				Parent = v,
			});
		q("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder, Parent = k });
		CJ(k, "G\195\169n\195\169ral", 1);
		fJ(k, "Accueil", "home", 2);
		fJ(k, "ESP", "esp", 3);
		CJ(k, "Personnage", 4);
		fJ(k, "Player", "player", 5);
		fJ(k, "Combat", "combat", 6);
		fJ(k, "Troll", "troll", 7);
		fJ(k, "T\195\169l\195\169port\195\169", "teleport", 8);
		fJ(k, "Animation", "animation", 9);
		fJ(k, "Auto Farm", "autofarm", 10);
		CJ(k, "MM2", 11);
		fJ(k, "Murder", "murder", 12);
		fJ(k, "Sheriff", "sheriff", 13);
		CJ(k, "Autre", 14);
		fJ(k, "Param\195\168tres", "settings", 15);
		E.NavItems.home.btn.MouseButton1Click:Connect(function()
			SJ("home");
		end);
		E.NavItems.esp.btn.MouseButton1Click:Connect(function()
			SJ("esp");
		end);
		E.NavItems.murder.btn.MouseButton1Click:Connect(function()
			SJ("murder");
		end);
		E.NavItems.sheriff.btn.MouseButton1Click:Connect(function()
			SJ("sheriff");
		end);
		E.NavItems.player.btn.MouseButton1Click:Connect(function()
			SJ("player");
		end);
		E.NavItems.combat.btn.MouseButton1Click:Connect(function()
			SJ("combat");
		end);
		E.NavItems.autofarm.btn.MouseButton1Click:Connect(function()
			SJ("autofarm");
		end);
		E.NavItems.teleport.btn.MouseButton1Click:Connect(function()
			SJ("teleport");
		end);
		E.NavItems.troll.btn.MouseButton1Click:Connect(function()
			SJ("troll");
		end);
		E.NavItems.animation.btn.MouseButton1Click:Connect(function()
			SJ("animation");
		end);
		E.NavItems.settings.btn.MouseButton1Click:Connect(function()
			SJ("settings");
		end);
		local r = q("Frame", {
				Name = "Content",
				Size = UDim2.new(1, -240, 1, 0),
				Position = UDim2.new(0, 240, 0, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				ZIndex = 14,
				Parent = F,
			});
		E.Content = r;
		local Q = q("ScrollingFrame", {
				Name = "Scroll",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 6,
				ScrollBarImageColor3 = A.SurfaceHi,
				ScrollBarImageTransparency = .3,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ClipsDescendants = true,
				ZIndex = 24,
				Parent = r,
			});
		E.Scroll = Q;
		task.wait(.1);
		SJ("home");
	end;
H.CharacterAdded:Connect(function(Y)
	Y:WaitForChild("Humanoid", 10);
	task.wait(.6);
	V.nowe = false;
	V.tpwalking = false;
	J();
	sK();
	vJ();
	if y.XRayEnabled then
		task.wait(.5);
		if Y then
			MK(Y, H);
		end;
	end;
	if i.FlyEnabled then
		YK();
	end;
	if i.SpinEnabled then
		HK();
	end;
	if i.JerkEnabled then
		bK();
	end;
	i.Sitting = false;
	local L = Y:FindFirstChildOfClass("Humanoid");
	if L then
		L.WalkSpeed = i.WalkSpeed;
		L.UseJumpPower = true;
		L.JumpPower = i.JumpPower;
	end;
	workspace.Gravity = i.Gravity;
end);
F.InputBegan:Connect(function(Y, L)
	if L then
		return;
	end;
	if Y.KeyCode ~= Enum.KeyCode.M then
		return;
	end;
	if not E.Authenticated then
		return;
	end;
	if E.Shell and E.Shell.Parent then
		wJ();
	else
		if HJ then
			HJ();
		end;
	end;
end);
local function BJ()
	T("Initialisation...");
	local Y = v:FindFirstChild("MenuV70_GUI") or v:FindFirstChild("MenuV71_GUI");
	if Y then
		Y:Destroy();
	end;
	zJ();
	task.wait(m.LoadingDuration + .4);
	FJ(E.LoadingFrame, function()
		E.LoadingFrame = nil;
	end);
	task.wait(.5);
	UJ(function()
		E.Authenticated = true;
		vJ();
		HJ();
	end);
end;
BJ();
