SpotifyUiLib = {}

function SpotifyUiLib:New(Title)
	
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local Frame_2 = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local TextLabel = Instance.new("TextLabel")
	local UiCorner = Instance.new("UiCorner")
	local UiCorner_2 = Instance.new("UiCorner")

	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui.ResetOnSpawn = false

	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(0, 580, 0, 430)
	Frame.BackgroundTransparency = .5
	
	UiCorner.Parent = Frame
	UiCorner.CornerRadius = UDim.new(0, 8)

	Frame_2.Parent = Frame
	Frame_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Frame_2.BorderSizePixel = 0
	Frame_2.BackgroundTransparency = .5
	Frame_2.Position = UDim2.new(0.0624024495, 0, 0.145615742, 0)
	Frame_2.Size = UDim2.new(0, 560, 0, 400)

  UiCorner_2.Parent = Frame_2
  UiCorner_2.CornerRadius = UDim.new(0, 8)

	UIListLayout.Parent = Frame_2
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 10)

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.LayoutOrder = 5
	TextLabel.Position = UDim2.new(0.152442604, 0, 0.0205405708, 0)
	TextLabel.Size = UDim2.new(0, 274, 0, 40)
	TextLabel.ZIndex = 2
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.Text = Title
	TextLabel.TextColor3 = Color3.fromRGB(232, 232, 232)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	local function MVMBOL_fake_script()
		local script = Instance.new('LocalScript', Frame)

		script.Parent.Active = true
		script.Parent.Draggable = true
	end
	coroutine.wrap(MVMBOL_fake_script)()
	
	_G.Frame = {}
	
	function _G.Frame:Button(Name,Call)
		
		local TextButton = Instance.new("TextButton")
		
		TextButton.Parent = Frame_2
		TextButton.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
		TextButton.BorderSizePixel = 0
		TextButton.Size = UDim2.new(0, 200, 0, 50)
		TextButton.Font = Enum.Font.SourceSansBold
		TextButton.Text = Name
		TextButton.TextColor3 = Color3.fromRGB(235, 235, 235)
		TextButton.TextScaled = false
		TextButton.TextSize = 14
		TextButton.TextWrapped = false
		
		TextButton.MouseButton1Click:Connect(function()
			
			pcall(Call)
			
		end)
		
	end
	
	return _G.Frame
	
end

--End

return SpotifyUiLib
