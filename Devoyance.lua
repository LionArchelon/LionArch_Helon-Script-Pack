local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

local humanoid = char:FindFirstChildOfClass("Humanoid")

if humanoid then
    for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do
        track:Stop()
        track:Destroy()
    end

    local animator = humanoid:FindFirstChildOfClass("Animator")
    if animator then
        animator:Destroy()
    end
end

local target = game.Players.LocalPlayer.Name
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()


if game.Players.LocalPlayer.Name == target then
	local function loadmod(modID, gamePath)
		local IS = game:GetService("InsertService")
		local loadedMOD = IS:LoadLocalAsset("rbxassetid://" .. modID)
		loadedMOD.Parent = gamePath
		return loadedMOD
	end

	local mod = loadmod("15536487140")

	local osytrfhuu00de0l = mod:FindFirstChild("Devoyance V4")
    osytrfhuu00de0l.Parent = char
end
	wait(1)


local Devoy = char:FindFirstChild("Devoyance V4")
script = Devoy
	Pl =  game.Players[target]
	Player = Pl
	C = Pl.Character
	Hum = C.Humanoid
	CFR = CFrame.new
	game.Players[target].Character = Player.Character
-- || Aero's Animation Base. || --
-- Some items might be borrowed from other sources. --
local CAS = {Actions={}}
local Event = Instance.new("RemoteEvent")
Event.Name = "UserInput_Event"
Event.Parent = game.Players[target].Character
local fakeEvent = function()
	local t = {_fakeEvent=true}
	t.Connect = function(self,f)self.Function=f end
	t.connect = t.Connect
	return t
end
local m = {Target=nil,Hit=CFrame.new(),KeyUp=fakeEvent(),KeyDown=fakeEvent(),Button1Up=fakeEvent(),Button1Down=fakeEvent()}
local UIS = {InputBegan=fakeEvent(),InputEnded=fakeEvent()}
function CAS:BindAction(name,fun,touch,...)
	CAS.Actions[name] = {Name=name,Function=fun,Keys={...}}
end
function CAS:UnbindAction(name)
	CAS.Actions[name] = nil
end
local function te(self,ev,...)
	local t = m[ev]
	if t and t._fakeEvent and t.Function then
		t.Function(...)
	end
