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
	_MainContainer = Instance.new("Frame"),
	_ScriptsContainer = Instance.new("ScrollingFrame"),
	_SettingsContainer = Instance.new("ScrollingFrame"),
	_Main = Instance.new("TextButton"),
	_Scripts = Instance.new("TextButton"),
	_Settings = Instance.new("ImageButton"),
	
	--Frames
	_BackgroundColorDisplay = Instance.new('Frame'),

	--Buttons
	_WalkSpeed = Instance.new("TextButton"),
	_Fly = Instance.new("TextButton"),
	_AzureModded = Instance.new("TextButton"),

	--TextLabels
	_Game1 = Instance.new("TextLabel"),
	_Settings1 = Instance.new("TextLabel"),
	_Settings2 = Instance.new("TextLabel"),
	_Status1 = Instance.new('TextLabel'),
	_RedLabel = Instance.new("TextLabel"),
	_GreenLabel = Instance.new("TextLabel"),
	_BlueLabel = Instance.new('TextLabel'),
	_HueLabel = Instance.new("TextLabel"),
	_SatLabel = Instance.new("TextLabel"),
	_ValLabel = Instance.new('TextLabel'),
	_BackgroundColorDisplayLabel = Instance.new('TextLabel'),

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

	--WalkSpeed Slider
	_WalkSpeedSlider = Instance.new("Frame"),
	_WalkSpeedSliderBar = Instance.new("Frame"),
	_WalkSpeedSliderButton = Instance.new("TextButton"),
	_WalkSpeedValueDisplay = Instance.new("TextLabel"),

	--Fly Slider
	_FlySlider = Instance.new("Frame"),
	_FlySliderBar = Instance.new("Frame"),
	_FlySliderButton = Instance.new("TextButton"),
	_FlyValueDisplay = Instance.new("TextLabel"),
	
	--Colorpicker
	_ColorPicker = Instance.new("Frame"),
	_ColorPickerMain = Instance.new("Frame"),
	_ColorPickerSelectedColor = Instance.new("Frame"),
	_ColorStatNumbers = Instance.new("Frame"),
	_ColorBlock = Instance.new("ImageLabel"),
	_ColorValueBlock = Instance.new("ImageLabel"),
	_ColorBlockPicker = Instance.new("Frame"),
	_ColorValuePicker = Instance.new("Frame"),
	_ColorPickerButton = Instance.new("TextButton"),
	_ColorRedVal = Instance.new("TextLabel"),
	_ColorGreenVal = Instance.new("TextLabel"),
	_ColorBlueVal = Instance.new("TextLabel"),
	_ColorHueVal = Instance.new("TextLabel"),
	_ColorSatVal = Instance.new("TextLabel"),
	_ColorValVal = Instance.new("TextLabel"),
	_ColorHexVal = Instance.new("TextBox"),
	
	--UIPaddings
	_UIPadding = Instance.new('UIPadding'),
	
	--UIAspectRatioConstraints
	_UIARC = Instance.new('UIAspectRatioConstraint')
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
GUI._ScreenGui.Parent = plr.PlayerGui

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

GUI._MainContainer.AnchorPoint=Vector2.new(.5,.5)
GUI._MainContainer.BackgroundTransparency=1
GUI._MainContainer.Position=UDim2.fromScale(.5,.5)
GUI._MainContainer.Size=UDim2.fromScale(1,1)
GUI._MainContainer.Name="MainContainer"
GUI._MainContainer.Parent=GUI._Frame

GUI._ScriptsContainer.BackgroundTransparency=1
GUI._ScriptsContainer.Position=UDim2.fromScale(0,.12)
GUI._ScriptsContainer.Size=UDim2.fromScale(1,.88)
GUI._ScriptsContainer.CanvasSize=UDim2.fromScale(0,5)
GUI._ScriptsContainer.Name="ScriptsContainer"
GUI._ScriptsContainer.ScrollBarThickness=0
GUI._ScriptsContainer.ScrollBarImageTransparency=1
GUI._ScriptsContainer.Visible=false
GUI._ScriptsContainer.Parent=GUI._Frame

GUI._SettingsContainer.BackgroundTransparency=1
GUI._SettingsContainer.Position=UDim2.fromScale(0,.12)
GUI._SettingsContainer.Size=UDim2.fromScale(1,.88)
GUI._SettingsContainer.CanvasSize=UDim2.fromScale(0,5)
GUI._SettingsContainer.Name="SettingsContainer"
GUI._SettingsContainer.ScrollBarThickness=0
GUI._SettingsContainer.ScrollBarImageTransparency=1
GUI._SettingsContainer.Visible=false
GUI._SettingsContainer.Parent=GUI._Frame

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
GUI._WalkSpeed.Parent = GUI._MainContainer

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
GUI._Fly.Parent = GUI._MainContainer

GUI._UICorner2.CornerRadius = UDim.new(1, 0)
GUI._UICorner2.Parent = GUI._Fly

GUI._UIGradient2.Color = ColorSequence.new({ColorSequenceKeypoint1, ColorSequenceKeypoint2})
GUI._UIGradient2.Rotation = 45
GUI._UIGradient2.Parent = GUI._Fly

GUI._UIStroke3.Color = Color3.fromRGB(51, 49, 81)
GUI._UIStroke3.Thickness = 2
GUI._UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
GUI._UIStroke3.Parent = GUI._Fly

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

GUI._UIStroke14=GUI._UIStroke3:Clone()
GUI._UICorner13=GUI._UICorner2:Clone()
GUI._UIGradient13=GUI._UIGradient2:Clone()

GUI._UIStroke15=GUI._UIStroke3:Clone()
GUI._UICorner14=GUI._UICorner2:Clone()
GUI._UIGradient14=GUI._UIGradient2:Clone()

GUI._UIStroke16=GUI._UIStroke3:Clone()
GUI._UICorner15=GUI._UICorner2:Clone()
GUI._UIGradient15=GUI._UIGradient2:Clone()

GUI._UIStroke17=GUI._UIStroke3:Clone()
GUI._UICorner16=GUI._UICorner2:Clone()
GUI._UIGradient16=GUI._UIGradient2:Clone()

GUI._UIStroke18=GUI._UIStroke3:Clone()
GUI._UICorner17=GUI._UICorner2:Clone()
GUI._UIGradient17=GUI._UIGradient2:Clone()

GUI._UIStroke19=GUI._UIStroke3:Clone()
GUI._UICorner18=GUI._UICorner2:Clone()
GUI._UIGradient18=GUI._UIGradient2:Clone()

GUI._UIStroke20=GUI._UIStroke3:Clone()
GUI._UICorner19=GUI._UICorner2:Clone()
GUI._UIGradient19=GUI._UIGradient2:Clone()

GUI._UIStroke21=GUI._UIStroke3:Clone()
GUI._UICorner20=GUI._UICorner2:Clone()
GUI._UIGradient20=GUI._UIGradient2:Clone()

GUI._UIStroke22=GUI._UIStroke3:Clone()
GUI._UICorner21=GUI._UICorner2:Clone()
GUI._UIGradient21=GUI._UIGradient2:Clone()

GUI._UIStroke23=GUI._UIStroke3:Clone()
GUI._UICorner22=GUI._UICorner2:Clone()
GUI._UIGradient22=GUI._UIGradient2:Clone()

