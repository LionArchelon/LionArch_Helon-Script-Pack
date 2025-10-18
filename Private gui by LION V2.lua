local open = true

local gui = Instance.new("ScreenGui", game.CoreGui)
gui.ResetOnSpawn = false
gui.Name = "ScreenGui [PRIVATE]"

local Shel = Instance.new("Frame")
Shel.Size = UDim2.new(0, 430, 0, 330)
Shel.Position = UDim2.new(0.3, 0, 0.3, 0)
Shel.BackgroundColor3 = Color3.new(1, 1, 1)
Shel.BorderColor3 = Color3.new(0, 0, 0)
Shel.BorderSizePixel = 0
Shel.BackgroundTransparency = 0.5 
Shel.Parent = gui
Shel.Active = true
local function EERUFD_fake_script() -- mainpage.Dragify 
    local script = Instance.new('LocalScript', Shel)
    script.Name = "Draggable"

    local UserInputService = game:GetService("UserInputService")
    
    local gui = script.Parent
    
    local dragging
    local dragInput
    local dragStart
    local startPos
    
    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    
    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position
    
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end
coroutine.wrap(EERUFD_fake_script)()


local ExeP = Instance.new("Frame")
ExeP.Size = UDim2.new(1, 0, 0.87, 0)
ExeP.Position = UDim2.new(0, 0, 0.13, 0)
ExeP.BackgroundColor3 = Color3.new(1, 1, 1)
ExeP.BorderColor3 = Color3.new(0, 0, 0)
ExeP.BorderSizePixel = 1
ExeP.BackgroundTransparency = 1
ExeP.Parent = Shel

local ScriptP = Instance.new("Frame")
ScriptP.Size = UDim2.new(1, 0, 0.9, 0)
ScriptP.Position = UDim2.new(0, 0, 0.1, 0)
ScriptP.BackgroundColor3 = Color3.new(1, 1, 1)
ScriptP.BorderColor3 = Color3.new(0, 0, 0)
ScriptP.BorderSizePixel = 1
ScriptP.BackgroundTransparency = 1
ScriptP.Parent = Shel
ScriptP.Visible = false

local Bhub = Instance.new("TextButton")
Bhub.Size = UDim2.new(0, 102, 0, 35)
Bhub.Position = UDim2.new(0, 5, 0, 5)
Bhub.BackgroundColor3 = Color3.new(1, 1, 1)
Bhub.BorderColor3 = Color3.new(0, 0, 0)
Bhub.BorderSizePixel = 0
Bhub.Text = "SS Executor"
Bhub.BackgroundTransparency = 0.5
Bhub.TextColor3 = Color3.new(0, 0, 0)
Bhub.Font = Enum.Font.SciFi
Bhub.Parent = Shel
Bhub.TextSize = 19
Bhub.MouseButton1Click:Connect(function()
	if open == true then
		ExeP.Visible = false
		ScriptP.Visible = true
		Bhub.Text = "ScriptHub"
		open = false
	else
		ExeP.Visible = true
		ScriptP.Visible = false
		Bhub.Text = "SS Executor"
		open = true
	end
end)

local Search = Instance.new("TextBox")
Search.Size = UDim2.new(0, 230, 0, 35)
Search.Position = UDim2.new(0, 110, 0, 5)
Search.BackgroundColor3 = Color3.new(1, 1, 1)
Search.BorderColor3 = Color3.new(0, 0, 0)
Search.BorderSizePixel = 0
Search.Text = ""
Search.TextColor3 = Color3.new(0, 0, 0)
Search.BackgroundTransparency = 0.5
Search.Font = Enum.Font.SciFi
Search.TextSize = 20
Search.Parent = Shel
Search.PlaceholderText = "Find Awesome Script..."
Search.PlaceholderColor3 = Color3.new(0, 0, 0)

local Close = Instance.new("TextButton")
Close.Size = UDim2.new(0,83 , 0, 35)
Close.Position = UDim2.new(0, 342, 0, 5)
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BorderColor3 = Color3.new(0, 0, 0)
Close.BorderSizePixel = 0
Close.Text = "Close Gui"
Close.BackgroundTransparency = 0.5 
Close.TextColor3 = Color3.new(0, 0, 0)
Close.Font = Enum.Font.SciFi
Close.Parent = Shel
Close.TextSize = 18

