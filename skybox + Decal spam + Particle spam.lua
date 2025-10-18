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