GUI._UIStroke24=GUI._UIStroke3:Clone()
GUI._UICorner23=GUI._UICorner2:Clone()
GUI._UIGradient23=GUI._UIGradient2:Clone()

GUI._UIStroke25=GUI._UIStroke3:Clone()
GUI._UICorner24=GUI._UICorner2:Clone()
GUI._UIGradient24=GUI._UIGradient2:Clone()

GUI._UIStroke26=GUI._UIStroke3:Clone()
GUI._UICorner25=GUI._UICorner2:Clone()
GUI._UIGradient25=GUI._UIGradient2:Clone()

GUI._UIStroke27=GUI._UIStroke3:Clone()
GUI._UICorner26=GUI._UICorner2:Clone()
GUI._UIGradient26=GUI._UIGradient2:Clone()

GUI._UIStroke28=GUI._UIStroke3:Clone()
GUI._UICorner27=GUI._UICorner2:Clone()
GUI._UIGradient27=GUI._UIGradient2:Clone()

GUI._UIStroke29=GUI._UIStroke3:Clone()
GUI._UICorner28=GUI._UICorner2:Clone()
GUI._UIGradient28=GUI._UIGradient2:Clone()

GUI._UIStroke30=GUI._UIStroke3:Clone()
GUI._UICorner29=GUI._UICorner2:Clone()
GUI._UIGradient29=GUI._UIGradient2:Clone()

GUI._UIStroke31=GUI._UIStroke3:Clone()
GUI._UICorner30=GUI._UICorner2:Clone()
GUI._UIGradient30=GUI._UIGradient2:Clone()

GUI._UIStroke32=GUI._UIStroke3:Clone()
GUI._UICorner31=GUI._UICorner2:Clone()
GUI._UIGradient31=GUI._UIGradient2:Clone()

GUI._UIStroke33=GUI._UIStroke3:Clone()
GUI._UICorner32=GUI._UICorner2:Clone()
GUI._UIGradient32=GUI._UIGradient2:Clone()

GUI._UIStroke34=GUI._UIStroke3:Clone()
GUI._UICorner33=GUI._UICorner2:Clone()
GUI._UIGradient33=GUI._UIGradient2:Clone()

GUI._UIStroke35=GUI._UIStroke3:Clone()
GUI._UICorner34=GUI._UICorner2:Clone()
GUI._UIGradient34=GUI._UIGradient2:Clone()

GUI._UIStroke36=GUI._UIStroke3:Clone()
GUI._UICorner35=GUI._UICorner2:Clone()
GUI._UIGradient35=GUI._UIGradient2:Clone()

GUI._UIStroke37=GUI._UIStroke3:Clone()
GUI._UICorner36=GUI._UICorner2:Clone()
GUI._UIGradient36=GUI._UIGradient2:Clone()

GUI._UIStroke38=GUI._UIStroke3:Clone()
GUI._UICorner37=GUI._UICorner2:Clone()
GUI._UIGradient37=GUI._UIGradient2:Clone()

GUI._UIStroke39=GUI._UIStroke3:Clone()
GUI._UICorner38=GUI._UICorner2:Clone()
GUI._UIGradient38=GUI._UIGradient2:Clone()

GUI._UIStroke40=GUI._UIStroke3:Clone()
GUI._UICorner39=GUI._UICorner2:Clone()
GUI._UIGradient39=GUI._UIGradient2:Clone()

GUI._UIStroke41=GUI._UIStroke3:Clone()
GUI._UICorner40=GUI._UICorner2:Clone()
GUI._UIGradient40=GUI._UIGradient2:Clone()

GUI._UIStroke42=GUI._UIStroke3:Clone()
GUI._UICorner41=GUI._UICorner2:Clone()
GUI._UIGradient41=GUI._UIGradient2:Clone()

GUI._UIStroke43=GUI._UIStroke3:Clone()
GUI._UICorner42=GUI._UICorner2:Clone()
GUI._UIGradient42=GUI._UIGradient2:Clone()

GUI._UIStroke44=GUI._UIStroke3:Clone()
GUI._UICorner43=GUI._UICorner2:Clone()
GUI._UIGradient43=GUI._UIGradient2:Clone()

GUI._UIStroke45=GUI._UIStroke3:Clone()
GUI._UICorner44=GUI._UICorner2:Clone()
GUI._UIGradient44=GUI._UIGradient2:Clone()

GUI._UIStroke46=GUI._UIStroke3:Clone()
GUI._UICorner45=GUI._UICorner2:Clone()
GUI._UIGradient45=GUI._UIGradient2:Clone()

GUI._UIStroke47=GUI._UIStroke3:Clone()
GUI._UICorner46=GUI._UICorner2:Clone()
GUI._UIGradient46=GUI._UIGradient2:Clone()

GUI._UIStroke48=GUI._UIStroke3:Clone()
GUI._UICorner47=GUI._UICorner2:Clone()
GUI._UIGradient47=GUI._UIGradient2:Clone()

GUI._UIStroke49=GUI._UIStroke3:Clone()
GUI._UICorner48=GUI._UICorner2:Clone()
GUI._UIGradient48=GUI._UIGradient2:Clone()

GUI._UIStroke50=GUI._UIStroke3:Clone()
GUI._UICorner49=GUI._UICorner2:Clone()
GUI._UIGradient49=GUI._UIGradient2:Clone()

GUI._WalkSpeedSlider.Size = UDim2.fromScale(.5,.05)
GUI._WalkSpeedSlider.Position = UDim2.fromScale(.306,.201)
GUI._WalkSpeedSlider.BackgroundColor3 = Color3.fromRGB(90, 95, 112)
GUI._WalkSpeedSlider.Parent = GUI._MainContainer

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
GUI._FlySlider.Parent = GUI._MainContainer

GUI._UIStroke9.Parent=GUI._FlySlider
GUI._UICorner8.Parent=GUI._FlySlider
GUI._UIGradient8.Parent=GUI._FlySlider

GUI._FlySliderBar.Size = UDim2.fromScale(1,1)
GUI._FlySliderBar.Position = UDim2.fromScale(0, 0)
GUI._FlySliderBar.BackgroundColor3 = Color3.fromRGB(110, 137, 161)
GUI._FlySliderBar.Parent = GUI._FlySlider

GUI._FlyValueDisplay.BackgroundColor3=Color3.fromRGB(105,122,149)
GUI._FlyValueDisplay.BackgroundTransparency=.25
GUI._FlyValueDisplay.Position=UDim2.fromScale(1.049,0)
GUI._FlyValueDisplay.Size=UDim2.fromScale(.23,.986)
GUI._FlyValueDisplay.Text='16'
GUI._FlyValueDisplay.TextColor3=Color3.fromRGB(198,233,255)
GUI._FlyValueDisplay.TextScaled=true
GUI._FlyValueDisplay.Name='ValueDisplay'
GUI._FlyValueDisplay.Parent=GUI._FlySlider

GUI._UIStroke10.Parent=GUI._FlySliderBar
GUI._UICorner9.Parent=GUI._FlySliderBar

GUI._Transparency=GUI._Fly:Clone()
GUI._Transparency.Name='Transparency'
GUI._Transparency.Position=UDim2.fromScale(.018,.03)
GUI._Transparency.Size=UDim2.fromScale(.26,.02)
GUI._Transparency.Text='Transparency'
GUI._Transparency.Parent=GUI._SettingsContainer

