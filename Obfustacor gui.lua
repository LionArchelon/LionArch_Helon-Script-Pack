local gui = Instance.new("ScreenGui")
gui.Name = "ScreenGui [Lua Obfuscator]"
gui.Parent = game.CoreGui

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 500, 0, 300)
Main.Position = UDim2.new(0, 0, 0, 0)
Main.BackgroundColor3 = Color3.new(1, 1, 1)
Main.BorderColor3 = Color3.new(0, 0, 0)
Main.BorderSizePixel = 0
Main.Active = true
Main.BackgroundTransparency = 0 
Main.Draggable = true
Main.Parent = gui
Main.Name = "Main"

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Main

local Stro = Instance.new("UIStroke")
Stro.Color = Color3.new(0.3, 0.3, 0.3)
Stro.Thickness = 8
Stro.Parent = Main

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundColor3 = Color3.new(0, 0, 0)
Title.BorderColor3 = Color3.new(0, 0, 0)
Title.BorderSizePixel = 1
Title.Text = "Simple Lua Obfustacor"
Title.BackgroundTransparency = 1 
Title.TextColor3 = Color3.new(0, 0, 0)
Title.Font = Enum.Font.GothamBold
Title.Parent = Main
Title.TextSize = 26
Title.Name = "Title"

local Scripts = Instance.new("TextBox")
Scripts.Size = UDim2.new(0, 480, 0, 200)
Scripts.Position = UDim2.new(0, 10, 0, 30)
Scripts.BackgroundColor3 = Color3.new(1, 1, 1)
Scripts.BorderColor3 = Color3.new(0, 0, 0)
Scripts.BorderSizePixel = 1
Scripts.Text = ""
Scripts.PlaceholderText = "Paste your Scripts here to make it UnReadable"
Scripts.TextColor3 = Color3.new(0, 0, 0)
Scripts.BackgroundTransparency = 0
Scripts.Font = Enum.Font.Code
Scripts.TextSize = 15
Scripts.Parent = Main
Scripts.TextXAlignment = "Left"
Scripts.TextYAlignment = "Top"
Scripts.MultiLine = true
Scripts.TextWrap = true
Scripts.ClearTextOnFocus = false

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Scripts

local Stro = Instance.new("UIStroke")
Stro.Color = Color3.new(0.7, 0.7, 0.7)
Stro.Thickness = 1
Stro.Parent = Scripts
Stro.ApplyStrokeMode = "Border"

local Obfustace = Instance.new("TextButton")
Obfustace.Size = UDim2.new(0, 200, 0, 50)
Obfustace.Position = UDim2.new(0, 10, 0, 240)
Obfustace.BackgroundColor3 = Color3.new(1, 1, 1)
Obfustace.BorderColor3 = Color3.new(0, 0, 0)
Obfustace.BorderSizePixel = 1
Obfustace.Text = "Obfustace"
Obfustace.BackgroundTransparency = 0 
Obfustace.TextColor3 = Color3.new(0, 0, 0)
Obfustace.Font = Enum.Font.GothamBold
Obfustace.Parent = Main
Obfustace.TextSize = 20
Obfustace.Name = "Obfustace"

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Obfustace

local Stro = Instance.new("UIStroke")
Stro.Color = Color3.new(0, 0, 0)
Stro.Thickness = 2
Stro.Parent = Obfustace
Stro.ApplyStrokeMode = "Border"

local Status = Instance.new("TextLabel")
Status.Size = UDim2.new(0, 120, 0, 70)
Status.Position = UDim2.new(0, 300, 0, 230)
Status.BackgroundColor3 = Color3.new(0, 0, 0)
Status.BorderColor3 = Color3.new(0, 0, 0)
Status.BorderSizePixel = 0
Status.Text = "Status : Waiting"
Status.BackgroundTransparency = 1 
Status.TextColor3 = Color3.new(0, 0, 0)
Status.Font = Enum.Font.GothamBold
Status.Parent = Main
Status.TextSize = 20
Status.Name = "Status"

local function COROTINE()
	local script = Instance.new("LocalScript", Obfustace)
	script.Name = "Obfustacor"
	
	script.Parent.MouseButton1Click:Connect(function()
	--[[
-- For people who are new to obfuscating, here is a easy and simple way to obfuscate your scripts!

-- By M0_0Y on ROBLOX
]]

local throw_away = {}

local SCRIPT_TO_OBFUSCATE = Scripts.Text

function GetBytes()
	for num = 1, #SCRIPT_TO_OBFUSCATE do
		throw_away[num] = string.byte(SCRIPT_TO_OBFUSCATE, num)
	end
end

function ConvertString()
	local string_buffer = "";
	for obj = 1, #throw_away do
		string_buffer = string_buffer .. "\\" .. throw_away[obj]
	end
	return string_buffer
end

function Obfuscate()
	GetBytes()
	local str = ConvertString()
	return setclipboard('loadstring("' .. str .. '")()')
end

Obfuscate()
		Status.Text = "Status : Copied to Clipboard!"
		wait(1)
		Status.Text = "Status : Waiting"
	end)
end
coroutine.wrap(COROTINE)()