local Code = Instance.new("TextBox")
Code.Size = UDim2.new(0, 420, 0.855, 0)
Code.Position = UDim2.new(0, 5, 0, 0)
Code.BackgroundColor3 = Color3.new(1, 1, 1)
Code.BorderColor3 = Color3.new(0, 0, 0)
Code.BorderSizePixel = 0
Code.Text = ""
Code.TextColor3 = Color3.new(0, 0, 0)
Code.BackgroundTransparency = 0.5
Code.Font = Enum.Font.Code
Code.TextSize = 15
Code.Parent = ExeP
Code.TextXAlignment = "Left"
Code.TextYAlignment = "Top"
Code.MultiLine = true
Code.PlaceholderText = "Run all Custom code with Single Button..."
Code.ClearTextOnFocus = false
Code.PlaceholderColor3 = Color3.new(0, 0, 0)
Code.TextWrap = true
Code.TextWrapped = true

local Execute = Instance.new("TextButton")
Execute.Size = UDim2.new(0.5, 0, 0, 35)
Execute.Position = UDim2.new(0, 5, 0, 249)
Execute.BackgroundColor3 = Color3.new(1, 1, 1)
Execute.BorderColor3 = Color3.new(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Text = "Execute SS"
Execute.BackgroundTransparency = 0.5 
Execute.TextColor3 = Color3.new(0, 0, 0)
Execute.Font = Enum.Font.SciFi
Execute.Parent = ExeP
Execute.TextSize = 24
Execute.MouseButton1Click:Connect(function()
	assert(loadstring(Code.Text)())()
end)

local Clear = Instance.new("TextButton")
Clear.Size = UDim2.new(0, 205, 0, 35)
Clear.Position = UDim2.new(0, 220, 0, 249)
Clear.BackgroundColor3 = Color3.new(1, 1, 1)
Clear.BorderColor3 = Color3.new(0, 0, 0)
Clear.BorderSizePixel = 0
Clear.Text = "Clear"
Clear.BackgroundTransparency = 0.5 
Clear.TextColor3 = Color3.new(0, 0, 0)
Clear.Font = Enum.Font.SciFi
Clear.Parent = ExeP
Clear.TextSize = 24
Clear.MouseButton1Click:Connect(function()
	Code.Text = ""
end)

local Re = Instance.new("TextButton")
Re.Size = UDim2.new(0, 100, 0, 35)
Re.Position = UDim2.new(0, 5, 0, 256)
Re.BackgroundColor3 = Color3.new(1, 1, 1)
Re.BorderColor3 = Color3.new(0, 0, 0)
Re.BorderSizePixel = 0
Re.Text = "Re"
Re.BackgroundTransparency = 0.5 
Re.TextColor3 = Color3.new(0, 0, 0)
Re.Font = Enum.Font.SciFi
Re.Parent = ScriptP
Re.TextSize = 24
Re.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health = 0
end)

local Username = Instance.new("TextButton")
Username.Size = UDim2.new(0, 214, 0, 35)
Username.Position = UDim2.new(0, 108, 0, 256)
Username.BackgroundColor3 = Color3.new(1, 1, 1)
Username.BorderColor3 = Color3.new(0, 0, 0)
Username.BorderSizePixel = 0
Username.Text = game.Players.LocalPlayer.Name
Username.TextColor3 = Color3.new(0, 0, 0)
Username.BackgroundTransparency = 0.5
Username.Font = Enum.Font.Gotham
Username.TextSize = 18
Username.Parent = ScriptP

local R6 = Instance.new("TextButton")
R6.Size = UDim2.new(0, 100, 0, 35)
R6.Position = UDim2.new(0, 325, 0, 256)
R6.BackgroundColor3 = Color3.new(1, 1, 1)
R6.BorderColor3 = Color3.new(0, 0, 0)
R6.BorderSizePixel = 0
R6.Text = "R6"
R6.BackgroundTransparency = 0.5 
R6.TextColor3 = Color3.new(0, 0, 0)
R6.Font = Enum.Font.SciFi
R6.Parent = ScriptP
R6.TextSize = 20

