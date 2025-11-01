--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 

designed using localmaze gui creator
]=]

-- Instances: 27 | Scripts: 2 | Modules: 0 | Tags: 1
local CollectionService = game:GetService("CollectionService");
local G2L = {};

-- Players.FRP20000.PlayerGui.ScreenGui
G2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- Tags
CollectionService:AddTag(G2L["ScreenGui_1"], [[main]]);

-- Players.FRP20000.PlayerGui.ScreenGui.Login UI
G2L["Login UI_2"] = Instance.new("Frame", G2L["ScreenGui_1"]);
G2L["Login UI_2"]["BackgroundColor3"] = Color3.fromRGB(86, 86, 86);
G2L["Login UI_2"]["Size"] = UDim2.new(0, 504, 0, 249);
G2L["Login UI_2"]["Position"] = UDim2.new(0.30927, 0, 0.34288, 0);
G2L["Login UI_2"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["Login UI_2"]["Name"] = [[Login UI]];


-- Players.FRP20000.PlayerGui.ScreenGui.Login UI.Login Frame
G2L["Login Frame_3"] = Instance.new("Frame", G2L["Login UI_2"]);
G2L["Login Frame_3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Login Frame_3"]["Size"] = UDim2.new(0, 199, 0, 51);
G2L["Login Frame_3"]["Position"] = UDim2.new(0.30159, 0, 0.69297, 0);
G2L["Login Frame_3"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["Login Frame_3"]["Name"] = [[Login Frame]];
G2L["Login Frame_3"]["BackgroundTransparency"] = 1;


-- Players.FRP20000.PlayerGui.ScreenGui.Login UI.Login Frame.Login Button
G2L["Login Button_4"] = Instance.new("TextButton", G2L["Login Frame_3"]);
G2L["Login Button_4"]["TextWrapped"] = true;
G2L["Login Button_4"]["TextSize"] = 14;
G2L["Login Button_4"]["TextScaled"] = true;
G2L["Login Button_4"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["Login Button_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Login Button_4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["Login Button_4"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["Login Button_4"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["Login Button_4"]["Text"] = [[Login]];
G2L["Login Button_4"]["Name"] = [[Login Button]];
G2L["Login Button_4"]["Position"] = UDim2.new(-0.00153, 0, -0.00346, 0);


-- Players.FRP20000.PlayerGui.ScreenGui.Login UI.Login Frame.Login Button.LocalScript
G2L["LocalScript_5"] = Instance.new("LocalScript", G2L["Login Button_4"]);



-- Players.FRP20000.PlayerGui.ScreenGui.Login UI.Login Frame.Login Button.UICorner
G2L["UICorner_6"] = Instance.new("UICorner", G2L["Login Button_4"]);



-- Players.FRP20000.PlayerGui.ScreenGui.Login UI.PasswordThing
G2L["PasswordThing_7"] = Instance.new("TextBox", G2L["Login UI_2"]);
G2L["PasswordThing_7"]["Name"] = [[PasswordThing]];
G2L["PasswordThing_7"]["PlaceholderColor3"] = Color3.fromRGB(75, 75, 75);
G2L["PasswordThing_7"]["BorderSizePixel"] = 5;
G2L["PasswordThing_7"]["TextSize"] = 45;
G2L["PasswordThing_7"]["TextColor3"] = Color3.fromRGB(75, 75, 75);
G2L["PasswordThing_7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["PasswordThing_7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["PasswordThing_7"]["PlaceholderText"] = [[Password]];
G2L["PasswordThing_7"]["Size"] = UDim2.new(0, 344, 0, 68);
G2L["PasswordThing_7"]["Position"] = UDim2.new(0.15873, 0, 0.23293, 0);
G2L["PasswordThing_7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["PasswordThing_7"]["Text"] = [[]];


-- Players.FRP20000.PlayerGui.ScreenGui.Login UI.PasswordThing.UICorner
G2L["UICorner_8"] = Instance.new("UICorner", G2L["PasswordThing_7"]);



-- Players.FRP20000.PlayerGui.ScreenGui.Login UI.UICorner
G2L["UICorner_9"] = Instance.new("UICorner", G2L["Login UI_2"]);



-- Players.FRP20000.PlayerGui.ScreenGui.Main
G2L["Main_a"] = Instance.new("Frame", G2L["ScreenGui_1"]);
G2L["Main_a"]["BackgroundColor3"] = Color3.fromRGB(86, 86, 86);
G2L["Main_a"]["Size"] = UDim2.new(0, 503, 0, 249);
G2L["Main_a"]["Position"] = UDim2.new(-0.9, 0, 0.344, 0);
G2L["Main_a"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["Main_a"]["Name"] = [[Main]];


-- Players.FRP20000.PlayerGui.ScreenGui.Main.UICorner
G2L["UICorner_b"] = Instance.new("UICorner", G2L["Main_a"]);



-- Players.FRP20000.PlayerGui.ScreenGui.Main.TextLabel
G2L["TextLabel_c"] = Instance.new("TextLabel", G2L["Main_a"]);
G2L["TextLabel_c"]["TextWrapped"] = true;
G2L["TextLabel_c"]["TextSize"] = 14;
G2L["TextLabel_c"]["TextScaled"] = true;
G2L["TextLabel_c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["TextLabel_c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["TextLabel_c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["TextLabel_c"]["BackgroundTransparency"] = 1;
G2L["TextLabel_c"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["TextLabel_c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["TextLabel_c"]["Text"] = [[Kick Gui]];
G2L["TextLabel_c"]["Position"] = UDim2.new(0.3002, 0, 0.03213, 0);


-- Players.FRP20000.PlayerGui.ScreenGui.Main.Header
G2L["Header_d"] = Instance.new("Frame", G2L["Main_a"]);
G2L["Header_d"]["BorderSizePixel"] = 0;
G2L["Header_d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Header_d"]["Size"] = UDim2.new(0, 505, 0, 2);
G2L["Header_d"]["Position"] = UDim2.new(-0, 0, 0.2249, 0);
G2L["Header_d"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["Header_d"]["Name"] = [[Header]];


-- Players.FRP20000.PlayerGui.ScreenGui.Main.Dragify
G2L["Dragify_e"] = Instance.new("LocalScript", G2L["Main_a"]);
G2L["Dragify_e"]["Name"] = [[Dragify]];


-- Players.FRP20000.PlayerGui.ScreenGui.Main.Kick
G2L["Kick_f"] = Instance.new("TextButton", G2L["Main_a"]);
G2L["Kick_f"]["TextWrapped"] = true;
G2L["Kick_f"]["BorderSizePixel"] = 0;
G2L["Kick_f"]["TextSize"] = 17;
G2L["Kick_f"]["TextScaled"] = true;
G2L["Kick_f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Kick_f"]["BackgroundColor3"] = Color3.fromRGB(122, 122, 122);
G2L["Kick_f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["Kick_f"]["Size"] = UDim2.new(0, 285, 0, 32);
G2L["Kick_f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["Kick_f"]["Text"] = [[Kick]];
G2L["Kick_f"]["Name"] = [[Kick]];
G2L["Kick_f"]["Position"] = UDim2.new(0.05368, 0, 0.83056, 0);


-- Players.FRP20000.PlayerGui.ScreenGui.Main.Kick.UICorner
G2L["UICorner_10"] = Instance.new("UICorner", G2L["Kick_f"]);



-- Players.FRP20000.PlayerGui.ScreenGui.Main.KickA
G2L["KickA_11"] = Instance.new("TextButton", G2L["Main_a"]);
G2L["KickA_11"]["TextWrapped"] = true;
G2L["KickA_11"]["BorderSizePixel"] = 0;
G2L["KickA_11"]["TextSize"] = 17;
G2L["KickA_11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["KickA_11"]["BackgroundColor3"] = Color3.fromRGB(122, 122, 122);
G2L["KickA_11"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["KickA_11"]["Size"] = UDim2.new(0, 144, 0, 32);
G2L["KickA_11"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["KickA_11"]["Text"] = [[Kick All]];
G2L["KickA_11"]["Name"] = [[KickA]];
G2L["KickA_11"]["Position"] = UDim2.new(0.69757, 0, 0.49171, 0);


-- Players.FRP20000.PlayerGui.ScreenGui.Main.KickA.UICorner
G2L["UICorner_12"] = Instance.new("UICorner", G2L["KickA_11"]);



-- Players.FRP20000.PlayerGui.ScreenGui.Main.KickO
G2L["KickO_13"] = Instance.new("TextButton", G2L["Main_a"]);
G2L["KickO_13"]["TextWrapped"] = true;
G2L["KickO_13"]["BorderSizePixel"] = 0;
G2L["KickO_13"]["TextSize"] = 17;
G2L["KickO_13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["KickO_13"]["BackgroundColor3"] = Color3.fromRGB(122, 122, 122);
G2L["KickO_13"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["KickO_13"]["Size"] = UDim2.new(0, 144, 0, 32);
G2L["KickO_13"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["KickO_13"]["Text"] = [[Kick Others]];
G2L["KickO_13"]["Name"] = [[KickO]];
G2L["KickO_13"]["Position"] = UDim2.new(0.69757, 0, 0.65933, 0);


-- Players.FRP20000.PlayerGui.ScreenGui.Main.KickO.UICorner
G2L["UICorner_14"] = Instance.new("UICorner", G2L["KickO_13"]);



-- Players.FRP20000.PlayerGui.ScreenGui.Main.KickY
G2L["KickY_15"] = Instance.new("TextButton", G2L["Main_a"]);
G2L["KickY_15"]["TextWrapped"] = true;
G2L["KickY_15"]["BorderSizePixel"] = 0;
G2L["KickY_15"]["TextSize"] = 17;
G2L["KickY_15"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["KickY_15"]["BackgroundColor3"] = Color3.fromRGB(117, 0, 2);
G2L["KickY_15"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["KickY_15"]["BackgroundTransparency"] = 0.8;
G2L["KickY_15"]["Size"] = UDim2.new(0, 144, 0, 32);
G2L["KickY_15"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["KickY_15"]["Text"] = [[Kick Yourself]];
G2L["KickY_15"]["Name"] = [[KickY]];
G2L["KickY_15"]["Position"] = UDim2.new(0.69956, 0, 0.82867, 0);


-- Players.FRP20000.PlayerGui.ScreenGui.Main.KickY.UICorner
G2L["UICorner_16"] = Instance.new("UICorner", G2L["KickY_15"]);



-- Players.FRP20000.PlayerGui.ScreenGui.Main.Player
G2L["Player_17"] = Instance.new("TextBox", G2L["Main_a"]);
G2L["Player_17"]["Name"] = [[Player]];
G2L["Player_17"]["BorderSizePixel"] = 0;
G2L["Player_17"]["TextWrapped"] = true;
G2L["Player_17"]["TextSize"] = 14;
G2L["Player_17"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Player_17"]["TextScaled"] = true;
G2L["Player_17"]["BackgroundColor3"] = Color3.fromRGB(122, 122, 122);
G2L["Player_17"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["Player_17"]["PlaceholderText"] = [[USERNAME]];
G2L["Player_17"]["Size"] = UDim2.new(0, 285, 0, 32);
G2L["Player_17"]["Position"] = UDim2.new(0.05368, 0, 0.42595, 0);
G2L["Player_17"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["Player_17"]["Text"] = [[]];


-- Players.FRP20000.PlayerGui.ScreenGui.Main.Player.UICorner
G2L["UICorner_18"] = Instance.new("UICorner", G2L["Player_17"]);



-- Players.FRP20000.PlayerGui.ScreenGui.Main.Reason
G2L["Reason_19"] = Instance.new("TextBox", G2L["Main_a"]);
G2L["Reason_19"]["Name"] = [[Reason]];
G2L["Reason_19"]["BorderSizePixel"] = 0;
G2L["Reason_19"]["TextWrapped"] = true;
G2L["Reason_19"]["TextSize"] = 14;
G2L["Reason_19"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Reason_19"]["TextScaled"] = true;
G2L["Reason_19"]["BackgroundColor3"] = Color3.fromRGB(122, 122, 122);
G2L["Reason_19"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["Reason_19"]["PlaceholderText"] = [[REASON]];
G2L["Reason_19"]["Size"] = UDim2.new(0, 285, 0, 32);
G2L["Reason_19"]["Position"] = UDim2.new(0.05368, 0, 0.62779, 0);
G2L["Reason_19"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["Reason_19"]["Text"] = [[]];


-- Players.FRP20000.PlayerGui.ScreenGui.Main.Reason.UICorner
G2L["UICorner_1a"] = Instance.new("UICorner", G2L["Reason_19"]);



-- Players.FRP20000.PlayerGui.ScreenGui.Main.Script
G2L["Script_1b"] = Instance.new("Script", G2L["Main_a"]);
G2L["Script_1b"]["RunContext"] = Enum.RunContext.Server;


-- Players.FRP20000.PlayerGui.ScreenGui.Login UI.Login Frame.Login Button.LocalScript
local function C_5()
	local script = G2L["LocalScript_5"];
	local password = script.Parent.Parent.Parent.PasswordThing	
	local main = script.Parent.Parent.Parent.Parent.Main	
	local login = script.Parent.Parent.Parent	
	
	main.Visible = false	
	
	script.Parent.MouseButton1Click:Connect(function()	
		if password.Text == "Free Scripts" or	
			password.Text == "Free Script" then	
			script.Parent.Parent.Parent:TweenPosition(UDim2.new(0.309,0,-0.9,0), "Out","Quad",1,true)	
			wait(2)	
			login.Visible = false	
			main.Visible = true	
			script.Parent.Parent.Parent.Parent.Main:TweenPosition(UDim2.new(0.31,0,0.344,0), "Out","Quad",1,true)	
		else	
			game.Players.LocalPlayer:kick("Another Skid Got Rekt SHEEEESH")	
		end	
	end)	
end;
task.spawn(C_5);
-- Players.FRP20000.PlayerGui.ScreenGui.Main.Dragify
local function C_e()
	local script = G2L["Dragify_e"];
	local UIS = game:GetService("UserInputService")	
	function dragify(Frame)	
	    dragToggle = nil	
	    local dragSpeed = 0	
	    dragInput = nil	
	    dragStart = nil	
	    local dragPos = nil	
	    function updateInput(input)	
	        local Delta = input.Position - dragStart	
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)	
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()	
	    end	
	    Frame.InputBegan:Connect(function(input)	
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then	
	            dragToggle = true	
	            dragStart = input.Position	
	            startPos = Frame.Position	
	            input.Changed:Connect(function()	
	                if input.UserInputState == Enum.UserInputState.End then	
	                    dragToggle = false	
	                end	
	            end)	
	        end	
	    end)	
	    Frame.InputChanged:Connect(function(input)	
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then	
	            dragInput = input	
	        end	
	    end)	
	    game:GetService("UserInputService").InputChanged:Connect(function(input)	
	        if input == dragInput and dragToggle then	
	            updateInput(input)	
	        end	
	    end)	
	end	
	
	dragify(script.Parent)	
end;
task.spawn(C_e);

return G2L["ScreenGui_1"], require;
