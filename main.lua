repeat wait(1) until game:IsLoaded()

function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

local GUI = {
	--Gui
	_ScreenGui = Instance.new('ScreenGui'),
	_Frame = Instance.new("Frame"),
	_Frame1 = Instance.new("Frame"),
	_Title = Instance.new("TextLabel"),
	_Icon = Instance.new('ImageLabel'),
	_Minimze = Instance.new('ImageButton'),
	_Minimize1 = Instance.new("TextButton"),

	--Buttons
	_WalkSpeed = Instance.new("TextButton"),
	_Fly = Instance.new("TextButton"),

	--UICorners
	_UICorner = Instance.new("UICorner"),
	_UICorner1 = Instance.new("UICorner"),
	_UICorner2 = Instance.new("UICorner"),

	--UIStrokes
	_UIStroke = Instance.new("UIStroke"),
	_UIStroke1 = Instance.new('UIStroke'),
	_UIStroke2 = Instance.new("UIStroke"),
	_UIStroke3 = Instance.new("UIStroke"),

	--UIGradients
	_UIGradient = Instance.new("UIGradient"),
	_UIGradient1 = Instance.new("UIGradient"),
	_UIGradient2 = Instance.new("UIGradient"),

	--UITextSizeConstraints
	_UITSC = Instance.new("UITextSizeConstraint"),
	_UITSC1 = Instance.new("UITextSizeConstraint"),

	_WalkSpeedSlider = Instance.new("Frame"),
	_WalkSpeedSliderBar = Instance.new("Frame"),
	_WalkSpeedSliderButton = Instance.new("TextButton"),
	_WalkSpeedValueDisplay = Instance.new("TextLabel"),

	--Fly Slider
	_FlySlider = Instance.new("Frame"),
	_FlySliderBar = Instance.new("Frame"),
	_FlySliderButton = Instance.new("TextButton"),
	_FlyValueDisplay = Instance.new("TextLabel"),
}

local UserInputService = game:GetService("UserInputService")
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local mouse = plr:GetMouse()

-- Properties

local ColorSequenceKeypoint1 = ColorSequenceKeypoint.new(0, Color3.fromRGB(215,227,255))
local ColorSequenceKeypoint2 = ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))

GUI._ScreenGui.ResetOnSpawn = false
GUI._ScreenGui.IgnoreGuiInset = true
GUI._ScreenGui.Name = randomString()
GUI._ScreenGui.ScreenInsets=Enum.ScreenInsets.CoreUISafeInsets
GUI._ScreenGui.ZIndexBehavior=Enum.ZIndexBehavior.Global
GUI._ScreenGui.Parent = game.CoreGui

GUI._Minimze.Image='rbxassetid://82463366525565'
GUI._Minimze.Position=UDim2.fromScale(.48,.465)
GUI._Minimze.Size=UDim2.fromScale(.04,.071)
GUI._Minimze.AutoButtonColor=false
GUI._Minimze.BackgroundTransparency=1
GUI._Minimze.ResampleMode=Enum.ResamplerMode.Pixelated
GUI._Minimze.Visible=false
GUI._Minimze.Parent=GUI._ScreenGui

GUI._Frame.AnchorPoint = Vector2.new(0.5, 0.5)
GUI._Frame.BackgroundColor3 = Color3.fromRGB(90, 95, 112)
GUI._Frame.Position = UDim2.fromScale(0.5, 0.5)
GUI._Frame.Size = UDim2.fromScale(0.5, 0.5)
GUI._Frame.ClipsDescendants = true
GUI._Frame.Parent = GUI._ScreenGui

GUI._Icon.Image='rbxassetid://82463366525565'
GUI._Icon.Position=UDim2.fromScale(.012,.01)
GUI._Icon.Size=UDim2.fromScale(.056,.1)
GUI._Icon.BackgroundTransparency=1
GUI._Icon.ResampleMode=Enum.ResamplerMode.Pixelated
GUI._Icon.Parent=GUI._Frame

