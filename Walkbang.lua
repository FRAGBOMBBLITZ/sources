--[=[


db   d8b   db  .d8b.  db      db   dD d8888b.  .d8b.  d8b   db  d888b  
88   I8I   88 d8' `8b 88      88 ,8P' 88  `8D d8' `8b 888o  88 88' Y8b 
88   I8I   88 88ooo88 88      88,8P   88oooY' 88ooo88 88V8o 88 88      
Y8   I8I   88 88~~~88 88      88`8b   88~~~b. 88~~~88 88 V8o88 88  ooo 
`8b d8'8b d8' 88   88 88booo. 88 `88. 88   8D 88   88 88  V888 88. ~8~ 
 `8b8' `8d8'  YP   YP Y88888P YP   YD Y8888P' YP   YP VP   V8P  Y888P  
                                                    
To walkbang a player, hover over them and press B to toggle, or use the GUI.
Script by Ches / @FRAGBOMBBLITZ, have fun!                                                   

Discord Server: https://discord.gg/GnX4dQkhnD

]=]

-- Instances: 35 | Scripts: 1 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.ScriptByChes
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[ScriptByChes]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.ScriptByChes.DraggableArea
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[DraggableArea]];
G2L["2"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptByChes.DraggableArea.MainFrame
G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["Style"] = Enum.FrameStyle.DropShadow;
G2L["3"]["Size"] = UDim2.new(0, 250, 0, 400);
G2L["3"]["Position"] = UDim2.new(0.5, 0, 0.25, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Name"] = [[MainFrame]];


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.HeaderFrame
G2L["4"] = Instance.new("Frame", G2L["3"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Name"] = [[HeaderFrame]];
G2L["4"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.HeaderFrame.Header
G2L["5"] = Instance.new("TextLabel", G2L["4"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextSize"] = 20;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["BackgroundTransparency"] = 0.8;
G2L["5"]["Size"] = UDim2.new(1, -60, 0, 30);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[Walkbang]];
G2L["5"]["Name"] = [[Header]];


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.HeaderFrame.Header.UIPadding
G2L["6"] = Instance.new("UIPadding", G2L["5"]);
G2L["6"]["PaddingLeft"] = UDim.new(0, 60);


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.HeaderFrame.CloseButton
G2L["7"] = Instance.new("TextButton", G2L["4"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["TextSize"] = 16;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["7"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["7"]["BackgroundTransparency"] = 0.8;
G2L["7"]["Name"] = [[CloseButton]];
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[X]];
G2L["7"]["Position"] = UDim2.new(1, 0, 0, 0);


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.HeaderFrame.MinimizeButton
G2L["8"] = Instance.new("TextButton", G2L["4"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["TextSize"] = 20;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["8"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["8"]["BackgroundTransparency"] = 0.8;
G2L["8"]["Name"] = [[MinimizeButton]];
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Text"] = [[-]];
G2L["8"]["Position"] = UDim2.new(1, -30, 0, 0);


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.TargetFrame
G2L["9"] = Instance.new("Frame", G2L["3"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["9"]["Size"] = UDim2.new(0, 200, 0, 150);
G2L["9"]["Position"] = UDim2.new(0.5, 0, 0, 70);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Name"] = [[TargetFrame]];
G2L["9"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.TargetFrame.TargetSearchbox
G2L["a"] = Instance.new("TextBox", G2L["9"]);
G2L["a"]["Name"] = [[TargetSearchbox]];
G2L["a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
G2L["a"]["ZIndex"] = 2;
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["TextWrapped"] = true;
G2L["a"]["TextSize"] = 20;
G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["a"]["PlaceholderText"] = [[Search...]];
G2L["a"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["a"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[]];
G2L["a"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.TargetFrame.TargetSearchbox.SearchResult
G2L["b"] = Instance.new("TextLabel", G2L["a"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextSize"] = 20;
G2L["b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b"]["TextColor3"] = Color3.fromRGB(179, 179, 179);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Text"] = [[]];
G2L["b"]["Name"] = [[SearchResult]];


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.TargetFrame.TargetSearchbox.UIPadding
G2L["c"] = Instance.new("UIPadding", G2L["a"]);



-- StarterGui.ScriptByChes.DraggableArea.MainFrame.TargetFrame.TargetThumbnail
G2L["d"] = Instance.new("Frame", G2L["9"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["d"]["Position"] = UDim2.new(0, 0, 0, 40);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Name"] = [[TargetThumbnail]];
G2L["d"]["BackgroundTransparency"] = 0.8;


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.TargetFrame.TargetThumbnail.ImageLabel
G2L["e"] = Instance.new("ImageLabel", G2L["d"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Image"] = [[rbxthumb://type=AvatarBust&id=301617068&w=420&h=420]];
G2L["e"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.TargetFrame.TargetActions
G2L["f"] = Instance.new("Frame", G2L["9"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["f"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["f"]["Position"] = UDim2.new(1, 0, 0, 40);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Name"] = [[TargetActions]];
G2L["f"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.TargetFrame.TargetActions.UIListLayout
G2L["10"] = Instance.new("UIListLayout", G2L["f"]);
G2L["10"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.TargetFrame.TargetActions.BangButton
G2L["11"] = Instance.new("TextButton", G2L["f"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["TextSize"] = 16;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["11"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["11"]["Name"] = [[BangButton]];
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Text"] = [[Bang]];
G2L["11"]["Style"] = Enum.ButtonStyle.RobloxRoundDefaultButton;
G2L["11"]["Position"] = UDim2.new(1, -10, 0, 40);


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.TargetFrame.TargetActions.ViewButton
G2L["12"] = Instance.new("TextButton", G2L["f"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["TextSize"] = 16;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["12"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["12"]["Name"] = [[ViewButton]];
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Text"] = [[View]];
G2L["12"]["Style"] = Enum.ButtonStyle.RobloxRoundDefaultButton;
G2L["12"]["Position"] = UDim2.new(1, -10, 0, 40);


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.TargetFrame.TargetActions.UIPadding
G2L["13"] = Instance.new("UIPadding", G2L["f"]);
G2L["13"]["PaddingTop"] = UDim.new(0, -3);


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.TargetFrame.Header
G2L["14"] = Instance.new("TextLabel", G2L["9"]);
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["TextSize"] = 20;
G2L["14"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["BackgroundTransparency"] = 1;
G2L["14"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["14"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[Target]];
G2L["14"]["Name"] = [[Header]];


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.SettingsFrame
G2L["15"] = Instance.new("Frame", G2L["3"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["15"]["Size"] = UDim2.new(0, 200, 0, 55);
G2L["15"]["Position"] = UDim2.new(0.5, 0, 0, 250);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Name"] = [[SettingsFrame]];
G2L["15"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.SettingsFrame.SettingsList
G2L["16"] = Instance.new("Frame", G2L["15"]);
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Name"] = [[SettingsList]];
G2L["16"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.SettingsFrame.SettingsList.UIListLayout
G2L["17"] = Instance.new("UIListLayout", G2L["16"]);
G2L["17"]["Padding"] = UDim.new(0, 5);
G2L["17"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.SettingsFrame.SettingsList.UIPadding
G2L["18"] = Instance.new("UIPadding", G2L["16"]);
G2L["18"]["PaddingTop"] = UDim.new(0, -3);


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.SettingsFrame.SettingsList.SpeedMultiplierTextLabel
G2L["19"] = Instance.new("TextLabel", G2L["16"]);
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["TextSize"] = 16;
G2L["19"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["BackgroundTransparency"] = 1;
G2L["19"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["19"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Text"] = [[Speed Multiplier]];
G2L["19"]["LayoutOrder"] = 1;
G2L["19"]["Name"] = [[SpeedMultiplierTextLabel]];


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.SettingsFrame.SettingsList.SpeedMultiplierTextLabel.TextBox
G2L["1a"] = Instance.new("TextBox", G2L["19"]);
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["TextSize"] = 16;
G2L["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["1a"]["PlaceholderText"] = [[1]];
G2L["1a"]["Size"] = UDim2.new(0, 50, 0, 30);
G2L["1a"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Text"] = [[]];
G2L["1a"]["BackgroundTransparency"] = 0.8;


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.SettingsFrame.SettingsList.FrontSideBangTextLabel
G2L["1b"] = Instance.new("TextLabel", G2L["16"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["TextSize"] = 16;
G2L["1b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["BackgroundTransparency"] = 1;
G2L["1b"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["1b"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Text"] = [[From Front]];
G2L["1b"]["LayoutOrder"] = 3;
G2L["1b"]["Name"] = [[FrontSideBangTextLabel]];


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.SettingsFrame.SettingsList.FrontSideBangTextLabel.TextButton
G2L["1c"] = Instance.new("TextButton", G2L["1b"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["TextSize"] = 16;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1c"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["1c"]["Size"] = UDim2.new(0, 56, 0, 30);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Text"] = [[False]];
G2L["1c"]["Style"] = Enum.ButtonStyle.RobloxRoundButton;
G2L["1c"]["Position"] = UDim2.new(1, 3, 0, 0);


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.SettingsFrame.SettingsList.BangPlatformHeightTextLabel
G2L["1d"] = Instance.new("TextLabel", G2L["16"]);
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["TextSize"] = 16;
G2L["1d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d"]["BackgroundTransparency"] = 1;
G2L["1d"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["1d"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["Text"] = [[Platform Height]];
G2L["1d"]["LayoutOrder"] = 2;
G2L["1d"]["Name"] = [[BangPlatformHeightTextLabel]];


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.SettingsFrame.SettingsList.BangPlatformHeightTextLabel.TextBox
G2L["1e"] = Instance.new("TextBox", G2L["1d"]);
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["TextSize"] = 16;
G2L["1e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1e"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["1e"]["PlaceholderText"] = [[-2]];
G2L["1e"]["Size"] = UDim2.new(0, 50, 0, 30);
G2L["1e"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["Text"] = [[]];
G2L["1e"]["BackgroundTransparency"] = 0.8;


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.SettingsFrame.SettingsList.RealismPauseTextLabel
G2L["1f"] = Instance.new("TextLabel", G2L["16"]);
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["TextSize"] = 16;
G2L["1f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["BackgroundTransparency"] = 1;
G2L["1f"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["1f"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Text"] = [[Realism Pause]];
G2L["1f"]["LayoutOrder"] = 4;
G2L["1f"]["Name"] = [[RealismPauseTextLabel]];


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.SettingsFrame.SettingsList.RealismPauseTextLabel.TextButton
G2L["20"] = Instance.new("TextButton", G2L["1f"]);
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20"]["TextSize"] = 16;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["20"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["20"]["Size"] = UDim2.new(0, 56, 0, 30);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Text"] = [[False]];
G2L["20"]["Style"] = Enum.ButtonStyle.RobloxRoundButton;
G2L["20"]["Position"] = UDim2.new(1, 3, 0, 0);


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.SettingsFrame.Header
G2L["21"] = Instance.new("TextLabel", G2L["15"]);
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["TextSize"] = 20;
G2L["21"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["21"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["BackgroundTransparency"] = 1;
G2L["21"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["21"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Text"] = [[Bang Settings]];
G2L["21"]["Name"] = [[Header]];


-- StarterGui.ScriptByChes.DraggableArea.MainFrame.UIDragDetector
G2L["22"] = Instance.new("UIDragDetector", G2L["3"]);
G2L["22"]["BoundingUI"] = G2L["2"]
-- [ERROR] cannot convert BoundingUI, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"

task.spawn(function()
	-- Walkbang. Script made by ches / @FRAGBOMBBLITZ
	-- Use the Gui to Walkbang, or hover over a player and press B to toggle.

	-- Todo:
--[[

add harrass gui, that targets a player for e.g 20 minutes
walkbang timeout on player leave, when a player you're walkbanging leaves, be able to ste the timeout to like 1 minute before giving up
fix viewing the walkbang target when they rejoin

]]

	pcall(function() workspace.FallenPartsDestroyHeight = 0/0 end)

	-- Settings
	local BangKey = Enum.KeyCode.B

	-- Services
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	local StarterGui = game:GetService("StarterGui")
	local Players = game:GetService("Players")

	-- Target
	local TargetPlayerUsername = nil

	-- Variables (Default)
	local BangSpeedMultiplier = 1
	local BangPlatformHeight = -4.025
	local BangFromFront = false
	local RealismPause = true
	local ViewingPlayer = false

	local GuiConnections = {}
	local Connections = {}

	--
	local Player = Players.LocalPlayer
	local Camera = workspace.CurrentCamera
	local Mouse = Player:GetMouse()

	-- Bangheight Platform
	local BangHeightPlatform = Instance.new("Part")
	BangHeightPlatform.Parent = workspace
	BangHeightPlatform.Name = "BangHeightPlatform"
	BangHeightPlatform.Size = Vector3.new(500,2,500)
	BangHeightPlatform.Anchored = true
	BangHeightPlatform.Transparency = 0.9
	BangHeightPlatform.Position = Vector3.new(4994949,250,0)

	local function SendNotification(Title: string, Text: string, Duration: number)
		print(Title or "",Text or "")
		StarterGui:SetCore("SendNotification",{Title = Title or "", Text = Text or "", Duration = Duration or 5})
	end

	local function GetPlayerFromMouseTarget(Target)
		if Target:IsA("BasePart") then

			if Players:FindFirstChild(Target.Parent.Name) or Players:FindFirstChild(Target.Parent.Parent.Name) then
				local TargetPlayer = Players:FindFirstChild(Target.Parent.Name) or Players:FindFirstChild(Target.Parent.Parent.Name)

				return TargetPlayer
			end

			return nil
		end

		return nil
	end

	local function NoCollide()
		Connections["Nocollide"] = RunService.Stepped:Connect(function()
			if Player.Character then
				for _,Limb: BasePart in Player.Character:GetChildren() do
					if Limb:IsA("BasePart") then
						Limb.CanCollide = false
					end
				end
			end
		end)
	end

	local function LookAt(TargetPlayer: Player)
		Connections["LookAt"] = RunService.Heartbeat:Connect(function()

			if TargetPlayerUsername then
				TargetPlayer = Players:FindFirstChild(TargetPlayerUsername)
			end	

			if TargetPlayer and TargetPlayer.Character and TargetPlayer.Character:FindFirstChild("HumanoidRootPart") and TargetPlayer.Character:FindFirstChildOfClass("Humanoid") then
				if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
					local TargetRootPart = TargetPlayer.Character:FindFirstChild("HumanoidRootPart")
					local TargetHumanoid = TargetPlayer.Character:FindFirstChildOfClass("Humanoid")

					local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid")
					local RootPart = Player.Character:FindFirstChild("HumanoidRootPart")
					local BodyGyro = RootPart:FindFirstChildOfClass("BodyGyro") or nil

					if not BodyGyro then
						BodyGyro = Instance.new("BodyGyro")
						BodyGyro.Parent = RootPart
						BodyGyro.MaxTorque = Vector3.new(9e9,9e9,9e9)
						BodyGyro.P = 1e9
					else
						BodyGyro.CFrame = CFrame.lookAt(RootPart.Position, Vector3.new(TargetRootPart.Position.X, RootPart.Position.Y, TargetRootPart.Position.Z))
					end

					BangHeightPlatform.Position = TargetPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,BangPlatformHeight,0)

					Humanoid.WalkSpeed = math.clamp((TargetHumanoid.WalkSpeed + 1) * BangSpeedMultiplier, 16, 1000)
					
					if Humanoid.Sit then
						Humanoid.Sit = false
					elseif Humanoid.PlatformStand then
						Humanoid.PlatformStand = false
					end

					if (RootPart.Position - TargetRootPart.Position).Magnitude > 30 then
						RootPart.CFrame = CFrame.new((TargetRootPart.CFrame * CFrame.new(math.random(-8,8),0,math.random(-8,8))).Position)
						RootPart.Velocity = Vector3.new()
						RootPart.RotVelocity = Vector3.new()
					end
					
					if (TargetRootPart.Position.Y - RootPart.Position.Y) > 2 then
						RootPart.CFrame = CFrame.new((TargetRootPart.CFrame * CFrame.new(math.random(-8,8),0,math.random(-8,8))).Position)
						RootPart.Velocity = Vector3.new()
						RootPart.RotVelocity = Vector3.new()
					end

				end
			end
		end)
	end

	local function LoopBangPlayer(TargetPlayer: Player)
		if not TargetPlayer then return end

		TargetPlayerUsername = TargetPlayer.Name

		if not Connections["Nocollide"] then NoCollide() end
		if not Connections["LookAt"] then LookAt(TargetPlayer) end

		task.spawn(function()		
			local CFOffset = CFrame.new(0,0,4.5)

			local function Bang()
				if TargetPlayer and TargetPlayer.Character and TargetPlayer.Character:FindFirstChild("HumanoidRootPart") then

					if Player.Character and Player.Character:FindFirstChildOfClass("Humanoid") and Player.Character:FindFirstChild("HumanoidRootPart") then
						local TargetRootPart = TargetPlayer.Character:FindFirstChild("HumanoidRootPart")

						local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid")			


						Humanoid:MoveTo((TargetRootPart.CFrame * CFOffset).Position)
						Humanoid.MoveToFinished:Wait()

					end

				end
			end

			while task.wait() do

				CFOffset = CFrame.new(0,0,not BangFromFront and (5 + (math.random(-100,0)) * 0.01) or (-5 - (math.random(-100,0)) * 0.01) )
				Bang()
				if not TargetPlayerUsername then break end

				if RealismPause then task.wait((math.random(-100,100)) * 0.001) end



				CFOffset = CFrame.new(0,0,not BangFromFront and 0.5 or -0.5)
				Bang()
				--task.wait((math.random(-100,100)) * 0.001)

				if not TargetPlayerUsername then break end
			end
		end)

	end

	-- Gui
	local ScreenGui = G2L["1"]
	local MainFrame = ScreenGui.DraggableArea.MainFrame

	local HeaderFrame = MainFrame.HeaderFrame
	local TargetFrame = MainFrame.TargetFrame
	local SettingsFrame = MainFrame.SettingsFrame

	-- Header
	local MinimizeButton = HeaderFrame.MinimizeButton
	local CloseButton = HeaderFrame.CloseButton

	-- Target
	local SearchTextBox = TargetFrame.TargetSearchbox
	local SearchResultTextLabel = SearchTextBox.SearchResult
	local TargetThumbnail = TargetFrame.TargetThumbnail.ImageLabel
	local BangButton = TargetFrame.TargetActions.BangButton
	local ViewButton = TargetFrame.TargetActions.ViewButton

	local function GetPlayerFromString(PlayerSearch: string)
		local search = PlayerSearch:lower()

		SearchTextBox.SearchResult.Text = ""

		for _, player in Players:GetPlayers() do
			if player == Player then continue end
			
			if SearchTextBox.Text == player.Name:lower() or SearchTextBox.Text == player.DisplayName:lower() then SearchTextBox.SearchResult.Text = "" return player end

			if search == player.Name:lower():sub(1, #search) then
				SearchTextBox.SearchResult.Text = player.Name:lower()
				return player
			end

			if search == player.DisplayName:lower():sub(1, #search) then
				SearchTextBox.SearchResult.Text = player.DisplayName:lower().." (@"..player.Name..")"
				return player
			end

		end

		return nil
	end

	local function StartBang()
		BangButton.Style = Enum.ButtonStyle.RobloxRoundButton
		BangButton.Text = "Unbang"

		local TargetPlayer = TargetPlayerUsername and Players:FindFirstChild(TargetPlayerUsername) or GetPlayerFromString(SearchTextBox.Text)

		if TargetPlayer then
			SearchTextBox.Text = string.lower(TargetPlayer.Name)

			LoopBangPlayer(TargetPlayer)
			SendNotification("walkbang","new target: "..TargetPlayer.Name)
		end	
	end

	local function CancelBang()
		BangButton.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
		BangButton.Text = "Bang"

		if Connections["LookAt"] then
			Connections["LookAt"]:Disconnect()
			Connections["LookAt"] = nil
		end	

		if Connections["Nocollide"] then
			Connections["Nocollide"]:Disconnect()
			Connections["Nocollide"] = nil
		end	

		BangHeightPlatform.Position = Vector3.new(4994949,250,0)

		if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChildOfClass("BodyGyro") then
			Player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChildOfClass("BodyGyro"):Destroy()
		end

		if Player.Character and Player.Character:FindFirstChildOfClass("Humanoid") then
			local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid")
			local RootPart = Player.Character:FindFirstChild("HumanoidRootPart")

			Humanoid.WalkToPart = nil
			Humanoid:MoveTo(RootPart.Position)
		end

		TargetPlayerUsername = nil

		SendNotification("walkbang","cancelled banging")
	end

	-- Minimize and close
	GuiConnections["MinimizeGui"] = MinimizeButton.MouseButton1Click:Connect(function()
		local MinimizeGui = TargetFrame.Visible

		MainFrame.Size = MinimizeGui and UDim2.fromOffset(250,45) or UDim2.fromOffset(250,400)
		TargetFrame.Visible = not MinimizeGui
		SettingsFrame.Visible = not MinimizeGui
		MinimizeButton.Text = MinimizeGui and "+" or "-"
	end)

	CloseButton.MouseButton1Click:Once(function()
		ScreenGui:Destroy()

		for _,Connection in GuiConnections do
			Connection:Disconnect()
			Connection = nil
		end

		for _,Connection in Connections do
			Connection:Disconnect()
			Connection = nil
		end

		if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
			if Player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChildOfClass("BodyGyro") then
				Player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChildOfClass("BodyGyro"):Destroy()
			end
			
			if ViewingPlayer and Player.Character:FindFirstChildOfClass("Humanoid") then
				Camera.CameraSubject = Player.Character:FindFirstChildOfClass("Humanoid")
			end
		end
		
		CancelBang()
		
		SendNotification("Walkbang","Disconnected Walkbang. Hope you enjoyed -ches.")
	end)

	-- Settings
	GuiConnections["SearchboxTyping"] = SearchTextBox:GetPropertyChangedSignal("Text"):Connect(function()	
		local player = GetPlayerFromString(SearchTextBox.Text)
		
		if player then
			TargetFrame.TargetThumbnail.ImageLabel.Image = Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size100x100)
		end
		
		if SearchTextBox.Text ~= "" then
			SearchTextBox.Text = SearchTextBox.Text:lower()
		else
			SearchTextBox.SearchResult.Text = ""
		end	
	end)

	GuiConnections["SpeedMultiplierSetting"] = SettingsFrame.SettingsList.SpeedMultiplierTextLabel.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
		if SettingsFrame.SettingsList.SpeedMultiplierTextLabel.TextBox.Text == "" then
			BangSpeedMultiplier = SettingsFrame.SettingsList.SpeedMultiplierTextLabel.TextBox.PlaceholderText
		elseif tonumber(SettingsFrame.SettingsList.SpeedMultiplierTextLabel.TextBox.Text) then
			BangSpeedMultiplier = tonumber(SettingsFrame.SettingsList.SpeedMultiplierTextLabel.TextBox.Text)
		end
	end)

	GuiConnections["PlatformHeightSetting"] = SettingsFrame.SettingsList.BangPlatformHeightTextLabel.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
		if SettingsFrame.SettingsList.BangPlatformHeightTextLabel.TextBox.Text == "" then
			BangPlatformHeight = SettingsFrame.SettingsList.BangPlatformHeightTextLabel.TextBox.PlaceholderText
		elseif tonumber(SettingsFrame.SettingsList.BangPlatformHeightTextLabel.TextBox.Text) then
			BangPlatformHeight = tonumber(SettingsFrame.SettingsList.BangPlatformHeightTextLabel.TextBox.Text)
		end
	end)
	SettingsFrame.SettingsList.BangPlatformHeightTextLabel.TextBox.PlaceholderText = BangPlatformHeight

	GuiConnections["BangFromFrontSetting"] = SettingsFrame.SettingsList.FrontSideBangTextLabel.TextButton.MouseButton1Click:Connect(function()
		SettingsFrame.SettingsList.FrontSideBangTextLabel.TextButton.Style = not BangFromFront and Enum.ButtonStyle.RobloxRoundDefaultButton or Enum.ButtonStyle.RobloxRoundButton
		SettingsFrame.SettingsList.FrontSideBangTextLabel.TextButton.Text = BangFromFront and "False" or "True"

		BangFromFront = not BangFromFront
	end)

	GuiConnections["RealismPauseSetting"] = SettingsFrame.SettingsList.RealismPauseTextLabel.TextButton.MouseButton1Click:Connect(function()
		SettingsFrame.SettingsList.RealismPauseTextLabel.TextButton.Style = not RealismPause and Enum.ButtonStyle.RobloxRoundDefaultButton or Enum.ButtonStyle.RobloxRoundButton
		SettingsFrame.SettingsList.RealismPauseTextLabel.TextButton.Text = RealismPause and "False" or "True"

		RealismPause = not RealismPause
	end)

	GuiConnections["SearchboxFocusLost"] = SearchTextBox.FocusLost:Connect(function()
		local FoundPlayer = GetPlayerFromString(SearchTextBox.Text)

		if FoundPlayer then
			SearchTextBox.Text = FoundPlayer.Name:lower()
			SearchResultTextLabel.Text = ""

			TargetPlayerUsername = FoundPlayer.Name
		end
	end)

	GuiConnections["BangButton"] = BangButton.MouseButton1Click:Connect(function()
		local IsBanging = BangButton.Style == Enum.ButtonStyle.RobloxRoundButton and true or false

		if not IsBanging then
			StartBang()
		elseif IsBanging then
			CancelBang()
		end	
	end)

	local function ViewUnviewPlayer(Override: boolean)
		ViewingPlayer = Override or not ViewingPlayer

		ViewButton.Style = not ViewingPlayer and Enum.ButtonStyle.RobloxRoundDefaultButton or Enum.ButtonStyle.RobloxRoundButton
		ViewButton.Text = ViewingPlayer and "Unview" or "View"

		if Connections["ViewingPlayer"] then
			Connections["ViewingPlayer"]:Disconnect()
			Connections["ViewingPlayer"] = nil
		end

		if ViewingPlayer and TargetPlayerUsername then
			Connections["ViewingPlayer"] = Camera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
				if TargetPlayerUsername then
					if Players:FindFirstChild(TargetPlayerUsername) and Players:FindFirstChild(TargetPlayerUsername).Character then
						if Players:FindFirstChild(TargetPlayerUsername).Character:FindFirstChildOfClass("Humanoid") then
							Camera.CameraSubject = Players:FindFirstChild(TargetPlayerUsername).Character:FindFirstChildOfClass("Humanoid")
						end
					end
				end
			end)

			Camera.CameraSubject = Players:FindFirstChild(TargetPlayerUsername).Character:FindFirstChildOfClass("Humanoid")
		elseif Player.Character and Player.Character:FindFirstChildOfClass("Humanoid") then
			Camera.CameraSubject = Player.Character:FindFirstChildOfClass("Humanoid")
		end	
	end

	GuiConnections["ViewingButton"] = ViewButton.MouseButton1Click:Connect(function()
		ViewUnviewPlayer()
	end)

	Connections["KeyDown"] = UserInputService.InputBegan:Connect(function(Input, GameProcessed)
		if Input.KeyCode == BangKey and not GameProcessed then
			if not TargetPlayerUsername then
				if Mouse.Target then
					local TargetPlayer = GetPlayerFromMouseTarget(Mouse.Target)
					TargetPlayerUsername = TargetPlayer.Name

					if TargetPlayer then
						StartBang()
					end
				end	
			else
				CancelBang()
			end	
		end
	end)

	Connections["PlayerAdded"] = Players.PlayerAdded:Connect(function(PlayerAdded: Player)
		if PlayerAdded.Name == TargetPlayerUsername then
			SendNotification("Walkbang","Target has rejoined the server.",15)

			Connections["CharacterAdded"..PlayerAdded.Name] = PlayerAdded.CharacterAdded:Connect(function(Character)
				if ViewingPlayer then
					task.spawn(function()
						Character:WaitForChild("Humanoid")
						ViewUnviewPlayer(true)
					end)	
				end

				LoopBangPlayer(PlayerAdded)
			end)
		end
	end)

	Connections["PlayerRemoving"] = Players.PlayerRemoving:Connect(function(PlayerRemoving: Player)
		if PlayerRemoving.Name == TargetPlayerUsername then
			SendNotification("Walkbang","Target has left the server.",15)
		end

		if Connections["CharacterAdded"..PlayerRemoving.Name] then
			Connections["CharacterAdded"..PlayerRemoving.Name]:Disconnect()
			Connections["CharacterAdded"..PlayerRemoving.Name] = nil
		end
	end)

	for _,CurrentPlayer in Players:GetPlayers() do
		Connections["CharacterAdded"..CurrentPlayer.Name] = CurrentPlayer.CharacterAdded:Connect(function(Character)
			if TargetPlayerUsername ~= nil then
				if CurrentPlayer.Name == TargetPlayerUsername then
					if ViewingPlayer then
						task.spawn(function()
							Character:WaitForChild("Humanoid")
							ViewUnviewPlayer(true)
						end)	
					end
					LoopBangPlayer(CurrentPlayer)
				elseif CurrentPlayer.Name == Player.Name and Players:FindFirstChild(TargetPlayerUsername) then
					LoopBangPlayer(Players:FindFirstChild(TargetPlayerUsername))
				end
			end	
		end)
	end

	SendNotification("Walkbang","Hover your mouse over a player and press B to walkbang, press B again to cancel.",8)
	SendNotification("This script was made by ches","Have fun! discord.gg/GnX4dQkhnD",15)
		
	-- Enable RealismPause Button
	SettingsFrame.SettingsList.RealismPauseTextLabel.TextButton.Style = RealismPause and Enum.ButtonStyle.RobloxRoundDefaultButton or Enum.ButtonStyle.RobloxRoundButton
	SettingsFrame.SettingsList.RealismPauseTextLabel.TextButton.Text = not RealismPause and "False" or "True"

end)