GUI._TransparencySlider=GUI._FlySlider:Clone()
GUI._TransparencySlider.ValueDisplay.Text='1'
GUI._TransparencySlider.Position=UDim2.fromScale(.3,.036)
GUI._TransparencySlider.Size=UDim2.fromScale(.5,.009)
GUI._TransparencySlider.Parent=GUI._SettingsContainer

GUI._TransparencySliderBar=GUI._FlySliderBar:Clone()
GUI._TransparencySliderBar.Size = UDim2.fromScale(1,1)
GUI._TransparencySliderBar.Position = UDim2.fromScale(0, 0)
GUI._TransparencySliderBar.BackgroundColor3 = Color3.fromRGB(110, 137, 161)
GUI._TransparencySliderBar.Parent = GUI._TransparencySlider

GUI._TransparencySliderButton=GUI._FlySliderButton:Clone()
GUI._TransparencySliderButton.Size = UDim2.new(0.1, 0, 1, 0)
GUI._TransparencySliderButton.Position = UDim2.new(0, 0, 0, 0)
GUI._TransparencySliderButton.BackgroundColor3 = Color3.fromRGB(55, 75, 130)
GUI._TransparencySliderButton.Text = ""
GUI._TransparencySliderButton.Name="SliderButton"
GUI._TransparencySliderButton.Parent = GUI._TransparencySlider

GUI._UIStroke19.Parent=GUI._TransparencySliderButton
GUI._UICorner16.Parent=GUI._TransparencySliderButton
GUI._UIGradient18.Parent=GUI._TransparencySliderButton

GUI._TransparencyValueDisplay=GUI._FlyValueDisplay:Clone()
GUI._TransparencyValueDisplay.BackgroundColor3=Color3.fromRGB(105,122,149)
GUI._TransparencyValueDisplay.BackgroundTransparency=.25
GUI._TransparencyValueDisplay.Position=UDim2.fromScale(1.049,0)
GUI._TransparencyValueDisplay.Size=UDim2.fromScale(.23,.986)
GUI._TransparencyValueDisplay.Text='16'
GUI._TransparencyValueDisplay.TextColor3=Color3.fromRGB(198,233,255)
GUI._TransparencyValueDisplay.TextScaled=true
GUI._TransparencyValueDisplay.Name='ValueDisplay'
GUI._TransparencyValueDisplay.Parent=GUI._TransparencySlider

GUI._FlySliderButton.Size = UDim2.new(0.1, 0, 1, 0)
GUI._FlySliderButton.Position = UDim2.new(0, 0, 0, 0)
GUI._FlySliderButton.BackgroundColor3 = Color3.fromRGB(55, 75, 130)
GUI._FlySliderButton.Text = ""
GUI._FlySliderButton.Name="SliderButton"
GUI._FlySliderButton.Parent = GUI._FlySliderBar

GUI._UIStroke20.Parent=GUI._FlySliderButton
GUI._UICorner17.Parent=GUI._FlySliderButton
GUI._UIGradient19.Parent=GUI._FlySliderButton

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

GUI._UITSC2=GUI._UITSC1:Clone()
GUI._UITSC3=GUI._UITSC1:Clone()
GUI._UITSC4=GUI._UITSC1:Clone()
GUI._UITSC5=GUI._UITSC1:Clone()
GUI._UITSC6=GUI._UITSC1:Clone()
GUI._UITSC7=GUI._UITSC1:Clone()
GUI._UITSC8=GUI._UITSC1:Clone()
GUI._UITSC9=GUI._UITSC1:Clone()
GUI._UITSC10=GUI._UITSC1:Clone()

GUI._Main.BackgroundColor3=Color3.fromRGB(82, 97, 118)
GUI._Main.BackgroundTransparency=.25
GUI._Main.Position=UDim2.fromScale(.356,0)
GUI._Main.Size=UDim2.fromScale(.093,.12)
GUI._Main.Font=Enum.Font.FredokaOne
GUI._Main.Text='Main'
GUI._Main.TextColor3=Color3.fromRGB(198,233,255)
GUI._Main.TextScaled=true
GUI._Main.Parent=GUI._Frame

GUI._Settings.Image='rbxassetid://11956055886'
GUI._Settings.BackgroundColor3=Color3.fromRGB(82, 97, 118)
GUI._Settings.BackgroundTransparency=.25
GUI._Settings.Position=UDim2.fromScale(.8,0)
GUI._Settings.Size=UDim2.fromScale(.07,.123)
GUI._Settings.Parent=GUI._Frame

GUI._UIStroke13.Parent=GUI._Main
GUI._UIGradient12.Parent=GUI._Main 
GUI._UITSC2.Parent=GUI._Main

GUI._Scripts.BackgroundColor3=Color3.fromRGB(82, 97, 118)
GUI._Scripts.BackgroundTransparency=.25
GUI._Scripts.Position=UDim2.fromScale(.453,0)
GUI._Scripts.Size=UDim2.fromScale(.093,.12)
GUI._Scripts.Font=Enum.Font.FredokaOne
GUI._Scripts.Text='Scripts'
GUI._Scripts.TextColor3=Color3.fromRGB(198,233,255)
GUI._Scripts.TextScaled=true
GUI._Scripts.Parent=GUI._Frame

GUI._UIStroke14.Parent=GUI._Scripts
GUI._UIGradient13.Parent=GUI._Scripts 
GUI._UITSC3.Parent=GUI._Scripts

GUI._Game1.BackgroundTransparency=1
GUI._Game1.Position=UDim2.fromScale(.018,.005)
GUI._Game1.Size=UDim2.fromScale(.5,.02)
GUI._Game1.Font=Enum.Font.FredokaOne
GUI._Game1.Text="Any"
GUI._Game1.TextColor3=Color3.fromRGB(155,182,255)
GUI._Game1.TextScaled=true
GUI._Game1.Parent=GUI._ScriptsContainer

GUI._Game2=GUI._Game1:Clone()
GUI._Game3=GUI._Game1:Clone()

GUI._Game2.Position=UDim2.fromScale(.018,.058)
GUI._Game2.Text="Da Hood"
GUI._Game2.Parent=GUI._ScriptsContainer

GUI._Game3.Position=UDim2.fromScale(.018,.11)
GUI._Game3.Text="Murder Mystery 2"
GUI._Game3.Parent=GUI._ScriptsContainer

GUI._AzureModded.BackgroundColor3=Color3.fromRGB(100,114,145)
GUI._AzureModded.Position=UDim2.fromScale(.018,.083)
GUI._AzureModded.Size=UDim2.fromScale(.431,.02)
GUI._AzureModded.Font=Enum.Font.FredokaOne
GUI._AzureModded.Text="Azure Modded"
GUI._AzureModded.Name="Azure Modded"
GUI._AzureModded.TextColor3=Color3.fromRGB(167,220,255)
GUI._AzureModded.TextScaled=true
GUI._AzureModded.Parent=GUI._ScriptsContainer

GUI._HighlightHub=GUI._AzureModded:Clone()
GUI._InfiniteYield=GUI._AzureModded:Clone()
GUI._Yarhm=GUI._AzureModded:Clone()

GUI._Status1.BackgroundTransparency=1
GUI._Status1.Position=UDim2.fromScale(1.05,0)
GUI._Status1.Size=UDim2.fromScale(.374,1)
GUI._Status1.Font=Enum.Font.FredokaOne
GUI._Status1.Text="🟢  Keyless"
GUI._Status1.TextColor3=Color3.fromRGB(155,182,255)
GUI._Status1.TextScaled=true