GUI._Frame1.Size = UDim2.fromScale(1, 0.12)
GUI._Frame1.BackgroundTransparency = 1
GUI._Frame1.Name = 'Frame1'
GUI._Frame1.Parent = GUI._Frame

GUI._UIStroke.Color = Color3.fromRGB(51, 49, 81)
GUI._UIStroke.Thickness = 2
GUI._UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
GUI._UIStroke.Parent = GUI._Frame

GUI._UICorner.CornerRadius = UDim.new(0.075, 0)
GUI._UICorner.Parent = GUI._Frame

GUI._UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint1, ColorSequenceKeypoint2})
GUI._UIGradient.Rotation = 45
GUI._UIGradient.Parent = GUI._Frame

GUI._UIStroke1.Color = Color3.fromRGB(51, 49, 81)
GUI._UIStroke1.Thickness = 2
GUI._UIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
GUI._UIStroke1.Parent = GUI._Frame1

GUI._Title.BackgroundTransparency = 1
GUI._Title.Position = UDim2.fromScale(.082,.016)
GUI._Title.Size = UDim2.fromScale(0.298, 0.081)
GUI._Title.Font = Enum.Font.FredokaOne
GUI._Title.TextColor3 = Color3.fromRGB(117, 131, 163)
GUI._Title.TextScaled = true
GUI._Title.TextXAlignment = Enum.TextXAlignment.Left
GUI._Title.Text = 'Geomax Hub'
GUI._Title.Name = 'Title'
GUI._Title.Parent = GUI._Frame

GUI._WalkSpeed.BackgroundColor3 = Color3.fromRGB(100, 114, 145)
GUI._WalkSpeed.Position = UDim2.fromScale(0.018, 0.176)
GUI._WalkSpeed.Size = UDim2.fromScale(0.26, 0.102)
GUI._WalkSpeed.Font = Enum.Font.FredokaOne
GUI._WalkSpeed.Text = 'WalkSpeed'
GUI._WalkSpeed.TextScaled = true
GUI._WalkSpeed.TextColor3 = Color3.fromRGB(167, 220, 255)
GUI._WalkSpeed.Parent = GUI._Frame

GUI._UICorner1.CornerRadius = UDim.new(1, 0)
GUI._UICorner1.Parent = GUI._WalkSpeed

GUI._UIGradient1.Color = ColorSequence.new({ColorSequenceKeypoint1, ColorSequenceKeypoint2})
GUI._UIGradient1.Rotation = 45
GUI._UIGradient1.Parent = GUI._WalkSpeed

GUI._UIStroke2.Color = Color3.fromRGB(51, 49, 81)
GUI._UIStroke2.Thickness = 2
GUI._UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
GUI._UIStroke2.Parent = GUI._WalkSpeed

GUI._UITSC.MinTextSize = 1
GUI._UITSC.MaxTextSize = 17
GUI._UITSC.Parent = GUI._WalkSpeed

GUI._Fly.BackgroundColor3 = Color3.fromRGB(100, 114, 145)
GUI._Fly.Position = UDim2.fromScale(0.018, 0.31)
GUI._Fly.Size = UDim2.fromScale(0.26, 0.102)
GUI._Fly.Font = Enum.Font.FredokaOne
GUI._Fly.Text = 'Fly'
GUI._Fly.TextScaled = true
GUI._Fly.TextColor3 = Color3.fromRGB(167, 220, 255)
GUI._Fly.Parent = GUI._Frame

GUI._UICorner2.CornerRadius = UDim.new(1, 0)
GUI._UICorner2.Parent = GUI._Fly

GUI._UIGradient2.Color = ColorSequence.new({ColorSequenceKeypoint1, ColorSequenceKeypoint2})
GUI._UIGradient2.Rotation = 45
GUI._UIGradient2.Parent = GUI._Fly

