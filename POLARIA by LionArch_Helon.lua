local GetUGCName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
local Localization = game:GetService("LocalizationService")
local PlrGui = game.Players.LocalPlayer.PlayerGui
loadstring(game:HttpGet("https://pastefy.app/agqEB2qs/raw",true))()
game.CoreGui["po"].Parent = PlrGui
PlrGui["po"].ResetOnSpawn = false
PlrGui["po"].main.top.title.Text = "POLARIA TOP SECRET"
local Safe = Instance.new("TextLabel")
local function COROTINE()
	local script = Instance.new("LocalScript", game:GetService("ReplicatedFirst"))
	
	PlrGui["po"].main.top.Holder.homepage.placeid.Text = "Verifiyng..."
	wait(math.random(0, 2))
	PlrGui["po"].main.top.Holder.homepage.placeid.Text = "Place ID: "..game.gameId.." ("..GetUGCName.Name..")"
end
coroutine.wrap(COROTINE)()
PlrGui["po"].main.icon.troll.hold.TextLabel.Text = "Remade by LionArchelon, Inspired by Video from Youtube I Found \n Status : Injected"
PlrGui["po"].main.top.Holder.homepage.idk.Text = "Country: en-us"
PlrGui["po"].main.top.Holder.serverpage.Disco.MouseButton1Click:Connect(function()
	local function COROTINE()
		local script = Instance.new("LocalScript", game:GetService("ReplicatedFirst"))
		
		while true do
			wait(0)
			for i, v in pairs(workspace:GetDescendants()) do
				if v:IsA("Part") then
					v.Color = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
				end
			end
			game.Lighting.Ambient = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
		end
	end
	coroutine.wrap(COROTINE)()
end)
local function COROTINE()
	local script = Instance.new("LocalScript", PlrGui["po"])
	script.Name = "AlwaysActive"
	
	while task.wait() do
		script.Parent.Enabled = true
	end
end
coroutine.wrap(COROTINE)()
PlrGui["po"].main.top.Holder.serverpage.c00lkidd.MouseButton1Click:Connect(function()
	local function COROTINE()
		local script = Instance.new("LocalScript", game:GetService("ReplicatedFirst"))
		
		wait(1)
		game.Lighting.ClockTime = 0
		game.Lighting.FogEnd = 10
		
		for i, v in pairs(workspace:GetDescendants()) do
			if v:IsA("Part") and v:IsA("Model") then
				local Hight = Instance.new("Hightlight", v)
				Hight.FillColor = Color3.fromRGB(181, 181, 181)
				Hight.FillTransparency = 0
				Hight.OutlineColor = Color3.new(0, 0, 0)
			end
		end
		
		for i, v in pairs(workspace:GetDescendants()) do
			if v:IsA("Part") then
				while wait(10) do
					Instance.new("Fire", v)
					Instance.new("Smoke", v)
				end
			end
		end
		
		local hint = Instance.new("Hint", workspace)
		while true do
			wait(0.7)
			hint.Text = "C00LK!!DS SHIT ON YOUR GAME"
			wait(0.7)
			hint.Text = ""
		end
	end
	coroutine.wrap(COROTINE)()
end)
PlrGui["po"].main.top.Holder.serverpage.r6.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fake-r6-script-made-by-V0C0N-29983"))()
end)
PlrGui["po"].main.top.Holder.scriptspage.primadon.Text = "Decal Spam + Particle Spam + Skybox"
PlrGui["po"].main.top.Holder.scriptspage.primadon.TextScaled = true
PlrGui["po"].main.top.Holder.scriptspage.primadon.MouseButton1Click:Connect(function()
local Image = "rbxassetid://79482625549535"

for i, v in pairs(workspace:GetDescendants()) do
	if v:IsA("Part") then
		local Decal1 = Instance.new("Decal", v)
		Decal1.Texture = Image
		Decal1.Face = "Top"
		local Decal2 = Instance.new("Decal", v)
		Decal2.Texture = Image
		Decal2.Face = "Bottom"
		local Decal3 = Instance.new("Decal", v)
		Decal3.Texture = Image
		Decal3.Face = "Front"
		local Decal4 = Instance.new("Decal", v)
		Decal4.Texture = Image
		Decal4.Face = "Back"
		local Decal5 = Instance.new("Decal", v)
		Decal5.Texture = Image
		Decal5.Face = "Left"
		local Decal6 = Instance.new("Decal", v)
		Decal6.Texture = Image
		Decal6.Face = "Right"
	end
end

for i = 1, math.random(1, 3) do
	print(i)
	for i, v in pairs(workspace:GetDescendants()) do
		if v:IsA("Part") then
			local Particle = Instance.new("ParticleEmitter")
			Particle.Parent = v
			Particle.Texture = Image
		end
	end
end

local Skybox = Instance.new("Sky", game.Lighting)
Skybox.SkyboxBk = Image
Skybox.SkyboxDn = Image
Skybox.SkyboxFt = Image
Skybox.SkyboxLf = Image
Skybox.SkyboxRt = Image
Skybox.SkyboxUp = Image

local Hint = Instance.new("Hint", workspace)
Hint.Text = "TEAM DEBUGGER ON TOP | Youtube : @LIONARC_HELON"

end)