GUI._Status1.Parent=GUI._AzureModded
GUI._Status2=GUI._Status1:Clone()
GUI._Status3=GUI._Status1:Clone()
GUI._Status4=GUI._Status1:Clone()

GUI._HighlightHub.Position=UDim2.fromScale(.018,.135)
GUI._HighlightHub.Text="Highlight Hub"
GUI._HighlightHub.Name="Highlight Hub"
GUI._HighlightHub.Parent=GUI._ScriptsContainer

GUI._Status2.Position=UDim2.fromScale(1.05,0)
GUI._Status2.Size=UDim2.fromScale(.853,1)
GUI._Status2.Text="🟡 Key: hlvipcomingsoon"
GUI._Status2.Parent=GUI._HighlightHub

GUI._InfiniteYield.Position=UDim2.fromScale(.018,.032)
GUI._InfiniteYield.Text="Infinite Yield"
GUI._InfiniteYield.Name="Infinite Yield"
GUI._InfiniteYield.Parent=GUI._ScriptsContainer

GUI._Status3.Position=UDim2.fromScale(1.05,0)
GUI._Status3.Text="🟢  Keyless"
GUI._Status3.Parent=GUI._InfiniteYield
GUI._Yarhm.Position=UDim2.fromScale(.018,.16)
GUI._Yarhm.Text="Yarhm"
GUI._Yarhm.Name="Yarhm"
GUI._Yarhm.Parent=GUI._ScriptsContainer

GUI._Status4.Position=UDim2.fromScale(1.05,0)
GUI._Status4.Text="🟢  Keyless"
GUI._Status4.Parent=GUI._Yarhm
GUI._UICorner12.Parent=GUI._AzureModded
GUI._UIStroke15.Parent=GUI._AzureModded
GUI._UIGradient14.Parent=GUI._AzureModded 
GUI._UITSC4.Parent=GUI._AzureModded

GUI._UICorner13.Parent=GUI._HighlightHub
GUI._UIStroke16.Parent=GUI._HighlightHub
GUI._UIGradient15.Parent=GUI._HighlightHub 
GUI._UITSC5.Parent=GUI._HighlightHub

GUI._UICorner14.Parent=GUI._InfiniteYield
GUI._UIStroke17.Parent=GUI._InfiniteYield
GUI._UIGradient16.Parent=GUI._InfiniteYield 
GUI._UITSC6.Parent=GUI._InfiniteYield

GUI._UICorner15.Parent=GUI._Yarhm
GUI._UIStroke18.Parent=GUI._Yarhm
GUI._UIGradient17.Parent=GUI._Yarhm 
GUI._UITSC7.Parent=GUI._Yarhm

GUI._Settings1.BackgroundTransparency=1
GUI._Settings1.Position=UDim2.fromScale(.018,.005)
GUI._Settings1.Size=UDim2.fromScale(.5,.02)
GUI._Settings1.Font=Enum.Font.FredokaOne
GUI._Settings1.Text='GUI'
GUI._Settings1.TextColor3=Color3.fromRGB(155,182,255)
GUI._Settings1.TextScaled=true
GUI._Settings1.TextXAlignment=Enum.TextXAlignment.Left
GUI._Settings1.Parent=GUI._SettingsContainer

GUI._ColorPicker.BackgroundColor3=Color3.fromRGB(90,95,112)
GUI._ColorPicker.Position=UDim2.fromScale(.596,.199)
GUI._ColorPicker.Size=UDim2.fromScale(.374,.747)
GUI._ColorPicker.Visible=false
GUI._ColorPicker.Parent=GUI._Frame

GUI._ColorPickerMain.BackgroundColor3=Color3.fromRGB(90,95,112)
GUI._ColorPickerMain.BackgroundTransparency=1
GUI._ColorPickerMain.Position=UDim2.fromScale(0,-.021)
GUI._ColorPickerMain.Size=UDim2.fromScale(1,1)
GUI._ColorPickerMain.ZIndex=2
GUI._ColorPickerMain.ClipsDescendants=true
GUI._ColorPickerMain.Parent=GUI._ColorPicker

GUI._ColorPickerSelectedColor.Position=UDim2.fromScale(.073,.711)
GUI._ColorPickerSelectedColor.Size=UDim2.fromScale(.123,.169)
GUI._ColorPickerSelectedColor.BackgroundColor3=Color3.fromRGB(90, 95, 112)
GUI._ColorPickerSelectedColor.ZIndex=2
GUI._ColorPickerSelectedColor.ClipsDescendants=true
GUI._ColorPickerSelectedColor.Parent=GUI._ColorPickerMain

GUI._ColorStatNumbers.BackgroundColor3=Color3.fromRGB(207,207,207)
GUI._ColorStatNumbers.BackgroundTransparency=1
GUI._ColorStatNumbers.Position=UDim2.fromScale(0,0)
GUI._ColorStatNumbers.Size=UDim2.fromScale(1,1)
GUI._ColorStatNumbers.ZIndex=2
GUI._ColorStatNumbers.ClipsDescendants=true
GUI._ColorStatNumbers.Parent=GUI._ColorPickerMain

GUI._ColorHexVal.Text='#ffffff'
GUI._ColorHexVal.TextColor3=Color3.fromRGB(255, 255, 255)
GUI._ColorHexVal.TextScaled=true
GUI._ColorHexVal.TextXAlignment=Enum.TextXAlignment.Left
GUI._ColorHexVal.Font=Enum.Font.FredokaOne
GUI._ColorHexVal.BackgroundTransparency=.8
GUI._ColorHexVal.BackgroundColor3=Color3.fromRGB(0,0,0)
GUI._ColorHexVal.Position=UDim2.fromScale(.247,.958)
GUI._ColorHexVal.SelectionStart=-1
GUI._ColorHexVal.Size=UDim2.fromScale(.669,.038)
GUI._ColorHexVal.Parent=GUI._ColorStatNumbers

GUI._ColorRedVal.Text=0
GUI._ColorRedVal.TextColor3=Color3.fromRGB(255, 255, 255)
GUI._ColorRedVal.TextScaled=true
GUI._ColorRedVal.TextXAlignment=Enum.TextXAlignment.Left
GUI._ColorRedVal.Font=Enum.Font.FredokaOne
GUI._ColorRedVal.BackgroundTransparency=.8
GUI._ColorRedVal.BackgroundColor3=Color3.fromRGB(0,0,0)
GUI._ColorRedVal.Position=UDim2.fromScale(.247,.738)
GUI._ColorRedVal.Size=UDim2.fromScale(.199,.051)
GUI._ColorRedVal.ClipsDescendants=true
GUI._ColorRedVal.Parent=GUI._ColorStatNumbers

GUI._ColorGreenVal.Text=0
GUI._ColorGreenVal.TextColor3=Color3.fromRGB(255, 255, 255)
GUI._ColorGreenVal.TextScaled=true
GUI._ColorGreenVal.TextXAlignment=Enum.TextXAlignment.Left
GUI._ColorGreenVal.Font=Enum.Font.FredokaOne
GUI._ColorGreenVal.BackgroundTransparency=.8
GUI._ColorGreenVal.BackgroundColor3=Color3.fromRGB(0,0,0)
GUI._ColorGreenVal.Position=UDim2.fromScale(.479,.738)
GUI._ColorGreenVal.Size=UDim2.fromScale(.199,.051)
GUI._ColorGreenVal.ClipsDescendants=true
GUI._ColorGreenVal.Parent=GUI._ColorStatNumbers