GUI._UIStroke3.Color = Color3.fromRGB(51, 49, 81)
GUI._UIStroke3.Thickness = 2
GUI._UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
GUI._UIStroke3.Parent = GUI._Fly
wait()
GUI._UITSC1.MinTextSize = 1
GUI._UITSC1.MaxTextSize = 17
GUI._UITSC1.Parent = GUI._Fly

GUI._UIStroke4=GUI._UIStroke3:Clone()
GUI._UICorner3=GUI._UICorner2:Clone()
GUI._UIGradient3=GUI._UIGradient2:Clone()

GUI._UIStroke5=GUI._UIStroke3:Clone()
GUI._UICorner4=GUI._UICorner2:Clone()
GUI._UIGradient4=GUI._UIGradient2:Clone()

GUI._UIStroke6=GUI._UIStroke3:Clone()
GUI._UICorner5=GUI._UICorner2:Clone()
GUI._UIGradient5=GUI._UIGradient2:Clone()

GUI._UIStroke7=GUI._UIStroke3:Clone()
GUI._UICorner6=GUI._UICorner2:Clone()
GUI._UIGradient6=GUI._UIGradient2:Clone()

GUI._UIStroke8=GUI._UIStroke3:Clone()
GUI._UICorner7=GUI._UICorner2:Clone()
GUI._UIGradient7=GUI._UIGradient2:Clone()

GUI._UIStroke9=GUI._UIStroke3:Clone()
GUI._UICorner8=GUI._UICorner2:Clone()
GUI._UIGradient8=GUI._UIGradient2:Clone()

GUI._UIStroke10=GUI._UIStroke3:Clone()
GUI._UICorner9=GUI._UICorner2:Clone()
GUI._UIGradient9=GUI._UIGradient2:Clone()

GUI._UIStroke11=GUI._UIStroke3:Clone()
GUI._UICorner10=GUI._UICorner2:Clone()
GUI._UIGradient10=GUI._UIGradient2:Clone()

GUI._UIStroke12=GUI._UIStroke3:Clone()
GUI._UICorner11=GUI._UICorner2:Clone()
GUI._UIGradient11=GUI._UIGradient2:Clone()

GUI._UIStroke13=GUI._UIStroke3:Clone()
GUI._UICorner12=GUI._UICorner2:Clone()
GUI._UIGradient12=GUI._UIGradient2:Clone()

GUI._WalkSpeedSlider.Size = UDim2.fromScale(.5,.05)
GUI._WalkSpeedSlider.Position = UDim2.fromScale(.306,.201)
GUI._WalkSpeedSlider.BackgroundColor3 = Color3.fromRGB(90, 95, 112)
GUI._WalkSpeedSlider.Parent = GUI._Frame

GUI._UIStroke4.Parent=GUI._WalkSpeedSlider
GUI._UICorner3.Parent=GUI._WalkSpeedSlider
GUI._UIGradient3.Parent=GUI._WalkSpeedSlider

GUI._WalkSpeedSliderBar.Size = UDim2.fromScale(1,1)
GUI._WalkSpeedSliderBar.Position = UDim2.fromScale(0, 0)
GUI._WalkSpeedSliderBar.BackgroundColor3 = Color3.fromRGB(110, 137, 161)
GUI._WalkSpeedSliderBar.Parent = GUI._WalkSpeedSlider

GUI._UIStroke5.Parent=GUI._WalkSpeedSliderBar
GUI._UICorner4.Parent=GUI._WalkSpeedSliderBar

GUI._WalkSpeedSliderButton.Size = UDim2.new(0.1, 0, 1, 0)
GUI._WalkSpeedSliderButton.Position = UDim2.new(0, 0, 0, 0)
GUI._WalkSpeedSliderButton.BackgroundColor3 = Color3.fromRGB(55, 75, 130)
GUI._WalkSpeedSliderButton.Text = ""
GUI._WalkSpeedSliderButton.Name="SliderButton"
GUI._WalkSpeedSliderButton.Parent = GUI._WalkSpeedSliderBar