local Hub = Instance.new("ScrollingFrame")
Hub.Size = UDim2.new(0, 420, 0, 243)
Hub.Position = UDim2.new(0, 5, 0, 10)
Hub.BackgroundColor3 = Color3.new(1, 1, 1)
Hub.BorderColor3 = Color3.new(0, 0, 0)
Hub.BorderSizePixel = 0
Hub.Parent = ScriptP
Hub.ScrollBarThickness = 0
Hub.ScrollingDirection = "Y"
Hub.BackgroundTransparency = 1

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 3)
UIListLayout.Parent = Hub

local function AddButton(name, functionCall)
for i = 1, 10 * 10 do
	print(functionCall)
end
local LOL = Instance.new("TextButton")
LOL.Size = UDim2.new(1, 0, 0, 30)
LOL.Position = UDim2.new(0, 0, 0, 0)
LOL.BackgroundColor3 = Color3.new(1, 1, 1)
LOL.BorderColor3 = Color3.new(0, 0, 0)
LOL.BorderSizePixel = 0
LOL.Text = name
LOL.Name = name
LOL.BackgroundTransparency = 0.5
LOL.TextColor3 = Color3.new(0, 0, 0)
LOL.Font = Enum.Font.SciFi
LOL.Parent = Hub
LOL.TextSize = 17
LOL.TextWrapped = true
LOL.MouseButton1Click:Connect(functionCall)
Hub.CanvasSize += UDim2.new(0, 0, 1, 0)
end

wait(3)

