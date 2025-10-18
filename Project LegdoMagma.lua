game:GetService("MarketplaceService"):GetProductInfo(game.GameId)
local function ApplyHighLight(parent)
parent.MouseEnter:Connect(function()
	parent.BackgroundColor3 = Color3.fromRGB(255, 175, 0)
	parent.TextColor3 = Color3.new(0, 0, 0)
	parent.BorderColor3 = Color3.new(0, 0, 0)
end)
parent.MouseLeave:Connect(function()
	parent.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	parent.TextColor3 = Color3.new(1, 1, 1)
	parent.BorderColor3 = Color3.fromRGB(255, 175, 0)
end)
end

local X1Y1 = UDim2.new(0, 10, 0, 50)
local X1Y2 = UDim2.new(0, 10, 0, 82)
local X1Y3 = UDim2.new(0, 10, 0, 114)
local X1Y4 = UDim2.new(0, 10, 0, 146)
local X1Y5 = UDim2.new(0, 10, 0, 178)
local X1Y6 = UDim2.new(0, 10, 0, 210)
local X2Y1 = UDim2.new(0, 200, 0, 50)
local X2Y2 = UDim2.new(0, 200, 0, 82)
local X2Y3 = UDim2.new(0, 200, 0, 114)
local X2Y4 = UDim2.new(0, 200, 0, 146)
local X2Y5 = UDim2.new(0, 200, 0, 178)
local X2Y6 = UDim2.new(0, 200, 0, 210)

local gui = Instance.new("ScreenGui")
gui.Name = "Private gui"
gui.Parent = game.CoreGui
gui.ResetOnSpawn = false
gui.DisplayOrder = 2145334

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 393, 0, 300)
Main.Position = UDim2.new(0, 20, 0, 20)
Main.BackgroundColor3 = Color3.new(0, 0, 0)
Main.BorderColor3 = Color3.fromRGB(255, 175, 0)
Main.BorderSizePixel = 2
Main.Active = true
Main.BackgroundTransparency = 0 
Main.Draggable = true
Main.Parent = gui
Main.Name = "Main"

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundColor3 = Color3.new(0, 0, 0)
Title.BorderColor3 = Color3.fromRGB(255, 175, 0)
Title.BorderSizePixel = 2
Title.Text = "Project LegDoMagma by LIONARCH_HELON"
Title.BackgroundTransparency = 0 
Title.TextColor3 = Color3.new(255, 255, 255)
Title.Font = Enum.Font.Arial
Title.Parent = Main
Title.Name = "Title"
Title.TextScaled = true

local pageclone = Instance.new("Frame")
pageclone.Size = UDim2.new(1, 0, 1, 0)
pageclone.Position = UDim2.new(0, 0, 0, 0)
pageclone.BackgroundColor3 = Color3.new(1, 1, 1)
pageclone.BorderColor3 = Color3.new(0, 0, 0)
pageclone.BorderSizePixel = 1
pageclone.Name = ""
pageclone.BackgroundTransparency = 1 
pageclone.Parent = Main
local function AddButton(parent, name, pos, callback)
local Button = Instance.new("TextButton")
Button.Name = name
Button.Text = name
Button.Size = UDim2.new(0, 180, 0, 28)
Button.Position = pos
Button.Parent = parent
Button.BackgroundColor3 = Color3.new(0, 0, 0)
Button.TextScaled = true
Button.Font = "Arial"
Button.BorderColor3 = Color3.fromRGB(255, 175, 0)
Button.TextColor3 = Color3.new(1, 1, 1)
Button.MouseButton1Click:Connect(callback)
ApplyHighLight(Button)
end
--Pages
local P1 = pageclone:Clone()
P1.Name = "P1"
P1.Parent = Main
P1.Visible = true

local P2 = pageclone:Clone()
P2.Parent = Main
P2.Name = "P2"
P2.Visible = false

local P3 = pageclone:Clone()
P3.Name = "P3"
P3.Parent = Main
P3.Visible = false

local P4 = pageclone:Clone()
P4.Name = "P4"
P4.Parent = Main
P4.Visible = false

local P5 = pageclone:Clone()
P5.Parent = Main
P5.Name = "P5"
P5.Visible = false

--FromPage
local Back = Instance.new("TextButton")
Back.Size = UDim2.new(0, 80, 0, 28)
Back.Position = UDim2.new(0, 10, 0, 252)
Back.BackgroundColor3 = Color3.new(0, 0, 0)
Back.BorderColor3 = Color3.fromRGB(255, 175, 0)
Back.BorderSizePixel = 1
Back.Text = " < Back"
Back.BackgroundTransparency = 0 
Back.TextColor3 = Color3.new(255, 255, 255)
Back.Font = Enum.Font.Arial
Back.Parent = P2
Back.TextScaled = true
ApplyHighLight(Back)
Back.MouseButton1Click:Connect(function()
	P1.Visible = true
	P2.Visible = false
end)
Back.Name = "Back"