GUI._UIStroke6.Parent=GUI._WalkSpeedSliderButton
GUI._UICorner5.Parent=GUI._WalkSpeedSliderButton
GUI._UIGradient4.Parent=GUI._WalkSpeedSliderButton

GUI._WalkSpeedValueDisplay.BackgroundColor3=Color3.fromRGB(105,122,149)
GUI._WalkSpeedValueDisplay.BackgroundTransparency=.25
GUI._WalkSpeedValueDisplay.Position=UDim2.fromScale(1.049,0)
GUI._WalkSpeedValueDisplay.Size=UDim2.fromScale(.23,.986)
GUI._WalkSpeedValueDisplay.Text='16'
GUI._WalkSpeedValueDisplay.TextColor3=Color3.fromRGB(198,233,255)
GUI._WalkSpeedValueDisplay.TextScaled=true
GUI._WalkSpeedValueDisplay.Name='ValueDisplay'
GUI._WalkSpeedValueDisplay.Parent=GUI._WalkSpeedSlider

GUI._UIStroke7.Parent=GUI._WalkSpeedValueDisplay
GUI._UICorner6.Parent=GUI._WalkSpeedValueDisplay
GUI._UIGradient5.Parent=GUI._WalkSpeedValueDisplay

GUI._FlySlider.Size = UDim2.fromScale(.5,.05)
GUI._FlySlider.Position = UDim2.fromScale(.306,.335)
GUI._FlySlider.BackgroundColor3 = Color3.fromRGB(90, 95, 112)
GUI._FlySlider.Parent = GUI._Frame

GUI._UIStroke9.Parent=GUI._FlySlider
GUI._UICorner8.Parent=GUI._FlySlider
GUI._UIGradient8.Parent=GUI._FlySlider

GUI._FlySliderBar.Size = UDim2.fromScale(1,1)
GUI._FlySliderBar.Position = UDim2.fromScale(0, 0)
GUI._FlySliderBar.BackgroundColor3 = Color3.fromRGB(110, 137, 161)
GUI._FlySliderBar.Parent = GUI._FlySlider

GUI._UIStroke10.Parent=GUI._FlySliderBar
GUI._UICorner9.Parent=GUI._FlySliderBar

GUI._FlySliderButton.Size = UDim2.new(0.1, 0, 1, 0)
GUI._FlySliderButton.Position = UDim2.new(0, 0, 0, 0)
GUI._FlySliderButton.BackgroundColor3 = Color3.fromRGB(55, 75, 130)
GUI._FlySliderButton.Text = ""
GUI._FlySliderButton.Name="SliderButton"
GUI._FlySliderButton.Parent = GUI._FlySliderBar

GUI._UIStroke11.Parent=GUI._FlySliderButton
GUI._UICorner10.Parent=GUI._FlySliderButton
GUI._UIGradient10.Parent=GUI._FlySliderButton

GUI._FlyValueDisplay.BackgroundColor3=Color3.fromRGB(105,122,149)
GUI._FlyValueDisplay.BackgroundTransparency=.25
GUI._FlyValueDisplay.Position=UDim2.fromScale(1.049,0)
GUI._FlyValueDisplay.Size=UDim2.fromScale(.23,.986)
GUI._FlyValueDisplay.Text='16'
GUI._FlyValueDisplay.TextColor3=Color3.fromRGB(198,233,255)
GUI._FlyValueDisplay.TextScaled=true
GUI._FlyValueDisplay.Name='ValueDisplay'
GUI._FlyValueDisplay.Parent=GUI._FlySlider

GUI._UIStroke12.Parent=GUI._FlyValueDisplay
GUI._UICorner11.Parent=GUI._FlyValueDisplay
GUI._UIGradient11.Parent=GUI._FlyValueDisplay 

GUI._Minimize1.BackgroundTransparency=1
GUI._Minimize1.Position=UDim2.fromScale(.9,0)
GUI._Minimize1.Size=UDim2.fromScale(.072,.111)
GUI._Minimize1.Font=Enum.Font.FredokaOne
GUI._Minimize1.Text='— '
GUI._Minimize1.TextColor3=Color3.fromRGB(174,209,255)
GUI._Minimize1.TextSize=30
GUI._Minimize1.Parent=GUI._Frame