PlrGui["po"].main.top.Holder.scriptspage.ssp.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://pastefy.app/t2gUwfXy/raw"))()
end)

PlrGui["po"].main.top.Holder.scriptspage.gkv1.Text = "Grab Knife V3"
PlrGui["po"].main.top.Holder.scriptspage.gkv1.TextScaled = true
PlrGui["po"].main.top.Holder.scriptspage.gkv1.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-grab-knife-v3-9232"))()
end)

PlrGui["po"].main.top.Holder.executorpage.input.PlaceholderText = "--[[\n	Remade by LIONARCH_HELON, Inspired with i see on Youtube\n  ]]"

PlrGui["po"].main.top.Holder.scriptspage["bom 2"].MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Ussjzbwusbdlq/refs/heads/main/Luafile33Xc3eww"))()
end)

PlrGui["po"].main.top.Holder.scriptspage.nzi.Text = "M4A1-S"
PlrGui["po"].main.top.Holder.scriptspage.nzi.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Idk-script-6-30278"))()
end)

PlrGui["po"].main.top.Holder.scriptspage.pistol.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/F6qy56R6"))()
end)

PlrGui["po"].main.top.Holder.scriptspage.ship.Text = "The Angle"
PlrGui["po"].main.top.Holder.scriptspage.ship.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/the-angel/refs/heads/main/The%20Angel.txt"))()
end)

PlrGui["po"].main.top.Holder.scriptspage.sledoni.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Sheldoni-gui-29377"))()
end)

PlrGui["po"].main.top.Holder.scriptspage["sledoni yong"].Text = "Clown Kiddnap"
PlrGui["po"].main.top.Holder.scriptspage["sledoni yong"].TextScaled = true
PlrGui["po"].main.top.Holder.scriptspage["sledoni yong"].MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/vP2D2vnC"))()
end)

PlrGui["po"].main.top.Holder.serverpage.shutdown.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer:Kick("\n\n The Server has been Shutdown")
end)

PlrGui["po"].main.top.Holder.serverpage.Anti.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):Destroy()
end)

PlrGui["po"].main.top.Holder.serverpage.workspace.MouseButton1Click:Connect(function()
	for i, v in pairs(workspace:GetDescendants()) do
		if v:IsA("Part") then
			v:Destroy()
		end
	end
end)

PlrGui["po"].main.top.Holder.scriptspage["hax 1"].Text = "SF Executor"
PlrGui["po"].main.top.Holder.scriptspage["hax 1"].MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://pastefy.app/xj9lkBIv/raw"))()
end)

PlrGui["po"].main.top.Holder.scriptspage["hax 2"].Text = "FE BYPASS"
PlrGui["po"].main.top.Holder.scriptspage["hax 2"].MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/m1eVSBZY"))()
end)

PlrGui["po"].main.top.Holder.scriptspage["k0p"].Text = "DreamB*ll"
PlrGui["po"].main.top.Holder.scriptspage["k0p"].MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Bypass-idk-32121"))()
end)