local Next = Instance.new("TextButton")
Next.Size = UDim2.new(0, 80, 0, 28)
Next.Position = UDim2.new(1, -90, 0, 252)
Next.BackgroundColor3 = Color3.new(0, 0, 0)
Next.BorderColor3 = Color3.fromRGB(255, 175, 0)
Next.BorderSizePixel = 1
Next.Text = "Next >"
Next.BackgroundTransparency = 0 
Next.TextColor3 = Color3.new(255, 255, 255)
Next.Font = Enum.Font.Arial
Next.Parent = P1
Next.TextScaled = true
Next.Name = "Next"
Next.MouseButton1Click:Connect(function()
	P1.Visible = false
	P2.Visible = true
end)
ApplyHighLight(Next)


local Back = Instance.new("TextButton")
Back.Size = UDim2.new(0, 80, 0, 28)
Back.Position = UDim2.new(0, 10, 0, 252)
Back.BackgroundColor3 = Color3.new(0, 0, 0)
Back.BorderColor3 = Color3.fromRGB(255, 175, 0)
Back.BorderSizePixel = 1
Back.Text = " < Back"
Back.BackgroundTransparency = 0 
Back.TextColor3 = Color3.new(255, 255, 255)
Back.Font = Enum.Font.Arial
Back.Parent = P2
Back.TextScaled = true
ApplyHighLight(Back)
Back.MouseButton1Click:Connect(function()
	P1.Visible = true
	P2.Visible = false
end)
Back.Name = "Back"

local Next = Instance.new("TextButton")
Next.Size = UDim2.new(0, 80, 0, 28)
Next.Position = UDim2.new(1, -90, 0, 252)
Next.BackgroundColor3 = Color3.new(0, 0, 0)
Next.BorderColor3 = Color3.fromRGB(255, 175, 0)
Next.BorderSizePixel = 1
Next.Text = "Next >"
Next.BackgroundTransparency = 0 
Next.TextColor3 = Color3.new(255, 255, 255)
Next.Font = Enum.Font.Arial
Next.Parent = P2
Next.TextScaled = true
Next.Name = "Next"
Next.MouseButton1Click:Connect(function()
	P2.Visible = false
	P3.Visible = true
end)
ApplyHighLight(Next)

local Back = Instance.new("TextButton")
Back.Size = UDim2.new(0, 80, 0, 28)
Back.Position = UDim2.new(0, 10, 0, 252)
Back.BackgroundColor3 = Color3.new(0, 0, 0)
Back.BorderColor3 = Color3.fromRGB(255, 175, 0)
Back.BorderSizePixel = 1
Back.Text = " < Back"
Back.BackgroundTransparency = 0 
Back.TextColor3 = Color3.new(255, 255, 255)
Back.Font = Enum.Font.Arial
Back.Parent = P3
Back.TextScaled = true
ApplyHighLight(Back)
Back.MouseButton1Click:Connect(function()
	P2.Visible = true
	P3.Visible = false
end)
Back.Name = "Back"

local Next = Instance.new("TextButton")
Next.Size = UDim2.new(0, 80, 0, 28)
Next.Position = UDim2.new(1, -90, 0, 252)
Next.BackgroundColor3 = Color3.new(0, 0, 0)
Next.BorderColor3 = Color3.fromRGB(255, 175, 0)
Next.BorderSizePixel = 1
Next.Text = "Next >"
Next.BackgroundTransparency = 0 
Next.TextColor3 = Color3.new(255, 255, 255)
Next.Font = Enum.Font.Arial
Next.Parent = P3
Next.TextScaled = true
Next.Name = "Next"
Next.MouseButton1Click:Connect(function()
	P3.Visible = false
	P4.Visible = true
end)
ApplyHighLight(Next)

local Back = Instance.new("TextButton")
Back.Size = UDim2.new(0, 80, 0, 28)
Back.Position = UDim2.new(0, 10, 0, 252)
Back.BackgroundColor3 = Color3.new(0, 0, 0)
Back.BorderColor3 = Color3.fromRGB(255, 175, 0)
Back.BorderSizePixel = 1
Back.Text = " < Back"
Back.BackgroundTransparency = 0 
Back.TextColor3 = Color3.new(255, 255, 255)
Back.Font = Enum.Font.Arial
Back.Parent = P4
Back.TextScaled = true
ApplyHighLight(Back)
Back.MouseButton1Click:Connect(function()
	P3.Visible = true
	P4.Visible = false
end)
Back.Name = "Back"