-- Variables

local WalkSpeedToggle = false
local FlyToggle = false

local isDraggingGui = false
local isDraggingMinimize = false
local isDragging = false

local canClick = true
local debounceTime = 0.05

local dragStartGui
local dragStartMinimize

local isMouseInsideFrame1 = false
local isMouseInsideWalkSpeedSliderButton = false
local isMouseInsideFlySliderButton = false
local isMouseInsideMinimize = false

local flying = false
local flymaxspeed = 16/16

local walkspeed = 16


-- Functions

local function UpdateWalkSpeedStatus()
	if not WalkSpeedToggle then
		GUI._WalkSpeed.TextColor3=Color3.fromRGB(179, 255, 165)
		char.Humanoid.WalkSpeed=walkspeed
		WalkSpeedToggle = true
	else
		char.Humanoid.WalkSpeed=16
		GUI._WalkSpeed.TextColor3=Color3.fromRGB(167, 220, 255)
		WalkSpeedToggle = false
	end
end

function Fly(character)
	local canstop = true
	local ctrl = {w=0,a=0,s=0,d=0}
	local lastctrl = {w=0,a=0,s=0,d=0}
	local speed = 0
	flyscript = game:GetService('RunService').Stepped:Connect(function()
		if ctrl.w == 1 or ctrl.a == 1 or ctrl.s == 1 or ctrl.d == 1 then
			speed+=1
			if speed > flymaxspeed then
				speed = flymaxspeed
			end
			wait()
		end
		if not ctrl.w == 1 and not ctrl.a == 1 and not ctrl.s == 1 and not ctrl.d == 1 then
			speed-=1
			if speed < 1 then
				speed = 1
			end
			wait()
		end
		for i,c in pairs(character:GetChildren()) do
			if c:IsA('BasePart') then
				c.Velocity = Vector3.new(0,0,0)
			end
		end
		character:SetPrimaryPartCFrame(CFrame.new(((workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.w-ctrl.s)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.d-ctrl.a,(ctrl.w-ctrl.s)*.2,0).Position) - workspace.CurrentCamera.CoordinateFrame.p))*speed)+character.PrimaryPart.Position)
		character:SetPrimaryPartCFrame(workspace.CurrentCamera.CFrame.Rotation+character.PrimaryPart.Position)
		lastctrl = {w=ctrl.w,a=ctrl.a,s=ctrl.s,d=ctrl.d}
	end)
	keydown = mouse.KeyDown:Connect(function(key)
		if key == 'w' then
			ctrl.w=1
		end
		if key == 'a' then
			ctrl.a=1
		end
		if key == 's' then
			ctrl.s=1
		end
		if key == 'd' then
			ctrl.d=1
		end
	end)
	keyup = mouse.KeyUp:Connect(function(key)
		if key == 'w' then
			ctrl.w=0
		end
		if key == 'a' then
			ctrl.a=0
		end
		if key == 's' then
			ctrl.s=0
		end
		if key == 'd' then
			ctrl.d=0
		end
	end)
end


-- Event Connections

GUI._WalkSpeed.MouseButton1Click:Connect(UpdateWalkSpeedStatus)
GUI._Fly.MouseButton1Click:Connect(function()
	flying = not flying
	wait()
	if flying then
		GUI._Fly.TextColor3=Color3.fromRGB(179, 255, 165)
		Fly(char)
	else
		GUI._Fly.TextColor3=Color3.fromRGB(167, 220, 255)
		flyscript:Disconnect()
		keydown:Disconnect()
		keyup:Disconnect()
	end
end)

-- Slider Logic

local function updateWalkSpeed(value)
	if WalkSpeedToggle then	
		char.Humanoid.WalkSpeed = value
	end
end

local function updateFlySpeed(value)
	if flying then		
		flymaxspeed = value / 16
	end