GUI._ColorBlueVal.Text=0
GUI._ColorBlueVal.TextColor3=Color3.fromRGB(255, 255, 255)
GUI._ColorBlueVal.TextScaled=true
GUI._ColorBlueVal.TextXAlignment=Enum.TextXAlignment.Left
GUI._ColorBlueVal.Font=Enum.Font.FredokaOne
GUI._ColorBlueVal.BackgroundTransparency=.8
GUI._ColorBlueVal.BackgroundColor3=Color3.fromRGB(0,0,0)
GUI._ColorBlueVal.Position=UDim2.fromScale(.716,.738)
GUI._ColorBlueVal.Size=UDim2.fromScale(.199,.051)
GUI._ColorBlueVal.ClipsDescendants=true
GUI._ColorBlueVal.Parent=GUI._ColorStatNumbers

GUI._ColorHueVal.Text=0
GUI._ColorHueVal.TextColor3=Color3.fromRGB(255, 255, 255)
GUI._ColorHueVal.TextScaled=true
GUI._ColorHueVal.TextXAlignment=Enum.TextXAlignment.Left
GUI._ColorHueVal.Font=Enum.Font.FredokaOne
GUI._ColorHueVal.BackgroundTransparency=.8
GUI._ColorHueVal.BackgroundColor3=Color3.fromRGB(0,0,0)
GUI._ColorHueVal.Position=UDim2.fromScale(.247,.848)
GUI._ColorHueVal.Size=UDim2.fromScale(.199,.051)
GUI._ColorHueVal.ClipsDescendants=true
GUI._ColorHueVal.Parent=GUI._ColorStatNumbers

GUI._ColorSatVal.Text=0
GUI._ColorSatVal.TextColor3=Color3.fromRGB(255, 255, 255)
GUI._ColorSatVal.TextScaled=true
GUI._ColorSatVal.TextXAlignment=Enum.TextXAlignment.Left
GUI._ColorSatVal.Font=Enum.Font.FredokaOne
GUI._ColorSatVal.BackgroundTransparency=.8
GUI._ColorSatVal.BackgroundColor3=Color3.fromRGB(0,0,0)
GUI._ColorSatVal.Position=UDim2.fromScale(.479,.848)
GUI._ColorSatVal.Size=UDim2.fromScale(.199,.051)
GUI._ColorSatVal.ClipsDescendants=true
GUI._ColorSatVal.Parent=GUI._ColorStatNumbers

GUI._ColorValVal.Text=0
GUI._ColorValVal.TextColor3=Color3.fromRGB(255, 255, 255)
GUI._ColorValVal.TextScaled=true
GUI._ColorValVal.TextXAlignment=Enum.TextXAlignment.Left
GUI._ColorValVal.Font=Enum.Font.FredokaOne
GUI._ColorValVal.BackgroundTransparency=.8
GUI._ColorValVal.BackgroundColor3=Color3.fromRGB(0,0,0)
GUI._ColorValVal.Position=UDim2.fromScale(.716,.848)
GUI._ColorValVal.Size=UDim2.fromScale(.199,.051)
GUI._ColorValVal.ClipsDescendants=true
GUI._ColorValVal.Parent=GUI._ColorStatNumbers

GUI._ColorBlock.Image='rbxassetid://17073799681'
GUI._ColorBlock.Position=UDim2.fromScale(.062,.063)
GUI._ColorBlock.Size=UDim2.fromScale(.635,.565)
GUI._ColorBlock.Parent=GUI._ColorPickerMain

GUI._ColorValueBlock.Image='rbxassetid://17073827687'
GUI._ColorValueBlock.Position=UDim2.fromScale(.849,.063)
GUI._ColorValueBlock.Size=UDim2.fromScale(.081,.565)
GUI._ColorValueBlock.Parent=GUI._ColorPickerMain

GUI._ColorBlockPicker.AnchorPoint=Vector2.new(.5,.5)
GUI._ColorBlockPicker.BackgroundColor3=Color3.fromRGB(97,97,97)
GUI._ColorBlockPicker.Position=UDim2.fromScale(.5,1)
GUI._ColorBlockPicker.Size=UDim2.fromScale(.037,.037)
GUI._ColorBlockPicker.Parent=GUI._ColorBlock

GUI._ColorValuePicker.AnchorPoint=Vector2.new(.5,.5)
GUI._ColorValuePicker.BackgroundColor3=Color3.fromRGB(97,97,97)
GUI._ColorValuePicker.Position=UDim2.fromScale(.5,0)
GUI._ColorValuePicker.Size=UDim2.fromScale(1.471,.037)
GUI._ColorValuePicker.Parent=GUI._ColorValueBlock

GUI._UICorner21.CornerRadius=UDim.new(.075,0)
GUI._UICorner21.Parent=GUI._ColorPicker
GUI._UIStroke20.Parent=GUI._ColorPicker
GUI._UIGradient20.Parent=GUI._ColorPicker

GUI._UIPadding.PaddingLeft=UDim.new(0,4)
GUI._UIPadding1=GUI._UIPadding:Clone()
GUI._UIPadding2=GUI._UIPadding:Clone()
GUI._UIPadding3=GUI._UIPadding:Clone()
GUI._UIPadding4=GUI._UIPadding:Clone()
GUI._UIPadding5=GUI._UIPadding:Clone()
GUI._UIPadding6=GUI._UIPadding:Clone()
GUI._UIPadding7=GUI._UIPadding:Clone()
GUI._UIPadding8=GUI._UIPadding:Clone()
GUI._UIPadding9=GUI._UIPadding:Clone()
GUI._UIPadding10=GUI._UIPadding:Clone()
GUI._UIPadding11=GUI._UIPadding:Clone()
GUI._UIPadding12=GUI._UIPadding:Clone()
GUI._UIPadding13=GUI._UIPadding:Clone()
GUI._UIPadding14=GUI._UIPadding:Clone()
GUI._UIPadding15=GUI._UIPadding:Clone()

GUI._UICorner22.CornerRadius=UDim.new(.0,0)
GUI._UIStroke21.Thickness=0
GUI._UICorner22.Parent=GUI._ColorPickerMain
GUI._UIStroke21.Parent=GUI._ColorPickerMain
GUI._UIGradient21.Parent=GUI._ColorPickerMain

GUI._UICorner22.CornerRadius=UDim.new(.0,0)
GUI._UICorner23.Parent=GUI._ColorPickerSelectedColor
GUI._UIStroke22.Parent=GUI._ColorPickerSelectedColor
GUI._UIGradient22.Parent=GUI._ColorPickerSelectedColor

GUI._UICorner25.Parent=GUI._ColorHexVal
GUI._UIStroke24.Parent=GUI._ColorHexVal
GUI._UIGradient24.Parent=GUI._ColorHexVal
GUI._UIPadding.Parent=GUI._ColorHexVal

GUI._UICorner26.Parent=GUI._ColorBlueVal
GUI._UIStroke25.Parent=GUI._ColorBlueVal
GUI._UIGradient25.Parent=GUI._ColorBlueVal
GUI._UIPadding1.Parent=GUI._ColorBlueVal

GUI._UICorner27.Parent=GUI._ColorRedVal
GUI._UIStroke26.Parent=GUI._ColorRedVal
GUI._UIGradient26.Parent=GUI._ColorRedVal
GUI._UIPadding2.Parent=GUI._ColorRedVal