AddButton("Decal Spam + Skybox + Particle Spam", function() 
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

AddButton("Secret Service Panel", function() 
loadstring(game:HttpGet("https://pastefy.app/t2gUwfXy/raw"))()
end)

AddButton("Time Blast", function()
loadstring(game:HttpGet("https://pastebin.com/raw/GTakvdnB"))()
end)

AddButton("Require loader", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Serverside-or-fe-bypass-for-free-47095"))()
end)

AddButton("FE Admin Commands", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/lxte/cmd/main/main.lua"))()
end)

AddButton("FILTERINGENABLED NUKE [Not Recomended to Execute]", function()

end)

AddButton("ScriptPack gui", function()
-- Fe Bypass Full GUI
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

-- Drag function
local function makeDraggable(frame)
    frame.Active = true
    frame.Draggable = true
end

-- Main ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "FeBypassGui"
gui.ResetOnSpawn = false
gui.Parent = CoreGui

-- Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 220, 0, 240)
mainFrame.Position = UDim2.new(0.4, 0, 0.3, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
mainFrame.BorderSizePixel = 1
mainFrame.Parent = gui
makeDraggable(mainFrame)

-- Title Bar
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 25)
title.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
title.Text = "Fe Bypass"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextScaled = true
title.Parent = mainFrame

-- Subtitle
local subtitle = Instance.new("TextLabel")
subtitle.Size = UDim2.new(1, 0, 0, 15)
subtitle.Position = UDim2.new(0, 0, 0, 25)
subtitle.BackgroundTransparency = 1
subtitle.Text = "Black text below"
subtitle.TextColor3 = Color3.fromRGB(0, 0, 0)
subtitle.TextScaled = true
subtitle.Font = Enum.Font.SourceSans
subtitle.Parent = mainFrame

-- Button helper
local function createButton(name, position, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -10, 0, 30)
    btn.Position = position
    btn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    btn.BorderSizePixel = 1
    btn.Text = name
    btn.TextScaled = true
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Parent = mainFrame
    btn.MouseButton1Click:Connect(callback)
end

local btnY = 45
local spacing = 35

-- Button 1: Troll Pin / Bypass
createButton("Troll Pin/BV", UDim2.new(0, 5, 0, btnY), function()
    local localplr = Players.LocalPlayer
    local drag = nil
    pcall(function()
        drag = loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Drag-UI-SUPPORTS-MOBILE-22790"))()
    end)
    if not drag then
        drag = function(f)
            if f then f.Active = true f.Draggable = true end
        end
    end
    local gui2 = Instance.new("ScreenGui")
    gui2.Name = "FeBypassInner"
    gui2.ResetOnSpawn = false
    gui2.Parent = CoreGui

    local mainframe2 = Instance.new("TextLabel")
    mainframe2.BackgroundColor3 = Color3.fromRGB(50,50,50)
    mainframe2.BorderColor3 = Color3.fromRGB(255,255,255)
    mainframe2.Size = UDim2.new(.1,0,.05,0)
    mainframe2.Position = UDim2.new(.45,0,.475,0)
    drag(mainframe2)
    mainframe2.Text = "Fe Bypass"
    mainframe2.TextScaled = true
    mainframe2.TextColor3 = Color3.fromRGB(255,255,255)
    mainframe2.Parent = gui2

    local textbutton = Instance.new("TextButton")
    textbutton.Position = UDim2.new(0,0,1,0)
    textbutton.Size = UDim2.new(1,0,2,0)
    textbutton.Text = "Anti-Slap/Fling: Off"
    textbutton.TextScaled = true
    textbutton.TextColor3 = Color3.fromRGB(255,255,255)
    textbutton.BackgroundColor3 = Color3.fromRGB(255,0,0)
    textbutton.BorderColor3 = Color3.fromRGB(255,255,255)
    textbutton.Parent = mainframe2

    local as = false
    local function dobv(v,char)
        local undo = false
        if as then
            if v:IsA("BodyAngularVelocity") or v:IsA("BodyGyro") or v:IsA("BodyVelocity") then
                undo = true
                v:Destroy()
            elseif v:IsA("BasePart") then
                v.ChildAdded:Connect(function(v2) dobv(v2,char) end)
            end
            if undo and char and char:FindFirstChild("Humanoid") then
                char.Humanoid.Sit = false
                char.Humanoid.PlatformStand = false
            end
        end
    end

    textbutton.MouseButton1Click:Connect(function()
        as = not as
        if as then
            textbutton.Text = "Anti-Slap/Fling: ON"
            if localplr.Character then
                for _,v in pairs(localplr.Character:GetChildren()) do
                    dobv(v,localplr.Character)
                end
            end
        else
            textbutton.Text = "Anti-Slap/Fling: OFF"
        end
    end)

    local function dc(c)
        for _,v in pairs(c:GetChildren()) do dobv(v,c) end
        c.ChildAdded:Connect(function(v) dobv(v,c) end)
    end

    if localplr.Character then dc(localplr.Character) end
    localplr.CharacterAdded:Connect(dc)

    local function getglove()
        for _,p in pairs(Players:GetPlayers()) do
            if p.Character then
                for _,tool in pairs(p.Character:GetChildren()) do
                    if tool:IsA("Tool") and (string.find(tool.Name:lower(),"glove") or string.find(tool.Name:lower(),"slap"))
                       and tool:FindFirstChild("FlightSpeed") and tool:FindFirstChild("Power") and tool:FindFirstChild("Event") then
                        return tool, tool.Event
                    end
                end
            end
            if p:FindFirstChild("Backpack") then
                for _,tool in pairs(p.Backpack:GetChildren()) do
                    if tool:IsA("Tool") and (string.find(tool.Name:lower(),"glove") or string.find(tool.Name:lower(),"slap"))
                       and tool:FindFirstChild("FlightSpeed") and tool:FindFirstChild("Power") and tool:FindFirstChild("Event") then
                        return tool, tool.Event
                    end
                end
            end
        end
    end

    local killAllEnabled, flingAllEnabled = false, false

    local kb = Instance.new("TextButton")
    kb.Position = UDim2.new(0,0,3,0)
    kb.Size = UDim2.new(1,0,2,0)
    kb.Text = "Kill All: OFF"
    kb.TextScaled = true
    kb.TextColor3 = Color3.fromRGB(255,255,255)
    kb.BackgroundColor3 = Color3.fromRGB(255,0,0)
    kb.BorderColor3 = Color3.fromRGB(255,255,255)
    kb.Parent = mainframe2
    kb.MouseButton1Click:Connect(function()
        killAllEnabled = not killAllEnabled
        kb.Text = killAllEnabled and "Kill All: ON" or "Kill All: OFF"
    end)

    local fb = Instance.new("TextButton")
    fb.Position = UDim2.new(0,0,5,0)
    fb.Size = UDim2.new(1,0,2,0)
    fb.Text = "Fling All: OFF"
    fb.TextScaled = true
    fb.TextColor3 = Color3.fromRGB(255,255,255)
    fb.BackgroundColor3 = Color3.fromRGB(255,0,0)
    fb.BorderColor3 = Color3.fromRGB(255,255,255)
    fb.Parent = mainframe2
    fb.MouseButton1Click:Connect(function()
        flingAllEnabled = not flingAllEnabled
        fb.Text = flingAllEnabled and "Fling All: ON" or "Fling All: OFF"
    end)

    spawn(function()
        while true do
            RunService.Heartbeat:Wait()
            local glove,event = getglove()
            if glove and event then
                if killAllEnabled then
                    for _,v in pairs(Players:GetPlayers()) do
                        if v~=localplr and v.Character then
                            event:FireServer("slash",v.Character,Vector3.new(0,-1e20,0))
                        end
                    end
                end
                if flingAllEnabled then
                    for _,v in pairs(Players:GetPlayers()) do
                        if v~=localplr and v.Character then
                            event:FireServer("slash",v.Character,Vector3.new(0,1e20,0))
                        end
                    end
                end
            end
        end
    end)
end)
btnY = btnY + spacing

-- Button 2: Prison Life Bypass
createButton("Prison Life Bypass", UDim2.new(0,5,0,btnY), function()
    loadstring(game:HttpGet("https://pastebin.com/raw/BBmCUwQg"))()
end)
btnY = btnY + spacing

-- Button 3: FE Infinite Yield
createButton("FE Infinite Yield", UDim2.new(0,5,0,btnY), function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
btnY = btnY + spacing

-- Button 4: FE Nameless Admin
createButton("FE Nameless Admin", UDim2.new(0,5,0,btnY), function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Nameless-Admin/main/NamelessAdmin.lua"))()
end)
btnY = btnY + spacing

-- Button 5: Executor
createButton("Executor", UDim2.new(0,5,0,btnY), function()
    local executorGui = Instance.new("ScreenGui")
    executorGui.Name = "FakeExecutor"
    executorGui.Parent = CoreGui

    local execFrame = Instance.new("Frame")
    execFrame.Size = UDim2.new(0, 300, 0, 200)
    execFrame.Position = UDim2.new(0.3,0,0.3,0)
    execFrame.BackgroundColor3 = Color3.fromRGB(50,50,50)
    execFrame.BorderSizePixel = 1
    execFrame.Parent = executorGui
    makeDraggable(execFrame)

    local execTitle = Instance.new("TextLabel")
    execTitle.Size = UDim2.new(1,0,0,25)
    execTitle.BackgroundColor3 = Color3.fromRGB(0,255,0)
    execTitle.Text = "Require Executor"
    execTitle.TextColor3 = Color3.fromRGB(0,0,0)
    execTitle.TextScaled = true
    execTitle.Parent = execFrame

    local codeBox = Instance.new("TextBox")
    codeBox.Size = UDim2.new(1,-10,0,120)
    codeBox.Position = UDim2.new(0,5,0,30)
    codeBox.BackgroundColor3 = Color3.fromRGB(30,30,30)
    codeBox.TextColor3 = Color3.fromRGB(255,255,255)
    codeBox.Text = "-- Type Lua code here"
    codeBox.TextWrapped = true
    codeBox.ClearTextOnFocus = false
    codeBox.MultiLine = true
    codeBox.Parent = execFrame

    local executeBtn = Instance.new("TextButton")
    executeBtn.Size = UDim2.new(0.48,0,0,25)
    executeBtn.Position = UDim2.new(0,5,0,160)
    executeBtn.BackgroundColor3 = Color3.fromRGB(0,255,0)
    executeBtn.Text = "Execute"
    executeBtn.TextColor3 = Color3.fromRGB(0,0,0)
    executeBtn.TextScaled = true
    executeBtn.Parent = execFrame
    executeBtn.MouseButton1Click:Connect(function()
        local remotes = {}
        for _,obj in pairs(game:GetDescendants()) do
            if obj:IsA("RemoteEvent") then
                table.insert(remotes,obj)
            end
        end
        for _,r in pairs(remotes) do
            pcall(function()
                r:FireServer(codeBox.Text)
            end)
        end
    end)

    local clearBtn = Instance.new("TextButton")
    clearBtn.Size = UDim2.new(0.48,0,0,25)
    clearBtn.Position = UDim2.new(0.5,-5,0,160)
    clearBtn.BackgroundColor3 = Color3.fromRGB(255,0,0)
    clearBtn.Text = "Clear"
    clearBtn.TextColor3 = Color3.fromRGB(0,0,0)
    clearBtn.TextScaled = true
    clearBtn.Parent = execFrame
    clearBtn.MouseButton1Click:Connect(function()
        codeBox.Text = ""
    end)
end)

end)

AddButton("Grab Knife v3", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-grab-knife-v3-9232"))()
end)

AddButton("Steve", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/tubers93's-Place-Number:-1-steve-38109"))()
end)

AddButton("Mr bean Admin LIONARC_HELON Edition", function()
wait(math.random(1, 4))
       local Prefix = ""

local gui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
gui.ResetOnSpawn = false
gui.Name = "mr bean admin update"

local Cmds = Instance.new("Frame")
Cmds.Size = UDim2.new(0.5, 0, 0.5, 0)
Cmds.Position = UDim2.new(0.3, 0, 0.3, 0)
Cmds.BackgroundColor3 = Color3.new(0, 0, 0)
Cmds.BorderColor3 = Color3.new(1, 1, 1)
Cmds.BorderSizePixel = 3
Cmds.Active = true
Cmds.BackgroundTransparency = 0.5
Cmds.Draggable = true
Cmds.Parent = gui

local Lulsz = Instance.new("TextLabel")
Lulsz.Size = UDim2.new(1, 0, 0.1, 3)
Lulsz.Position = UDim2.new(0, 0, 0, 0)
Lulsz.BackgroundColor3 = Color3.new(0, 0, 0)
Lulsz.BorderColor3 = Color3.new(0, 0, 0)
Lulsz.BorderSizePixel = 1
Lulsz.Text = "Command"
Lulsz.BackgroundTransparency = 1 
Lulsz.TextColor3 = Color3.new(255, 255, 255)
Lulsz.Font = Enum.Font.Arial
Lulsz.Parent = Cmds
Lulsz.TextSize = 27

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Size = UDim2.new(1, 0, 0.9, 0)
ScrollingFrame.Position = UDim2.new(0, 0, 0.1, 0)
ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame.BorderColor3 = Color3.new(0, 0, 0)
ScrollingFrame.BorderSizePixel = 1
ScrollingFrame.Parent = Cmds
Instance.new("UIListLayout", ScrollingFrame)

ScrollingFrame.BackgroundTransparency = 1 

local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 30, 0, 30)
close.Position = UDim2.new(0.95, 0, 0, 0)
close.BackgroundColor3 = Color3.new(0, 0, 0)
close.BorderColor3 = Color3.new(0, 0, 0)
close.BorderSizePixel = 1
close.Text = "X"
close.BackgroundTransparency = 1 
close.TextColor3 = Color3.new(255, 0, 0)
close.Font = Enum.Font.Code
close.Parent = Lulsz
close.TextScaled = true
close.MouseButton1Click:Connect(function()
	Cmds.Visible = false
end)

local function AddCommand(name)
local LOOL = Instance.new("TextLabel")
LOOL.Size = UDim2.new(1, 0, 0.03, 0)
LOOL.Position = UDim2.new(0.5, 0, 0.5, 0)
LOOL.BackgroundColor3 = Color3.new(0, 0, 0)
LOOL.BorderColor3 = Color3.new(0, 0, 0)
LOOL.BorderSizePixel = 1
LOOL.Text = "Command : "..name.." | AKA : "..name
LOOL.BackgroundTransparency = 1 
LOOL.TextColor3 = Color3.new(255, 255, 255)
LOOL.Font = Enum.Font.Arial
LOOL.Parent = ScrollingFrame
LOOL.TextSize = 15
LOOL.TextXAlignment = "Left"
end

AddCommand("rainPart")
AddCommand("boom me")
AddCommand("reset me")
AddCommand("give me <gear>")
AddCommand("sit me")
AddCommand("kill me")
AddCommand("r6 me")
AddCommand("grounded me")
AddCommand("freeze me")
AddCommand("unfreeze me")
AddCommand("Cmds")
AddCommand("ff me")
AddCommand("Shutdown")

local Property = Instance.new("Frame")
Property.Size = UDim2.new(1, 0, 0.04, 0)
Property.Position = UDim2.new(0, 0, -0.1, 0)
Property.BackgroundColor3 = Color3.new(0, 0, 0)
Property.BorderColor3 = Color3.new(0, 0, 0)
Property.BorderSizePixel = 1
Property.BackgroundTransparency = 0.5 
Property.Parent = gui

local CmdBar = Instance.new("TextBox")
CmdBar.Size = UDim2.new(1, 0, 0.5, 0)
CmdBar.Position = UDim2.new(0, 0, 0.27, 0)
CmdBar.BackgroundColor3 = Color3.new(0, 0, 0)
CmdBar.BorderColor3 = Color3.new(0, 0, 0)
CmdBar.BorderSizePixel = 1
CmdBar.Text = ""
CmdBar.TextColor3 = Color3.new(1, 1, 1)
CmdBar.BackgroundTransparency = 0.5
CmdBar.Font = Enum.Font.Code
CmdBar.TextSize = 13
CmdBar.Parent = Property
CmdBar.Focused:Connect(function()
	CmdBar.Text = Prefix
end)

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Size = UDim2.new(0, 90, 0, 90)
ImageLabel.Position = UDim2.new(0.9, 0, 0.79, 0)
ImageLabel.BackgroundColor3 = Color3.new(0, 0, 0)
ImageLabel.ImageColor3 = Color3.new(1, 1, 1)
ImageLabel.Image = "rbxassetid://123852508876370"
ImageLabel.ImageTransparency = 0
ImageLabel.Parent = gui
ImageLabel.Active = true

ImageLabel.BackgroundTransparency = 1 

local walkspeed = CmdBar.Text

CmdBar.FocusLost:Connect(function()
	if CmdBar.Text == Prefix.."boom me" then
		local exp = Instance.new("Explosion", workspace)
		exp.BlastPressure = 10000000000
		exp.BlastRadius = 10000000000
		exp.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
	elseif CmdBar.Text == Prefix.."kill me" then
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	elseif CmdBar.Text == Prefix.."sit me" then
		game.Players.LocalPlayer.Character.Humanoid.Sit = true
	elseif CmdBar.Text == Prefix.."give me bomb" then
--Service
local Plr = game.Players.LocalPlayer
local Rad = 19

--Tool
local Tool = Instance.new("Tool", Plr.Backpack)
Tool.ToolTip = "Bomb Tick Tock KABOOM! [Delay 5 Sec]"
Tool.Name = "Bomb"
Instance.new("ModuleScript", Tool)

local Hand = Instance.new("Part", Tool)
Hand.Shape = "Ball"
Hand.Color = Color3.new(0, 0, 0)
Hand.Size = Vector3.new(2, 2, 2)
Hand.Name = "Handle"

Tool.Activated:Connect(function()
   local Part = Instance.new("Part", workspace)
   Part.Size = Vector3.new(3, 3, 3)
   Part.Shape = "Ball"
   Part.Color = Color3.new(0, 0, 0)
   Part.TopSurface = "Smooth"
   Part.CFrame = Plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 4, -3)
   Part.BottomSurface = "Smooth"
   for V = 1, 5 do
   task.wait(0.4)
   Part.Color = Color3.new(1, 0, 0)
   task.wait(0.4)
   Part.Color = Color3.new(0, 0, 0)
  end
  local exp = Instance.new("Explosion", workspace)
  exp.BlastRadius *= Rad
  exp.BlastPressure *= Rad
  exp.Position = Part.Position
  exp.DestroyJointRadiusPercent = 100
  local Part2 = Instance.new("Part", workspace)
  Part2.Size = Vector3.new(Rad * 4, Rad * 4, Rad * 4)
  Part2.Position = Part.Position
  Part2.TopSurface = "Smooth"
  Part2.Anchored = true
  Part2.CanCollide = false
  Part2.Material = "Neon"
  Part2.BottomSurface = "Smooth"
  Part2.Color = Color3.new(0, 1, 0)
  Part2.Shape = "Ball"
  Part:Destroy()
  for B = 1, 60 do
   task.wait()
   Part2.Transparency += 0.005
  end
  Part2:Destroy()
end) 
	elseif CmdBar.Text == Prefix.."r6 me" then
		loadstring(game:HttpGet(('https://pastebin.com/raw/jHGVauVX'),true))()
	elseif CmdBar.Text == Prefix.."grounded me" then
		game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
	elseif CmdBar.Text == Prefix.."reset me" then
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	elseif CmdBar.Text == Prefix.."rainPart" then
for i = 1, math.random(1, 230) do
local Plr = game.Players.LocalPlayer
local Char = Plr.Character

local Part = Instance.new("Part", workspace)
Part.Size = Vector3.new(math.random(1, 60), math.random(1, 60), math.random(1, 60))
Part.Material = "Neon"
Part.Shape = "Ball"
Part.Position = Char.HumanoidRootPart.Position + Vector3.new(math.random(1, 50), 350, math.random(1, 50))
task.wait()
local Exp = Instance.new("Explosion", Part)
Exp.Position = Part.Position
Part.Color = Color3.fromRGB(math.random(1, 255), math.random(1, 255), math.random(1, 255))
local Smoke = Instance.new("Smoke", Part)
Smoke.Color = Color3.fromRGB(math.random(1, 255), math.random(1, 255), math.random(1, 255))
Smoke.Size = math.random(1, 100)
task.wait()
end
	elseif CmdBar.Text == Prefix.."freeze me" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	elseif CmdBar.Text == Prefix.."unfreeze me" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	elseif CmdBar.Text == Prefix.."cmds" then
		Cmds.Visible = true
	elseif CmdBar.Text == Prefix.."ff me" then
		Instance.new("ForceField", game.Players.LocalPlayer.Character)
	elseif CmdBar.Text == "shutdown" then
		game.Players.LocalPlayer:Kick()
     end
end)
end)

