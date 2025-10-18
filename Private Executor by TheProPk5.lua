--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 

designed using localmaze gui creator
]=]

-- Instances: 25 | Scripts: 4 | Modules: 0 | Tags: 1
local CollectionService = game:GetService("CollectionService");
local G2L = {};

-- Players.FRP20000.PlayerGui.Top3ktg
G2L["Top3ktg_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["Top3ktg_1"]["IgnoreGuiInset"] = true;
G2L["Top3ktg_1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["Top3ktg_1"]["ClipToDeviceSafeArea"] = false;
G2L["Top3ktg_1"]["Name"] = [[Top3ktg]];
G2L["Top3ktg_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["Top3ktg_1"]["ResetOnSpawn"] = false;

-- Tags
CollectionService:AddTag(G2L["Top3ktg_1"], [[main]]);

-- Players.FRP20000.PlayerGui.Top3ktg.Main
G2L["Main_2"] = Instance.new("Frame", G2L["Top3ktg_1"]);
G2L["Main_2"]["Visible"] = false;
G2L["Main_2"]["BorderSizePixel"] = 2;
G2L["Main_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Main_2"]["Size"] = UDim2.new(0, 428, 0, 272);
G2L["Main_2"]["Position"] = UDim2.new(0, 362, 0, 178);
G2L["Main_2"]["BorderColor3"] = Color3.fromRGB(2, 189, 255);
G2L["Main_2"]["Name"] = [[Main]];
G2L["Main_2"]["BackgroundTransparency"] = 0.5;


-- Players.FRP20000.PlayerGui.Top3ktg.Main.TextLabel
G2L["TextLabel_3"] = Instance.new("TextLabel", G2L["Main_2"]);
G2L["TextLabel_3"]["BorderSizePixel"] = 0;
G2L["TextLabel_3"]["TextSize"] = 24;
G2L["TextLabel_3"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["TextLabel_3"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["TextLabel_3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["TextLabel_3"]["BackgroundTransparency"] = 1;
G2L["TextLabel_3"]["Size"] = UDim2.new(0, 426, 0, 28);
G2L["TextLabel_3"]["Text"] = [[Ultima Executor]];


-- Players.FRP20000.PlayerGui.Top3ktg.Main.TextLabel.TextLabel
G2L["TextLabel_4"] = Instance.new("TextLabel", G2L["TextLabel_3"]);
G2L["TextLabel_4"]["BorderSizePixel"] = 0;
G2L["TextLabel_4"]["TextSize"] = 14;
G2L["TextLabel_4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["TextLabel_4"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["TextLabel_4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["TextLabel_4"]["BackgroundTransparency"] = 1;
G2L["TextLabel_4"]["Size"] = UDim2.new(0, 426, 0, 28);
G2L["TextLabel_4"]["Text"] = [[made by TheProPk5 the SigmaOnTop]];
G2L["TextLabel_4"]["Position"] = UDim2.new(0, 0, 0, 16);


-- Players.FRP20000.PlayerGui.Top3ktg.Main.Usn
G2L["Usn_5"] = Instance.new("TextButton", G2L["Main_2"]);
G2L["Usn_5"]["BorderSizePixel"] = 2;
G2L["Usn_5"]["TextSize"] = 16;
G2L["Usn_5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Usn_5"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Usn_5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["Usn_5"]["BackgroundTransparency"] = 0.5;
G2L["Usn_5"]["Size"] = UDim2.new(0, 136, 0, 26);
G2L["Usn_5"]["BorderColor3"] = Color3.fromRGB(2, 189, 255);
G2L["Usn_5"]["Text"] = [[Auto Fill Username]];
G2L["Usn_5"]["Name"] = [[Usn]];
G2L["Usn_5"]["Position"] = UDim2.new(0, 4, 0, 42);


-- Players.FRP20000.PlayerGui.Top3ktg.Main.Draggable
G2L["Draggable_6"] = Instance.new("LocalScript", G2L["Main_2"]);
G2L["Draggable_6"]["Name"] = [[Draggable]];


-- Players.FRP20000.PlayerGui.Top3ktg.Main.UrlExe
G2L["UrlExe_7"] = Instance.new("TextButton", G2L["Main_2"]);
G2L["UrlExe_7"]["BorderSizePixel"] = 2;
G2L["UrlExe_7"]["TextSize"] = 16;
G2L["UrlExe_7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["UrlExe_7"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["UrlExe_7"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["UrlExe_7"]["BackgroundTransparency"] = 0.5;
G2L["UrlExe_7"]["Size"] = UDim2.new(0, 136, 0, 26);
G2L["UrlExe_7"]["BorderColor3"] = Color3.fromRGB(2, 189, 255);
G2L["UrlExe_7"]["Text"] = [[Run as URL]];
G2L["UrlExe_7"]["Name"] = [[UrlExe]];
G2L["UrlExe_7"]["Position"] = UDim2.new(0, 146, 0, 42);


-- Players.FRP20000.PlayerGui.Top3ktg.Main.SSExe
G2L["SSExe_8"] = Instance.new("TextButton", G2L["Main_2"]);
G2L["SSExe_8"]["BorderSizePixel"] = 2;
G2L["SSExe_8"]["TextSize"] = 16;
G2L["SSExe_8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["SSExe_8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["SSExe_8"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["SSExe_8"]["BackgroundTransparency"] = 0.5;
G2L["SSExe_8"]["Size"] = UDim2.new(0, 136, 0, 26);
G2L["SSExe_8"]["BorderColor3"] = Color3.fromRGB(2, 189, 255);
G2L["SSExe_8"]["Text"] = [[Run as ServerSide]];
G2L["SSExe_8"]["Name"] = [[SSExe]];
G2L["SSExe_8"]["Position"] = UDim2.new(0, 288, 0, 42);


-- Players.FRP20000.PlayerGui.Top3ktg.Main.InputBox
G2L["InputBox_9"] = Instance.new("TextBox", G2L["Main_2"]);
G2L["InputBox_9"]["CursorPosition"] = -1;
G2L["InputBox_9"]["Name"] = [[InputBox]];
G2L["InputBox_9"]["BorderSizePixel"] = 2;
G2L["InputBox_9"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["InputBox_9"]["Size"] = UDim2.new(0, 420, 0, 162);
G2L["InputBox_9"]["Position"] = UDim2.new(0, 4, 0, 74);
G2L["InputBox_9"]["BorderColor3"] = Color3.fromRGB(2, 189, 255);
G2L["InputBox_9"]["Text"] = [[]];
G2L["InputBox_9"]["BackgroundTransparency"] = 0.5;
G2L["InputBox_9"]["ClearTextOnFocus"] = false;
G2L["InputBox_9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["InputBox_9"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["InputBox_9"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["InputBox_9"]["TextColor3"] = Color3.new(1, 1, 1)
G2L["InputBox_9"]["MultiLine"] = true;
G2L["InputBox_9"]["TextSize"] = 12
G2L["InputBox_9"]["TextWrapped"] = true;


-- Players.FRP20000.PlayerGui.Top3ktg.Main.Execute
G2L["Execute_a"] = Instance.new("TextButton", G2L["Main_2"]);
G2L["Execute_a"]["BorderSizePixel"] = 2;
G2L["Execute_a"]["TextSize"] = 16;
G2L["Execute_a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Execute_a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Execute_a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["Execute_a"]["BackgroundTransparency"] = 0.5;
G2L["Execute_a"]["Size"] = UDim2.new(0, 136, 0, 26);
G2L["Execute_a"]["BorderColor3"] = Color3.fromRGB(2, 189, 255);
G2L["Execute_a"]["Text"] = [[Run]];
G2L["Execute_a"]["Name"] = [[Execute]];
G2L["Execute_a"]["Position"] = UDim2.new(0, 4, 0, 242);


-- Players.FRP20000.PlayerGui.Top3ktg.Main.Clear
G2L["Clear_b"] = Instance.new("TextButton", G2L["Main_2"]);
G2L["Clear_b"]["BorderSizePixel"] = 2;
G2L["Clear_b"]["TextSize"] = 16;
G2L["Clear_b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Clear_b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Clear_b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["Clear_b"]["BackgroundTransparency"] = 0.5;
G2L["Clear_b"]["Size"] = UDim2.new(0, 136, 0, 26);
G2L["Clear_b"]["BorderColor3"] = Color3.fromRGB(2, 189, 255);
G2L["Clear_b"]["Text"] = [[Clear CodeBox]];
G2L["Clear_b"]["Name"] = [[Clear]];
G2L["Clear_b"]["Position"] = UDim2.new(0, 146, 0, 242);


-- Players.FRP20000.PlayerGui.Top3ktg.Main.Reset
G2L["Reset_c"] = Instance.new("TextButton", G2L["Main_2"]);
G2L["Reset_c"]["BorderSizePixel"] = 2;
G2L["Reset_c"]["TextSize"] = 16;
G2L["Reset_c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Reset_c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Reset_c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["Reset_c"]["BackgroundTransparency"] = 0.5;
G2L["Reset_c"]["Size"] = UDim2.new(0, 64, 0, 26);
G2L["Reset_c"]["BorderColor3"] = Color3.fromRGB(2, 189, 255);
G2L["Reset_c"]["Text"] = [[Re]];
G2L["Reset_c"]["Name"] = [[Reset]];
G2L["Reset_c"]["Position"] = UDim2.new(0, 288, 0, 242);


-- Players.FRP20000.PlayerGui.Top3ktg.Main.R6
G2L["R6_d"] = Instance.new("TextButton", G2L["Main_2"]);
G2L["R6_d"]["BorderSizePixel"] = 2;
G2L["R6_d"]["TextSize"] = 16;
G2L["R6_d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["R6_d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["R6_d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["R6_d"]["BackgroundTransparency"] = 0.5;
G2L["R6_d"]["Size"] = UDim2.new(0, 66, 0, 26);
G2L["R6_d"]["BorderColor3"] = Color3.fromRGB(2, 189, 255);
G2L["R6_d"]["Text"] = [[R6]];
G2L["R6_d"]["Name"] = [[R6]];
G2L["R6_d"]["Position"] = UDim2.new(0, 358, 0, 242);


-- Players.FRP20000.PlayerGui.Top3ktg.Main.Hub
G2L["Hub_e"] = Instance.new("TextButton", G2L["Main_2"]);
G2L["Hub_e"]["BorderSizePixel"] = 2;
G2L["Hub_e"]["TextSize"] = 19;
G2L["Hub_e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Hub_e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Hub_e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["Hub_e"]["BackgroundTransparency"] = 0.5;
G2L["Hub_e"]["Size"] = UDim2.new(0, 96, 0, 32);
G2L["Hub_e"]["BorderColor3"] = Color3.fromRGB(2, 189, 255);
G2L["Hub_e"]["Text"] = [[Script Hub]];
G2L["Hub_e"]["Name"] = [[Hub]];
G2L["Hub_e"]["Position"] = UDim2.new(0, 4, 0, 4);


-- Players.FRP20000.PlayerGui.Top3ktg.Main.Minimize
G2L["Minimize_f"] = Instance.new("TextButton", G2L["Main_2"]);
G2L["Minimize_f"]["BorderSizePixel"] = 2;
G2L["Minimize_f"]["TextSize"] = 19;
G2L["Minimize_f"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
G2L["Minimize_f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Minimize_f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["Minimize_f"]["BackgroundTransparency"] = 0.5;
G2L["Minimize_f"]["Size"] = UDim2.new(0, 96, 0, 32);
G2L["Minimize_f"]["BorderColor3"] = Color3.fromRGB(2, 189, 255);
G2L["Minimize_f"]["Text"] = [[Close]];
G2L["Minimize_f"]["Name"] = [[Minimize]];
G2L["Minimize_f"]["Position"] = UDim2.new(0, 328, 0, 4);


-- Players.FRP20000.PlayerGui.Top3ktg.Main.MouseButton
G2L["MouseButton_10"] = Instance.new("LocalScript", G2L["Main_2"]);
G2L["MouseButton_10"]["Name"] = [[MouseButton]];


-- Players.FRP20000.PlayerGui.Top3ktg.Frame
G2L["Frame_11"] = Instance.new("Frame", G2L["Top3ktg_1"]);
G2L["Frame_11"]["BorderSizePixel"] = 2;
G2L["Frame_11"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Frame_11"]["Size"] = UDim2.new(0, 360, 0, 162);
G2L["Frame_11"]["Position"] = UDim2.new(0, 294, 0, 216);
G2L["Frame_11"]["BorderColor3"] = Color3.fromRGB(2, 189, 255);
G2L["Frame_11"]["BackgroundTransparency"] = 0.5;


-- Players.FRP20000.PlayerGui.Top3ktg.Frame.TextLabel
G2L["TextLabel_12"] = Instance.new("TextLabel", G2L["Frame_11"]);
G2L["TextLabel_12"]["BorderSizePixel"] = 0;
G2L["TextLabel_12"]["TextSize"] = 21;
G2L["TextLabel_12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["TextLabel_12"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["TextLabel_12"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["TextLabel_12"]["BackgroundTransparency"] = 1;
G2L["TextLabel_12"]["Size"] = UDim2.new(0, 360, 0, 30);
G2L["TextLabel_12"]["Text"] = [[Enter the key to Continue use Executor]];


-- Players.FRP20000.PlayerGui.Top3ktg.Frame.TextLabel.TextLabel
G2L["TextLabel_13"] = Instance.new("TextLabel", G2L["TextLabel_12"]);
G2L["TextLabel_13"]["BorderSizePixel"] = 0;
G2L["TextLabel_13"]["TextSize"] = 14;
G2L["TextLabel_13"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["TextLabel_13"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["TextLabel_13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["TextLabel_13"]["BackgroundTransparency"] = 1;
G2L["TextLabel_13"]["Size"] = UDim2.new(0, 426, 0, 28);
G2L["TextLabel_13"]["Text"] = [[made by TheProPk5 the SigmaOnTop]];
G2L["TextLabel_13"]["Position"] = UDim2.new(0, -32, 0, 16);


-- Players.FRP20000.PlayerGui.Top3ktg.Frame.Key
G2L["Key_14"] = Instance.new("TextBox", G2L["Frame_11"]);
G2L["Key_14"]["CursorPosition"] = -1;
G2L["Key_14"]["Name"] = [[Key]];
G2L["Key_14"]["PlaceholderColor3"] = Color3.fromRGB(1, 131, 177);
G2L["Key_14"]["BorderSizePixel"] = 2;
G2L["Key_14"]["TextSize"] = 24;
G2L["Key_14"]["TextColor3"] = Color3.fromRGB(2, 189, 255);
G2L["Key_14"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Key_14"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["Key_14"]["PlaceholderText"] = [[Enter key here]];
G2L["Key_14"]["Size"] = UDim2.new(0, 348, 0, 62);
G2L["Key_14"]["Position"] = UDim2.new(0, 4, 0, 44);
G2L["Key_14"]["BorderColor3"] = Color3.fromRGB(2, 189, 255);
G2L["Key_14"]["Text"] = [[]];
G2L["Key_14"]["BackgroundTransparency"] = 0.5;


-- Players.FRP20000.PlayerGui.Top3ktg.Frame.Sumbit
G2L["Sumbit_15"] = Instance.new("TextButton", G2L["Frame_11"]);
G2L["Sumbit_15"]["BorderSizePixel"] = 2;
G2L["Sumbit_15"]["TextSize"] = 16;
G2L["Sumbit_15"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Sumbit_15"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Sumbit_15"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["Sumbit_15"]["BackgroundTransparency"] = 0.5;
G2L["Sumbit_15"]["Size"] = UDim2.new(0, 84, 0, 30);
G2L["Sumbit_15"]["BorderColor3"] = Color3.fromRGB(2, 189, 255);
G2L["Sumbit_15"]["Text"] = [[Sumbit]];
G2L["Sumbit_15"]["Name"] = [[Sumbit]];
G2L["Sumbit_15"]["Position"] = UDim2.new(0, 6, 0, 114);


-- Players.FRP20000.PlayerGui.Top3ktg.Frame.GetKey
G2L["GetKey_16"] = Instance.new("TextButton", G2L["Frame_11"]);
G2L["GetKey_16"]["BorderSizePixel"] = 2;
G2L["GetKey_16"]["TextSize"] = 16;
G2L["GetKey_16"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["GetKey_16"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["GetKey_16"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["GetKey_16"]["BackgroundTransparency"] = 0.5;
G2L["GetKey_16"]["Size"] = UDim2.new(0, 84, 0, 30);
G2L["GetKey_16"]["BorderColor3"] = Color3.fromRGB(2, 189, 255);
G2L["GetKey_16"]["Text"] = [[Gey Key]];
G2L["GetKey_16"]["Name"] = [[GetKey]];
G2L["GetKey_16"]["Position"] = UDim2.new(0, 98, 0, 114);


-- Players.FRP20000.PlayerGui.Top3ktg.Frame.TextLabel
G2L["TextLabel_17"] = Instance.new("TextLabel", G2L["Frame_11"]);
G2L["TextLabel_17"]["BorderSizePixel"] = 0;
G2L["TextLabel_17"]["TextSize"] = 14;
G2L["TextLabel_17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["TextLabel_17"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["TextLabel_17"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["TextLabel_17"]["BackgroundTransparency"] = 1;
G2L["TextLabel_17"]["Size"] = UDim2.new(0, 360, 0, 30);
G2L["TextLabel_17"]["Text"] = [[Hint : To get the Key goto Channel LIONARC_HELON Youtube]];
G2L["TextLabel_17"]["Position"] = UDim2.new(0, 2, 0, 138);


-- Players.FRP20000.PlayerGui.Top3ktg.Frame.MouseButton
G2L["MouseButton_18"] = Instance.new("LocalScript", G2L["Frame_11"]);
G2L["MouseButton_18"]["Name"] = [[MouseButton]];


-- Players.FRP20000.PlayerGui.Top3ktg.Frame.Draggable
G2L["Draggable_19"] = Instance.new("LocalScript", G2L["Frame_11"]);
G2L["Draggable_19"]["Name"] = [[Draggable]];


-- Players.FRP20000.PlayerGui.Top3ktg.Main.Draggable
local function C_6()
	local script = G2L["Draggable_6"];
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
end;
task.spawn(C_6);
-- Players.FRP20000.PlayerGui.Top3ktg.Main.MouseButton
local function C_10()
	local script = G2L["MouseButton_10"];
	script.Parent.Execute.MouseButton1Click:Connect(function()	
		loadstring(script.Parent.InputBox.Text)()	
	end)	
	
	script.Parent.Clear.MouseButton1Click:Connect(function()	
		script.Parent.InputBox.Text = ""	
	end)	
	
	script.Parent.UrlExe.MouseButton1Click:Connect(function()	
		loadstring(game:HttpGet(script.Parent.InputBox.Text))()	
	end)	
	
	script.Parent.SSExe.MouseButton1Click:Connect(function()	
	local scriptText = script.Parent.InputBoc.Text
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
		warn("Invalid require() syntax.\n    CallStack : \n Requiring asset "..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." . \n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by\n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by\n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).." .MainModule, line 1 - by\n Required_asset_"..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10)..math.random(1, 10).math.random(1, 10).." .MainModule, line 1 - by ")
	end
	end)	
	
	script.Parent.SSExe.MouseButton1Click:Connect(function()	
		loadstring(script.Parent.InputBox.Text)()	
	end)	
	
	script.Parent.Reset.MouseButton1Click:Connect(function()	
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health = 0	
	end)	
	
	script.Parent.R6.MouseButton1Click:Connect(function()	
		loadstring(game:HttpGet(('https://pastebin.com/raw/jHGVauVX'),true))()
	end)	
end;
task.spawn(C_10);
-- Players.FRP20000.PlayerGui.Top3ktg.Frame.MouseButton
local function C_18()
	local script = G2L["MouseButton_18"];
	script.Parent.Sumbit.MouseButton1Click:Connect(function()	
	if script.Parent.Key.Text == "EXECUTOR ON TOP" then	
	script.Parent.Parent.	Main.Visible = true
	script.Parent:Destroy()	
	else	
	script.Parent.Key.Text = ""	
	script.Parent.Key.PlaceholderText = "wrong try Again!"	
	wait(3)	
	script.Parent.Key.PlaceholderText = "Enter key here"	
	end	
	end)	
	
	script.Parent.GeyKey.MouseButton1Click:Connect(function()	
		setclipboard("www.youtube.com/@LIONARC_HELON")	
	end)	
end;
task.spawn(C_18);
-- Players.FRP20000.PlayerGui.Top3ktg.Frame.Draggable
local function C_19()
	local script = G2L["Draggable_19"];
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
end;
task.spawn(C_19);

return G2L["Top3ktg_1"], require;