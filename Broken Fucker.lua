local Image = "rbxassetid://79482625549535"

local Folder = Instance.new("Folder", workspace)
Folder.Name = "LIONARCH_HELON Script Pack"

local Sound = Instance.new("Sound", Folder)
Sound.SoundId = "rbxassetid://84365625129267"
Sound.Looped = true
Sound.PlaybackSpeed = 0.17
Sound.Volume = 10
Sound.Name = "Bipissed Sond"

local M = Instance.new("Message", Folder)
M.Text = "Btoken Fucker With Bypassed Sound |\n made by LIONARCH_HELON |\n Youtube : @LIONARC_HELON |\nScript only works for Serverside!"
wait(5)
M:Destroy()
Instance.new("Script", Folder).Name = "Looped Hint"

local h = Instance.new("Hint", Folder)
local function COROTINE()
	local script = Instance.new("LocalScript", h)
	
	while true do
wait()
local TEXT = "FUCKED UP BY LIONARCH_HELON BYE BYE SKIDDERS I HATE U >:)"

for i = 1, #TEXT do
h.Text = h.Text .. TEXT:sub(1, i)
task.wait(0.1)
end
h.Text = ""
	end
end
coroutine.wrap(COROTINE)()
Sound:Play()

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

for i, v in pairs(workspace:GetDescendants()) do
	if v:IsA("Part") then
		local PE = Instance.new("ParticleEmitter")
		PE.Parent = v
		PE.Texture = Image
		PE.Size = NumberSequence.new(10, 10)
		PE.Lifetime = NumberRange.new(5000)
		PE.SpreadAngle = Vector2.new(50, 50)
		PE.RotSpeed = NumberRange.new(500)
		PE.Speed = NumberRange.new(30)
		PE.Rate = 300
	end
end

local Skybox = Instance.new("Sky", game.Lighting)
Skybox.SkyboxBk = Image
Skybox.SkyboxDn = Image
Skybox.SkyboxFt = Image
Skybox.SkyboxLf = Image
Skybox.SkyboxRt = Image
Skybox.SkyboxUp = Image

local M = Instance.new("Message", Folder)
M.Text = "TEAM DEBUGER JOIN TODAY | Broken Fucked Script by LIONARCH_HELON | Youtube : @LIONARC_HELON\n NOTE : When this Script is Executed, This script will DELETED All Infected Remote Execept from RobloxReplicatedStorage"

for i, v in pairs(game:GetDescendants()) do
	if v.Name ~= "RobloxReplicatedStorage" then
		if v:IsA("RemoteEvent") then
			v:Destroy()
		end
		
		if v:IsA("RemoteFunction") then
			v:Destroy()
		end
	end
end