AddButton("Topk3k V4.0", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/i-topk3k-test-29602"))()
end)

AddButton("Clown Kiddnap", function()
loadstring(game:HttpGet("https://pastebin.com/raw/vP2D2vnC"))()
end)

AddButton("Big Smoke", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaGunsX/LuasLegacyScripts/refs/heads/main/%5BRecharacter%5D%20Big%20Smoke"))()
end)

AddButton("Nebula Star Glicther", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Nebula-Star-Glitcher-46143"))()
end)

AddButton("Spectrum Star Glicther", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/SCPECTRUMGLITCHER/refs/heads/main/SpectrumG%20(1).txt"))()
end)

AddButton("Gaster Hands", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/good-cop-bad-coop/refs/heads/main/GasterHands.txt"))()
end)

AddButton("War Robot", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Robot-LUA-49167"))()
end)

AddButton("Galactic Titan", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TEST19983/Reslasjd/refs/heads/main/attac"))()
end)

AddButton("Serverside.fun Executor", function()
loadstring(game:HttpGet("https://pastefy.app/xj9lkBIv/raw"))()
end)

AddButton("youareanidiot.org", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-You-are-a-idiot-Jumpscare-28005"))()
end)

AddButton("M4A1-S", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Idk-script-6-30278"))()
end)