local Next = Instance.new("TextButton")
Next.Size = UDim2.new(0, 80, 0, 28)
Next.Position = UDim2.new(1, -90, 0, 252)
Next.BackgroundColor3 = Color3.new(0, 0, 0)
Next.BorderColor3 = Color3.fromRGB(255, 175, 0)
Next.BorderSizePixel = 1
Next.Text = "Next >"
Next.BackgroundTransparency = 0 
Next.TextColor3 = Color3.new(255, 255, 255)
Next.Font = Enum.Font.Arial
Next.Parent = P4
Next.TextScaled = true
Next.Name = "Next"
Next.MouseButton1Click:Connect(function()
	P4.Visible = false
	P5.Visible = true
end)
ApplyHighLight(Next)

local Back = Instance.new("TextButton")
Back.Size = UDim2.new(0, 80, 0, 28)
Back.Position = UDim2.new(0, 10, 0, 252)
Back.BackgroundColor3 = Color3.new(0, 0, 0)
Back.BorderColor3 = Color3.fromRGB(255, 175, 0)
Back.BorderSizePixel = 1
Back.Text = " < Back"
Back.BackgroundTransparency = 0 
Back.TextColor3 = Color3.new(255, 255, 255)
Back.Font = Enum.Font.Arial
Back.Parent = P5
Back.TextScaled = true
ApplyHighLight(Back)
Back.MouseButton1Click:Connect(function()
	P4.Visible = true
	P5.Visible = false
end)
Back.Name = "Back"