GUI._UICorner28.Parent=GUI._ColorGreenVal
GUI._UIStroke27.Parent=GUI._ColorGreenVal
GUI._UIGradient27.Parent=GUI._ColorGreenVal
GUI._UIPadding3.Parent=GUI._ColorGreenVal

GUI._UICorner29.Parent=GUI._ColorSatVal
GUI._UIStroke28.Parent=GUI._ColorSatVal
GUI._UIGradient28.Parent=GUI._ColorSatVal
GUI._UIPadding4.Parent=GUI._ColorSatVal

GUI._UICorner24.Parent=GUI._ColorHueVal
GUI._UIStroke23.Parent=GUI._ColorHueVal
GUI._UIGradient23.Parent=GUI._ColorHueVal
GUI._UIPadding5.Parent=GUI._ColorHueVal

GUI._UICorner30.Parent=GUI._ColorValVal
GUI._UIStroke29.Parent=GUI._ColorValVal
GUI._UIGradient29.Parent=GUI._ColorValVal
GUI._UIPadding6.Parent=GUI._ColorValVal

GUI._UICorner31.CornerRadius=UDim.new(.075,0)
GUI._UICorner31.Parent=GUI._ColorBlock
GUI._UIStroke30.Parent=GUI._ColorBlock
GUI._UIGradient30.Parent=GUI._ColorBlock

GUI._UICorner32.Parent=GUI._ColorValueBlock
GUI._UIStroke31.Parent=GUI._ColorValueBlock
GUI._UIGradient31.Parent=GUI._ColorValueBlock

GUI._UICorner33.Parent=GUI._ColorValuePicker
GUI._UIStroke32.Parent=GUI._ColorValuePicker
GUI._UIGradient32.Parent=GUI._ColorValuePicker

GUI._UICorner34.Parent=GUI._ColorBlockPicker
GUI._UIStroke33.Parent=GUI._ColorBlockPicker
GUI._UIGradient33.Parent=GUI._ColorBlockPicker

GUI._RedLabel.BackgroundTransparency=1
GUI._RedLabel.Position=UDim2.fromScale(.247,.688)
GUI._RedLabel.Size=UDim2.fromScale(.199,.051)
GUI._RedLabel.ClipsDescendants=true
GUI._RedLabel.TextSize=12
GUI._RedLabel.Font=Enum.Font.FredokaOne
GUI._RedLabel.Text='Red'
GUI._RedLabel.TextColor3=Color3.fromRGB(255,0,0)
GUI._RedLabel.TextXAlignment=Enum.TextXAlignment.Left
GUI._RedLabel.Parent=GUI._ColorStatNumbers

GUI._GreenLabel.BackgroundTransparency=1
GUI._GreenLabel.Position=UDim2.fromScale(.479,.688)
GUI._GreenLabel.Size=UDim2.fromScale(.199,.051)
GUI._GreenLabel.ClipsDescendants=true
GUI._GreenLabel.TextSize=12
GUI._GreenLabel.Font=Enum.Font.FredokaOne
GUI._GreenLabel.Text='Green'
GUI._GreenLabel.TextColor3=Color3.fromRGB(34,255,0)
GUI._GreenLabel.TextXAlignment=Enum.TextXAlignment.Left
GUI._GreenLabel.Parent=GUI._ColorStatNumbers

GUI._BlueLabel.BackgroundTransparency=1
GUI._BlueLabel.Position=UDim2.fromScale(.761,.688)
GUI._BlueLabel.Size=UDim2.fromScale(.199,.051)
GUI._BlueLabel.ClipsDescendants=true
GUI._BlueLabel.TextSize=12
GUI._BlueLabel.Font=Enum.Font.FredokaOne
GUI._BlueLabel.Text='Blue'
GUI._BlueLabel.TextColor3=Color3.fromRGB(0,208,255)
GUI._BlueLabel.TextXAlignment=Enum.TextXAlignment.Left
GUI._BlueLabel.Parent=GUI._ColorStatNumbers

GUI._HueLabel.BackgroundTransparency=1
GUI._HueLabel.Position=UDim2.fromScale(.247,.793)
GUI._HueLabel.Size=UDim2.fromScale(.199,.051)
GUI._HueLabel.ClipsDescendants=true
GUI._HueLabel.TextSize=12
GUI._HueLabel.Font=Enum.Font.FredokaOne
GUI._HueLabel.Text='Hue'
GUI._HueLabel.TextColor3=Color3.fromRGB(38, 37, 61)
GUI._HueLabel.TextXAlignment=Enum.TextXAlignment.Left
GUI._HueLabel.Parent=GUI._ColorStatNumbers

GUI._SatLabel.BackgroundTransparency=1
GUI._SatLabel.Position=UDim2.fromScale(.479,.793)
GUI._SatLabel.Size=UDim2.fromScale(.199,.051)
GUI._SatLabel.ClipsDescendants=true
GUI._SatLabel.TextSize=12
GUI._SatLabel.Font=Enum.Font.FredokaOne
GUI._SatLabel.Text='Sat'
GUI._SatLabel.TextColor3=Color3.fromRGB(38, 37, 61)
GUI._SatLabel.TextXAlignment=Enum.TextXAlignment.Left
GUI._SatLabel.Parent=GUI._ColorStatNumbers

GUI._ValLabel.BackgroundTransparency=1
GUI._ValLabel.Position=UDim2.fromScale(.716,.793)
GUI._ValLabel.Size=UDim2.fromScale(.199,.051)
GUI._ValLabel.ClipsDescendants=true
GUI._ValLabel.TextSize=12
GUI._ValLabel.Font=Enum.Font.FredokaOne
GUI._ValLabel.Text='Val'
GUI._ValLabel.TextColor3=Color3.fromRGB(38, 37, 61)
GUI._ValLabel.TextXAlignment=Enum.TextXAlignment.Left
GUI._ValLabel.Parent=GUI._ColorStatNumbers

GUI._BackgroundColor=GUI._Transparency:Clone()
GUI._BackgroundColor.Name='BackgroundColor'
GUI._BackgroundColor.Position=UDim2.fromScale(.018,.056)
GUI._BackgroundColor.Size=UDim2.fromScale(.26,.02)
GUI._BackgroundColor.Text='Color'
GUI._BackgroundColor.Parent=GUI._SettingsContainer

GUI._BackgroundColorDisplay.BackgroundColor3=Color3.fromRGB(101,108,139)
GUI._BackgroundColorDisplay.Position=UDim2.fromScale(.3,.058)
GUI._BackgroundColorDisplay.Size=UDim2.fromScale(.35,.013)
GUI._BackgroundColorDisplay.Parent=GUI._SettingsContainer

GUI._BackgroundColorDisplayLabel.BackgroundTransparency=1
GUI._BackgroundColorDisplayLabel.Position=UDim2.fromScale(0,0)
GUI._BackgroundColorDisplayLabel.Size=UDim2.fromScale(1,1)
GUI._BackgroundColorDisplayLabel.Font=Enum.Font.FredokaOne
GUI._BackgroundColorDisplayLabel.Text="90, 95, 112"
GUI._BackgroundColorDisplayLabel.TextScaled=true
GUI._BackgroundColorDisplayLabel.Parent=GUI._BackgroundColorDisplay