PlrGui["po"].main.top.Holder.scriptspage2["destruction g"].Text = "Spectrum Star Glicther"
PlrGui["po"].main.top.Holder.scriptspage2["destruction g"].MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/SCPECTRUMGLITCHER/refs/heads/main/SpectrumG%20(1).txt"))()
end)

PlrGui["po"].main.top.Holder.scriptspage2.kik.Text = "HD Admin Ranker"
PlrGui["po"].main.top.Holder.scriptspage2.kik.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/PHG8Skj0"))()
end)

PlrGui["po"].main.top.Holder.scriptspage2.kitchen.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/rare/refs/heads/main/kitcher%20gun.lua"))()
end)

PlrGui["po"].main.top.Holder.scriptspage2.laser.Text = "Galactic Titan"
PlrGui["po"].main.top.Holder.scriptspage2.laser.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/TEST19983/Reslasjd/refs/heads/main/attac"))()
end)

PlrGui["po"].main.top.Holder.scriptspage2.mosque.Text = "War Robot"
PlrGui["po"].main.top.Holder.scriptspage2.mosque.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Robot-LUA-49167"))()
end)

PlrGui["po"].main.top.Holder.scriptspage.stra.Text = "RC7 (SS)"
PlrGui["po"].main.top.Holder.scriptspage.stra.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/2GCB3P3t"))()
end)

PlrGui["po"].main.top.Holder.scriptspage3.obunga.Text = "youareanidiot.org"
PlrGui["po"].main.top.Holder.scriptspage3.obunga.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-You-are-a-idiot-Jumpscare-28005"))()
end)

PlrGui["po"].main.top.Holder.scriptspage3.blast.Text = "Starlight SS"
PlrGui["po"].main.top.Holder.scriptspage3.blast.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-starlight-archive-46524"))()
end)

PlrGui["po"].main.top.Holder.scriptspage2.nds.Text = "Nebula Star Glicther"
PlrGui["po"].main.top.Holder.scriptspage2.nds.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Nebula-Star-Glitcher-46143"))()
end)

PlrGui["po"].main.top.Holder.scriptspage2.omni.Text = "Skeleton Skybox"
PlrGui["po"].main.top.Holder.scriptspage2.omni.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/Nya5ZH4D"))()
end)

PlrGui["po"].main.top.Holder.scriptspage2.patrik.Text = "Goner"
PlrGui["po"].main.top.Holder.scriptspage2.patrik.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Goner-47954"))()
end)

local Time = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Time.Parent = PlrGui["po"].main.top.Holder.scriptspage3
Time.Position = UDim2.new(0.755, 0, 0.163, 0)
Time.Text = "Time Blast"
Time.Name = "Time"
Time.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/GTakvdnB"))()
end)

game:GetService("Players").LocalPlayer.PlayerGui.po.main.top.Holder.scriptspage2.ploit.MouseButton1Click:Connect(function()
	loadstring(game:GetObjects("rbxassetid://288646117")[1].Source)()
end)

local Draw = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Draw.Position = UDim2.new(0.031, 0, 0.29, 0)
Draw.Text = "Drawing Tools 3D"
Draw.Name = "Draw"
Draw.Parent = PlrGui["po"].main.top.Holder.scriptspage3

local Big = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Big.Position = UDim2.new(0.274, 0, 0.29, 0)
Big.Text = "Big Smoke"
Big.Name = "Big"
Big.Parent = PlrGui["po"].main.top.Holder.scriptspage3
Big.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaGunsX/LuasLegacyScripts/refs/heads/main/%5BRecharacter%5D%20Big%20Smoke"))()
end)

local ClickBomb = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
ClickBomb.Text = "Click to Bomb!"
ClickBomb.Parent = PlrGui["po"].main.top.Holder.scriptspage3
ClickBomb.Position = UDim2.new(0.514, 0, 0.29, 0)
ClickBomb.Name = "Bom"

local Poop = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Poop.Parent = PlrGui["po"].main.top.Holder.scriptspage3
Poop.Position = UDim2.new(0.756, 0, 0.29, 0)
Poop.Name = "PoopyAdmin"
Poop.Text = "Poopyboss21 Admin"

local Hammer = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Hammer.Parent = PlrGui["po"].main.top.Holder.scriptspage3
Hammer.Position = UDim2.new(0.031, 0, 0.42, 0)
Hammer.Text = "Lua Hammer"
Hammer.Name = "Hammer"