end
m.TrigEvent = te
UIS.TrigEvent = te
Event.OnClientEvent:Connect(function(plr,io)
	if plr ~= Player then
		local WarnUi = Player.PlayerGui.DevoyanceV4ScreenGui["Main Gui"].WarnGui
		WarnUi.Visible = true
		WarnUi.Warn:Play()
		WarnUi.RemoteDetector.Text = tostring(plr.Name.." Just tried firing the Input Event! User will be kicked momentarily.")
		for i = 0,10 do wait() WarnUi.Background.BackgroundTransparency -= .1 end
		for i = 0,10 do wait() WarnUi.Outline.ImageTransparency -= .1 end
		for i = 0,10 do wait() WarnUi.RemoteDetector.TextTransparency -= .1 end
		wait(5)
		for i = 0,10 do wait() WarnUi.RemoteDetector.TextTransparency += .1 end
		for i = 0,10 do wait() WarnUi.Background.BackgroundTransparency += .1 end
		for i = 0,10 do wait() WarnUi.Outline.ImageTransparency += .1 end
		WarnUi.Warn.TimePosition = 0
		WarnUi.Visible = false
		coroutine.resume(coroutine.create(function()
			while wait() do
				local plrName = plr.Name
				game.Players:WaitForChild(plrName):Kick("I Know you're firing remotes~~ - Love, "..Player.Name)
			end
		end))
	end
	if plr == Player then
		if io.isMouse then
			m.Target = io.Target
			m.Hit = io.Hit
		elseif io.UserInputType == Enum.UserInputType.MouseButton1 then
			if io.UserInputState == Enum.UserInputState.Begin then
				m:TrigEvent("Button1Down")
			else
				m:TrigEvent("Button1Up")
			end
		else
			for n,t in pairs(CAS.Actions) do
				for _,k in pairs(t.Keys) do
					if k==io.KeyCode then
						t.Function(t.Name,io.UserInputState,io)
					end
				end
			end
			if io.UserInputState == Enum.UserInputState.Begin then
				m:TrigEvent("KeyDown",io.KeyCode.Name:lower())
				UIS:TrigEvent("InputBegan",io,false)
			else
				m:TrigEvent("KeyUp",io.KeyCode.Name:lower())
				UIS:TrigEvent("InputEnded",io,false)
			end
		end
	end
end)
Mouse,mouse,UserInputService,ContextActionService = m,m,UIS,CAS
-- < // Global Definitions. \\ > --
Player = player
Character = char
Humanoid = Character.Humanoid
CF,CFN,CFEA,V3 = CFrame,CFrame.new,CFrame.fromEulerAnglesXYZ,Vector3.new
SN,RD,CS = math.sin,math.rad,math.cos
RGB,HSV = Color3.fromRGB,Color3.fromHSV
S = 0
RCF = CFEA(-1.57,0,3.14)
NeckVals = CFN(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local ValueFolder = script.Resources.Values
local Aero = Player.UserId == 16330509
local GradientToggled = false
local EyeToggle = false
local EyeToggle2 = false
local Colorful = false
local Mode = "Euphoric"
local Loudness = 0
local SpinBool = false
local SitBool = false
local PreviousWS,PreviousJP = 16,50
local FlyBool = false
local FlyHeight = 0
local PreviousMusicPitch = 1
local RemoveIdles = false
local headGuiEnabled = true

-- < || Part Definitions. || > --
LLeg = Character["Left Leg"]   RLeg = Character["Right Leg"]
LArm = Character["Left Arm"]  RArm = Character["Right Arm"]
Head = Character["Head"]  Torso = Character["Torso"]   HMNRoot = Character["HumanoidRootPart"]

-- < || No idea, But we'll see what this does. || > --
LegLeft = Character["Left Leg"]   LegRight = Character["Right Leg"]
ArmLeft = Character["Left Arm"]  ArmRight = Character["Right Arm"] 
LA = Torso["Left Shoulder"]  RA = Torso["Right Shoulder"] 
LLG = Torso["Left Hip"]  RLG = Torso["Right Hip"] 
RHip, LHip = Instance.new("Motor6D",script.Resources.M6D), Instance.new("Motor6D",script.Resources.M6D) 
RH = Torso["Right Hip"] LH = Torso["Left Hip"]

H = Torso.Neck RJNT = HMNRoot.RootJoint

RSH = Torso["Right Shoulder"]
LSH = Torso["Left Shoulder"]
RSH.Parent=nil 
LSH.Parent=nil 

RA.Name = "Right Shoulder" RA.Part0 = Torso
RA.C0 = CFN(1.5, 0.5, 0) * CFEA(1.3, 0, -0.5) RA.C1 = CFN(0, 0.5, 0)
RA.Part1 = Character["Right Arm"]  RA.Parent = Torso

LA.Name = "Left Shoulder" LA.Part0 = Torso 
LA.C0 = CFN(-1.5, 0.5, 0) * CFEA(1.7, 0, 0.8) LA.C1 = CFN(0, 0.5, 0)
LA.Part1 = Character["Left Arm"]  LA.Parent = Torso

-- < || Removing Animate. || > --
--Character:WaitForChild("Animate"):Destroy() 
--Character:FindFirstChildOfClass("Humanoid"):WaitForChild("Animator"):Destroy()
local disabler = script.AnimDisabler:Clone()
disabler.Disabled = false
disabler.Parent = Character:WaitForChild("Animate")

-- < || Functions. || > --

function CFA(X,Y,Z) 
	return CF.Angles(RD(X),RD(Y),RD(Z)) 
end

function M6D(Parent,P0,P1,C0)
	local M6 = Instance.new("Motor6D")
	M6.Part0 = P0 M6.Part1 = P1
	M6.C0 = C0 or CFrame.new()
	M6.Parent = Parent
	return M6
end

function VectorColorToRGB(Color3Val)
	return Vector3.new(Color3Val.R,Color3Val.G,Color3Val.B)
end

function DivideVectorColorToRGB(Color3Val)
	return Vector3.new(Color3Val.R/50,Color3Val.G/50,Color3Val.B/50)
end

function FX(Shape,LightToggle,LightBrightness,LightRange,Color,Material,CFrame,Lifetime,PlaybackSpeed,RotationAmount,StartSize,EndSize,StartTransparency,EndTransparency)
	for i,v in pairs(game.Players:GetChildren()) do if v.PlayerGui and v.PlayerGui:FindFirstChild('DevoyanceV4CR') then
			if v.PlayerGui.DevoyanceV4CR:FindFirstChild('EffectCR') then v.PlayerGui.DevoyanceV4CR.EffectCR.CRFX:FireClient(v,script,Shape,LightToggle,LightBrightness,LightRange,Color,Material,CFrame,Lifetime,PlaybackSpeed,RotationAmount,StartSize,EndSize,StartTransparency,EndTransparency)
			end
		end
	end
end

local ModeValue = script.Resources.Values.ModeValue
ModeValue.Value = "Euphoric"

local WingFolder1,WingFolder2,WingFolder3,WingFolder4 = script.Resources.Wings1,script.Resources.Wings2,script.Resources.Wings3,script.Resources.Wings4
local WNG1 = script.Startup.Wing
OtherThings = script.Resources.M6D

W1 = Instance.new("Motor6D",WNG1.CenterPart) W1.Part0 = Torso W1.Part1 = script.Startup.Wing.CenterPart

for i = 1,3 do -- Left Wings --
	Wings1 = script.Startup.Wing:Clone()
	Wings1.Parent,Wings1.Name = WingFolder1,"Wing"..i
end

for i = 4,6 do -- Right Wings --
	Wings2 = script.Startup.Wing:Clone()
	Wings2.Parent,Wings2.Name = WingFolder2,"Wing"..i
end

for i = 7,9 do -- More Left Wings --
	Wings3 = script.Startup.Wing:Clone()
	Wings3.Parent,Wings3.Name = WingFolder3,"Wing"..i
end

for i = 10,12 do -- More Right Wings --
	Wings4 = script.Startup.Wing:Clone()
	Wings4.Parent,Wings4.Name = WingFolder4,"Wing"..i
end

local W1,W2,W3 = WingFolder1.Wing1.CenterPart.Motor6D,WingFolder1.Wing2.CenterPart.Motor6D,WingFolder1.Wing3.CenterPart.Motor6D
local W4,W5,W6 = WingFolder2.Wing4.CenterPart.Motor6D,WingFolder2.Wing5.CenterPart.Motor6D,WingFolder2.Wing6.CenterPart.Motor6D
local W7,W8,W9 = WingFolder3.Wing7.CenterPart.Motor6D,WingFolder3.Wing8.CenterPart.Motor6D,WingFolder3.Wing9.CenterPart.Motor6D
local W10,W11,W12 = WingFolder4.Wing10.CenterPart.Motor6D,WingFolder4.Wing11.CenterPart.Motor6D,WingFolder4.Wing12.CenterPart.Motor6D

for i = 0 , 2 do
	for i,v in pairs(WingFolder3:GetDescendants()) do if v:IsA("MeshPart") then v.Transparency = 1 end end
	for i,v in pairs(WingFolder4:GetDescendants()) do if v:IsA("MeshPart") then v.Transparency = 1 end end
end

M6D(OtherThings,script.Resources.Aero.Scarf ,Torso,CFrame.new(0,-.8,.05))
M6D(OtherThings,script.Resources.Aero.AeroHead,Head)

Startup = script.Startup
Music = Startup.DevoyanceV4Audio
Music.Parent = Torso
Music.Playing = true
Startup.DevoyanceV4HeadGui.Parent = Head
Startup.DevoyanceV4ScreenGui.Parent = Player.PlayerGui
Startup:Destroy()

LPL = Instance.new("PointLight",ArmLeft) LPL.Enabled = true LPL.Color = Color3.fromRGB(125,0,255) LPL.Range = 6 LPL.Brightness = 2
RPL = Instance.new("PointLight",ArmRight) RPL.Enabled = true RPL.Color = Color3.fromRGB(125,0,255) RPL.Range = 6 RPL.Brightness = 2

function DevoyanceSongChange(MusicID,MusicVolume,MusicTimePosition,MusicSpeed,MusicName)
	MusicVolume = math.max(MusicVolume,3)
	Music.SoundId,Music.Volume,Music.TimePosition,Music.PlaybackSpeed = "rbxassetid://"..MusicID,MusicVolume,MusicTimePosition,MusicSpeed
	Player.PlayerGui.DevoyanceV4ScreenGui["Visualizer Stuff"].VisualizerPanel.Seperator.SongName.Text = MusicName
	Player.PlayerGui.DevoyanceV4ScreenGui["Main Gui"].MusicBar.MusicName.Text = MusicName
end

function ExploiterWarn(PlayerWhoFired,RemoteFired)
	local WarnUi = Player.PlayerGui.DevoyanceV4ScreenGui["Main Gui"].WarnGui
	WarnUi.Visible = true
	WarnUi.Warn:Play()
	WarnUi.RemoteDetector.Text = tostring(PlayerWhoFired.." Just tried firing the "..RemoteFired.." Event! User has been kicked.")
	for i = 0,10 do wait() WarnUi.Background.BackgroundTransparency -= .1 end
	for i = 0,10 do wait() WarnUi.Outline.ImageTransparency -= .1 end
	for i = 0,10 do wait() WarnUi.RemoteDetector.TextTransparency -= .1 end
	wait(5)
	for i = 0,10 do wait() WarnUi.RemoteDetector.TextTransparency += .1 end
	for i = 0,10 do wait() WarnUi.Background.BackgroundTransparency += .1 end
	for i = 0,10 do wait() WarnUi.Outline.ImageTransparency += .1 end
	WarnUi.RemoteDetector.Text = ""
	WarnUi.Warn.TimePosition = 0
	WarnUi.Visible = false
end

script.Resources.Remotes.VisualizerEvent.OnClientEvent:Connect(function(plr,LocalLoudness) 
	if plr ~= Player then
		ExploiterWarn(plr.Name,"PlaybackLoudness")
		coroutine.resume(coroutine.create(function()
			while wait() do
				local plrName = plr.Name
				game.Players:WaitForChild(plrName):Kick("I Know you're firing remotes~~ - Love, "..Player.Name)
			end
		end))
	end
	Loudness = LocalLoudness
end)

script.Resources.Remotes.VisualizerInfoEvent.OnClientEvent:Connect(function(plr,ID,Volume,TimePosition,Pitch) 
	if plr ~= Player then
		ExploiterWarn(plr.Name,"VisualizerInfo")
		coroutine.resume(coroutine.create(function()
			while wait() do
				local plrName = plr.Name
				game.Players:WaitForChild(plrName):Kick("I Know you're firing remotes~~ - Love, "..Player.Name)
			end
		end))
	end
	if ID ~= nil and Mode == "Visualization" and plr == Player then
		local Msc = game:GetService("MarketplaceService"):GetProductInfo(tonumber(ID))
		DevoyanceSongChange(ID,Volume,TimePosition,Pitch,Msc.Name)
	end
end)

script.Resources.Remotes.EqualizerEvent.OnClientEvent:Connect(function(plr,Enabled,HG,MG,LG)
	if plr ~= Player then
		ExploiterWarn(plr.Name,"EqualizerSettings")
		coroutine.resume(coroutine.create(function()
			while wait() do
				local plrName = plr.Name
				game.Players:WaitForChild(plrName):Kick("I Know you're firing remotes~~ - Love, "..Player.Name)
			end
		end))
	end
	if Mode == "Visualization" and plr == Player then
		Music.Equalizer.Enabled = Enabled
		Music.Equalizer.HighGain,Music.Equalizer.MidGain,Music.Equalizer.LowGain = HG,MG,LG
	end
end) 

script.Resources.Remotes.ReverbEvent.OnClientEvent:Connect(function(plr,Enabled,WL,DL,DFS,DSY,DCYTM)
	if plr ~= Player then
		ExploiterWarn(plr.Name,"ReverbSettings")
		coroutine.resume(coroutine.create(function()
			while wait() do
				local plrName = plr.Name
				game.Players:WaitForChild(plrName):Kick("I Know you're firing remotes~~ - Love, "..Player.Name)
			end
		end))
	end
	if Mode == "Visualization" and plr == Player then
		Music.Reverb.Enabled = Enabled
		Music.Reverb.WetLevel,Music.Reverb.DryLevel,Music.Reverb.Diffusion,Music.Reverb.Density,Music.Reverb.DecayTime = WL,DL,DFS,DSY,DCYTM
	end
end) 

script.Resources.Remotes.ChorusEvent.OnClientEvent:Connect(function(plr,Enabled,Depth,Mix,Rate)
	if plr ~= Player then
		ExploiterWarn(plr.Name,"ChorusSettings")
		coroutine.resume(coroutine.create(function()
			while wait() do
				local plrName = plr.Name
				game.Players:WaitForChild(plrName):Kick("I Know you're firing remotes~~ - Love, "..Player.Name)
			end
		end))
	end
	if Mode == "Visualization" and plr == Player then
		Music.Chorus.Enabled = Enabled
		Music.Chorus.Depth,Music.Chorus.Mix,Music.Chorus.Rate = Depth,Mix,Rate
	end
end) 

script.Resources.Remotes.EchoEvent.OnClientEvent:Connect(function(plr,Enabled,WetLevel,DryLevel,Feedback,DelayTime)
	if plr ~= Player then
		ExploiterWarn(plr.Name,"EchoSettings")
		Music.Echo.WetLevel,Music.Echo.DryLevel,Music.Echo.Feedback,Music.Echo.Delay = WetLevel,DryLevel,Feedback,DelayTime
		coroutine.resume(coroutine.create(function()
			while wait() do
				local plrName = plr.Name
				game.Players:WaitForChild(plrName):Kick("I Know you're firing remotes~~ - Love, "..Player.Name)
			end
		end))
	end
	if Mode == "Visualization" and plr == Player then
		Music.Echo.Enabled = Enabled
		Music.Echo.WetLevel,Music.Echo.DryLevel,Music.Echo.Feedback,Music.Echo.Delay = WetLevel,DryLevel,Feedback,DelayTime
	end
end)

script.Resources.Remotes.PitchShiftEvent.OnClientEvent:Connect(function(plr,Enabled,Octave)
	if plr ~= Player then
		local RemoteName = "PitchShiftSettings"
		ExploiterWarn(plr.Name,RemoteName)
		coroutine.resume(coroutine.create(function()
			while wait() do
				local plrName = plr.Name
				game.Players:WaitForChild(plrName):Kick("I Know you're firing remotes~~ - Love, "..Player.Name)
			end
		end))
	end
	if Mode == "Visualization" and plr == Player then
		Music.PitchShift.Enabled = Enabled
		Music.PitchShift.Octave = Octave
	end
end) 

local RMTName = "CUSTOMIZATION"
CustomC1,CustomC2,CustomC3,CustomC4 = RGB(0,0,0),RGB(0,0,0),RGB(0,0,0),RGB(0,0,0)

script.Resources.Remotes.C1.OnClientEvent:Connect(function(plr,C1)
	if plr ~= Player then
		ExploiterWarn(plr.Name,"CustomC1")
		coroutine.resume(coroutine.create(function()
			while wait() do
				local plrName = plr.Name
				game.Players:WaitForChild(plrName):Kick("I Know you're firing remotes~~ - Love, "..Player.Name)
			end
		end))
	end
	if Mode == "Customization" and plr == Player then
		CustomC1,CustomC2,CustomC3,CustomC4 = C1,CustomC2,CustomC3,CustomC4
		DevoyanceRecolorMaterial(RMTName,CustomC1,CustomC2,CustomC3,CustomC4,"Neon","Neon","Neon","Neon",CustomC1,CustomC2,RGB(100,100,130),RGB(255,255,255))
		GuiRecolor(CustomC1,CustomC2)
	end
end)

script.Resources.Remotes.C2.OnClientEvent:Connect(function(plr,C2)
	if plr ~= Player then
		ExploiterWarn(plr.Name,"CustomC2")
		coroutine.resume(coroutine.create(function()
			while wait() do
				local plrName = plr.Name
				game.Players:WaitForChild(plrName):Kick("I Know you're firing remotes~~ - Love, "..Player.Name)
			end
		end))
	end
	if Mode == "Customization" and plr == Player then
		CustomC1,CustomC2,CustomC3,CustomC4 = CustomC1,C2,CustomC3,CustomC4
		DevoyanceRecolorMaterial(RMTName,CustomC1,CustomC2,CustomC3,CustomC4,"Neon","Neon","Neon","Neon",CustomC1,CustomC2,RGB(100,100,130),RGB(255,255,255))
		GuiRecolor(CustomC1,CustomC2)
	end
end)

script.Resources.Remotes.C3.OnClientEvent:Connect(function(plr,C3)
	if plr ~= Player then
		ExploiterWarn(plr.Name,"CustomC3")
		coroutine.resume(coroutine.create(function()
			while wait() do
				local plrName = plr.Name
				game.Players:WaitForChild(plrName):Kick("I Know you're firing remotes~~ - Love, "..Player.Name)
			end
		end))
	end
	if Mode == "Customization" and plr == Player then
		CustomC1,CustomC2,CustomC3,CustomC4 = CustomC1,CustomC2,C3,CustomC4
		DevoyanceRecolorMaterial(RMTName,CustomC1,CustomC2,CustomC3,CustomC4,"Neon","Neon","Neon","Neon",CustomC1,CustomC2,RGB(100,100,130),RGB(255,255,255))
		GuiRecolor(CustomC1,CustomC2)
	end
end)

script.Resources.Remotes.C4.OnClientEvent:Connect(function(plr,C4)
	if plr ~= Player then
		ExploiterWarn(plr.Name,"CustomC4")
		coroutine.resume(coroutine.create(function()
			while wait() do
				local plrName = plr.Name
				game.Players:WaitForChild(plrName):Kick("I Know you're firing remotes~~ - Love, "..Player.Name)
			end
		end))
	end
	if Mode == "Customization" and plr == Player then
		CustomC1,CustomC2,CustomC3,CustomC4 = CustomC1,CustomC2,CustomC3,C4
		DevoyanceRecolorMaterial(RMTName,CustomC1,CustomC2,CustomC3,CustomC4,"Neon","Neon","Neon","Neon",CustomC1,CustomC2,RGB(100,100,130),RGB(255,255,255))
		GuiRecolor(CustomC1,CustomC2)
	end
end)

script.Resources.Remotes.NameEvent.OnClientEvent:Connect(function(plr,Name)
	if plr ~= Player then
		ExploiterWarn(plr.Name,"ModeName")
		coroutine.resume(coroutine.create(function()
			while wait() do
				local plrName = plr.Name
				game.Players:WaitForChild(plrName):Kick("I Know you're firing remotes~~ - Love, "..Player.Name)
			end
		end))
	end
	if Mode == "Customization" and plr == Player then
		RMTName = Name
		DevoyanceRecolorMaterial(Name,CustomC1,CustomC2,CustomC3,CustomC4,"Neon","Neon","Neon","Neon",CustomC1,CustomC2,RGB(100,100,130),RGB(255,255,255))
		GuiRecolor(CustomC1,CustomC2)
	end
end)

if Aero == false then
	for i,v in pairs(script.Resources.Aero.EyeParts:GetDescendants()) do if v:IsA("ImageLabel") or v:IsA("Decal") then
			v.Transparency = 1
		end
	end
	local RemoveThese = {"Scarf","Shades"}
	for i,v in pairs(Character:GetDescendants()) do
		if v:IsA("MeshPart") or v:IsA("Part") or v:IsA("Decal") then
			for A,B in pairs(RemoveThese) do
				if string.find(v.Name,B) then
					v:Destroy()
				end
			end
		end
	end
	script.Resources.Aero.AeroHead.Transparency = 1
	script.Resources.Aero.AeroHead.AeroF.Transparency = 1
	script.Resources.Aero.LocksOfIce.Transparency = 1
	script.Resources.Aero.LocksOfIce2.Transparency = 1
	--print('Current Script Parent is Not Aero.')
end


local rayCast = function (Pos, Dir, Max, Ignore) 
	return game:GetService("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end

local LerpX = function (Start,End,Speed) 
	return Start:Lerp(End,Speed) 
end

local LocationChange = function()
	RemoveIdles = true
	Humanoid.WalkSpeed,Humanoid.JumpPower = 0,0
	local TeleportSound = Instance.new("Sound",Torso)
	TeleportSound.SoundId,TeleportSound.Playing,TeleportSound.PlaybackSpeed = "rbxassetid://6964732684",true,1
	TeleportSound:Play()
	HMNRoot.CFrame = Mouse.Hit
	for i = 0 , 25 do wait()
		RJNT.C0 = RJNT.C0:Lerp(CFN(0,-1.2,.3)*CFA(-30,0,0)*RCF,.2)
		H.C0=H.C0:Lerp(NeckVals*CFN(0,0,0)*CFA(20,0,0),.2)
		RA.C0=RA.C0:Lerp(CFN(1.6,-.3,.1)*CFA(39,9,11),.2)
		LA.C0=LA.C0:Lerp(CFN(-1.4,-.2,-.1)*CFA(30,-30,-15),.2)
		RH.C0=RH.C0:Lerp(CFN(1,.3,-.6)*CFA(30,0,0)*CFA(0,90,0),.2)
		LH.C0=LH.C0:Lerp(CFN(-1,-1.2,-.7)*CFA(-65,0,0)*CFA(0,-90,0),.2)
	end
	Humanoid.WalkSpeed,Humanoid.JumpPower = PreviousWS,PreviousJP
	RemoveIdles = false
	wait(1)
	TeleportSound:Destroy()
end

function GuiRecolor(Color1,Color2)
	-- Visualization Stuff --
	for i,v in pairs(Player.PlayerGui.DevoyanceV4ScreenGui["Visualizer Stuff"].VisualizerPanel:GetDescendants()) do
		if v:IsA("ImageLabel") then v.ImageColor3 = Color2
		elseif v:IsA("Frame") then v.BackgroundColor3 = Color1
		elseif v:IsA("TextLabel") then v.TextColor3 = Color1
		elseif v:IsA("TextBox") then v.PlaceholderColor3,v.TextColor3 = Color1,Color1
		end
	end
	for i,v in pairs(Player.PlayerGui.DevoyanceV4ScreenGui["Visualizer Stuff"].VisualizerButtons:GetDescendants()) do
		if v:IsA("ImageLabel") or v:IsA("ImageButton") then v.ImageColor3 = Color2
		elseif v:IsA("Frame") then v.BackgroundColor3 = Color1
		end
	end

	Player.PlayerGui.DevoyanceV4ScreenGui["Visualizer Stuff"].VisualizerMenus.DefiningText.TextColor3 = Color1
	Player.PlayerGui.DevoyanceV4ScreenGui["Visualizer Stuff"].VisualizerMenus.Seperator.BackgroundColor3 = Color2

	for i,v in pairs(Player.PlayerGui.DevoyanceV4ScreenGui["Visualizer Stuff"].VisualizerMenus.GuiFolder:GetDescendants()) do
		if v:IsA("ImageLabel") or v:IsA("ImageButton") then v.ImageColor3 = Color1
		elseif v:IsA("Frame") then v.BackgroundColor3 = Color2
		elseif v:IsA("TextLabel") and v.Parent ~= "VisualizerMenus" then v.TextColor3 = Color2
		elseif v:IsA("TextBox") then v.PlaceholderColor3,v.TextColor3 = Color2,Color1
		end
	end
	-- Base Gui Stuff --
	for i,v in pairs(Player.PlayerGui.DevoyanceV4ScreenGui["Main Gui"]:GetDescendants()) do
		if v:IsA("Frame") and v.Parent.Name ~= "WarnGui" then v.BackgroundColor3 = Color2
		elseif v:IsA("TextLabel") and v.Parent.Name ~= "WarnGui"  then v.TextColor3 = Color1
		end
	end
end

local CSN,CSK = ColorSequence.new,ColorSequenceKeypoint.new
function DevoyanceRecolorMaterial(ModeName,C1,C2,C3,C4,M1,M2,M3,M4,TextColor,TextStrokeColor,GradientColor,GradientColor2)
	Head.DevoyanceV4HeadGui.ModeNameStrokeLabel.Text = tostring(ModeName)
	Head.DevoyanceV4HeadGui.ModeNameStrokeLabel.ModeNameTextLabel.Text = tostring(ModeName)
	for i,v in pairs(Head.DevoyanceV4HeadGui:GetDescendants()) do if v:IsA('TextLabel') then
			v.TextColor3,v.TextStrokeColor3 = TextColor,TextStrokeColor
		end
		if v:IsA("Frame") then v.BackgroundColor3 = C1 end
	end
	for i,v in pairs(WingFolder1:GetDescendants()) do 
		if v.Name == "Color1" then v.Color = C1 v.Material = Enum.Material[M1]
		elseif v.Name == "Color2" then v.Color = C2 v.Material = Enum.Material[M2]
		end end
	for i,v in pairs(WingFolder2:GetDescendants()) do 
		if v.Name == "Color1" then v.Color = C3 v.Material = Enum.Material[M3]
		elseif v.Name == "Color2" then v.Color = C4 v.Material = Enum.Material[M4]
		end end
	Head.DevoyanceV4HeadGui.ModeNameStrokeLabel.TextGradient.Color = CSN({CSK(0,GradientColor),CSK(.25,GradientColor2),CSK(.5,GradientColor),CSK(.75,GradientColor2),CSK(1,GradientColor)})
	Head.DevoyanceV4HeadGui.PlayerNameStrokeLabel.TextGradient.Color = CSN({CSK(0,GradientColor),CSK(1,GradientColor2)})
	Head.DevoyanceV4HeadGui.ScriptNameStrokeLabel.TextGradient.Color = CSN({CSK(0,GradientColor),CSK(1,GradientColor2)})

	LPL.Color = C2
	RPL.Color = C2
end	

function HumanoidValues(WalkSpeed,JumpPower)
	Humanoid.WalkSpeed = WalkSpeed	
	Humanoid.JumpPower = JumpPower	
end

function ExtraWings(Bool,C1,C2,C3,C4,M1,M2,M3,M4)
	if Bool == false then
		for i,v in pairs(WingFolder3:GetDescendants()) do if v:IsA("MeshPart") then v.Transparency = 1 end end
		for i,v in pairs(WingFolder4:GetDescendants()) do if v:IsA("MeshPart") then v.Transparency = 1 end end
	elseif Bool == true then
		for i,v in pairs(WingFolder3:GetDescendants()) do if v:IsA("MeshPart") then v.Transparency = 0 end 
			if v.Name == "Main" then v.Color,v.Material = C1,Enum.Material[M1] or nil end
			if v.Name == "Secondary" then v.Color,v.Material = C2,Enum.Material[M2] or nil end
		end
		for i,v in pairs(WingFolder4:GetDescendants()) do if v:IsA("MeshPart") then v.Transparency = 0 end 
			if v.Name == "Main" then v.Color,v.Material = C3,Enum.Material[M3] or nil end
			if v.Name == "Secondary" then v.Color,v.Material = C4,Enum.Material[M4] or nil end
		end		
	end
end

local OriginalTable = {"Euphoric","Euphoric","Euphoric","Euphoric","OriginalStartingMode","Euphorius"}
Mode = OriginalTable[math.random(1,6)]
if Mode == "Euphoric" then
	FlyBool,FlyHeight = false,0
	local EuphoricMusic = {15461489450,15461477815,15461495456}
	local MusicNames1 = {"夏毛 - あさやけもゆうやけもないんだ","夏毛 - あさやけもゆうやけもないんだ","夏毛 - あさやけもゆうやけもないんだ","夏毛 - _","夏毛 - あさやけもゆうやけもないんだ","夏毛 - あさやけもゆうやけもないん (けだるぎ Arrange)","夏毛 - あさやけもゆうやけもないん.arrange","夏毛 - あさやけもゆうやけもないん.arrange"}
	local sameRand = math.random(1,3)
	local C1,C2,C3,C4 = RGB(26,0,75),RGB(78,13,144),RGB(26,0,75),RGB(78,13,144)
	DevoyanceRecolorMaterial("EUPHORIC",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",C1,C2,RGB(130,130,130),RGB(255,255,255))
	DevoyanceSongChange(EuphoricMusic[sameRand],1,0,1,MusicNames1[sameRand]) PreviousMusicPitch = 1
	HumanoidValues(16,50)
	GuiRecolor(C1,C2)
	ExtraWings(false)

elseif Mode == "OriginalStartingMode" then
	--Head.DevoyanceV4HeadGui.Enabled = false
	FlyBool,FlyHeight = false,0
	local C1,C2,C3,C4 = RGB(45,125,255),RGB(255,195,145),RGB(45,125,255),RGB(255,195,145)
	DevoyanceRecolorMaterial(" ",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",C1,C2,RGB(130,130,130),RGB(255,255,255))
	DevoyanceSongChange(15461489450,1,0,1,"x髥莏 - i") PreviousMusicPitch = 1
	HumanoidValues(16,50)
	GuiRecolor(C1,C2)
	ExtraWings(false)

elseif Mode == "Euphorius" then
	FlyBool,FlyHeight = false,0
	local C1,C2,C3,C4 = RGB(26,0,75),RGB(78,13,144),RGB(26,0,75),RGB(78,13,144)
	DevoyanceRecolorMaterial("EUPHORIUS",C2,C1,C4,C3,"Neon","Neon","Neon","Neon",C1,C2,RGB(130,130,130),RGB(255,255,255))
	DevoyanceSongChange(15461513960,1,0,1,"夏毛 - Untitled") PreviousMusicPitch = 1
	HumanoidValues(16,50)
	GuiRecolor(C1,C2)
	ExtraWings(false)
end

mouse.KeyDown:Connect(function(Key)

	if Key == "q" and Mode ~= "Euphoric" and SitBool == false then
		local OriginalTable = {"Euphoric","Euphoric","Euphoric","Euphoric","OriginalStartingMode","Euphorius"}
		Mode = OriginalTable[math.random(1,6)]
		if Mode == "Euphoric" then
			FlyBool,FlyHeight = false,0
			local EuphoricMusic = {15461489450,15461477815,15461495456}
			local MusicNames1 = {"夏毛 - あさやけもゆうやけもないんだ","夏毛 - あさやけもゆうやけもないんだ","夏毛 - あさやけもゆうやけもないんだ","夏毛 - _","夏毛 - あさやけもゆうやけもないんだ","夏毛 - あさやけもゆうやけもないん (けだるぎ Arrange)","夏毛 - あさやけもゆうやけもないん.arrange","夏毛 - あさやけもゆうやけもないん.arrange"}
			local sameRand = math.random(1,3)
			local C1,C2,C3,C4 = RGB(26,0,75),RGB(78,13,144),RGB(26,0,75),RGB(78,13,144)
			DevoyanceRecolorMaterial("EUPHORIC",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",C1,C2,RGB(130,130,130),RGB(255,255,255))
			DevoyanceSongChange(EuphoricMusic[sameRand],1,0,1,MusicNames1[sameRand]) PreviousMusicPitch = 1
			HumanoidValues(16,50)
			GuiRecolor(C1,C2)
			ExtraWings(false)

		elseif Mode == "OriginalStartingMode" then
			FlyBool,FlyHeight = false,0
			--Head.DevoyanceV4HeadGui.Enabled = false
			local C1,C2,C3,C4 = RGB(45,125,255),RGB(255,195,145),RGB(45,125,255),RGB(255,195,145)
			DevoyanceRecolorMaterial(" ",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",C1,C2,RGB(130,130,130),RGB(255,255,255))
			DevoyanceSongChange(15461489450,1,0,1,"x髥莏 - i") PreviousMusicPitch = 1
			HumanoidValues(16,50)
			GuiRecolor(C1,C2)
			ExtraWings(false)

		elseif Mode == "Euphorius" then
			FlyBool,FlyHeight = false,0
			local C1,C2,C3,C4 = RGB(26,0,75),RGB(78,13,144),RGB(26,0,75),RGB(78,13,144)
			DevoyanceRecolorMaterial("EUPHORIUS",C2,C1,C4,C3,"Neon","Neon","Neon","Neon",C1,C2,RGB(130,130,130),RGB(255,255,255))
			DevoyanceSongChange(15461530544,1,0,1,"夏毛 - Untitled") PreviousMusicPitch = 1
			HumanoidValues(16,50)
			GuiRecolor(C1,C2)
			ExtraWings(false)
		end
	end

	if Key == "b" and Mode ~= "NIL" and Mode == "Euphoric" and SitBool == false then
		Mode = "NIL"
		FlyBool,FlyHeight = true,7
		local C1,C2,C3,C4 = RGB(0,0,0),RGB(0,0,0),RGB(0,0,0),RGB(0,0,0)
		DevoyanceRecolorMaterial("NIL",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",C1,C2,RGB(130,130,130),RGB(255,255,255))
		DevoyanceSongChange(15461530544,3,0,1,"M1DY - 959BPM") PreviousMusicPitch = 1
		HumanoidValues(999999,500)
		GuiRecolor(C1,C2)
		ExtraWings(false)
		PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower

	elseif Key == "b" and Mode ~= "NIL" and Mode == "OriginalStartingMode" and SitBool == false then
		Mode = "NIL"
		FlyBool,FlyHeight = true,7
		local C1,C2,C3,C4 = RGB(0,0,0),RGB(0,0,0),RGB(0,0,0),RGB(0,0,0)
		DevoyanceRecolorMaterial("NIL",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",C1,C2,RGB(130,130,130),RGB(255,255,255))
		DevoyanceSongChange(15461530544,3,0,1,"M1DY - 959BPM") PreviousMusicPitch = 1
		HumanoidValues(999999,500)
		GuiRecolor(C1,C2)
		ExtraWings(false)
		PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower

	elseif Key == "e" and Mode ~= "Ambiguation" and SitBool == false then
		Mode = "Ambiguation"
		FlyBool,FlyHeight = false,0
		local AmbigMusic = {14952016255,14952016255}
		local AmbigMusicNames = {"xx4号 - くらげ(Jellyfish)","xx4号 - くらげ(Jellyfish)","xx4号 - くらげ(Jellyfish)","xx4号 - くらげ(Jellyfish)","xx4号 - くらげ(Jellyfish) (x0o0x_ Cover)"}
		local sameRand2 = math.random(1,2)
		local C1,C2,C3,C4 = RGB(135,155,255),RGB(145,100,255),RGB(135,155,255),RGB(145,100,255)
		DevoyanceRecolorMaterial("AMBIGUATION",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",C1,C2,RGB(130,130,130),RGB(255,255,255))
		DevoyanceSongChange(AmbigMusic[sameRand2],1,0,1,AmbigMusicNames[sameRand2]) PreviousMusicPitch = 1
		HumanoidValues(16,50)
		GuiRecolor(C1,C2)
		ExtraWings(false)
		PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower

	elseif Key == "r" and Mode ~= "Embers" and SitBool == false then
		Mode = "Embers"
		FlyBool,FlyHeight = false,0
		local C1,C2,C3,C4 = RGB(195,75,65),RGB(65,45,25),RGB(195,75,65),RGB(65,45,25)
		DevoyanceRecolorMaterial("EMBERS",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",C2,C1,RGB(130,130,130),RGB(255,255,255))
		DevoyanceSongChange(15027902563,1,0,1,"Distance OST - Embers") PreviousMusicPitch = 1
		HumanoidValues(500,50)
		GuiRecolor(C1,C2)
		ExtraWings(false)
		PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower
	end

	if Key == "m" and Mode == "Euphoric" and SitBool == false  then
		local ObscurityTable = {"Obscurity","Obscurity","Obscurity","Obscurity","Randomization"}
		Mode = ObscurityTable[math.random(1,5)]
		if Mode == "Obscurity" then
			FlyBool,FlyHeight = false,0
			local C1,C2,C3,C4 = RGB(25,45,65),RGB(65, 45, 85),RGB(25,45,65),RGB(65, 45, 85)
			DevoyanceRecolorMaterial("OBSCURITY",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",RGB(25,45,65),RGB(65, 125, 145),RGB(25,45,65),RGB(145,185,255))
			ExtraWings(false)
			DevoyanceSongChange(14954906099,1,0,1,"x0o0x_ - Untitled (UTAU Defoko Version)") PreviousMusicPitch = 1
			HumanoidValues(16,100)
			GuiRecolor(C1,C2)
			PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower

		elseif Mode == "Randomization" then			
			FlyBool,FlyHeight = false,0
			local C1,C2,C3,C4 = RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255))
			DevoyanceRecolorMaterial("RANDOMIZATION",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",C1,C2,C3,C4)
			ExtraWings(false)
			DevoyanceSongChange(15461612709,1,56.5,1,"x髥莏 - ^") PreviousMusicPitch = 1
			HumanoidValues(16,100)
			GuiRecolor(C1,C2)
			PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower
		end

	elseif Key == "m" and Mode == "Euphorius" and SitBool == false  then
		local ObscurityTable = {"Obscurity","Obscurity","Obscurity","Obscurity","Randomization"}
		Mode = ObscurityTable[math.random(1,5)]
		if Mode == "Obscurity" then
			FlyBool,FlyHeight = false,0
			local C1,C2,C3,C4 = RGB(25,45,65),RGB(65, 45, 85),RGB(25,45,65),RGB(65, 45, 85)
			DevoyanceRecolorMaterial("OBSCURITY",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",RGB(25,45,65),RGB(65, 125, 145),RGB(25,45,65),RGB(145,185,255))
			ExtraWings(false)
			DevoyanceSongChange(14954906099,1,0,1,"x0o0x_ - Untitled (UTAU Defoko Version)") PreviousMusicPitch = 1
			HumanoidValues(16,100)
			GuiRecolor(C1,C2)
			PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower

		elseif Mode == "Randomization" then		
			FlyBool,FlyHeight = false,0
			local C1,C2,C3,C4 = RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255))
			DevoyanceRecolorMaterial("RANDOMIZATION",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",C1,C2,C3,C4)
			ExtraWings(false)
			DevoyanceSongChange(15461612709,1,56.5,1,"x髥莏 - ^") PreviousMusicPitch = 1
			HumanoidValues(16,100)
			GuiRecolor(C1,C2)
			PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower
		end

	elseif Key == "m" and Mode == "OriginalStartingMode" and SitBool == false  then
		local ObscurityTable = {"Obscurity","Obscurity","Obscurity","Obscurity","Randomization"}
		Mode = ObscurityTable[math.random(1,5)]
		if Mode == "Obscurity" then
			FlyBool,FlyHeight = false,0
			local C1,C2,C3,C4 = RGB(25,45,65),RGB(65, 45, 85),RGB(25,45,65),RGB(65, 45, 85)
			DevoyanceRecolorMaterial("OBSCURITY",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",RGB(25,45,65),RGB(65, 125, 145),RGB(25,45,65),RGB(145,185,255))
			ExtraWings(false)
			DevoyanceSongChange(14954906099,1,0,1,"x0o0x_ - Untitled (UTAU Defoko Version)") PreviousMusicPitch = 1
			HumanoidValues(16,100)
			GuiRecolor(C1,C2)
			PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower

		elseif Mode == "Randomization" then			
			FlyBool,FlyHeight = false,0
			local C1,C2,C3,C4 = RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255))
			DevoyanceRecolorMaterial("RANDOMIZATION",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",C1,C2,C3,C4)
			ExtraWings(false)
			DevoyanceSongChange(15461612709,1,56.5,1,"x髥莏 - ^") PreviousMusicPitch = 1
			HumanoidValues(16,100)
			GuiRecolor(C1,C2)
			PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower
		end

	elseif Key == "n" and Mode == "Obscurity" and SitBool == false  then
		local Irrational = {"Inexplicability","Inexplicability","Inexplicability","Irrationality","Irrationality","Irrationality"}
		Mode = Irrational[math.random(1,5)]
		if Mode == "Inexplicability" then
			FlyBool,FlyHeight = false,0
			local C1,C2,GRC1 = RGB(175,175,175),RGB(95,95,95),RGB(75,75,75)
			DevoyanceRecolorMaterial("INEXPLICABILITY",C1,C2,C1,C2,"Neon","Neon","Neon","Neon",C1,C2,GRC1,RGB(255,255,255))
			ExtraWings(false)
			DevoyanceSongChange(15461706215,1,0,1.05, "??? - うんとこしょ (xx4号)") PreviousMusicPitch = 1
			HumanoidValues(16,150)
			GuiRecolor(C1,C2)
			PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower
		end

		if Mode == "Irrationality" then
			FlyBool,FlyHeight = false,0
			local C1,C2,GRC1,GRC2 = RGB(25,45,65),RGB(45,85,95),RGB(45,65,125),RGB(195,185,255)
			DevoyanceRecolorMaterial("IRRATIONALITY",C1,C2,C1,C2,"Neon","Neon","Neon","Neon",C1,C2,GRC1,GRC2)
			ExtraWings(false)
			DevoyanceSongChange(15461744434,1,0,1, "Kurage Meme - 6_y") PreviousMusicPitch = 1
			HumanoidValues(16,150)
			GuiRecolor(C1,C2)
			PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower
		end

	elseif Key == "n" and Mode == "Randomization" and SitBool == false  then
		local Irrational = {"Inexplicability","Inexplicability","Inexplicability","Irrationality","Irrationality","Irrationality"}
		Mode = Irrational[math.random(1,5)]
		if Mode == "Inexplicability" then
			FlyBool,FlyHeight = false,0
			local C1,C2,GRC1 = RGB(175,175,175),RGB(95,95,95),RGB(75,75,75)
			DevoyanceRecolorMaterial("INEXPLICABILITY",C1,C2,C1,C2,"Neon","Neon","Neon","Neon",C1,C2,GRC1,RGB(255,255,255))
			ExtraWings(false)
			DevoyanceSongChange(15461706215,1,0,1.05, "??? - うんとこしょ (xx4号)") PreviousMusicPitch = 1
			HumanoidValues(16,150)
			GuiRecolor(C1,C2)
			PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower
		end

		if Mode == "Irrationality" then
			FlyBool,FlyHeight = false,0
			local C1,C2,GRC1,GRC2 = RGB(25,45,65),RGB(45,85,95),RGB(45,65,125),RGB(195,185,255)
			DevoyanceRecolorMaterial("IRRATIONALITY",C1,C2,C1,C2,"Neon","Neon","Neon","Neon",C1,C2,GRC1,GRC2)
			ExtraWings(false)
			DevoyanceSongChange(15461744434,1,0,1, "Kurage Meme - 6_y") PreviousMusicPitch = 1
			HumanoidValues(16,150)
			GuiRecolor(C1,C2)
			PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower
		end

	elseif Key == "t" and Mode ~= "Serenity" and SitBool == false  then
		Mode = "Serenity"
		FlyBool,FlyHeight = false,0
		local C1,C2,C3,C4,GRC1 = RGB(95,25,165),RGB(95,65,255),RGB(95,25,165),RGB(95,65,255),RGB(20,35,65) 
		DevoyanceRecolorMaterial("SERENITY",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",C1,C2,GRC1,RGB(255,255,255))
		ExtraWings(false)
		DevoyanceSongChange(15461760861,3.5,0,1.075, "Yume 2kki OST - The Ceiling") PreviousMusicPitch = 1.075
		HumanoidValues(16,150)
		GuiRecolor(C1,C2)
		PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower

	elseif Key == "n" and Mode ~= "Convolution" and Mode == "Serenity" and SitBool == false  then
		Mode = "Convolution"
		FlyBool,FlyHeight = false,0
		local C1,C2,C3,C4,GRC1 = RGB(25,45,75),RGB(45,75,100),RGB(25,45,75),RGB(45,75,100),RGB(20,35,65) 
		DevoyanceRecolorMaterial("CONVOLUTION",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",C1,C2,GRC1,RGB(255,255,255))
		ExtraWings(false)
		DevoyanceSongChange(14954847942,1,0,1, "0x000002d7 (⌘) - melancholy") PreviousMusicPitch = 1
		HumanoidValues(16,150)
		GuiRecolor(C1,C2)
		PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower

	elseif Key == "m" and Mode == "Serenity" and SitBool == false  then
		local DilutionTable = {"Dilution","Dilution","Dilution","Tranquility","Tranquility","Tranquility","Synergistic","Synergistic"}
		Mode = DilutionTable[math.random(1,8)]
		if Mode == "Dilution" then
			FlyBool,FlyHeight = false,0
			local C1,C2,GRC1 = RGB(165,165,175),RGB(145,125,255),RGB(125,65,255)
			DevoyanceRecolorMaterial("DILUTION",C1,C2,C1,C2,"Neon","Neon","Neon","Neon",C1,C2,GRC1,RGB(255,255,255))
			ExtraWings(false)
			DevoyanceSongChange(14954844955,3.5,0,.95, "Yume 2kki OST - moseni - Lotus Waters") PreviousMusicPitch = .95
			HumanoidValues(10,50)
			GuiRecolor(C1,C2)
			PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower

		elseif Mode == "Tranquility" then
			FlyBool,FlyHeight = false,0
			local C1,C2,GRC1 = RGB(30,65,45),RGB(50,100,85),RGB(35,125,65)
			DevoyanceRecolorMaterial("TRANQUILITY",C1,C2,C1,C2,"Neon","Neon","Neon","Neon",C1,C2,GRC1,RGB(255,255,255))
			ExtraWings(false)
			DevoyanceSongChange(15461814188,3.5,0,1, "LCDDEM OST - bgm006") PreviousMusicPitch = 1
			HumanoidValues(10,50)
			GuiRecolor(C1,C2)
			PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower

		elseif Mode == "Synergistic" then
			FlyBool,FlyHeight = false,0
			local C1,C2,GRC1 = RGB(20,60,50),RGB(0,115,85),RGB(35,125,65)
			DevoyanceRecolorMaterial("SYNERGISTIC",C2,C1,C2,C1,"Neon","Neon","Neon","Neon",C1,C2,GRC1,RGB(255,255,255))
			ExtraWings(false)
			DevoyanceSongChange(14954908089,1,0,.45, "? ? ?") PreviousMusicPitch = .45
			HumanoidValues(10,50)
			GuiRecolor(C1,C2)
			PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower
		end

	elseif Key == "y" and Mode ~= "Affectionate" and SitBool == false  then
		Mode = "Affectionate"
		FlyBool,FlyHeight = false,0
		local C1,C2,GRC1 = RGB(145,125,255),RGB(165, 165, 175),RGB(125,65,255)
		DevoyanceRecolorMaterial("AFFECTIONATE",C1,C2,C1,C2,"Neon","Neon","Neon","Neon",C1,C2,GRC1,RGB(255,255,255))
		ExtraWings(false)
		DevoyanceSongChange(15461828009,1,0,1, "x髥莏 - HappyValentine") PreviousMusicPitch = 1
		HumanoidValues(20,150)
		GuiRecolor(C1,C2)
		PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower

	elseif Key == "m" and Mode ~= "Convivial" and Mode == "Affectionate"  and SitBool == false  then
		Mode = "Convivial"
		FlyBool,FlyHeight = true,3.75
		local C1,C2,GRC1 = RGB(125,255,145),RGB(165,200,175),RGB(75,125,85)
		DevoyanceRecolorMaterial("CONVIVIAL",C2,C1,C2,C1,"Neon","Neon","Neon","Neon",C1,C2,GRC1,RGB(255,255,255))
		ExtraWings(false)
		DevoyanceSongChange(15461845458,1,15,1,"ああああ - をかけるアドベンチャー ～ we are forever friends! [Long Version]") PreviousMusicPitch = 1
		HumanoidValues(35,150)
		GuiRecolor(C1,C2)
		PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower

	elseif Key == "b" and Mode == "Affectionate" and SitBool == false  then
		local how = {"Debiliation","Debiliation","Debiliation","how","how"}
		Mode = how[math.random(1,5)]
		if Mode == "Debiliation" then
			FlyBool,FlyHeight = false,6
			local C1,C2,GRC1 = RGB(35,65,95),RGB(45,125,255),RGB(65,65,65)
			DevoyanceRecolorMaterial("DEBILIATION",C1,C2,C1,C2,"Neon","Neon","Neon","Neon",C1,C2,GRC1,RGB(255,255,255))
			ExtraWings(false)
			DevoyanceSongChange(15461857949,1,0,1, "いずら17号 - 予言屋さん") PreviousMusicPitch = 1
			HumanoidValues(35,150)
			GuiRecolor(C1,C2)
			PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower
		end

		if Mode == "how" then
			FlyBool,FlyHeight = false,6
			local C1,C2,GRC1 = RGB(35,95,65),RGB(45,255,125),RGB(65,65,65)
			DevoyanceRecolorMaterial("how",C1,C2,C1,C2,"Neon","Neon","Neon","Neon",C1,C2,GRC1,RGB(255,255,255))
			ExtraWings(false)
			DevoyanceSongChange(15461865549,1,0,1, "ああああ - 「カラクサタウン」") PreviousMusicPitch = 1
			HumanoidValues(35,150)
			GuiRecolor(C1,C2)
			PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower
		end

	elseif Key == "j" and Mode ~= "Hyperium" and SitBool == false  then
		Mode = "Hyperium"
		FlyBool,FlyHeight = true,10
		local C1,C2,C3,C4 = RGB(0,125,255),RGB(15,35,45),RGB(95,0,255),RGB(15,35,45)
		DevoyanceRecolorMaterial("HYPERIUM",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",C2,C1,RGB(130,130,130),RGB(255,255,255))
		ExtraWings(true,C1,C2,C3,C4)
		DevoyanceSongChange(15461886538,1,30,1,"T+Pazolite - Ultrasonic Anthem (Remastered Version)") PreviousMusicPitch = 1
		HumanoidValues(100000,500)
		GuiRecolor(C1,C2)
		PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower

	elseif Key == "k" and Mode ~= "Visualization" and SitBool == false  then
		Mode = "Visualization"
		local RandomSetting = {15461903482,15461911069}
		local RandomSettingName = {"こわがりなりそこない。 - 00B","xx4gou RETUNE // Lamprey hole"}
		local RandomSettingTime = {0,93.5}
		local RandomVolume = {1,2}
		local Randomizer = math.random(1,2)
		FlyBool,FlyHeight = false,0
		Player.PlayerGui.DevoyanceV4ScreenGui["Main Gui"].MusicBar.Visible = false
		local C1,C2,C3,C4 = RGB(0,0,0),RGB(0,0,0),RGB(0,0,0),RGB(0,0,0)
		DevoyanceRecolorMaterial("VISUALIZATION",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",C1,C2,RGB(130,130,130),RGB(255,255,255))
		ExtraWings(false)
		DevoyanceSongChange(RandomSetting[Randomizer],RandomVolume[Randomizer],RandomSettingTime[Randomizer],1,RandomSettingName[Randomizer]) PreviousMusicPitch = 1
		--Player.PlayerGui.DevoyanceV4ScreenGui["Visualizer Stuff"].VisualizerPanel.IDLabel.Modifier.Text = tostring(RandomSetting[Randomizer])
		--Player.PlayerGui.DevoyanceV4ScreenGui["Visualizer Stuff"].VisualizerPanel.TimeLabel.Modifier.Text = tostring(RandomSettingTime[Randomizer])
		script.VisualizerData:FireClient(Player,tostring(RandomSetting[Randomizer]),tostring(RandomSettingTime[Randomizer]))
		
	elseif Key == "u" and Mode ~= "Inundated" then
		Mode = "Inundated"
		FlyBool,FlyHeight = false,0
		local C1 = Color3.fromRGB(35,65,95) local C2 = Color3.fromRGB(25,95,165) local GRC1 = Color3.fromRGB(125,65,255) local GRC2 = Color3.fromRGB(255,255,255) 
		DevoyanceRecolorMaterial("INUNDATED",C1,C2,C1,C2,"Neon","Neon","Neon","Neon",C2,C1,GRC1,GRC2)
		ExtraWings(false)
		DevoyanceSongChange(15751154351,3.5,0,1, "x0o0x_ -          ") PreviousMusicPitch = 1
		HumanoidValues(16,450)
		GuiRecolor(C1,C2)
		PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower
		
	elseif Key == "b" and Mode == "Disconsolation" then
		Mode = "Shatteration"
		FlyBool,FlyHeight = false,0
		local C1 = Color3.fromRGB(65,65,65) local C2 = Color3.fromRGB(95,95,95) local GRC1 = Color3.fromRGB(75,75,75) local GRC2 = Color3.fromRGB(255,255,255)
		DevoyanceRecolorMaterial("SHATTERATION",C2,C1,C2,C1,"Neon","Neon","Neon","Neon",C1,C2,C2,GRC2)
		ExtraWings(false)
		DevoyanceSongChange(14954908089,3.5,0,1,"アブジェ - Piano Cover") PreviousMusicPitch = 1
		HumanoidValues(14,50)
		GuiRecolor(C1,C2)
		PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower
		
	elseif Key == "m" and Mode ~= "Customization" and Mode == "Visualization" and SitBool == false  then
		Mode = "Customization"
		FlyBool,FlyHeight = false,0
		Player.PlayerGui.DevoyanceV4ScreenGui["Main Gui"].MusicBar.Visible = false
		local C1,C2,C3,C4 = RGB(0,0,0),RGB(0,0,0),RGB(0,0,0),RGB(0,0,0)
		DevoyanceRecolorMaterial(RMTName,CustomC1,CustomC2,CustomC3,CustomC4,"Neon","Neon","Neon","Neon",CustomC1,CustomC2,RGB(100,100,130),RGB(255,255,255))
		ExtraWings(false)
		DevoyanceSongChange(2032024538,1,0,1,"Frums - theyaremanycolors") PreviousMusicPitch = 1
		HumanoidValues(16,100)
		PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower

	elseif Key == "b" and Mode == "Irrationality" and SitBool == false then
		Mode = "Disconsolation"
		FlyBool,FlyHeight = false,0
		local C1,C2,C3,C4 = RGB(125,175,255),RGB(15,35,65)
		DevoyanceRecolorMaterial("DISCONSOLATION",C2,C1,C2,C1,"Glass","Neon","Glass","Neon",C2,C1,RGB(130,130,130),RGB(255,255,255))
		ExtraWings(false)
		local TableB = {14951904089,14966696979}
		local songNames = {"全てあなたの所為です。- アブジェ","全てあなたの所為です。- アブジェ","全てあなたの所為です。- アブジェ (x0o0x_ Cover)","全てあなたの所為です。- アブジェ (x0o0x_ Cover)"}
		local randIndex = math.random(1,#TableB)
		DevoyanceSongChange(TableB[randIndex],1,0,1,songNames[randIndex]) PreviousMusicPitch = 1
		HumanoidValues(16,50)
		GuiRecolor(C1,C2)
		PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower

	elseif Key == "l" and Music.Playing == true then
		Music.Playing = false

	elseif Key == "l" and Music.Playing == false then
		Music.Playing = true

	elseif Key == "equals" and Music.Parent == Player.PlayerGui then
		Music.Parent = Torso

	elseif Key == "equals" and Music.Parent == Torso then
		Music.Parent = Player.PlayerGui

	elseif Key == "quote" then
		Music.TimePosition = 0
		
	elseif Key == "minus" then
		headGuiEnabled = not headGuiEnabled

	elseif Key == "one" and EyeToggle2 == false and EyeToggle == false and Aero == true then
		EyeToggle = true
		script.Resources.Aero.EyeParts["Right Eye"].Eye.Enabled = true
		script.Resources.Aero.EyeParts["Left Eye"].Eye.Enabled = true
		script.Resources.Aero.EyeParts["REyeHalf"].Eye.Enabled = false
		script.Resources.Aero.EyeParts["LEyeHalf"].Eye.Enabled = false

	elseif Key == "one" and EyeToggle2 == false and EyeToggle == true and Aero == true then
		EyeToggle = false	
		script.Resources.Aero.EyeParts["Right Eye"].Eye.Enabled = false
		script.Resources.Aero.EyeParts["Left Eye"].Eye.Enabled = false
		script.Resources.Aero.EyeParts["REyeHalf"].Eye.Enabled = false
		script.Resources.Aero.EyeParts["LEyeHalf"].Eye.Enabled = false

	elseif Key == "two" and EyeToggle2 == false and EyeToggle == false  and Aero == true then
		EyeToggle2 = true
		script.Resources.Aero.EyeParts["Right Eye"].Eye.Enabled = false
		script.Resources.Aero.EyeParts["Left Eye"].Eye.Enabled = false
		script.Resources.Aero.EyeParts["REyeHalf"].Eye.Enabled = true
		script.Resources.Aero.EyeParts["LEyeHalf"].Eye.Enabled = true

	elseif Key == "two" and EyeToggle2 == true and EyeToggle == false  and Aero == true then
		EyeToggle2 = false	
		script.Resources.Aero.EyeParts["Right Eye"].Eye.Enabled = false
		script.Resources.Aero.EyeParts["Left Eye"].Eye.Enabled = false
		script.Resources.Aero.EyeParts["REyeHalf"].Eye.Enabled = false
		script.Resources.Aero.EyeParts["LEyeHalf"].Eye.Enabled = false		

	elseif Key == "three" and Colorful == false and Aero == true then
		Colorful = true
		script.Resources.Aero.LocksOfIce.Transparency = 1
		script.Resources.Aero.LocksOfIce2.Transparency = 0

	elseif Key == "three" and Colorful == true and Aero == true then
		Colorful = false
		script.Resources.Aero.LocksOfIce.Transparency = 0
		script.Resources.Aero.LocksOfIce2.Transparency = 1

	elseif Key == "leftbracket" and GradientToggled == false then
		GradientToggled = true
		for i,v in pairs(script.Resources.Aero.Gradient:GetDescendants()) do if v:IsA("MeshPart") then v.Transparency = v.Name end end
		if GradientToggled == true and Mode == "Synergistic" then
			Music.Reverb.Enabled = false
			Music.Reverb.DecayTime,Music.Reverb.Density,Music.Reverb.Diffusion,Music.Reverb.DryLevel,Music.Reverb.WetLevel = 5,.5,1,0,-5
			Music.Reverb.Priority = 0
		elseif GradientToggled == true and Mode ~= "Synergistic" then
			Music.Reverb.Enabled = true
			Music.Reverb.DecayTime,Music.Reverb.Density,Music.Reverb.Diffusion,Music.Reverb.DryLevel,Music.Reverb.WetLevel = 5,.5,1,0,-5
			Music.Reverb.Priority = 0
		end
		if Aero == true then
			script.Resources.Aero.Shades.Transparency = 1
		end

	elseif Key == "rightbracket" and GradientToggled == true then
		GradientToggled = false
		for i,v in pairs(script.Resources.Aero.Gradient:GetDescendants()) do if v:IsA("MeshPart") then v.Transparency = 1 end end
		Music.PlaybackSpeed = PreviousMusicPitch
		Music.Reverb.Enabled = false
		if Aero == true then
			script.Resources.Aero.Shades.Transparency = 0
		end

	elseif Key == "z" and Mode == "Debiliation" and SpinBool == false then
		SpinBool = true
	elseif Key == "z" and Mode == "Debiliation" and SpinBool == true then
		SpinBool = false

	elseif Key == "z" then
		LocationChange()

	elseif Key == "z" and Mode == "how" and SpinBool == false then
		SpinBool = true
	elseif Key == "z" and Mode == "how" and SpinBool == true then
		SpinBool = false

	elseif Key == "z" and Mode == "Randomization" then			
		local C1,C2,C3,C4 = RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255))
		DevoyanceRecolorMaterial("RANDOMIZATION",C1,C2,C3,C4,"Neon","Neon","Neon","Neon",C1,C2,C3,C4)
		GuiRecolor(C1,C2)

	elseif Key == "zero" and SitBool == false then
		SitBool = true
		HumanoidValues(0,0)

	elseif Key == "zero" and SitBool == true then
		SitBool = false
		HumanoidValues(PreviousWS,PreviousJP)
	end
end)

-- Artificial HB --
local HB = Instance.new("BindableEvent",script) HB.Name = "Event" script:WaitForChild("Event") 
local OF = 0 local AFL = false local TRNDR = false local LF = tick() local Frame = 1/60 HB:Fire() game:GetService("RunService").Heartbeat:Connect(function(S,P) 
	OF = OF + S if OF >= Frame then if AFL then script.Heartbeat:Fire()	 LF = tick() else for i = 1, math.floor(OF / Frame) do HB:Fire() end LF = tick() end
		if TRNDR then OF = 0 else OF = OF - Frame * math.floor(OF / Frame) end end end)

function QuickWait(Number) if Number == 0 or Number == nil then HB.Event:wait() else for i = 0, Number do HB.Event:wait() end end end

coroutine.resume(coroutine.create(function()
	while wait() do
		ModeValue.Value = Mode
		if Character:FindFirstChild("AeroSc") then
			Character.AeroSc:Destroy()
		end
	end
end))

coroutine.resume(coroutine.create(function()
	while wait() do
		if Aero == true then
			if Mode == "Inexplicability" then
				script.Resources.Aero.AeroHead.AeroF.Texture = "rbxassetid://2813766627"	
			elseif EyeToggle2 == true then
				script.Resources.Aero.AeroHead.AeroF.Texture = "rbxassetid://6759267948"
			elseif Mode == "Disconsolation" then
				script.Resources.Aero.AeroHead.AeroF.Texture = "rbxassetid://6759267948"
			else
				script.Resources.Aero.AeroHead.AeroF.Texture = "rbxassetid://4896443994"
			end
		end
		if Mode ~= "Visualization" then
			Player.PlayerGui.DevoyanceV4ScreenGui["Main Gui"].MusicBar.Visible = true
		end
		if Mode ~= "OriginalStartingMode" and headGuiEnabled then 
			Head.DevoyanceV4HeadGui.Enabled = true
		else
			Head.DevoyanceV4HeadGui.Enabled = false
		end
		if Mode == "Synergistic" and GradientToggled == true then
			Music.PlaybackSpeed = .45
		elseif GradientToggled == true then
			Music.PlaybackSpeed = .85	
		end
	end
end))

coroutine.resume(coroutine.create(function()
	while true do QuickWait()
		if Aero == true then
			local blacklistaccessories = {"Silver","MadScientistHair","FurryWhiteCoatCollar","BlueHoodie","HQWingedGlasses","WhiteStyledBackHair","WhiteStyledHair"} -- case sensitive
			for i,v in pairs(Character:GetDescendants()) do
				if v:IsA("Accessory") then
					for A,B in pairs(blacklistaccessories) do
						if string.find(v.Name,B) then
							v:Destroy()
							Character.Head.Transparency = 1
							Character.Head.face.Transparency = 1
						end
					end
				end
			end
		end

		if Mode == "Visualization" then
			Player.PlayerGui.DevoyanceV4ScreenGui["Visualizer Stuff"].VisualizerPanel.Visible = true
			Player.PlayerGui.DevoyanceV4ScreenGui.Custom.Colors.Visible = false
			Player.PlayerGui.DevoyanceV4ScreenGui.Custom.ModeName.Visible = false
			local VSense = Loudness/875
			local VSense2 = Loudness/100
			if VSense >= 1 then
				VSense = 1
			end
			local C1,C2 = HSV(S/360 - math.floor(S/360),1,VSense),HSV(0,0,VSense)
			GuiRecolor(C1,C2)
			DevoyanceRecolorMaterial("VISUALIZATION",C2,C1,C2,C1,"Neon","Neon","Neon","Neon",C1,C2,RGB(130,130,130),RGB(255,255,255))
			LPL.Range =  5 * VSense2 LPL.Brightness =  1.5 * VSense2
			RPL.Range =  5 * VSense2 RPL.Brightness =  1.5 * VSense2
			coroutine.resume(coroutine.create(function()
				if SitBool == false then
					HumanoidValues(math.ceil(5 * Loudness/10),math.ceil(10 * Loudness/15))
					PreviousWS,PreviousJP = Humanoid.WalkSpeed,Humanoid.JumpPower
				elseif SitBool == true then
					Humanoid(0,0)
				end
			end))

		elseif Mode ~= "Visualization" then
			Player.PlayerGui.DevoyanceV4ScreenGui["Visualizer Stuff"].VisualizerPanel.Visible = false
			LPL.Range = 6 LPL.Brightness = 2
			RPL.Range = 6 RPL.Brightness = 2 
			Music.Chorus.Enabled,Music.Equalizer.Enabled,Music.Reverb.Enabled,Music.PitchShift.Enabled,Music.Echo.Enabled = false,false,false,false,false
			if GradientToggled == false then
				Music.Chorus.Enabled,Music.Equalizer.Enabled,Music.Reverb.Enabled,Music.PitchShift.Enabled,Music.Echo.Enabled = false,false,false,false,false
			elseif Mode ~= "Synergistic" then
				Music.Reverb.Enabled = true
				if Mode == "Synergistic" then
					Music.Reverb.Enabled = false
				end
			end
		end

		if Mode == "Affectionate" then
			local LDNS = Loudness/700
			if LDNS >= 1 then
				LDNS = 1
			end
			local C1,C2,GRC1 = HSV(.8,0.4,LDNS),RGB(35,20,55),RGB(0,0,0)
			DevoyanceRecolorMaterial("AFFECTIONATE",C2,C1,C2,C1,"Neon","Neon","Neon","Neon",C1,C2,RGB(130,130,130),RGB(255,255,255))
			ExtraWings(false)
			GuiRecolor(C1,C2)
		end
		if Mode == "Irrationality" then
			FX("Sphere",true,.5,10,WingFolder1.Wing1.Color2.Color,"Neon",HMNRoot.CFrame * CFN(math.random(-8,8),-2.75,math.random(-8,5)) * CFA(90,0,0),15,1,V3(0,0,0),V3(.5,.5,.5),V3(2,2,2),0,1)
		end
		if Mode == "Convivial" then
			local Position = CFN(math.random(-7,7),math.random(-3,9),math.random(-7,7))
			FX("Sphere",true,1,7,WingFolder1.Wing1.Color1.Color,"ForceField",HMNRoot.CFrame * Position * CFA(90,0,0),10,.1,V3(0,0,0),V3(1.25,1.25,1.25),V3(1.25,1.25,1.25),.7,1)
			FX("Sphere",false,1,7,WingFolder1.Wing1.Color2.Color,"Neon",HMNRoot.CFrame * Position * CFA(90,0,0),10,.1,V3(0,0,0),V3(.75,.75,.75),V3(.75,.75,.75),.7,1)
		end
		if Mode == "Customization" then
			Player.PlayerGui.DevoyanceV4ScreenGui.Custom.Colors.Visible = true
			Player.PlayerGui.DevoyanceV4ScreenGui.Custom.ModeName.Visible = true
		elseif Mode ~= "Customization" then
			Player.PlayerGui.DevoyanceV4ScreenGui.Custom.Colors.Visible = false
			Player.PlayerGui.DevoyanceV4ScreenGui.Custom.ModeName.Visible = false
		end
	end
end))


coroutine.resume(coroutine.create(function()
	while true do
		QuickWait()
		local RT = 0
		if Mode == "Hyperium" or Mode == "NIL" then
			RT = 50 + S * 3
			W1.C0 = CFN(0,0,1.5) * CFA(90,125,-8 * SN(S/30))
			W2.C0 = CFN(0,0,1.5) * CFA(90,-90,-8 * SN(S/30))
			W3.C0 = CFN(0,0,1.5) * CFA(90,50,- 8 * SN(S/30))
			W4.C0 = CFN(0,0,1.5) * CFA(90,115 + RT,0)
			W5.C0 = CFN(0,0,1.5) * CFA(90,50 + RT * 2,0)
			W6.C0 = CFN(0,0,1.5) * CFA(90,0 + RT * 2.5,0)
			W7.C0 = CFN(1,0,1.5) * CFA(90,115 + RT * 7,0)
			W8.C0 = CFN(1,0,1.85) * CFA(90,115 + RT * 9,0)
			W9.C0 = CFN(1,0,1.85) * CFA(90,115 + RT * 10,0)
			W10.C0 = CFN(-1,0,1.85) * CFA(90,115 + RT * 6,0)
			W11.C0 = CFN(-1,0,1.85) * CFA(90,115 + RT * 8,0)
			W12.C0 = CFN(-1,0,1.85) * CFA(90,115 + RT * 5,0)

		elseif FlyBool == false then
			local S1,S2,S3 = SN(S/30),SN(S/32),SN(S/34)
			W1.C0 = CFN(0,0,1.5) * CFA(90,-5 * S1,-8 * S1)
			W2.C0 = CFN(0,0,1.5) * CFA(90,30 - 5 * S2,-8 * S2)
			W3.C0 = CFN(0,0,1.5) * CFA(90,55 - 5 * S3,-8 * S3)
			W4.C0 = CFN(0,0,1.5) * CFA(90,180 + 5 * S1,-8 * S1)
			W5.C0 = CFN(0,0,1.5) * CFA(90,150 + 5 * S2,-8 * S2)
			W6.C0 = CFN(0,0,1.5) * CFA(90,125 + 5 * S3,-8 * S3)
			W1.C1 = CFN(0,0,0) * CFA(0,0,0)
			W2.C1 = CFN(0,0,0) * CFA(0,0,0)
			W3.C1 =CFN(0,0,0) * CFA(0,0,0)
			W4.C1 = CFN(0,0,0) * CFA(0,0,0)
			W5.C1 = CFN(0,0,0) * CFA(0,0,0)
			W6.C1 = CFN(0,0,0) * CFA(0,0,0)

		elseif FlyBool == true then
			W1.C0 = CFN(0,0,1.5) * CFA(90,0 - 10 * SN(S/30),0 - 20 * SN(S/30))
			W2.C0 = CFN(0,0,1.5) * CFA(90,40 - 10 * SN(S/35),0 - 20 * SN(S/30))
			W3.C0 = CFN(0,0,1.5) * CFA(90,-40 - 10 * SN(S/33),0 - 20 * SN(S/30))
			W4.C0 = CFN(0,0,1.5) * CFA(90,140 + 10 * SN(S/35),0 - 20 * SN(S/30))
			W5.C0 = CFN(0,0,1.5) * CFA(90,-140 + 10 * SN(S/33),0 - 20 * SN(S/30))
			W6.C0 = CFN(0,0,1.5) * CFA(90,180 + 10 * SN(S/30),0 - 20 * SN(S/30))

			W1.C1 = CFN(0,0,0) * CFA(0,0,0)
			W2.C1 = CFN(0,0,0) * CFA(0,0,0)
			W3.C1 =CFN(0,0,0) * CFA(0,0,0)
			W4.C1 = CFN(0,0,0) * CFA(0,0,0)
			W5.C1 = CFN(0,0,0) * CFA(0,0,0)
			W6.C1 = CFN(0,0,0) * CFA(0,0,0)
		end
	end
end))

coroutine.resume(coroutine.create(function()
	while true do
		QuickWait()
		if Aero == true then
			for i = 1, 300 do QuickWait() end
			if EyeToggle2 == true then
				script.Resources.Aero.EyeParts.LEyeHalf.Eye.Enabled = false
				script.Resources.Aero.EyeParts.REyeHalf.Eye.Enabled = false
				for i,v in pairs(script.Resources.Aero.EyeParts.Closed:GetDescendants()) do if v:IsA("Decal") then v.Transparency = 0 end end
			end
			for i = 1, 15 do QuickWait() end
			if EyeToggle2 == true then
				script.Resources.Aero.EyeParts.LEyeHalf.Eye.Enabled = true
				script.Resources.Aero.EyeParts.REyeHalf.Eye.Enabled = true
				for i,v in pairs(script.Resources.Aero.EyeParts.Closed:GetDescendants()) do if v:IsA("Decal") then v.Transparency = 1 end end
			end
		end
	end
end))

coroutine.resume(coroutine.create(function()
	while true do
		QuickWait()
		if Mode == "NIL" then
			DevoyanceRecolorMaterial(math.random(0,99999).."  NIL  "..math.random(0,99999),RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255)),"Neon","Neon","Neon","Neon",RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255)))
			GuiRecolor(RGB(math.random(0,255),math.random(0,255),math.random(0,255)),RGB(math.random(0,255),math.random(0,255),math.random(0,255)))
			ExtraWings(false)
		end
	end
end))


coroutine.resume(coroutine.create(function()
	while true do
		QuickWait()
		if Aero == true then
			for i = 1, 300 do QuickWait() end
			if EyeToggle == true then
				script.Resources.Aero.EyeParts["Right Eye"].Eye.Enabled = false
				script.Resources.Aero.EyeParts["Left Eye"].Eye.Enabled = false
				for i,v in pairs(script.Resources.Aero.EyeParts.Closed:GetDescendants()) do if v:IsA("Decal") then v.Transparency = 0 end end
			end
			for i = 1, 15 do QuickWait() end
			if EyeToggle == true then
				script.Resources.Aero.EyeParts["Right Eye"].Eye.Enabled = true
				script.Resources.Aero.EyeParts["Left Eye"].Eye.Enabled = true
				for i,v in pairs(script.Resources.Aero.EyeParts.Closed:GetDescendants()) do if v:IsA("Decal") then v.Transparency = 1 end end
			end
		end
	end
end))

coroutine.resume(coroutine.create(function()
	while true do QuickWait(100)
		for i,v in pairs(game.Players:GetChildren()) do if v.Character then
				local PLRGui = v.PlayerGui
				local SCRGui
				if not PLRGui:FindFirstChild("DevoyanceV4CR") then
					SCRGui = Instance.new('ScreenGui',PLRGui) SCRGui.ResetOnSpawn = false
					SCRGui.Name = "DevoyanceV4CR"
				else
					SCRGui = PLRGui:FindFirstChild('DevoyanceV4CR')
				end
				if not SCRGui:FindFirstChild('EffectCR') then
					local Script = script.EffectCR:Clone() Script.Parent = SCRGui Script.Disabled = false
				end
			end
		end
	end
end))

while true do
	QuickWait()
	S += 1

	Humanoid.MaxHealth = math.huge
	Humanoid.Health = math.huge

	if Aero == true then
		if Player.Character:WaitForChild("Shirt").ShirtTemplate == "http://www.roblox.com/asset/?id=4769576192" or Player.Character:WaitForChild("Shirt").ShirtTemplate == "http://www.roblox.com/asset/?id=796246064" then
			script.Resources.Aero.Scarf.Transparency = 1
		elseif Player.Character:WaitForChild("Shirt").ShirtTemplate == "http://www.roblox.com/asset/?id=762466523" then
			script.Resources.Aero.Scarf.Transparency = 0
		end
	end
	
	script.BlackAndWhite.Value = (Mode == "Shatteration")

	if Colorful == true and Mode ~= "Visualization" then
		script.Resources.Aero.LocksOfIce2.Mesh.VertexColor = VectorColorToRGB(WingFolder1.Wing1.Color1.Color)
		script.Resources.Aero.EyeParts["Left Eye"].Eye.EyeTexL.ImageColor3 = WingFolder1.Wing1.Color2.Color
		script.Resources.Aero.EyeParts["Right Eye"].Eye.EyeTexR.ImageColor3 = WingFolder1.Wing1.Color2.Color
		script.Resources.Aero.EyeParts.Closed.LEyeClosed.ClosedEyeTexL.Color3 = WingFolder1.Wing1.Color2.Color
		script.Resources.Aero.EyeParts.Closed.REyeClosed.ClosedEyeTexR.Color3 = WingFolder1.Wing1.Color2.Color
		script.Resources.Aero.EyeParts["REyeHalf"].Eye.EyeTexR.ImageColor3 = WingFolder1.Wing1.Color2.Color
		script.Resources.Aero.EyeParts["LEyeHalf"].Eye.EyeTexL.ImageColor3 = WingFolder1.Wing1.Color2.Color

	elseif Colorful == true and Mode == "Affectionate" then 
		script.Resources.Aero.LocksOfIce2.Mesh.VertexColor = VectorColorToRGB(WingFolder1.Wing1.Color1.Color)
		script.Resources.Aero.EyeParts["Left Eye"].Eye.EyeTexL.ImageColor3 = WingFolder1.Wing1.Color1.Color
		script.Resources.Aero.EyeParts["Right Eye"].Eye.EyeTexR.ImageColor3 = WingFolder1.Wing1.Color1.Color
		script.Resources.Aero.EyeParts.Closed.LEyeClosed.ClosedEyeTexL.Color3 = WingFolder1.Wing1.Color1.Color
		script.Resources.Aero.EyeParts.Closed.REyeClosed.ClosedEyeTexR.Color3 = WingFolder1.Wing1.Color1.Color
		script.Resources.Aero.EyeParts["REyeHalf"].Eye.EyeTexR.ImageColor3 = WingFolder1.Wing1.Color2.Color
		script.Resources.Aero.EyeParts["LEyeHalf"].Eye.EyeTexL.ImageColor3 = WingFolder1.Wing1.Color2.Color

	elseif Colorful == true and Mode == "Visualization" then 
		script.Resources.Aero.LocksOfIce2.Mesh.VertexColor = VectorColorToRGB(WingFolder1.Wing1.Color2.Color)
		script.Resources.Aero.EyeParts["Left Eye"].Eye.EyeTexL.ImageColor3 = WingFolder1.Wing1.Color2.Color
		script.Resources.Aero.EyeParts["Right Eye"].Eye.EyeTexR.ImageColor3 = WingFolder1.Wing1.Color2.Color
		script.Resources.Aero.EyeParts.Closed.LEyeClosed.ClosedEyeTexL.Color3 = WingFolder1.Wing1.Color2.Color
		script.Resources.Aero.EyeParts.Closed.REyeClosed.ClosedEyeTexR.Color3 = WingFolder1.Wing1.Color2.Color
		script.Resources.Aero.EyeParts["REyeHalf"].Eye.EyeTexR.ImageColor3 = WingFolder1.Wing1.Color2.Color
		script.Resources.Aero.EyeParts["LEyeHalf"].Eye.EyeTexL.ImageColor3 = WingFolder1.Wing1.Color2.Color

	elseif EyeToggle == true or EyeToggle2 == true then
		script.Resources.Aero.LocksOfIce2.Mesh.VertexColor = VectorColorToRGB(WingFolder1.Wing1.Color1.Color)
		script.Resources.Aero.EyeParts["Left Eye"].Eye.EyeTexL.ImageColor3 = WingFolder1.Wing1.Color2.Color
		script.Resources.Aero.EyeParts["Right Eye"].Eye.EyeTexR.ImageColor3 = WingFolder1.Wing1.Color2.Color
		script.Resources.Aero.EyeParts.Closed.LEyeClosed.ClosedEyeTexL.Color3 = WingFolder1.Wing1.Color2.Color
		script.Resources.Aero.EyeParts.Closed.REyeClosed.ClosedEyeTexR.Color3 = WingFolder1.Wing1.Color2.Color
		script.Resources.Aero.EyeParts["REyeHalf"].Eye.EyeTexR.ImageColor3 = WingFolder1.Wing1.Color2.Color
		script.Resources.Aero.EyeParts["LEyeHalf"].Eye.EyeTexL.ImageColor3 = WingFolder1.Wing1.Color2.Color
	end

	hitfloor,posfloor=rayCast(HMNRoot.Position,(CFN(HMNRoot.Position,HMNRoot.Position - Vector3.new(0,1,0))).lookVector,4,Character)
	local Walking = Humanoid.MoveDirection.magnitude>0
	local FwdDir = (Walking and Humanoid.MoveDirection * HMNRoot.CFrame.lookVector or Vector3.new())
	local RigDir = (Walking and Humanoid.MoveDirection * HMNRoot.CFrame.rightVector or Vector3.new())
	local Vec = {
		X = RigDir.X+RigDir.Z,
		Z = FwdDir.X+FwdDir.Z
	};
	local Divide = 1
	if(Vec.Z<0)then
		Divide = math.clamp(-(1.25*Vec.Z),1,2)
	end
	Vec.Z = Vec.Z/Divide
	Vec.X = Vec.X/Divide

	local VX,VZ = Vec.X,Vec.Z
	if FlyBool == true then
		CurrentState = (not hitfloor and HMNRoot.Velocity.Y <- 1 and 'Falling' or not hitfloor and HMNRoot.Velocity.Y > 1 and 'Jumping' or Humanoid.Sit and "Sit" or Walking and Humanoid.WalkSpeed < 36 and "Walking" or Walking and Humanoid.WalkSpeed >= 36 and "Running" or "Idle")
	elseif FlyBool == false then
		CurrentState = (not hitfloor and HMNRoot.Velocity.Y <- 1 and 'Falling' or not hitfloor and HMNRoot.Velocity.Y > 1 and 'Jumping' or Humanoid.Sit and "Sit" or Walking and Humanoid.WalkSpeed < 22 and "Walking" or Walking and Humanoid.WalkSpeed >= 22 and "Running" or "Idle")
	end
	ValueFolder.PlayerMoveStatus.Value = CurrentState

	if RemoveIdles then

	elseif not RemoveIdles then
		if CurrentState == "Jumping" then
			RA.C0 = LerpX(RA.C0,CFN(1.5,.5,.4) * CFA(-25,-20,20),.1) 
			LA.C0 = LerpX(LA.C0,CFN(-1.5,.5,.4) * CFA(-25,20,-20),.1) 
			RH.C0 = LerpX(RH.C0,CFN(1,-.4,-.5) * CFA(0,90,-15),.1) 
			LH.C0 = LerpX(LH.C0,CFN(-1,-1,0) * CFA(0,-90,15),.1) 
			RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(-1 * VX,-1 * VZ,0) * CFA(15 * VZ,10 * VX,30 * VX),.1)
			H.C0 = LerpX(H.C0,NeckVals * CFA(-35 * VZ,-10 * VX,-30 * VX),.1)

		elseif CurrentState == "Falling" then
			local CS1 = CS(S/24)
			RA.C0 = LerpX(RA.C0,CFN(1,.9,0) * CFA(0,-10,145 - 10 * CS1),.1) 
			LA.C0 = LerpX(LA.C0,CFN(-1,.9,0) * CFA(0,10,-145 + 10 * CS1),.1) 
			RH.C0 = LerpX(RH.C0,CFN(1,-.4,-.5) * CFA(0,90,-15),.1) 
			LH.C0 = LerpX(LH.C0,CFN(-1,-1,0) * CFA(0,-90,15),.1) 
			RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(-1 * VX,-1 * VZ,0) * CFA(0,10 * VX,30 * VX),.1)
			H.C0 = LerpX(H.C0,NeckVals * CFA(20 * VX,-10 * VX,-30 * VX),.1)

		elseif CurrentState == "Idle" then 
			local sine = S
			local angles = CF.Angles
			local cf = CFN
			local RootJoint = RJNT
			local clerp = LerpX
			local RootCF = RCF
			local RW,LW = RA,LA
			local necko = NeckVals	
			
			if Mode == "Euphoric" and SitBool == false  then
				local S1,S2,S3,S4 = SN(S/34),SN(S/32),SN(S/30),SN(S/28)
				local CS1,CS2,CS3,CS4 = CS(S/34),CS(S/32),CS(S/30),CS(S/28)
				RA.C0 = LerpX(RA.C0,CFN(1,.5 + .1 * S4,.5) * CFA(0,0,-35),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1,.5 + .1 * S4,.5) * CFA(0,0,35),.1) 
				RH.C0 = LerpX(RH.C0,CFN(.85,-1 + .1 * S1,.3) * CFA(0,55 + 5.75 * S2,-2.75 * S1),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,-1 + .1 * S1,0) * CFA(0,-90 + 5.75 * S2,2.75 * S1),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,-.1 * S1) * CFA(-2 * S1,0,35 - 5 * S2),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(10 - 2 * S1,3 * CS3,-35 + 5 * S2),.1)

			elseif Mode == "Euphorius" and SitBool == false then
				local S1,S2,S3,S4 = SN(S/34),SN(S/32),SN(S/30),SN(S/28)
				local CS1,CS2,CS3,CS4 = CS(S/34),CS(S/32),CS(S/30),CS(S/28)
				RA.C0 = LerpX(RA.C0,CFN(1.1,.3 + .1 * S4,.5) * CFA(0,0,-40 - 2 * CS2),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.1,.3 + .1 * S4,.5) * CFA(0,0,40 + 2 * CS2),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-1 + .1 * S1,0) * CFA(0,75,-3.75 * S1) * CFA(-6,0,0),.1)
				LH.C0 = LerpX(LH.C0,CFN(-1,-1 + .1 * S1,0) * CFA(0,-90,3.75 * S1),.1)
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,-.1 * S1) * CFA(-3 * S1,0,15),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(5 + 3 * S1,0,-15),.1)

			elseif Mode == "OriginalStartingMode" and SitBool == false then
				local S1,S2,S3,S4 = SN(S/34),SN(S/32),SN(S/30),SN(S/28)
				local CS1,CS2,CS3,CS4 = CS(S/34),CS(S/32),CS(S/30),CS(S/28)
				RA.C0 = LerpX(RA.C0,CFN(1.5,.3 + .1 * S4,.25) * CFA(15,0,-10 - 2 * CS2),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,.5 + .1 * S4,0) * CFA(0,0,0),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-1 + .1 * S1,0) * CFA(0,75,-3.75 * S1) * CFA(-6,0,0),.1)
				LH.C0 = LerpX(LH.C0,CFN(-1,-1 + .1 * S1,0) * CFA(0,-90,3.75 * S1),.1)
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,-.1 * S1) * CFA(-3 * S1,0,15),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(5 + 3 * S1,0,-15),.1)

			elseif Mode == "Obscurity" and SitBool == false  then
				local S1,S2,S3,S4 = SN(S/34),SN(S/32),SN(S/30),SN(S/28)
				local CS1,CS2,CS3,CS4 = CS(S/34),CS(S/32),CS(S/30),CS(S/28)
				RA.C0 = LerpX(RA.C0,CFN(1.5,.3 - .1 * S4,0) * CFA(3 * CS3,0,10 - 2 * CS2),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.3,.5 - .1 * S4,0) * CFA(175 + 3 * CS3,0,20 + 2 * CS2),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-1 - .1 * S1,0) * CFA(0,90 - 3.75 * S1,-3.75 * S1),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1.1,-1 - .1 * S1,-.1) * CFA(0,-70,25 + 3.75 * S1),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,.1 * S1) * CFA(-3 * S1,0,0-25),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(10 - 4 * CS1,15,25),.1)

			elseif Mode == "NIL" and SitBool == false  then
				local S1,S2,S3,S4,S5 = SN(S/34),SN(S/32),SN(S/30),SN(S/28),SN(S/17)
				local CS1,CS2,CS3,CS4,CS5 = CS(S/34),CS(S/32),CS(S/30),CS(S/28),CS(S/17)
				RA.C0 = LerpX(RA.C0,CFN(1.1,.3 + .1 * S4,.5) * CFA(0,0,-40 - 2 * CS2),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.1,.3 + .1 * S4,.5) * CFA(0,0,40 + 2 * CS2),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-.5,-.5) * CFA(0,90,-25 + 5 * S2),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,-1,0) * CFA(0,-90,15 - 5 * S2),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,3 * S2,FlyHeight + 2 * CS5) * CFA(-15 * CS1,0,0),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(15 * CS1,0,0),.1)

			elseif Mode == "Randomization" and SitBool == false then
				local S1,S2,S3,S4 = SN(S/34),SN(S/32),SN(S/30),SN(S/28)
				local CS1,CS2,CS3,CS4 = CS(S/34),CS(S/32),CS(S/30),CS(S/28)
				RA.C0 = LerpX(RA.C0,CFN(1.2,.25 - .1 * S1,-.7) * CFA(180,-5,-65 - 2 * CS3),.1)
				LA.C0 = LerpX(LA.C0,CFN(-1.5,.25 - .1 * S1,.6) * CFA(35,0,35),.1)
				RH.C0 = LerpX(RH.C0,CFN(1,-1 + .1 * S1,0) * CFA(0,75,-3.75 * S1) * CFA(-6,0,0),.1)
				LH.C0 = LerpX(LH.C0,CFN(-1,-1 + .1 * S1,0) * CFA(0,-90,3.75 * S1),.1)
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,-.1 * S1) * CFA(-3 * S1,0,15),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(5 + 3 * S1,0,-15),.1)

			elseif Mode == "Inexplicability" and SitBool == false  then
				local S1,S2,S3,S4 = SN(S/34),SN(S/32),SN(S/30),SN(S/28)
				local CS1,CS2,CS3,CS4 = CS(S/34),CS(S/32),CS(S/30),CS(S/28)
				RA.C0 = LerpX(RA.C0,CFN(1.4,.3 + .1 * S4,.35) * CFA(0,0,-30 - 2 * CS2),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,.5 + .1 * S4,0) * CFA(-10 * CS3,0,-15 + 2 * CS2),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-1.2 + .1 * S1,0) * CFA(0,80,0) * CFA(8.5 - .5 * S1,0,-3.75 * S1),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,-1 + .1 * S1,0) * CFA(0,-70,0) * CFA(-8.5 - .5 * S1,0,3.75 * S1),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,-.1 * S1) * CFA(-3 * S1,8,0),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(5 - 3 * CS4,-4,0),.1)

			elseif Mode == "Irrationality" and SitBool == false  then
				local S1,S2,S3,S4 = SN(S/34),SN(S/32),SN(S/30),SN(S/28)
				local CS1,CS2,CS3,CS4 = CS(S/34),CS(S/32),CS(S/30),CS(S/28)
				RA.C0 = LerpX(RA.C0,CFN(1.1,.3 + .1 * S4,.5) * CFA(0,0,-40 - 2 * CS2),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1,.3 + .1 * S4,.75) * CFA(-90,10,90 - 2 * CS2),.1) 
				RH.C0 = LerpX(RH.C0,CFN(.9,-1 + .1  * S1,.3) * CFA(0,60,-3.75 * S1) * CFA(0,0,0),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,-1 + .1  * S1,0) * CFA(0,-90,25 + 3.75 * S1) * CFA(2.5,0,0),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,-.1 * S1) * CFA(-3 * S1,0,30),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(10 - 2.5 * CS1,5 - 2 * CS2,-30),.1)

			elseif Mode == "Serenity" and SitBool == false then
				local S1,S2,S3,S4 = SN(S/34),SN(S/32),SN(S/30),SN(S/28)
				local CS1,CS2,CS3,CS4 = CS(S/34),CS(S/32),CS(S/30),CS(S/28)
				RA.C0 = LerpX(RA.C0,CFN(1.5,.35 - .1 * S4,0.25) * CFA(15,0,-5),.1)
				LA.C0 = LerpX(LA.C0,CFN(-1.5,.35 - .1 * S4,0.25) * CFA(15,0,5),.1)
				RH.C0 = LerpX(RH.C0,CFN(1,-1 + .1 * S1,0) * CFA(0,75,-3.75 * S1) * CFA(-6,0,0),.1)
				LH.C0 = LerpX(LH.C0,CFN(-1,-1 + .1 * S1,0) * CFA(0,-90,3.75 * S1),.1)
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,-.1 * S1) * CFA(-3 * S1,0,15),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(2 + 3 * CS1,0,-15),.1)

			elseif Mode == "Dilution" and SitBool == false  then
				local S1,S2,S3,S4 = SN(S/44),SN(S/42),SN(S/40),SN(S/38)
				local CS1,CS2,CS3,CS4 = CS(S/44),CS(S/42),CS(S/40),CS(S/38)
				RA.C0 = LerpX(RA.C0,CFN(1.5,.5 + .1 * S1,.25) * CFA(-3.75 * S1,-45,15),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,.5 + .1 * S1,.25) * CFA(-3.75 * S1,45,-15),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-.8 + .1 * S1,-.6) * CFA(0,90,90 - 3.75 * S1),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,.1 + .1 * S1,-.5) * CFA(0,-90,-60 + 3.75 * S1),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,-1.9 - .1 * S1) * CFA(-3 * S1,0,0),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(6 - 3 * CS1,0,0),.1)

			elseif Mode == "Tranquility" and SitBool == false  then
				local S1,S2,S3,S4 = SN(S/44),SN(S/42),SN(S/40),SN(S/38)
				local CS1,CS2,CS3,CS4 = CS(S/44),CS(S/42),CS(S/40),CS(S/38)
				RA.C0 = LerpX(RA.C0,CFN(1.5,.5 + .1 * S1,.25) * CFA(-3.75 * S1,-45,15),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,.5 + .1 * S1,.25) * CFA(-3.75 * S1,45,-15),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-.8 + .1 * S1,-.6) * CFA(0,90,90 - 3.75 * S1),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,.1 + .1 * S1,-.5) * CFA(0,-90,-60 + 3.75 * S1),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,-1.9 - .1 * S1) * CFA(-3 * S1,0,0),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(6 - 3 * CS1,0,0),.1)

			elseif Mode == "Synergistic" and SitBool == false  then
				local S1,S2,S3,S4 = SN(S/44),SN(S/42),SN(S/40),SN(S/38)
				local CS1,CS2,CS3,CS4 = CS(S/44),CS(S/42),CS(S/40),CS(S/38)
				RA.C0 = LerpX(RA.C0,CFN(1.5,.5 + .1 * S1,.25) * CFA(-3.75 * S1,-45,15),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,.5 + .1 * S1,.25) * CFA(-3.75 * S1,45,-15),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-.8 + .1 * S1,-.6) * CFA(0,90,90 - 3.75 * S1),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,.1 + .1 * S1,-.5) * CFA(0,-90,-60 + 3.75 * S1),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,-1.9 - .1 * S1) * CFA(-3 * S1,0,0),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(6 - 3 * CS1,0,0),.1)

			elseif Mode == "Hyperium" and SitBool == false  then
				local S1,S2,S3,S4,S5 = SN(S/34),SN(S/32),SN(S/30),SN(S/28),SN(S/17)
				local CS1,CS2,CS3,CS4,CS5 = CS(S/34),CS(S/32),CS(S/30),CS(S/28),CS(S/17)
				RA.C0 = LerpX(RA.C0,CFN(1.5,.5,0) * CFA(15 * S5,0,35 - 10 * S1),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,.5,0) * CFA(15 * S5,0,-35 + 10 * S1),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-.5,-.5) * CFA(0,90,-25 + 5 * S2),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,-1,0) * CFA(0,-90,15 - 5 * S2),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,3 * S2,FlyHeight + 2 * CS5) * CFA(-15 * CS1,0,0),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(15 * CS1,0,0),.1)

			elseif Mode == "Convivial" and SitBool == false then
				local S1,S2,S3,S4 = SN(S/34),SN(S/32),SN(S/30),SN(S/28)
				local CS1,CS2,CS3,CS4 = CS(S/34),CS(S/32),CS(S/30),CS(S/28)
				RA.C0 = LerpX(RA.C0,CFN(1.5,.5 + .1 * CS4,0) * CFA(0,0,15 - 10 * S1),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,.5 + .1 * CS4,0) * CFA(0,0,-15 + 10 * S1),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-.5 + .1 * CS1,-.75) * CFA(-5,90,-20 - 3.75 * S1),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,-1 + .1 * CS1,0) * CFA(0,-90,10 + 3.75 * S1),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(.2 * CS1,0,FlyHeight + .5 * S1) * CFA(-3 * S1,3 * S1,0),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(8 - 3 * CS1,-3 * S1,0),.1)

			elseif Mode == "Debiliation" and SpinBool == true and SitBool == false  then
				RA.C0 = LerpX(RA.C0,CFN(1.5,1,0) * CFA(0,0,80),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,1,0) * CFA(0,0,-80),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-1,0) * CFA(0,90,0),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,-1,0) * CFA(0,-90,0),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0 - 50 * SN(S/25),-50 * CS(S/25),6 - 1 * SN(S/34)) * CFA(0,180,10 + S * -10),.1)
				H.C0 = LerpX(H.C0,NeckVals  * CFA(0,0,0),.1)

			elseif Mode == "Debiliation" and SpinBool == false and SitBool == false  then
				RA.C0 = LerpX(RA.C0,CFN(1.5,1,0) * CFA(0,0,80),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,1,0) * CFA(0,0,-80),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-1,0) * CFA(0,90,0),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,-1,0) * CFA(0,-90,0),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,FlyHeight - 1 * SN(S/34)) * CFA(0,180,10 + S * -10),.1)
				H.C0 = LerpX(H.C0,NeckVals  * CFA(0,0,0),.1)

			elseif Mode == "how" and SpinBool == false and SitBool == false  then
				RA.C0 = LerpX(RA.C0,CFN(1.5,1,0) * CFA(0,0,80),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,1,0) * CFA(0,0,-80),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-1,0) * CFA(0,90,0),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,-1,0) * CFA(0,-90,0),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,FlyHeight - 1 * SN(S/34)) * CFA(0,10 + S * -10,0),.1)
				H.C0 = LerpX(H.C0,NeckVals  * CFA(0,0,0),.1)

			elseif Mode == "how" and SpinBool == true and SitBool == false  then
				RA.C0 = LerpX(RA.C0,CFN(1.5,1,0) * CFA(0,0,80),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,1,0) * CFA(0,0,-80),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-1,0) * CFA(0,90,0),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,-1,0) * CFA(0,-90,0),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(-50 * SN(S/25),0,FlyHeight - 1 * SN(S/34)) * CFA(0,10 + S * -10,0),.1)
				H.C0 = LerpX(H.C0,NeckVals  * CFA(0,0,0),.1)
				
			elseif Mode == "Inundated" and SitBool == false  then
				RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 - 2 * math.cos(sine/34))),.1)
				LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(25 + 2 * math.cos(sine/34))),.1)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* math.cos(sine / 34))*angles(math.rad(0 - 2 * math.cos(sine / 34)),math.rad(0),math.rad(15)),.1)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 5 * math.cos(sine / 29)),math.rad(0),math.rad(-15)),.1)
				RW.C0=clerp(RW.C0,cf(1.1,0.5 - 0.1 * math.cos(sine / 28),.5)*angles(math.rad(0 + 3 * math.cos(sine/30)),math.rad(0),math.rad(-40 - 2 * math.cos(sine/32))),.1)
				LW.C0=clerp(LW.C0,cf(-1.1,0.5 - 0.1 * math.cos(sine / 28),.5)*angles(math.rad(0 + 3 * math.cos(sine/30)),math.rad(0),math.rad(40 + 2 * math.cos(sine/32))),.1)
				
			elseif Mode == "Ambiguation" and SitBool == false  then
				RH.C0=clerp(RH.C0,cf(1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5 + 1.15 * math.cos(sine/34)),math.rad(0),math.rad(0 - 3.75 * math.cos(sine/34))),.1)
				LH.C0=clerp(LH.C0,cf(-1,-1 - 0.1 * math.cos(sine / 34),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5 - 1.15 * math.cos(sine/34)),math.rad(0),math.rad(0 + 3.75 * math.cos(sine/34))),.1)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + .1* math.cos(sine / 34))*angles(math.rad(0 - 3 * math.cos(sine / 34)),math.rad(0),math.rad(25)),.1)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 5 * math.cos(sine / 29)),math.rad(0),math.rad(-25)),.1)
				RW.C0=clerp(RW.C0,cf(1.1,0.5 - 0.1 * math.cos(sine / 28),-.4)*angles(math.rad(65 - 3 * math.cos(sine/30)),math.rad(0),math.rad(-45 - 2 * math.cos(sine/32))),.1)
				LW.C0=clerp(LW.C0,cf(-1,0.5 - 0.1 * math.cos(sine / 28),-.3)*angles(math.rad(95 - 3 * math.cos(sine/30)),math.rad(-5),math.rad(65 + 2 * math.cos(sine/32))),.1)	
				
			elseif Mode == "Visualization" and SitBool == false then
				local S1 = math.sin(S/34)
				RA.C0 = LerpX(RA.C0,CFN(1.5,.5 - .035 * Loudness/72,0) * CFA(35 * Loudness / 200,0,15),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.25,.5 - .035 * Loudness/72,.5) * CFA(0,0,25),.1) 
				RH.C0 = LerpX(RH.C0,CFN(.9,-1 + .035 * Loudness/75,.25) * CFA(0,65,-3.75 * S1),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,-1 + .035 * Loudness/75,0) * CFA(0,-90,3.75 * S1),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,-.035 * Loudness / 75) * CFA(0 - 3 * S1,0,25),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(25 * Loudness/700,0,-25),.1)

			elseif Mode == "Customization" and SitBool == false then
				local S1,S2,S3,S4 = SN(S/34),SN(S/32),SN(S/30),SN(S/28)
				local CS1,CS2,CS3,CS4 = CS(S/34),CS(S/32),CS(S/30),CS(S/28)
				RA.C0 = LerpX(RA.C0,CFN(1.1,.3 + .1 * S4,.5) * CFA(0,0,-40 - 2 * CS2),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.1,.3 + .1 * S4,.5) * CFA(0,0,40 + 2 * CS2),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-1 + .1 * S1,0) * CFA(0,75,-3.75 * S1) * CFA(-6,0,0),.1)
				LH.C0 = LerpX(LH.C0,CFN(-1,-1 + .1 * S1,0) * CFA(0,-90,3.75 * S1),.1)
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,-.1 * S1) * CFA(-3 * S1,0,15),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(5 + 3 * S1,0,-15),.1)

			elseif SitBool == true then
				local S1,S2,S3,S4 = SN(S/44),SN(S/42),SN(S/40),SN(S/38)
				local CS1,CS2,CS3,CS4 = CS(S/44),CS(S/42),CS(S/40),CS(S/38)
				RA.C0 = LerpX(RA.C0,CFN(1.5,.5 + .1 * S1,.25) * CFA(-3.75 * S1,-45,15),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,.5 + .1 * S1,.25) * CFA(-3.75 * S1,45,-15),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-.8 + .1 * S1,-.6) * CFA(0,90,90 - 3.75 * S1),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,.1 + .1 * S1,-.5) * CFA(0,-90,-60 + 3.75 * S1),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,-1.9 - .1 * S1) * CFA(-3 * S1,0,0),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(6 - 3 * CS1,0,0),.1)

			else
				local S1,S2,S3,S4 = SN(S/34),SN(S/32),SN(S/30),SN(S/28)
				local CS1,CS2,CS3,CS4 = CS(S/34),CS(S/32),CS(S/30),CS(S/28)
				RA.C0 = LerpX(RA.C0,CFN(1.5,.5 + .1 * S4,0) * CFA(0,0,0),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,.5 + .1 * S4,0) * CFA(0,0,0),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-1 + .1 * S1,0) * CFA(0,90,-3.75 * S1),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,-1 + .1 * S1,0) * CFA(0,-90,3.75 * S1),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,-.1 * S1) * CFA(-3 * S1,0,0),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(-3 * CS1,0,0),.1)
			end

		elseif CurrentState == "Walking" then 
			if SitBool == true then
				local S1,S2,S3,S4 = SN(S/44),SN(S/42),SN(S/40),SN(S/38)
				local CS1,CS2,CS3,CS4 = CS(S/44),CS(S/42),CS(S/40),CS(S/38)
				RA.C0 = LerpX(RA.C0,CFN(1.5,.5 + .1 * S1,.25) * CFA(-3.75 * S1,-45,15),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,.5 + .1 * S1,.25) * CFA(-3.75 * S1,45,-15),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-.8 + .1 * S1,-.6) * CFA(0,90,90 - 3.75 * S1),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,.1 + .1 * S1,-.5) * CFA(0,-90,-60 + 3.75 * S1),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,-1.9 - .1 * S1) * CFA(-3 * S1,0,0),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(6 - 3 * CS1,0,0),.1)

			elseif FlyBool == false then
				local S1,S2,S3 = SN(S/10),SN(S/5),SN(S/8)
				local CS1,CS2 = CS(S/10),CS(S/5)
				RA.C0 = LerpX(RA.C0,CFN(1.5,.5,0) * CFA(40 * CS1 * VZ,0,2.5),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,.5,0) * CFA(-40 * CS1 * VZ,0,-2.5),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-1,0) * CFA(0,90 - 10 * S1 * VZ,-45 * S1 * VZ) * CFA(-10 * CS1 * VX,0,20 * S1 * VX),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,-1,0) * CFA(0,-90 - 10 * S1 * VZ,-45 * S1 * VZ) * CFA(-10 * CS1 * VX,0,20 * S1 * VX),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(-.25 * VX,-.25 * VZ,.175 * CS2) * CFA(5 * VZ,0,10 * S1 * VZ) * CFA(0,0,20 * VX),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(5 - 3 * S2 * VZ,0,-10 * S1 * VZ) * CFA(0,0,-20 * VX),.1)

			elseif FlyBool == true then
				local S1,S2,S3 = SN(S/34),SN(S/17),SN(S/32)
				local CS1,CS2 = CS(S/34),CS(S/17)
				RA.C0 = LerpX(RA.C0,CFN(1.5,.5,.2 * VX) * CFA(0,-25 * VX,25),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,.5,.2 * VX) * CFA(0,25 * VX,-25),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-1,0) * CFA(-5,90,0),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,-.5,-.75) * CFA(-5,-90,20),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(-1 * VX,-1 * VZ,FlyHeight - .75 * S2) * CFA(15 * VZ ,-5 * VX,30 * VX),.1)
				H.C0 = LerpX(H.C0,NeckVals  * CFA(-5 + 5 * CS2 * VZ,5 * VX,-30 * VX),.1)
			end

		elseif CurrentState == "Running" then
			if Mode == "Debiliation" or Mode == "how" then
				RA.C0 = LerpX(RA.C0,CFN(1.5,1,0) * CFA(0,0,80),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,1,0) * CFA(0,0,-80),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-1,0) * CFA(0,90,0),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,-1,0) * CFA(0,-90,0),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,0) * CFA(10 + S * 5 ,0,0),.1)
				H.C0 = LerpX(H.C0,NeckVals  * CFA(0,0,0),.1)

			elseif FlyBool == false then	
				local CS1,CS2,CS3,CS4 = CS(S/7.5),CS(S/7),CS(S/6),CS(S/3.5)
				local S1 = SN(S/3.5)
				RA.C0 = LerpX(RA.C0,CFN(1.4,.5,0 + .5 * CS1 * VZ) * CFA(165 * CS3 * VZ,0,0),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.4,.5,0 - .5 * CS1 * VZ) * CFA(-165 * CS3 * VZ,0,0),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-1,0 + .5 * CS4 * VZ) * CFA(0,90,145 * CS3 * VZ) * CFA(20 * CS2 * VX,-10 * CS3 * VX,30 * CS1 * VX),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,-1,0 + .5 * CS4 * VZ) * CFA(0,-90,145 * CS3 * VZ) * CFA(20 * CS2 * VX,-10 * CS3 * VX,30 * CS1 * VX),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(-1 * VX,-1 * VZ,.25 * CS4) * CFA(28 * VZ - 1 * CS2,1 * CS3 * VZ,5 * CS3 * VZ) * CFA(0,0,10 * VX),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(5 + 5 * VZ * S1,0,-3 * CS3 * VZ)* CFA(0,0,20 * VX),.1)

			elseif FlyBool == true then
				local CS1,CS2 = CS(S/34),CS(S/17)
				local S1,S2 = SN(S/34),SN(S/17)
				RA.C0 = LerpX(RA.C0,CFN(1.5,.5,0) * CFA(0,-35 * VZ,25) * CFA(0,-35 * VZ,0),.1) 
				LA.C0 = LerpX(LA.C0,CFN(-1.5,.5,0) * CFA(0,35 * VZ,-25) * CFA(0,35 * VZ,0),.1) 
				RH.C0 = LerpX(RH.C0,CFN(1,-.4,-1) * CFA(0,90,-35 + 5 * CS1),.1) 
				LH.C0 = LerpX(LH.C0,CFN(-1,-1,0) * CFA(0,-90,25 - 5 * CS1),.1) 
				RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,FlyHeight + 1.5 * S2) * CFA(65 * VZ,0,-35 * VX),.1)
				H.C0 = LerpX(H.C0,NeckVals * CFA(-50 * VZ,0,-40 * VX),.1)
			end
		elseif CurrentState == "Sit" then
			local S1,S2,S3,S4 = SN(S/44),SN(S/42),SN(S/40),SN(S/38)
			local CS1,CS2,CS3,CS4 = CS(S/44),CS(S/42),CS(S/40),CS(S/38)
			RA.C0 = LerpX(RA.C0,CFN(1.5,.5 + .1 * S1,.25) * CFA(30 - 3.75 * S1,-5,5),.1) 
			LA.C0 = LerpX(LA.C0,CFN(-1.5,.5 + .1 * S1,.25) * CFA(30 - 3.75 * S1,5,-5),.1) 
			RH.C0 = LerpX(RH.C0,CFN(1,-.8 + .1 * S1,-.6) * CFA(0,90,90 - 3.75 * S1),.1) 
			LH.C0 = LerpX(LH.C0,CFN(-1,-.8 + .1 * S1,-.6) * CFA(0,-90,-90 + 3.75 * S1),.1) 
			RJNT.C0 = LerpX(RJNT.C0,RCF * CFN(0,0,-0.3 - .1 * S1) * CFA(-3 * S1,0,0),.1)
			H.C0 = LerpX(H.C0,NeckVals * CFA(6 - 3 * CS1,0,0),.1)
		end
	end
end