GUI._UICorner35.Parent=GUI._BackgroundColor
GUI._UIStroke34.Parent=GUI._BackgroundColor
GUI._UIGradient34.Parent=GUI._BackgroundColor

GUI._UICorner36.Parent=GUI._BackgroundColorDisplay
GUI._UIStroke35.Parent=GUI._BackgroundColorDisplay
GUI._UIGradient35.Parent=GUI._BackgroundColorDisplay

GUI._UICorner37.Parent=GUI._BackgroundColorDisplayLabel
GUI._UIStroke36.Parent=GUI._BackgroundColorDisplayLabel
GUI._UIGradient36.Parent=GUI._BackgroundColorDisplayLabel

GUI._ResetBackgroundColor=GUI._BackgroundColor:Clone()
GUI._ResetBackgroundColor.Name='ResetBackgroundColor'
GUI._ResetBackgroundColor.Position=UDim2.fromScale(.67,.057)
GUI._ResetBackgroundColor.Size=UDim2.fromScale(.22,.015)
GUI._ResetBackgroundColor.Text='Reset'
GUI._ResetBackgroundColor.TextColor3=Color3.fromRGB(167,220,255)
GUI._ResetBackgroundColor.Parent=GUI._SettingsContainer

GUI._Settings2.BackgroundTransparency=1
GUI._Settings2.Position=UDim2.fromScale(.018,.081)
GUI._Settings2.Size=UDim2.fromScale(.5,.02)
GUI._Settings2.Font=Enum.Font.FredokaOne
GUI._Settings2.Text='Boom Hood'
GUI._Settings2.TextColor3=Color3.fromRGB(155,182,255)
GUI._Settings2.TextScaled=true
GUI._Settings2.TextXAlignment=Enum.TextXAlignment.Left
GUI._Settings2.Parent=GUI._SettingsContainer

GUI._AntiUnkiwer1s=GUI._Transparency:Clone()
GUI._AntiUnkiwer1s.Name='AntiUnkiwer1s'
GUI._AntiUnkiwer1s.Position=UDim2.fromScale(.018,.105)
GUI._AntiUnkiwer1s.Size=UDim2.fromScale(.26,.02)
GUI._AntiUnkiwer1s.Text='Anti Unkiwer1s'
GUI._AntiUnkiwer1s.Parent=GUI._SettingsContainer

GUI._AutoKickAntiUnkiwer1s=GUI._AntiUnkiwer1s:Clone()
GUI._AutoKickAntiUnkiwer1s.Position=UDim2.fromScale(.3,.105)
GUI._AutoKickAntiUnkiwer1s.Size=UDim2.fromScale(.26,.02)
GUI._AutoKickAntiUnkiwer1s.Text='Auto Kick'
GUI._AutoKickAntiUnkiwer1s.Parent=GUI._SettingsContainer


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

local auto_kick = false
local check_unkiwer1s = false
local detected_unkiwer1s = false

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

local function updateTransparency(value)
	GUI._Frame.BackgroundTransparency=value
end

local function isMouseInside(button)
	local mouse = game.Players.LocalPlayer:GetMouse()
	local buttonPos = button.AbsolutePosition
	local buttonSize = button.AbsoluteSize

	return mouse.X >= buttonPos.X and mouse.X <= buttonPos.X + buttonSize.X and
		mouse.Y >= buttonPos.Y and mouse.Y <= buttonPos.Y + buttonSize.Y
end

local function createSliderLogic(sliderButton, sliderBar, updateFunc, minValue, maxValue, Type, Type2) 
	local dragging = false
	local startPos
	local offsetPos

	local function move(input)
		local delta = input.Position.X - startPos.X
		local newPosition = math.clamp(offsetPos + delta, 0, sliderBar.AbsoluteSize.X - sliderButton.AbsoluteSize.X)
		sliderButton.Position = UDim2.new(0, newPosition, 0, 0)

		local value = minValue + (newPosition / (sliderBar.AbsoluteSize.X - sliderButton.AbsoluteSize.X)) * (maxValue - minValue)

		if Type2 == 'float' then
			value = math.floor(value * 10) / 10
		else
			value = math.floor(value)
		end

		if Type == 'walkspeed' then
			GUI._WalkSpeedValueDisplay.Text = tostring(value)
			walkspeed = value
			updateFunc(value)
		elseif Type == 'fly' then
			GUI._FlyValueDisplay.Text = tostring(value)
			flymaxspeed = value
			updateFunc(value)
		elseif Type == 'transparency' then
			GUI._TransparencyValueDisplay.Text = tostring(value)
			GUI._Frame.BackgroundTransparency=value
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

createSliderLogic(GUI._WalkSpeedSliderButton, GUI._WalkSpeedSliderBar, updateWalkSpeed, 1, 100, 'walkspeed')
createSliderLogic(GUI._FlySliderButton, GUI._FlySliderBar, updateFlySpeed, 1, 100, 'fly')
createSliderLogic(GUI._TransparencySliderButton, GUI._TransparencySliderBar, updateTransparency, 0, 1, 'transparency', 'float')


-- Input Handling

UserInputService.InputBegan:Connect(function(input)
	if input.KeyCode==Enum.KeyCode.RightControl then
		GUI._Frame.Visible=not GUI._Frame.Visible
		GUI._Minimze.Visible=not GUI._Minimze.Visible
	end
end)

GUI._Main.MouseButton1Click:Connect(function()
	GUI._MainContainer.Visible=true
	GUI._SettingsContainer.Visible=false
	GUI._ScriptsContainer.Visible=false
end)

GUI._Scripts.MouseButton1Click:Connect(function()
	GUI._MainContainer.Visible=false
	GUI._SettingsContainer.Visible=false
	GUI._ScriptsContainer.Visible=true
end)

GUI._Settings.MouseButton1Click:Connect(function()
	GUI._MainContainer.Visible=false
	GUI._ScriptsContainer.Visible=false
	GUI._SettingsContainer.Visible=true
end)

GUI._BackgroundColor.MouseButton1Click:Connect(function()
	GUI._ColorPicker.Visible=not GUI._ColorPicker.Visible
end)

GUI._InfiniteYield.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

GUI._AzureModded.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Actyrn/Scripts/main/AzureModded"))()
end)

GUI._HighlightHub.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatSick/HighlightMM2/main/Main"))()
end)

GUI._Yarhm.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
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

GUI._AntiUnkiwer1s.MouseButton1Click:Connect(function()
	if check_unkiwer1s then
		check_unkiwer1s = false
		game.StarterGui:SetCore("SendNotification", {
			Title = 'Anti Unkiwer1s';
			Text = 'Anti Unkiwer1s has canceled';
			Duration = "2";
			Icon = 'http://www.roblox.com/asset/?id=17368208554';
		})
		GUI._AntiUnkiwer1s.TextColor3=Color3.fromRGB(167, 220, 255)
	else
		check_unkiwer1s = true
		GUI._AntiUnkiwer1s.TextColor3=Color3.fromRGB(179, 255, 165)
		game.StarterGui:SetCore("SendNotification", {
			Title = 'Anti Unkiwer1s';
			Text = 'Anti Unkiwer1s has started';
			Duration = "2";
			Icon = 'http://www.roblox.com/asset/?id=17368190066';
		})

		anti_unkiwer1s()
	end
end)