end

local function isMouseInside(button)
	local mouse = game.Players.LocalPlayer:GetMouse()
	local buttonPos = button.AbsolutePosition
	local buttonSize = button.AbsoluteSize

	return mouse.X >= buttonPos.X and mouse.X <= buttonPos.X + buttonSize.X and
		mouse.Y >= buttonPos.Y and mouse.Y <= buttonPos.Y + buttonSize.Y
end

local function createSliderLogic(sliderButton, sliderBar, updateFunc, minValue, maxValue,Type)
	local dragging = false
	local startPos
	local offsetPos

	local function move(input)
		local delta = input.Position.X - startPos.X
		local newPosition = math.clamp(offsetPos + delta, 0, sliderBar.AbsoluteSize.X - sliderButton.AbsoluteSize.X)
		sliderButton.Position = UDim2.new(0, newPosition, 0, 0)

		local value = minValue + (newPosition / (sliderBar.AbsoluteSize.X - sliderButton.AbsoluteSize.X)) * (maxValue - minValue)

		if Type=='walkspeed' then
			print(Type)
			GUI._WalkSpeedValueDisplay.Text=tostring(math.floor(value))
			walkspeed=value
			updateFunc(value)
		elseif Type=='fly' then
			print(Type)
			GUI._FlyValueDisplay.Text=tostring(math.floor(value))
			flymaxspeed=value
			updateFunc(value)
		end
	end

	sliderButton.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 and isMouseInside(sliderButton) then
			dragging = true
			startPos = input.Position
			offsetPos = sliderButton.Position.X.Offset
			move(input)
		end
	end)

	sliderButton.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			move(input)
		end
	end)

	sliderButton.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			move(input)
		end
	end)

end

createSliderLogic(GUI._WalkSpeedSliderButton, GUI._WalkSpeedSliderBar, updateWalkSpeed, 1, 100,'walkspeed')
createSliderLogic(GUI._FlySliderButton, GUI._FlySliderBar, updateFlySpeed, 1, 100,'fly')

-- Input Handling

UserInputService.InputBegan:Connect(function(input)
	if input.KeyCode==Enum.KeyCode.RightControl then
		GUI._Frame.Visible=not GUI._Frame.Visible
		GUI._Minimze.Visible=not GUI._Minimze.Visible
	end
end)

GUI._Frame1.MouseEnter:Connect(function()
	isMouseInsideFrame1=true
end)

GUI._Frame1.MouseLeave:Connect(function()
	isMouseInsideFrame1=false
end)

GUI._Minimze.MouseEnter:Connect(function()
	isMouseInsideMinimize=true
end)

GUI._Minimze.MouseLeave:Connect(function()
	isMouseInsideMinimize=false
end)

GUI._Minimize1.MouseButton1Click:Connect(function()
	GUI._Frame.Visible=not GUI._Frame.Visible
	GUI._Minimze.Visible=not GUI._Minimze.Visible
end)

UserInputService.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
		isDragging = true
	end
end)

GUI._Minimze.MouseButton1Down:Connect(function()
	isDragging = false
end)

GUI._Minimze.MouseButton1Up:Connect(function()
	if not isDragging and canClick then
		GUI._Frame.Visible=not GUI._Frame.Visible
		GUI._Minimze.Visible=not GUI._Minimze.Visible
	end
	isDragging = false
end)

UserInputService.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 and isMouseInsideMinimize then
		isDraggingMinimize = true
		dragStartMinimize = input.Position
		startPos = GUI._Minimze.Position
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if isDraggingMinimize and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStartMinimize
		GUI._Minimze.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 and input.UserInputState == Enum.UserInputState.End then
		isDraggingMinimize=false
	end
end)



UserInputService.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 and isMouseInsideFrame1 then
		isDraggingGui = true
		dragStartGui = input.Position
		startPos = GUI._Frame.Position
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if isDraggingGui and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStartGui
		GUI._Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		isDraggingGui = false
	end
end)