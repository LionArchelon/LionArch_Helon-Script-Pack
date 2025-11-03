local G2L = {};

G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"].ResetOnSpawn = false;

G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["Visible"] = false;
G2L["2"]["Active"] = true;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(112, 112, 112);
G2L["2"]["Size"] = UDim2.new(0, 383, 0, 216);
G2L["2"]["Position"] = UDim2.new(0.23905, 0, 0.24125, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(131, 131, 131);
G2L["2"]["Name"] = "InterfaceFrame";
G2L["2"]["LayoutOrder"] = 3;

G2L["3"] = Instance.new("LocalScript", G2L["2"]);

G2L["4"] = Instance.new("UICorner", G2L["2"]);
G2L["4"]["CornerRadius"] = UDim.new(0, 15);

G2L["5"] = Instance.new("TextLabel", G2L["2"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextSize"] = 20;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["5"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["BackgroundTransparency"] = 1;
G2L["5"]["Size"] = UDim2.new(0, 233, 0, 52);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = "FSOCIETY MENU SCRIPT BY ELLMODZ V1";
G2L["5"]["Position"] = UDim2.new(0.28198, 0, 0.03704, 0);

G2L["6"] = Instance.new("TextLabel", G2L["2"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextSize"] = 20;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["Size"] = UDim2.new(0, 233, 0, 52);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = "___________________________________________";
G2L["6"]["Position"] = UDim2.new(0.19582, 0, 0.14815, 0);

G2L["7"] = Instance.new("TextButton", G2L["2"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["TextSize"] = 14;
G2L["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["7"]["Size"] = UDim2.new(0, 92, 0, 31);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = "DDOS SERVER";
G2L["7"]["Position"] = UDim2.new(0.04961, 0, 0.38889, 0);

G2L["8"] = Instance.new("LocalScript", G2L["7"]);

G2L["9"] = Instance.new("UICorner", G2L["7"]);

G2L["a"] = Instance.new("ImageLabel", G2L["2"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["Image"] = "rbxassetid://79282428055307";
G2L["a"]["Size"] = UDim2.new(0, 63, 0, 52);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Position"] = UDim2.new(0.02963, 0, 0.03736, 0);

G2L["b"] = Instance.new("UICorner", G2L["a"]);
G2L["b"]["CornerRadius"] = UDim.new(0, 20);

G2L["c"] = Instance.new("TextButton", G2L["2"]);
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["TextSize"] = 14;
G2L["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["c"]["Size"] = UDim2.new(0, 118, 0, 31);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Text"] = "ELLMODZ INFECTION";
G2L["c"]["Position"] = UDim2.new(0.3107, 0, 0.38889, 0);

G2L["d"] = Instance.new("LocalScript", G2L["c"]);

G2L["e"] = Instance.new("UICorner", G2L["c"]);

G2L["f"] = Instance.new("TextButton", G2L["2"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["TextSize"] = 14;
G2L["f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["f"]["Size"] = UDim2.new(0, 147, 0, 26);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Text"] = "JUMPSCARE RASOMWARE ";
G2L["f"]["Position"] = UDim2.new(0.04961, 0, 0.56019, 0);

G2L["10"] = Instance.new("LocalScript", G2L["f"]);

G2L["11"] = Instance.new("UICorner", G2L["f"]);

G2L["12"] = Instance.new("TextButton", G2L["2"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["TextSize"] = 14;
G2L["12"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["12"]["Size"] = UDim2.new(0, 118, 0, 31);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Text"] = "SHUTDOWN SERVER";
G2L["12"]["Position"] = UDim2.new(0.63708, 0, 0.38889, 0);

G2L["13"] = Instance.new("LocalScript", G2L["12"]);

G2L["14"] = Instance.new("UICorner", G2L["12"]);

G2L["15"] = Instance.new("TextButton", G2L["2"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["TextSize"] = 14;
G2L["15"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["15"]["Size"] = UDim2.new(0, 91, 0, 26);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Text"] = "Sensation Hub";
G2L["15"]["Position"] = UDim2.new(0.44386, 0, 0.56019, 0);

G2L["16"] = Instance.new("Script", G2L["15"]);

G2L["17"] = Instance.new("UICorner", G2L["15"]);

G2L["18"] = Instance.new("TextButton", G2L["2"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["TextSize"] = 14;
G2L["18"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["18"]["Size"] = UDim2.new(0, 94, 0, 26);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = "Unchor all";
G2L["18"]["Position"] = UDim2.new(0.69974, 0, 0.56019, 0);

G2L["19"] = Instance.new("LocalScript", G2L["18"]);

G2L["1a"] = Instance.new("UICorner", G2L["18"]);

G2L["1b"] = Instance.new("TextButton", G2L["2"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["TextSize"] = 14;
G2L["1b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1b"]["Size"] = UDim2.new(0, 134, 0, 26);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Text"] = "Script Internal Premium";
G2L["1b"]["Name"] = "PremiumButton";
G2L["1b"]["Position"] = UDim2.new(0.047, 0, 0.70833, 0);

G2L["1c"] = Instance.new("LocalScript", G2L["1b"]);

G2L["1d"] = Instance.new("UICorner", G2L["1b"]);

G2L["1e"] = Instance.new("TextButton", G2L["2"]);
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["TextSize"] = 14;
G2L["1e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1e"]["Size"] = UDim2.new(0, 130, 0, 26);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["Text"] = "Infinite Yeald (client)";
G2L["1e"]["Name"] = "Infinite Yeald (client)";
G2L["1e"]["Position"] = UDim2.new(0.41253, 0, 0.70833, 0);

G2L["1f"] = Instance.new("LocalScript", G2L["1e"]);

G2L["20"] = Instance.new("UICorner", G2L["1e"]);

G2L["21"] = Instance.new("TextButton", G2L["2"]);
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["TextSize"] = 14;
G2L["21"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["21"]["Size"] = UDim2.new(0, 65, 0, 26);
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Text"] = "create part";
G2L["21"]["Name"] = "Create part";
G2L["21"]["Position"] = UDim2.new(0.77546, 0, 0.70833, 0);

G2L["22"] = Instance.new("LocalScript", G2L["21"]);

G2L["23"] = Instance.new("UICorner", G2L["21"]);

G2L["24"] = Instance.new("UIScale", G2L["2"]);

G2L["25"] = Instance.new("LocalScript", G2L["2"]);

G2L["26"] = Instance.new("LocalScript", G2L["2"]);

G2L["27"] = Instance.new("Frame", G2L["1"]);
G2L["27"]["Visible"] = false;
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(58, 58, 58);
G2L["27"]["Size"] = UDim2.new(0, 545, 0, 289);
G2L["27"]["Position"] = UDim2.new(0.15625, 0, 0.24721, 0);
G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["Name"] = "PremiumFrame";

G2L["28"] = Instance.new("LocalScript", G2L["27"]);

G2L["29"] = Instance.new("LocalScript", G2L["27"]);

G2L["2a"] = Instance.new("UICorner", G2L["27"]);
G2L["2a"]["CornerRadius"] = UDim.new(0, 9);

G2L["2b"] = Instance.new("TextBox", G2L["27"]);
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["TextSize"] = 14;
G2L["2b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["2b"]["PlaceholderText"] = "http://";
G2L["2b"]["Size"] = UDim2.new(0, 308, 0, 24);
G2L["2b"]["Position"] = UDim2.new(0.02611, 0, 0.33469, 0);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["Text"] = "";

G2L["2c"] = Instance.new("UICorner", G2L["2b"]);

G2L["2d"] = Instance.new("TextButton", G2L["27"]);
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["TextSize"] = 14;
G2L["2d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2d"]["Size"] = UDim2.new(0, 97, 0, 17);
G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["Text"] = "DDOS";
G2L["2d"]["Position"] = UDim2.new(0.02569, 0, 0.44291, 0);

G2L["2e"] = Instance.new("LocalScript", G2L["2d"]);

G2L["2f"] = Instance.new("UICorner", G2L["2d"]);

G2L["30"] = Instance.new("TextLabel", G2L["27"]);
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["TextSize"] = 14;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["30"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["BackgroundTransparency"] = 1;
G2L["30"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Text"] = "URL";
G2L["30"]["Position"] = UDim2.new(0.12477, 0, 0.19031, 0);

G2L["31"] = Instance.new("TextBox", G2L["27"]);
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["TextSize"] = 14;
G2L["31"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["31"]["PlaceholderText"] = "1000";
G2L["31"]["Size"] = UDim2.new(0, 177, 0, 24);
G2L["31"]["Position"] = UDim2.new(0.62611, 0, 0.33469, 0);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Text"] = "";

G2L["32"] = Instance.new("UICorner", G2L["31"]);

G2L["33"] = Instance.new("TextLabel", G2L["27"]);
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["TextSize"] = 25;
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["33"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["33"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["BackgroundTransparency"] = 1;
G2L["33"]["Size"] = UDim2.new(0, 436, 0, 56);
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Text"] = "Script Internal FSOCIETY";
G2L["33"]["Position"] = UDim2.new(0.22963, 0, 0.04152, 0);

G2L["34"] = Instance.new("TextButton", G2L["27"]);
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["TextSize"] = 14;
G2L["34"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(71, 71, 71);
G2L["34"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["34"]["Size"] = UDim2.new(0, 97, 0, 17);
G2L["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34"]["Text"] = "back";
G2L["34"]["Position"] = UDim2.new(0.23119, 0, 0.44291, 0);

G2L["35"] = Instance.new("LocalScript", G2L["34"]);

G2L["36"] = Instance.new("UICorner", G2L["34"]);

G2L["37"] = Instance.new("ImageLabel", G2L["27"]);
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["Image"] = "rbxassetid://79282428055307";
G2L["37"]["Size"] = UDim2.new(0, 101, 0, 70);
G2L["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["Position"] = UDim2.new(0.02596, 0, 0.02006, 0);

G2L["38"] = Instance.new("UICorner", G2L["37"]);
G2L["38"]["CornerRadius"] = UDim.new(0, 100);

G2L["39"] = Instance.new("TextLabel", G2L["27"]);
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["TextSize"] = 20;
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["39"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["BackgroundTransparency"] = 1;
G2L["39"]["Size"] = UDim2.new(0, 431, 0, 72);
G2L["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["Text"] = "Note: This feature is currently being tested by the developer.";
G2L["39"]["Position"] = UDim2.new(0.04431, 0, 0.75087, 0);

G2L["3a"] = Instance.new("LocalScript", G2L["1"]);

G2L["3b"] = Instance.new("LocalScript", G2L["1"]);
G2L["3b"]["Name"] = "ScreenGui_1338485";

G2L["3c"] = Instance.new("LocalScript", G2L["1"]);

G2L["3d"] = Instance.new("LocalScript", G2L["1"]);

local function C_3()
	local script = G2L["3"];
	local frame = script.Parent
	local UserInputService = game:GetService("UserInputService")

	local dragging = false
	local dragInput, dragStart, startPos

	local function update(input)
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end

	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if dragging and input == dragInput then
			update(input)
		end
	end)

end;
task.spawn(C_3);
local function C_8()
	local script = G2L["8"];
	local button = script.Parent
	local TeleportService = game:GetService("TeleportService")
	local player = game.Players.LocalPlayer

	button.MouseButton1Click:Connect(function()
		local m = Instance.new("Message", workspace)m.Text = "ELLMODZ_FSOCIETY"
		wait(1)
		m.Text = "Sending packages."
		wait(1)
		m.Text = "Sending packages.."
		wait(1)
		m.Text = "Sending packages..."
		wait(1)
		m.Text = "Sending packages."
		wait(1)
		m.Text = "Sending packages.."
		wait(1)
		m.Text = "Sending packages..."
		wait(1)
		m.Text = "Sending packages."
		wait(1)
		m.Text = "Sending packages.."
		wait(1)
		m.Text = "Sending packages..."
		wait(1)
		m.Text = "TIMEOUT"
		m:Destroy()	

		local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
		gui.IgnoreGuiInset = true
		gui.ResetOnSpawn = false

		local text = Instance.new("TextLabel")
		text.Parent = gui
		text.Size = UDim2.new(1, 0, 1, 0)
		text.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		text.TextColor3 = Color3.fromRGB(255, 255, 255)
		text.Font = Enum.Font.SourceSansBold
		text.TextScaled = true
		text.Text = "⚠️ TIMEOUT.\nAttempting to reconnect..."

		wait(2.5)

		TeleportService:Teleport(game.PlaceId, player)
	end)
end;
task.spawn(C_8);
local function C_d()
	local script = G2L["d"];
	local button = script.Parent

	button.MouseButton1Click:Connect(function()
		local msg = Instance.new("Message", workspace)
		msg.Text = "FSOCIETY_INJECTED"
		wait(3)
		msg.Text = "LOL"
		wait(3)
		msg:Destroy()

		local ID = "79282428055307"
		local SoundService = game:GetService("SoundService")

		local s1 = Instance.new("Sound", SoundService)
		s1.SoundId = "rbxassetid://139488665764275"
		s1.Volume = 5
		s1.Looped = true
		s1:Play()

		local lighting = game:GetService("Lighting")
		for _, v in pairs(lighting:GetChildren()) do
			if v:IsA("Sky") then
				v:Destroy()
			end
		end

		local s = Instance.new("Sky")
		s.Name = "SKY"
		s.SkyboxBk = "http://www.roblox.com/asset/?id=" .. ID
		s.SkyboxDn = "http://www.roblox.com/asset/?id=" .. ID
		s.SkyboxFt = "http://www.roblox.com/asset/?id=" .. ID
		s.SkyboxLf = "http://www.roblox.com/asset/?id=" .. ID
		s.SkyboxRt = "http://www.roblox.com/asset/?id=" .. ID
		s.SkyboxUp = "http://www.roblox.com/asset/?id=" .. ID
		s.Parent = lighting

		for _, v in pairs(workspace:GetDescendants()) do
			if v:IsA("Part") then
				for _, face in pairs(Enum.NormalId:GetEnumItems()) do
					local decal = Instance.new("Decal")
					decal.Texture = "http://www.roblox.com/asset/?id=" .. ID
					decal.Face = face
					decal.Parent = v
				end
			end
		end

		for _, v in pairs(workspace:GetDescendants()) do
			if v:IsA("Part") then
				local p = Instance.new("ParticleEmitter", v)
				p.Texture = "http://www.roblox.com/asset/?id=" .. ID
				p.Rate = 100
				p.Speed = NumberRange.new(2, 5)
				p.Lifetime = NumberRange.new(2, 4)
				p.Size = NumberSequence.new(1)
			end
		end

		lighting.Brightness = 0
		lighting.ClockTime = 0
		lighting.FogStart = 0
		lighting.FogEnd = 500

		local hint = Instance.new("Hint", workspace)

		while true do
			hint.Text = "ELLMODZ_FSOCIETY"
			lighting.FogColor = Color3.fromRGB(255, 0, 0)
			wait(2)

			hint.Text = "MR. ROBOT"
			lighting.FogColor = Color3.fromRGB(0, 0, 255)
			wait(2)

			hint.Text = "LOLOLOLOLLOLOLLOLOLOLOLLOLOLLOLOLOLOLLOLOLLOLOLOLLOLOLLOLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOLLOLOL"
			lighting.FogColor = Color3.fromRGB(255, 255, 255)
			wait(2)
		end
	end)

end;
task.spawn(C_d);
local function C_10()
	local script = G2L["10"];
	local button = script.Parent

	button.MouseButton1Click:Connect(function()
		local LOGO_ID = "79282428055307"
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		local playerGui = player:WaitForChild("PlayerGui")

		local gui = Instance.new("ScreenGui")
		gui.IgnoreGuiInset = true
		gui.ResetOnSpawn = false
		gui.Parent = playerGui

		local overlay = Instance.new("Frame", gui)
		overlay.Size = UDim2.new(1,0,1,0)
		overlay.Position = UDim2.new(0,0,0,0)
		overlay.BackgroundColor3 = Color3.fromRGB(0,0,0)
		overlay.ZIndex = 1

		local logo = Instance.new("ImageLabel", gui)
		logo.AnchorPoint = Vector2.new(0.5,0)
		logo.Position = UDim2.new(0.5,0,0.05,0)
		logo.Size = UDim2.new(0, 400, 0, 400)
		logo.BackgroundTransparency = 1
		logo.Image = "rbxassetid://"..LOGO_ID
		logo.ZIndex = 2

		local textLabel = Instance.new("TextLabel", gui)
		textLabel.AnchorPoint = Vector2.new(0.5,1)
		textLabel.Position = UDim2.new(0.5,0,0.95,0)
		textLabel.Size = UDim2.new(0,600,0,50)
		textLabel.BackgroundTransparency = 1
		textLabel.Font = Enum.Font.SourceSansBold
		textLabel.TextSize = 36
		textLabel.TextColor3 = Color3.fromRGB(255,0,0)
		textLabel.TextStrokeTransparency = 0
		textLabel.ZIndex = 2
		textLabel.Text = "FSOCIETY RANSOMWARE"

		spawn(function()
			while gui.Parent do
				overlay.BackgroundColor3 = Color3.fromRGB(255,0,0)
				textLabel.TextColor3 = Color3.fromRGB(0,0,0)
				wait(0.08)
				overlay.BackgroundColor3 = Color3.fromRGB(0,0,0)
				textLabel.TextColor3 = Color3.fromRGB(255,0,0)
				wait(0.08)
			end
		end)
	end)

end;
task.spawn(C_10);
local function C_13()
	local script = G2L["13"];

end;
task.spawn(C_13);
local function C_19()
	local script = G2L["19"];
	local button = script.Parent

	button.MouseButton1Click:Connect(function()
		for _, obj in pairs(workspace:GetDescendants()) do
			if obj:IsA("BasePart") or obj:IsA("MeshPart") or obj:IsA("UnionOperation") then
				obj.Anchored = false
			end

			if obj:IsA("Model") then
				for _, part in pairs(obj:GetDescendants()) do
					if part:IsA("BasePart") or part:IsA("MeshPart") or part:IsA("UnionOperation") then
						part.Anchored = false
					end
				end
			end
		end
	end)

end;
task.spawn(C_19);
local function C_1c()
	local script = G2L["1c"];
	local button = script.Parent
	local interfaceFrame = button.Parent
	local premiumFrame = interfaceFrame.Parent:WaitForChild("PremiumFrame")

	button.MouseButton1Click:Connect(function()
		interfaceFrame.Visible = false
		premiumFrame.Visible = true
	end)

end;
task.spawn(C_1c);
local function C_1f()
	local script = G2L["1f"];
	local button = script.Parent
	local interfaceFrame = button.Parent
	local premiumFrame = interfaceFrame.Parent:WaitForChild("PremiumFrame")

	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end)

end;
task.spawn(C_1f);
local function C_22()
	local script = G2L["22"];
	local Players = game:GetService("Players")
	local Debris = game:GetService("Debris")
	local player = Players.LocalPlayer
	local button = script.Parent

	local DISTANCE = 5
	local SIZE = Vector3.new(3, 1, 3)
	local COLOR = BrickColor.new("Really blue")
	local LIFETIME = 10
	local COOLDOWN = 1.5

	local lastTick = 0

	local function spawnPartInFrontOfCamera()
		local char = player.Character or player.CharacterAdded:Wait()
		local hrp = char:FindFirstChild("HumanoidRootPart")
		local camera = workspace.CurrentCamera
		if not camera then return end

		local look = camera.CFrame.LookVector
		local origin = (hrp and hrp.Position) or camera.CFrame.Position
		local pos = origin + (look * DISTANCE) + Vector3.new(0, 0.5, 0)

		local part = Instance.new("Part")
		part.Size = SIZE
		part.Position = pos
		part.Anchored = false
		part.CanCollide = true
		part.BrickColor = COLOR
		part.Name = player.Name .. "_ClientPart"
		part.Parent = workspace

	end

	button.MouseButton1Click:Connect(function()
		spawnPartInFrontOfCamera()
	end)

end;
task.spawn(C_22);
local function C_25()
	local script = G2L["25"];
	local frame = script.Parent

	wait(2)

	frame.Visible = true

end;
task.spawn(C_25);
local function C_26()
	local script = G2L["26"];
	local frame = script.Parent

	frame.Visible = false

	repeat task.wait() until game:IsLoaded()

	task.wait(2)

	frame.Visible = true

end;
task.spawn(C_26);
local function C_28()
	local script = G2L["28"];
	local frame = script.Parent
	local UserInputService = game:GetService("UserInputService")

	local dragging = false
	local dragInput, dragStart, startPos

	local function update(input)
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end

	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if dragging and input == dragInput then
			update(input)
		end
	end)

end;
task.spawn(C_28);
local function C_29()
	local script = G2L["29"];
	local TweenService = game:GetService("TweenService")

	local player = game.Players.LocalPlayer
	local playerGui = player:WaitForChild("PlayerGui")
	local screenGui = playerGui:WaitForChild("ScreenGui")
	local frame = screenGui:WaitForChild("Frame")

	print("✅ Animasi mulai...")

	frame.Visible = true
	frame.Size = UDim2.new(0.35, 0, 0.35, 0)

	local tweenKecil = TweenService:Create(frame, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
		Size = UDim2.new(0.3, 0, 0.3, 0)
	})
	local tweenBesar = TweenService:Create(frame, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
		Size = UDim2.new(0.4, 0, 0.4, 0)
	})

	tweenKecil:Play()
	tweenKecil.Completed:Wait()
	tweenBesar:Play()

end;
task.spawn(C_29);
local function C_2e()
	local script = G2L["2e"];
	local button = script.Parent

	button.MouseButton1Click:Connect(function()
		local m = Instance.new("Message", workspace)
		m.Text = "Sorry, you are still on the free plan. Please upgrade to the premium plan and get full access."
		wait(2)
		m:Destroy()
	end)

end;
task.spawn(C_2e);
local function C_35()
	local script = G2L["35"];
	local button = script.Parent
	local premiumFrame = button.Parent
	local interfaceFrame = premiumFrame.Parent:WaitForChild("InterfaceFrame")

	button.MouseButton1Click:Connect(function()
		premiumFrame.Visible = false
		interfaceFrame.Visible = true
	end)

end;
task.spawn(C_35);
local function C_3a()
	local script = G2L["3a"];
	local TweenService = game:GetService("TweenService")
	local player = game.Players.LocalPlayer
	local playerGui = player:WaitForChild("PlayerGui")
	local screenGui = playerGui:WaitForChild("ScreenGui")
	local frame = screenGui:WaitForChild("PremiumFrame")
	local uiScale = frame:WaitForChild("UIScale")

	local function animateGui()
		uiScale.Scale = 0
		frame.Visible = true

		local tweenInfo1 = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local goal1 = {Scale = 0.3}
		local tween1 = TweenService:Create(uiScale, tweenInfo1, goal1)
		tween1:Play()
		tween1.Completed:Wait()

		local tweenInfo2 = TweenInfo.new(0.5, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out)
		local goal2 = {Scale = 1}
		local tween2 = TweenService:Create(uiScale, tweenInfo2, goal2)
		tween2:Play()
	end

	animateGui()
end;
task.spawn(C_3a);
local function C_3b()
	local script = G2L["3b"];
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local TweenService = game:GetService("TweenService")
	local player = Players.LocalPlayer

	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "HUD_GUI"
	screenGui.Parent = player:WaitForChild("PlayerGui")
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screenGui.ResetOnSpawn = false

	local healthFrame = Instance.new("Frame")
	healthFrame.Name = "HealthFrame"
	healthFrame.Size = UDim2.new(0, 150, 0, 30)
	healthFrame.Position = UDim2.new(-1, 0, 1, -110)
	healthFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	healthFrame.BackgroundTransparency = 0.5
	healthFrame.BorderSizePixel = 0
	healthFrame.Parent = screenGui

	local healthCorner = Instance.new("UICorner", healthFrame)
	healthCorner.CornerRadius = UDim.new(0, 8)

	local healthLabel = Instance.new("TextLabel")
	healthLabel.Size = UDim2.new(1, 0, 1, 0)
	healthLabel.BackgroundTransparency = 1
	healthLabel.Font = Enum.Font.SourceSansBold
	healthLabel.TextSize = 14
	healthLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
	healthLabel.Text = "Health: 100"
	healthLabel.Parent = healthFrame

	local topFrame = Instance.new("Frame")
	topFrame.Name = "TopInfoFrame"
	topFrame.Size = UDim2.new(0, 150, 0, 30)
	topFrame.Position = UDim2.new(-1, 0, 1, -75)
	topFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	topFrame.BackgroundTransparency = 0.5
	topFrame.BorderSizePixel = 0
	topFrame.Parent = screenGui

	local topCorner = Instance.new("UICorner", topFrame)
	topCorner.CornerRadius = UDim.new(0, 8)

	local topLabel = Instance.new("TextLabel")
	topLabel.Size = UDim2.new(1, 0, 1, 0)
	topLabel.BackgroundTransparency = 1
	topLabel.Font = Enum.Font.SourceSansBold
	topLabel.TextSize = 14
	topLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
	topLabel.Text = "FPS: 0"
	topLabel.Parent = topFrame

	local bottomFrame = Instance.new("Frame")
	bottomFrame.Name = "UserPingFrame"
	bottomFrame.Size = UDim2.new(0, 150, 0, 30)
	bottomFrame.Position = UDim2.new(-1, 0, 1, -40)
	bottomFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	bottomFrame.BackgroundTransparency = 0.5
	bottomFrame.BorderSizePixel = 0
	bottomFrame.Parent = screenGui

	local bottomCorner = Instance.new("UICorner", bottomFrame)
	bottomCorner.CornerRadius = UDim.new(0, 8)

	local userLabel = Instance.new("TextLabel")
	userLabel.Size = UDim2.new(1, 0, 1, 0)
	userLabel.BackgroundTransparency = 1
	userLabel.Font = Enum.Font.SourceSansBold
	userLabel.TextSize = 14
	userLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	userLabel.Text = player.Name.." | Ping: 0ms"
	userLabel.Parent = bottomFrame

	local function addVerticalDrag(frame)
		local dragging = false
		local dragStart = nil
		local startPos = nil

		frame.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragging then
					local delta = input.Position - dragStart
					frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
				end
			end
		end)
	end

	addVerticalDrag(healthFrame)
	addVerticalDrag(topFrame)
	addVerticalDrag(bottomFrame)

	local tweenInfo = TweenService:Create(bottomFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position = UDim2.new(0, 10, 1, -40)})
	local tweenInfo2 = TweenService:Create(topFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position = UDim2.new(0, 10, 1, -75)})
	local tweenInfo3 = TweenService:Create(healthFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position = UDim2.new(0, 10, 1, -110)})

	tweenInfo:Play()
	tweenInfo2:Play()
	tweenInfo3:Play()

	local lastTime = tick()
	local frameCount = 0
	local fps = 0

	local function getHealth()
		local character = player.Character
		if character and character:FindFirstChild("Humanoid") then
			return character.Humanoid.Health, character.Humanoid.MaxHealth
		end
		return 0, 100
	end

	RunService.RenderStepped:Connect(function(dt)
		frameCount = frameCount + 1
		local now = tick()
		if now - lastTime >= 1 then
			fps = frameCount
			frameCount = 0
			lastTime = now
		end
		topLabel.Text = "FPS: "..fps

		local ping = math.floor(player:GetNetworkPing() * 1000)
		userLabel.Text = player.Name.." | Ping: "..ping.."ms"

		if ping <= 150 then
			userLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
		elseif ping <= 300 then
			userLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
		else
			userLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
		end

		local health, maxHealth = getHealth()
		healthLabel.Text = "Health: "..math.floor(health)
		if health <= maxHealth * 0.3 then
			healthLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
		else
			healthLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
		end
	end)
end;
task.spawn(C_3b);
local function C_3c()
	local script = G2L["3c"];
	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local player = Players.LocalPlayer

	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "IntroGUI"
	screenGui.Parent = player:WaitForChild("PlayerGui")
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screenGui.ResetOnSpawn = false

	local notifFrame = Instance.new("Frame")
	notifFrame.Size = UDim2.new(0, 250, 0, 60)
	notifFrame.Position = UDim2.new(1, 10, 1, -80)
	notifFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
	notifFrame.BackgroundTransparency = 0.3
	notifFrame.BorderSizePixel = 0
	notifFrame.Parent = screenGui
	Instance.new("UICorner", notifFrame).CornerRadius = UDim.new(0,10)

	local notifLabel = Instance.new("TextLabel")
	notifLabel.Size = UDim2.new(1,0,1,0)
	notifLabel.BackgroundTransparency = 1
	notifLabel.Font = Enum.Font.SourceSansBold
	notifLabel.TextSize = 20
	notifLabel.TextColor3 = Color3.fromRGB(255,255,255)
	notifLabel.Text = "Script by ELLMODZ_FSOCETY"
	notifLabel.Parent = notifFrame

	local loadingBar = Instance.new("Frame")
	loadingBar.Size = UDim2.new(0, 0, 0, 4)
	loadingBar.Position = UDim2.new(0,0,1,-4)
	loadingBar.BackgroundColor3 = Color3.fromRGB(0,255,0)
	loadingBar.BorderSizePixel = 0
	loadingBar.Parent = notifFrame
	Instance.new("UICorner", loadingBar).CornerRadius = UDim.new(0,2)

	local tweenIn = TweenService:Create(notifFrame, TweenInfo.new(0.7, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
		Position = UDim2.new(1, -260, 1, -80)
	})
	tweenIn:Play()

	tweenIn.Completed:Connect(function()
		local tweenLoad = TweenService:Create(loadingBar, TweenInfo.new(4, Enum.EasingStyle.Linear), {
			Size = UDim2.new(1,0,0,4)
		})
		tweenLoad:Play()

		tweenLoad.Completed:Connect(function()
			local tweenOut = TweenService:Create(notifFrame, TweenInfo.new(0.7, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
				Position = UDim2.new(1, 260, 1, -80),
				BackgroundTransparency = 1
			})
			tweenOut:Play()
			tweenOut.Completed:Connect(function()
				screenGui:Destroy()
			end)
		end)
	end)

end;
task.spawn(C_3c);
local function C_3d()
	local script = G2L["3d"];
	local TweenService = game:GetService("TweenService")
	local player = game.Players.LocalPlayer
	local playerGui = player:WaitForChild("PlayerGui")
	local screenGui = playerGui:WaitForChild("ScreenGui")
	local frame = screenGui:WaitForChild("InterfaceFrame")
	local uiScale = frame:WaitForChild("UIScale")

	local function animateGui()
		uiScale.Scale = 0
		frame.Visible = true

		local tweenInfo1 = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local goal1 = {Scale = 0.3}
		local tween1 = TweenService:Create(uiScale, tweenInfo1, goal1)
		tween1:Play()
		tween1.Completed:Wait()

		local tweenInfo2 = TweenInfo.new(0.5, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out)
		local goal2 = {Scale = 1}
		local tween2 = TweenService:Create(uiScale, tweenInfo2, goal2)
		tween2:Play()
	end

	animateGui()
end;
task.spawn(C_3d);

G2L["2"].Visible = true

return G2L["1"]