GUI._AutoKickAntiUnkiwer1s.MouseButton1Click:Connect(function()
	if auto_kick then
		auto_kick = false
		GUI._AutoKickAntiUnkiwer1s.TextColor3=Color3.fromRGB(167, 220, 255)
	else
		auto_kick = true
		GUI._AutoKickAntiUnkiwer1s.TextColor3=Color3.fromRGB(179, 255, 165)
	end
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

-- Color picker

touchTap = Enum.UserInputType.Touch
mouse1 = Enum.UserInputType.MouseButton1
mouseMovement = Enum.UserInputType.MouseMovement

runService = game:GetService("RunService")

colorPicker = GUI._ColorPickerMain
colorPickerMain = GUI._ColorPicker

colorStatNumberFrame = GUI._ColorStatNumbers
selectedColorFrame = GUI._ColorPickerSelectedColor
colorBlock = GUI._ColorBlock
valueBlock = GUI._ColorValueBlock

pickerColor = GUI._ColorBlockPicker
pickerValue = GUI._ColorValuePicker

redVal = GUI._ColorRedVal
greenVal = GUI._ColorGreenVal
blueVal = GUI._ColorBlueVal
hueVal = GUI._ColorHueVal
satVal = GUI._ColorSatVal
valVal = GUI._ColorValVal
hexVal = GUI._ColorHexVal

colorValTbl = {redVal,greenVal,blueVal,hueVal,satVal,valVal}

acceptedChars = "1234567890abcdef"
multiplyTbl = {255,255,255,360,100,100}

colorChanging = false

inputTypeNeeded = mouse1

if UserInputService.MouseEnabled == false then inputTypeNeeded = touchTap end

if UserInputService.MouseEnabled == false then
	UserInputService.TouchMoved:Connect(function(inp)
		inputPosition = inp.Position
	end)
else
	UserInputService.InputChanged:Connect(function(inp)
		if inp.UserInputType == mouseMovement then
			inputPosition = inp.Position
		end
	end)
end

UserInputService.InputBegan:Connect(function(inp) if inp.UserInputType == inputTypeNeeded then plrInputHeldDown = true end
end)
UserInputService.InputEnded:Connect(function(inp) if inp.UserInputType == inputTypeNeeded then plrInputHeldDown = false end
end)

function roundNum(n,decimalPlaces)
	local nDP = 10^decimalPlaces
	return math.floor(n*nDP)/nDP
end

function getNormalizedCursorPosition(mousePosition, frame)
	local framePosition = frame.AbsolutePosition
	local frameSize = frame.AbsoluteSize

	local relativeX = (mousePosition.X - framePosition.X) / frameSize.X
	local relativeY = (mousePosition.Y - framePosition.Y) / frameSize.Y

	return relativeX, relativeY
end

local function updatePickerPos()
	local clrThing = selectedColorFrame.BackgroundColor3
	local h,s,v = clrThing:ToHSV()
	pickerColor.Position = UDim2.new(1-h,0,1-s,0)
	pickerValue.Position = UDim2.new(0.5,0,1-v,0)
end

hexVal:GetPropertyChangedSignal("Text"):Connect(function()

	if colorChanging == false then
		local newString = string.gsub(hexVal.Text,"#","")

		local finalString = ""

		for i = 1, #newString do
			local char = string.lower(newString:sub(i, i))


			if string.find(acceptedChars,char) ~= nil then
				finalString = finalString .. char
			end
		end

		finalString = string.sub(finalString,1,6)

		local finalHex = finalString
		while string.len(finalHex) < 6 do
			finalHex = finalHex .. "0"
		end

		hexVal.Text = "#"..finalHex

		selectedColorFrame.BackgroundColor3 = Color3.fromHex(finalHex)

		updatePickerPos()
	end

end)

function updateTextBoxes()
	local newClr = selectedColorFrame.BackgroundColor3
	local nC1,nC2,nC3 = newClr:ToHSV()

	local nC4 = newClr:ToHex()
	hexVal.Text = "#"..nC4

	local newClrTbl = {newClr.R,newClr.G,newClr.B,nC1,nC2,nC3}

	for inc,clrValT in pairs(colorValTbl) do

		clrValT.Text = roundNum(newClrTbl[inc]*multiplyTbl[inc],0)

	end
end

selectedColorFrame:GetPropertyChangedSignal("BackgroundColor3"):Connect(function()
	
	GUI._BackgroundColorDisplayLabel.Text = tostring(GUI._ColorRedVal.Text..', '..GUI._ColorGreenVal.Text..', '..GUI._ColorBlueVal.Text)
	GUI._Frame.BackgroundColor3 = selectedColorFrame.BackgroundColor3
	
	updateTextBoxes()

	if colorChanging == false then
		updatePickerPos()
	end

end)

colorBlock.InputBegan:Connect(function(inp)

	if inp.UserInputType == inputTypeNeeded then

		colorChanging = true
		plrInputHeldDown = true
		while plrInputHeldDown == true do

			local xPos,yPos = getNormalizedCursorPosition(inputPosition,colorBlock)
			xPos,yPos = math.clamp(xPos,0,1),math.clamp(yPos,0,1)

			pickerColor.Position = UDim2.new(xPos,0,yPos,0)

			local h,s,v = selectedColorFrame.BackgroundColor3:ToHSV()

			selectedColorFrame.BackgroundColor3 = Color3.fromHSV(1 - xPos,1 - yPos,v)

			runService.Heartbeat:Wait()
		end

		colorChanging = false

	end

end)

valueBlock.InputBegan:Connect(function(inp)

	if inp.UserInputType == inputTypeNeeded then

		colorChanging = true
		plrInputHeldDown = true
		while plrInputHeldDown == true do

			local xPos,yPos = getNormalizedCursorPosition(inputPosition,colorBlock)
			yPos = math.clamp(yPos,0,1)

			pickerValue.Position = UDim2.new(.5,0,yPos,0)
			
			local h,s,v = selectedColorFrame.BackgroundColor3:ToHSV()
			selectedColorFrame.BackgroundColor3 = Color3.fromHSV(h,s,1 - yPos)

			runService.Heartbeat:Wait()
		end

		colorChanging = false

	end

end)


function anti_unkiwer1s()
	while check_unkiwer1s do
		local player = game.Players:FindFirstChild('unkiwer1s')
		if player then
			if auto_kick then
				plr:Kick('Unkiwer1s detected')
			else
				game.StarterGui:SetCore("SendNotification", {
					Title = "Anti Unkiwer1s";
					Text = 'Unkiwer1s detected\nL to leave';
					Duration = "10";
					Icon = 'http://www.roblox.com/asset/?id=17368194090';})
				detected_unkiwer1s = true
			end
			break
		end
		wait(1)
	end
end

UserInputService.InputBegan:Connect(function(input)
	if input.KeyCode==Enum.KeyCode.L and detected_unkiwer1s then
		plr:Kick('unkiwer1s detected')
	end
end)

local function changeColor(clr)
	selectedColorFrame.BackgroundColor3 = clr
	updateTextBoxes()

	if colorChanging == false then
		updatePickerPos()
	end

end

changeColor(Color3.fromRGB(90, 95, 112))
updateTextBoxes()
updatePickerPos()


GUI._ResetBackgroundColor.MouseButton1Click:Connect(function()
	
	GUI._Frame.BackgroundTransparency=Color3.fromRGB(90, 95, 112)
		
	changeColor(Color3.fromRGB(90, 95, 112))
	updateTextBoxes()
	updatePickerPos()
end)