local Memen = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Memen.Parent = PlrGui["po"].main.top.Holder.scriptspage3
Memen.Text = "Memento Mori"
Memen.Name = "memet"
Memen.Position = UDim2.new(0.274, 0, 0.42, 0)

local Ninja = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Ninja.Parent = PlrGui["po"].main.top.Holder.scriptspage3
Ninja.Text = "Ninja Girl"
Ninja.Name = "ninja"
Ninja.Position = UDim2.new(0.515, 0, 0.42, 0)

local DELETED = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
DELETED.BackgroundTransparency = 1
DELETED.TextColor3 = Color3.new(1, 0, 0)
DELETED.Text = "DELETED"
DELETED.TextScaled = false
DELETED.TextSize = 20
DELETED.Position = UDim2.new(0.755, 0, 0.42, 0 )
DELETED.Name = "Deleted"
DELETED.Parent = PlrGui["po"].main.top.Holder.scriptspage3

local Virus = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Virus.Parent = PlrGui["po"].main.top.Holder.scriptspage3
Virus.Position = UDim2.new(0.031, 0, 0.545, 0)
Virus.Text = "Free Robux Virus Destroyer"
Virus.Name = "Virus"

local Parkour = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Parkour.Parent = PlrGui["po"].main.top.Holder.scriptspage3
Parkour.Text = "Parkour"
Parkour.Position = UDim2.new(0.274, 0, 0.545, 0)
Parkour.Name = "park"

local Ele = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Ele.Parent = PlrGui["po"].main.top.Holder.scriptspage3
Ele.Text = "Space Elevator"
Ele.Position = UDim2.new(0.515, 0, 0.545, 0)
Ele.Name = "elevator"

local Kj = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Kj.Parent = PlrGui["po"].main.top.Holder.scriptspage3
Kj.Name = "kj"
Kj.Text = "Kenji (KJ)"
Kj.Position = UDim2.new(0.755, 0, 0.545, 0)

local FATAL = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
FATAL.Name = "fatality"
FATAL.Text = "Fatal Error"
FATAL.Parent = PlrGui["po"].main.top.Holder.scriptspage3
FATAL.Position = UDim2.new(0.031, 0, 0.67, 0)

local Nuke = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Nuke.Text = "Button Nuke"
Nuke.Parent = PlrGui["po"].main.top.Holder.scriptspage3
Nuke.Name = "nukes"
Nuke.Position = UDim2.new(0.275, 0, 0.67, 0)

local Team = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Team.Parent = PlrGui["po"].main.top.Holder.scriptspage3
Team.Text = "Team F*t V25 (TeamFatWasHere)"
Team.Name = "Fatty"
Team.Position = UDim2.new(0.515, 0, 0.67, 0)

local Thomas = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Thomas.Name = "clanker"
Thomas.Text = "Thomas The D*nk Engine"
Thomas.Parent = PlrGui["po"].main.top.Holder.scriptspage3
Thomas.Position = UDim2.new(0.755, 0, 0.67, 0)

local Magic = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Magic.Parent = PlrGui["po"].main.top.Holder.scriptspage3
Magic.Text = "Magic Power"
Magic.Name = "Glacias!"
Magic.Position = UDim2.new(0.031, 0, 0.795, 0)

local Shot = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Shot.Parent = PlrGui["po"].main.top.Holder.scriptspage3
Shot.Text = "School Sh*oters"
Shot.Name = "Shoters"
Shot.Position = UDim2.new(0.275, 0, 0.795, 0)

local Ssp = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Ssp.Parent = PlrGui["po"].main.top.Holder.scriptspage3
Ssp.Text = "Secret Service Panel   (Original)"
Ssp.Name = "reelssp"
Ssp.Position = UDim2.new(0.515, 0, 0.795, 0)

local Fencing = PlrGui["po"].main.top.Holder.scriptspage3.rc7:Clone()
Fencing.Name = "fighterFence"
Fencing.Text = "Fencing"
Fencing.Parent = PlrGui["po"].main.top.Holder.scriptspage3
Fencing.Position = UDim2.new(0.755, 0, 0.795, 0)