AddButton("Ban Hammer", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/ban-hammer/refs/heads/main/ban"))()
end)

AddButton("Kitchen gun", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/rare/refs/heads/main/kitcher%20gun.lua"))()
end)

AddButton("John doe", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Client-Replication-John-doe-up-by-gojohdkaisenkt-34198"))()
end)

AddButton("Bomb Vest v2", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Ussjzbwusbdlq/refs/heads/main/Luafile33Xc3eww"))()
end)

AddButton("Harked gui", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Harked-reborn-30666"))()
end)

AddButton("Rc7 (Require)", function()
loadstring(game:HttpGet("https://pastebin.com/raw/2GCB3P3t"))()
end)

AddButton("Xester V2", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Prison-Life-Xester-18937"))()
end)

AddButton("FilteringDisabler (Require)", function()
loadstring(game:HttpGet("https://pastebin.com/raw/m1eVSBZY"))()
end)

AddButton("Hand Ravage", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/sin-dragon/refs/heads/main/reevenge%20hands.txt"))()
end)

AddButton("The Angle", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/the-angel/refs/heads/main/The%20Angel.txt"))()
end)

AddButton("Good Cop Bad Cop", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/good-cop-bad-coop/refs/heads/main/KwuminKa.txt"))()
end)

AddButton("Ak-47", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Visual-AK-47-gun-29467"))()
end)