--AddButton
AddButton(P1, "R15 to R6", X1Y1, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sunday102711-bit/E00KIDD-r6-by-me/refs/heads/main/R6%20Real"))()
end)
AddButton(P1, "Keyboard", X1Y2)
AddButton(P1, "Neutron SS", X1Y3, function()
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
AddButton(P1, "SSP", X1Y4, function()
loadstring(game:HttpGet("https://pastefy.app/t2gUwfXy/raw"))()
end)
AddButton(P1, "Clockword", X1Y5, function()
loadstring(game:HttpGet("https://pastebin.com/raw/NNp1NJKT"))()
end)
AddButton(P1, "Primadon", X1Y6, function()
loadstring(game:HttpGet("https://pastefy.app/1XDb5hJe/raw"))()
end)
AddButton(P1, "Sugma_V1", X2Y1, function()
loadstring(game:HttpGet("https://pastebin.com/raw/tE127sKS"))()
end)
AddButton(P1, "Grab Knife V3", X2Y2, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-grab-knife-v3-9232"))()
end)
AddButton(P1, "ExSer", X2Y3, function()
loadstring(game:HttpGet("https://pastefy.app/7sO8ckTL/raw",true))()
end)
AddButton(P1, "School Shooters", X2Y4, function()
loadstring(game:HttpGet("https://web.archive.org/web/20230402143414/https://pastebin.com/raw/3usrPSdi"))()
end)
AddButton(P1, "Hanger", X2Y5, function()
loadstring(game:HttpGet("https://pastebin.com/raw/jXTbqHHL"))()
end)
AddButton(P1, "KYS Gun", X2Y6, function()
loadstring(game:HttpGet("https://pastebin.com/raw/F6qy56R6"))()
end)

AddButton(P2, "Grandosla", X1Y1, function()
loadstring(game:HttpGet("https://pastefy.app/Kql9VClT/raw"))()
end)
AddButton(P2, "FE Animation Pack", X1Y2, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Epik-R6-Dancezz-42246"))()
end)
AddButton(P2, "Plasma Shotgun", X1Y3, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GRAVEBUSTER0/GRAVEBUSTER0/refs/heads/main/Plasma.lua"))()
end)
AddButton(P2, "Polaria by LIONARCH_HELON", X1Y4, function()

end)
AddButton(P2, "YourMom Admin", X1Y5, function()
loadstring(game:GetObjects('rbxassetid://289110135')[1].Source)()
end)
AddButton(P2, "Trump Titan", X1Y6, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaGunsX/LuasLegacyScripts/main/%5BTitans%5D%20Trump", true))()
end)
AddButton(P2, "Domminant V5.0.1", X2Y1, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/dominat501.txt"))()
end)
AddButton(P2, "RedSword Pickaxe", X2Y2, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/Red%20Sword%20Pickaxe.txt"))()
end)
AddButton(P2, "Ro-Xploit V5", X2Y3, function()
loadstring(game:GetObjects("rbxassetid://288646117")[1].Source)()
end)
AddButton(P2, "Time Blast", X2Y4, function()
loadstring(game:HttpGet("https://pastebin.com/raw/GTakvdnB"))()
end)
AddButton(P2, "RC7 Red Edition", X2Y5, function()
loadstring(game:HttpGet("https://pastebin.com/raw/2GCB3P3t"))()
end)
AddButton(P2, "DreamBull gui", X2Y6, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Bypass-idk-32121"))()
end)
AddButton(P3, "Bird Wing", X1Y1, function()
loadstring(game:HttpGet("https://pastebin.com/raw/zCypYHjJ", true))()
end)
AddButton(P3, "Clown Kiddnap", X1Y2, function()
loadstring(game:HttpGet("https://pastebin.com/raw/vP2D2vnC"))()
end)
AddButton(P3, "require loader", X1Y3, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Serverside-or-fe-bypass-for-free-47095"))()
end)
AddButton(P3, "Topk3k V5.0", X1Y4, function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/radiuscool/topkek/refs/heads/main/adsdsaadsdassad'))()
end)
AddButton(P3, "FE BTools", X1Y5, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/Btools%20(Lua)"))()
end)
AddButton(P3, "SSP by ProBypasserHax1", X1Y6, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/Secret%20Service%20Panel.txt.sh"))()
end)
AddButton(P3, "ELLMODZ Require Loader", X2Y1, function()
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
AddButton(P3, "Dev-Uzi", X2Y2)
AddButton(P3, "Pipebomb Launcher", X2Y3, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/PipeBomb%20Launcher.txt"))()
end)
AddButton(P3, "FE Admin Command", X2Y4, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/lxte/cmd/main/main.lua"))()
end)
AddButton(P3, "Robot", X2Y5, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Robot-LUA-49167"))()
end)
AddButton(P3, "Project BrokenSpawn102", X2Y6, function()
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
AddButton(P4, "STIGMA DUD (Private Gui)", X1Y1, function()
loadstring(game:HttpGet("https://pastebin.com/raw/DxMwPkXH"))()
end)
AddButton(P4, "SeaSola", X1Y2, function()
loadstring(game:HttpGet("https://pastefy.app/1CgQx30m/raw"))()
end)
AddButton(P4, "Steve", X1Y3, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/tubers93's-Place-Number:-1-steve-38109"))()
end)
AddButton(P4, "FE 1x1x1x1 Gui", X1Y4, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GRAVEBUSTER0/GRAVEBUSTER0/main/New.lua"))()
end)
AddButton(P4, "MLG 2504", X1Y5, function()

end)
AddButton(P4, "Green Tank", X1Y6, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/Green%20Tank.txt"))()
end)
AddButton(P4, " HD Admin Ranker ", X2Y1, function()
loadstring(game:HttpGet("https://pastebin.com/raw/PHG8Skj0"))()
end)
AddButton(P4, "Goner", X2Y2, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Goner-47954"))()
end)
AddButton(P4, "Good Cops Bad Cops", X2Y3, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/good-cop-bad-coop/refs/heads/main/KwuminKa.txt"))()
end)
AddButton(P4, "M4A1-S", X2Y4, function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Idk-script-6-30278"))()
end)
AddButton(P4, "The Angel", X2Y5, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/the-angel/refs/heads/main/The%20Angel.txt"))()
end)
AddButton(P4, "Spectrum Star", X2Y6, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/SCPECTRUMGLITCHER/refs/heads/main/SpectrumG%20(1).txt"))()
end)
AddButton(P5, "Excavator", X1Y1, function()
loadstring(game:HttpGet("https://pastefy.app/q74DFYYz/raw", true))()
end)
AddButton(P5, "Sledge Hammer", X1Y2, function()
loadstring(game:HttpGet("https://pastefy.app/jmJgSbvV/raw?part=Sledgehammer", true))()
end)
AddButton(P5, "Kitchen gun", X1Y3, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nicolasbarbosa323/rare/refs/heads/main/kitcher%20gun.lua"))()
end)
AddButton(P5, "SF Executor", X1Y4, function()
loadstring(game:HttpGet("https://pastefy.app/xj9lkBIv/raw"))()
end)
AddButton(P5, "Lal0l Hub", X1Y5, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Its-LALOL/LALOL-Hub/main/Backdoor-Scanner/script"))()
end)
AddButton(P5, "9/11 Plane [Press W to Move Foward]", X1Y6, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaGunsX/LuasLegacyScripts/refs/heads/main/%5BRecharacter%5D%20911%20Plane"))()
end)
AddButton(P5, "Omni God", X2Y1)
AddButton(P5, "Rainbow Mr.Bean Jumpscare", X2Y2)
AddButton(P5, "Project Shiba", X2Y3, function()
loadstring(game:HttpGet("https://pastebin.com/raw/HrE2dKSD"))()
end)
AddButton(P5, "Project Local", X2Y4, function()
loadstring(game:HttpGet("https://pastefy.app/kZ8pJbsp/raw"))()
end)
AddButton(P5, "BombVest V2", X2Y5, function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBypasserHax1/Ussjzbwusbdlq/refs/heads/main/Luafile33Xc3eww"))()
end)
AddButton(P5, "C00lkiddIsKingNow Executor", X2Y6, function()
loadstring(game:HttpGet("https://pastebin.com/raw/CQUMRJR3"))()
end)