local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

local Library = {}
Library.__index = Library

local Theme = {
    Background = Color3.fromRGB(15, 23, 42),
    Secondary = Color3.fromRGB(30, 41, 59),
    Primary = Color3.fromRGB(6, 182, 212),
    Accent = Color3.fromRGB(34, 211, 238),
    Text = Color3.fromRGB(241, 245, 249),
    TextDark = Color3.fromRGB(148, 163, 184),
    Border = Color3.fromRGB(51, 65, 85),
    Success = Color3.fromRGB(34, 197, 94),
    Danger = Color3.fromRGB(239, 68, 68),
    Warning = Color3.fromRGB(245, 158, 11),
}

local AnimationSpeed = 0.3
local SlowMotion = false

local function CreateInstance(className, properties)
    local instance = Instance.new(className)
    for property, value in pairs(properties) do
        instance[property] = value
    end
    return instance
end

local function Tween(object, properties, duration, easingStyle, easingDirection)
    local speed = SlowMotion and (duration or AnimationSpeed) * 3 or (duration or AnimationSpeed)
    local tween = TweenService:Create(
        object,
        TweenInfo.new(speed, easingStyle or Enum.EasingStyle.Quart, easingDirection or Enum.EasingDirection.Out),
        properties
    )
    tween:Play()
    return tween
end

local function AddCorner(parent, radius)
    local corner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, radius or 8),
        Parent = parent
    })
    return corner
end

local function AddStroke(parent, color, thickness)
    local stroke = CreateInstance("UIStroke", {
        Color = color or Theme.Border,
        Thickness = thickness or 1,
        Parent = parent,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    })
    return stroke
end

local function CreatePulseEffect(button)
    local pulse = CreateInstance("Frame", {
        Name = "PulseEffect",
        Parent = button,
        BackgroundColor3 = Theme.Primary,
        BackgroundTransparency = 0.7,
        Size = UDim2.new(1, 0, 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        ZIndex = -1,
        BorderSizePixel = 0
    })
    AddCorner(pulse, 8)
    
    local pulseTween = Tween(pulse, {
        BackgroundTransparency = 1,
        Size = UDim2.new(1.5, 0, 1.5, 0),
        Position = UDim2.new(-0.25, 0, -0.25, 0)
    }, 0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    pulseTween.Completed:Connect(function()
        pulse:Destroy()
    end)
end

local function CreateRippleEffect(button, mousePosition)
    local ripple = CreateInstance("Frame", {
        Name = "RippleEffect",
        Parent = button,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 0.8,
        Size = UDim2.new(0, 0, 0, 0),
        Position = UDim2.new(0, mousePosition.X - button.AbsolutePosition.X, 0, mousePosition.Y - button.AbsolutePosition.Y),
        AnchorPoint = Vector2.new(0.5, 0.5),
        ZIndex = -1,
        BorderSizePixel = 0
    })
    AddCorner(ripple, 100)
    
    local maxSize = math.max(button.AbsoluteSize.X, button.AbsoluteSize.Y) * 2
    local sizeUDim = UDim2.new(0, maxSize, 0, maxSize)
    
    local rippleTween = Tween(ripple, {
        BackgroundTransparency = 1,
        Size = sizeUDim,
        Position = UDim2.new(0.5, -maxSize/2, 0.5, -maxSize/2)
    }, 0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    
    rippleTween.Completed:Connect(function()
        ripple:Destroy()
    end)
end

function Library:New(title)
    local window = {}
    
    window.ScreenGui = CreateInstance("ScreenGui", {
        Name = "WAzureUI",
        Parent = CoreGui,
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
        ResetOnSpawn = false
    })
    
    window.Main = CreateInstance("Frame", {
        Name = "Main",
        Parent = window.ScreenGui,
        BackgroundColor3 = Theme.Background,
        BorderSizePixel = 0,
        Position = UDim2.new(0.5, -400, 0.5, -300),
        Size = UDim2.new(0, 800, 0, 600),
        ClipsDescendants = true
    })
    AddCorner(window.Main, 12)
    AddStroke(window.Main, Theme.Border, 1)
    
    local shadow = CreateInstance("ImageLabel", {
        Name = "Shadow",
        Parent = window.Main,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, -15, 0, -15),
        Size = UDim2.new(1, 30, 1, 30),
        ZIndex = 0,
        Image = "rbxasset://textures/ui/GuiImagePlaceholder.png",
        ImageColor3 = Color3.fromRGB(0, 0, 0),
        ImageTransparency = 0.7,
        ScaleType = Enum.ScaleType.Slice,
        SliceCenter = Rect.new(10, 10, 118, 118)
    })
    
    window.TopBar = CreateInstance("Frame", {
        Name = "TopBar",
        Parent = window.Main,
        BackgroundColor3 = Theme.Secondary,
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 0, 50),
    })
    AddCorner(window.TopBar, 12)
    AddStroke(window.TopBar, Theme.Border, 1)
    
    local iconFrame = CreateInstance("Frame", {
        Name = "IconFrame",
        Parent = window.TopBar,
        BackgroundColor3 = Theme.Primary,
        Position = UDim2.new(0, 15, 0.5, -15),
        Size = UDim2.new(0, 30, 0, 30),
        BorderSizePixel = 0
    })
    AddCorner(iconFrame, 6)
    
    local iconLabel = CreateInstance("TextLabel", {
        Name = "Icon",
        Parent = iconFrame,
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 1, 0),
        Font = Enum.Font.GothamBold,
        Text = "⚡",
        TextColor3 = Theme.Text,
        TextSize = 16
    })
    
    spawn(function()
        while iconLabel and iconLabel.Parent do
            Tween(iconLabel, {Rotation = 360}, 2, Enum.EasingStyle.Linear)
            wait(2)
            iconLabel.Rotation = 0
        end
    end)
    
    local titleLabel = CreateInstance("TextLabel", {
        Name = "Title",
        Parent = window.TopBar,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 55, 0, 0),
        Size = UDim2.new(0, 200, 1, 0),
        Font = Enum.Font.GothamBold,
        Text = title or "W-Azure",
        TextColor3 = Theme.Text,
        TextSize = 16,
        TextXAlignment = Enum.TextXAlignment.Left
    })
    
    local versionLabel = CreateInstance("TextLabel", {
        Name = "Version",
        Parent = window.TopBar,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 260, 0, 0),
        Size = UDim2.new(0, 200, 1, 0),
        Font = Enum.Font.Gotham,
        Text = "v1.1 | discord.gg/w-azure",
        TextColor3 = Theme.TextDark,
        TextSize = 12,
        TextXAlignment = Enum.TextXAlignment.Left
    })
    
    window.CloseButton = CreateInstance("TextButton", {
        Name = "Close",
        Parent = window.TopBar,
        BackgroundColor3 = Theme.Danger,
        Position = UDim2.new(1, -40, 0.5, -12),
        Size = UDim2.new(0, 24, 0, 24),
        BorderSizePixel = 0,
        Font = Enum.Font.GothamBold,
        Text = "×",
        TextColor3 = Theme.Text,
        TextSize = 20,
        AutoButtonColor = false
    })
    AddCorner(window.CloseButton, 6)
    
    window.CloseButton.MouseButton1Click:Connect(function()
        CreatePulseEffect(window.CloseButton)
        Tween(window.Main, {
            Size = UDim2.new(0, 0, 0, 0),
            Position = UDim2.new(0.5, 0, 0.5, 0)
        }, 0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In)
        wait(0.4)
        window.ScreenGui:Destroy()
    end)
    
    window.CloseButton.MouseEnter:Connect(function()
        Tween(window.CloseButton, {
            BackgroundColor3 = Color3.fromRGB(220, 60, 60),
            Size = UDim2.new(0, 28, 0, 28),
            Position = UDim2.new(1, -41, 0.5, -14)
        }, 0.2)
    end)
    
    window.CloseButton.MouseLeave:Connect(function()
        Tween(window.CloseButton, {
            BackgroundColor3 = Theme.Danger,
            Size = UDim2.new(0, 24, 0, 24),
            Position = UDim2.new(1, -40, 0.5, -12)
        }, 0.2)
    end)
    
    local slowMoButton = CreateInstance("TextButton", {
        Name = "SlowMo",
        Parent = window.TopBar,
        BackgroundColor3 = Theme.Secondary,
        Position = UDim2.new(1, -75, 0.5, -12),
        Size = UDim2.new(0, 24, 0, 24),
        BorderSizePixel = 0,
        Font = Enum.Font.GothamBold,
        Text = "⚡",
        TextColor3 = Theme.Primary,
        TextSize = 14,
        AutoButtonColor = false
    })
    AddCorner(slowMoButton, 6)
    AddStroke(slowMoButton, Theme.Border, 1)
    
    slowMoButton.MouseButton1Click:Connect(function()
        CreatePulseEffect(slowMoButton)
        SlowMotion = not SlowMotion
        slowMoButton.Text = SlowMotion and "🐌" or "⚡"
        
        Tween(slowMoButton, {
            BackgroundColor3 = SlowMotion and Theme.Primary or Theme.Secondary,
            TextColor3 = SlowMotion and Theme.Text or Theme.Primary,
            Rotation = 360
        }, 0.4, Enum.EasingStyle.Back)
        
        wait(0.4)
        slowMoButton.Rotation = 0
    end)
    
    window.Sidebar = CreateInstance("Frame", {
        Name = "Sidebar",
        Parent = window.Main,
        BackgroundColor3 = Theme.Secondary,
        Position = UDim2.new(0, 0, 0, 55),
        Size = UDim2.new(0, 200, 1, -55),
        BorderSizePixel = 0
    })
    AddStroke(window.Sidebar, Theme.Border, 1)
    
    local sidebarList = CreateInstance("UIListLayout", {
        Parent = window.Sidebar,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 5)
    })
    
    CreateInstance("UIPadding", {
        Parent = window.Sidebar,
        PaddingTop = UDim.new(0, 10),
        PaddingLeft = UDim.new(0, 10),
        PaddingRight = UDim.new(0, 10),
        PaddingBottom = UDim.new(0, 10)
    })
    
    window.Content = CreateInstance("Frame", {
        Name = "Content",
        Parent = window.Main,
        BackgroundColor3 = Theme.Background,
        Position = UDim2.new(0, 205, 0, 55),
        Size = UDim2.new(1, -210, 1, -60),
        BorderSizePixel = 0
    })
    
    window.ScrollFrame = CreateInstance("ScrollingFrame", {
        Name = "Scroll",
        Parent = window.Content,
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 1, 0),
        CanvasSize = UDim2.new(0, 0, 0, 0),
        ScrollBarThickness = 6,
        ScrollBarImageColor3 = Theme.Primary,
        BorderSizePixel = 0
    })
    
    local contentList = CreateInstance("UIListLayout", {
        Parent = window.ScrollFrame,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 10)
    })
    
    CreateInstance("UIPadding", {
        Parent = window.ScrollFrame,
        PaddingTop = UDim.new(0, 10),
        PaddingLeft = UDim.new(0, 10),
        PaddingRight = UDim.new(0, 10),
        PaddingBottom = UDim.new(0, 10)
    })
    
    contentList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        window.ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, contentList.AbsoluteContentSize.Y + 20)
    end)
    
    local dragging, dragInput, dragStart, startPos
    
    window.TopBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = window.Main.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    
    window.TopBar.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            window.Main.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end)
    
    window.Tabs = {}
    window.CurrentTab = nil
    
    return setmetatable(window, Library)
end

function Library:CreateTab(name, icon)
    local tab = {}
    
    local tabButton = CreateInstance("TextButton", {
        Name = name,
        Parent = self.Sidebar,
        BackgroundColor3 = Theme.Background,
        Size = UDim2.new(1, 0, 0, 40),
        BorderSizePixel = 0,
        Font = Enum.Font.GothamMedium,
        Text = "  " .. (icon or "📋") .. "  " .. name,
        TextColor3 = Theme.TextDark,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        AutoButtonColor = false
    })
    AddCorner(tabButton, 8)
    AddStroke(tabButton, Theme.Border, 1)
    
    tab.Frame = CreateInstance("Frame", {
        Name = name .. "Content",
        Parent = self.ScrollFrame,
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 0, 0),
        Visible = false
    })
    
    local tabList = CreateInstance("UIListLayout", {
        Parent = tab.Frame,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 10)
    })
    
    tabList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        tab.Frame.Size = UDim2.new(1, 0, 0, tabList.AbsoluteContentSize.Y)
    end)
    
    tabButton.MouseButton1Click:Connect(function()
        CreateRippleEffect(tabButton, UserInputService:GetMouseLocation())
        
        for _, t in pairs(self.Tabs) do
            Tween(t.Button, {
                BackgroundColor3 = Theme.Background,
                TextColor3 = Theme.TextDark,
                Size = UDim2.new(1, 0, 0, 40)
            }, 0.2)
            t.Frame.Visible = false
        end
        
        Tween(tabButton, {
            BackgroundColor3 = Theme.Primary,
            TextColor3 = Theme.Text,
            Size = UDim2.new(1, 0, 0, 45)
        }, 0.3, Enum.EasingStyle.Back)
        
        tab.Frame.Visible = true
        self.CurrentTab = tab
    end)
    
    tabButton.MouseEnter:Connect(function()
        if tabButton.BackgroundColor3 ~= Theme.Primary then
            Tween(tabButton, {
                BackgroundColor3 = Theme.Secondary,
                TextColor3 = Theme.Text,
                Size = UDim2.new(1, 0, 0, 42)
            }, 0.2)
        end
    end)
    
    tabButton.MouseLeave:Connect(function()
        if tabButton.BackgroundColor3 ~= Theme.Primary then
            Tween(tabButton, {
                BackgroundColor3 = Theme.Background,
                TextColor3 = Theme.TextDark,
                Size = UDim2.new(1, 0, 0, 40)
            }, 0.2)
        end
    end)
    
    tab.Button = tabButton
    table.insert(self.Tabs, tab)
    
    if #self.Tabs == 1 then
        wait(0.1)
        tabButton.BackgroundColor3 = Theme.Primary
        tabButton.TextColor3 = Theme.Text
        tab.Frame.Visible = true
        self.CurrentTab = tab
        
        Tween(tabButton, {
            Size = UDim2.new(1, 0, 0, 45)
        }, 0.3, Enum.EasingStyle.Back)
    end
    
    return setmetatable(tab, {__index = self})
end

function Library:CreateSection(name)
    local section = CreateInstance("Frame", {
        Name = name,
        Parent = self.Frame or self.ScrollFrame,
        BackgroundColor3 = Theme.Secondary,
        Size = UDim2.new(1, 0, 0, 0),
        BorderSizePixel = 0,
        AutomaticSize = Enum.AutomaticSize.Y
    })
    AddCorner(section, 10)
    AddStroke(section, Theme.Border, 1)
    
    local sectionTitle = CreateInstance("TextLabel", {
        Name = "Title",
        Parent = section,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 15, 0, 10),
        Size = UDim2.new(1, -30, 0, 25),
        Font = Enum.Font.GothamBold,
        Text = name,
        TextColor3 = Theme.Text,
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left
    })
    
    local sectionContent = CreateInstance("Frame", {
        Name = "Content",
        Parent = section,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 10, 0, 40),
        Size = UDim2.new(1, -20, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y
    })
    
    local sectionList = CreateInstance("UIListLayout", {
        Parent = sectionContent,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 8)
    })
    
    CreateInstance("UIPadding", {
        Parent = section,
        PaddingBottom = UDim.new(0, 15)
    })
    
    return {Frame = sectionContent, Section = section}
end

function Library:CreateToggle(options)
    local parent = options.Parent or (self.Frame and self.Frame or self.ScrollFrame)
    
    local toggleFrame = CreateInstance("Frame", {
        Name = "Toggle",
        Parent = parent,
        BackgroundColor3 = Theme.Background,
        Size = UDim2.new(1, 0, 0, 45),
        BorderSizePixel = 0,
        ClipsDescendants = true
    })
    AddCorner(toggleFrame, 8)
    AddStroke(toggleFrame, Theme.Border, 1)
    
    local label = CreateInstance("TextLabel", {
        Name = "Label",
        Parent = toggleFrame,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 15, 0, 0),
        Size = UDim2.new(1, -80, 1, 0),
        Font = Enum.Font.GothamMedium,
        Text = options.Name or "Toggle",
        TextColor3 = Theme.Text,
        TextSize = 13,
        TextXAlignment = Enum.TextXAlignment.Left
    })
    
    local toggleButton = CreateInstance("TextButton", {
        Name = "Button",
        Parent = toggleFrame,
        BackgroundColor3 = options.Default and Theme.Primary or Theme.Border,
        Position = UDim2.new(1, -60, 0.5, -12),
        Size = UDim2.new(0, 50, 0, 24),
        BorderSizePixel = 0,
        Text = "",
        AutoButtonColor = false
    })
    AddCorner(toggleButton, 12)
    
    local toggleCircle = CreateInstance("Frame", {
        Name = "Circle",
        Parent = toggleButton,
        BackgroundColor3 = Theme.Text,
        Position = options.Default and UDim2.new(1, -22, 0.5, -10) or UDim2.new(0, 2, 0.5, -10),
        Size = UDim2.new(0, 20, 0, 20),
        BorderSizePixel = 0
    })
    AddCorner(toggleCircle, 10)
    
    local glow = CreateInstance("Frame", {
        Name = "Glow",
        Parent = toggleButton,
        BackgroundColor3 = Theme.Primary,
        BackgroundTransparency = 0.8,
        Size = UDim2.new(1, 0, 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        ZIndex = -1,
        BorderSizePixel = 0
    })
    AddCorner(glow, 12)
    glow.Visible = options.Default
    
    local toggled = options.Default or false
    
    local function UpdateToggle(state)
        toggled = state
        
        if state then
            Tween(toggleButton, {
                BackgroundColor3 = Theme.Primary
            }, 0.3, Enum.EasingStyle.Quad)
            
            Tween(toggleCircle, {
                Position = UDim2.new(1, -22, 0.5, -10),
                BackgroundColor3 = Theme.Text
            }, 0.3, Enum.EasingStyle.Back)
            
            glow.Visible = true
            Tween(glow, {
                BackgroundTransparency = 0.8,
                Size = UDim2.new(1.2, 0, 1.2, 0),
                Position = UDim2.new(-0.1, 0, -0.1, 0)
            }, 0.4, Enum.EasingStyle.Quad)
            
            wait(0.4)
            Tween(glow, {
                BackgroundTransparency = 0.9,
                Size = UDim2.new(1, 0, 1, 0),
                Position = UDim2.new(0, 0, 0, 0)
            }, 0.2)
        else
            Tween(toggleButton, {
                BackgroundColor3 = Theme.Border
            }, 0.3, Enum.EasingStyle.Quad)
            
            Tween(toggleCircle, {
                Position = UDim2.new(0, 2, 0.5, -10),
                BackgroundColor3 = Theme.Text
            }, 0.3, Enum.EasingStyle.Back)
            
            Tween(glow, {
                BackgroundTransparency = 1,
                Size = UDim2.new(0.5, 0, 0.5, 0),
                Position = UDim2.new(0.25, 0, 0.25, 0)
            }, 0.3, Enum.EasingStyle.Quad)
            
            wait(0.3)
            glow.Visible = false
        end
        
        if options.Callback then
            options.Callback(toggled)
        end
    end
    
    toggleButton.MouseButton1Click:Connect(function()
        CreateRippleEffect(toggleButton, UserInputService:GetMouseLocation())
        UpdateToggle(not toggled)
    end)
    
    toggleFrame.MouseEnter:Connect(function()
        Tween(toggleFrame, {
            BackgroundColor3 = Theme.Secondary,
            Size = UDim2.new(1, 0, 0, 48)
        }, 0.2)
    end)
    
    toggleFrame.MouseLeave:Connect(function()
        Tween(toggleFrame, {
            BackgroundColor3 = Theme.Background,
            Size = UDim2.new(1, 0, 0, 45)
        }, 0.2)
    end)
    
    return {
        SetValue = function(value)
            UpdateToggle(value)
        end,
        GetValue = function()
            return toggled
        end
    }
end

function Library:CreateSlider(options)
    local parent = options.Parent or (self.Frame and self.Frame or self.ScrollFrame)
    
    local sliderFrame = CreateInstance("Frame", {
        Name = "Slider",
        Parent = parent,
        BackgroundColor3 = Theme.Background,
        Size = UDim2.new(1, 0, 0, 55),
        BorderSizePixel = 0,
        ClipsDescendants = true
    })
    AddCorner(sliderFrame, 8)
    AddStroke(sliderFrame, Theme.Border, 1)
    
    local label = CreateInstance("TextLabel", {
        Name = "Label",
        Parent = sliderFrame,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 15, 0, 8),
        Size = UDim2.new(1, -80, 0, 20),
        Font = Enum.Font.GothamMedium,
        Text = options.Name or "Slider",
        TextColor3 = Theme.Text,
        TextSize = 13,
        TextXAlignment = Enum.TextXAlignment.Left
    })
    
    local valueLabel = CreateInstance("TextLabel", {
        Name = "Value",
        Parent = sliderFrame,
        BackgroundTransparency = 1,
        Position = UDim2.new(1, -65, 0, 8),
        Size = UDim2.new(0, 50, 0, 20),
        Font = Enum.Font.GothamBold,
        Text = tostring(options.Default or options.Min or 0),
        TextColor3 = Theme.Primary,
        TextSize = 13,
        TextXAlignment = Enum.TextXAlignment.Right
    })
    
    local sliderBar = CreateInstance("Frame", {
        Name = "Bar",
        Parent = sliderFrame,
        BackgroundColor3 = Theme.Border,
        Position = UDim2.new(0, 15, 1, -20),
        Size = UDim2.new(1, -30, 0, 6),
        BorderSizePixel = 0
    })
    AddCorner(sliderBar, 3)
    
    local sliderFill = CreateInstance("Frame", {
        Name = "Fill",
        Parent = sliderBar,
        BackgroundColor3 = Theme.Primary,
        Size = UDim2.new(0, 0, 1, 0),
        BorderSizePixel = 0
    })
    AddCorner(sliderFill, 3)
    
    local fillGlow = CreateInstance("Frame", {
        Name = "FillGlow",
        Parent = sliderFill,
        BackgroundColor3 = Theme.Primary,
        BackgroundTransparency = 0.7,
        Size = UDim2.new(1, 0, 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        ZIndex = -1,
        BorderSizePixel = 0
    })
    AddCorner(fillGlow, 3)
    
    local sliderButton = CreateInstance("TextButton", {
        Name = "Button",
        Parent = sliderBar,
        BackgroundColor3 = Theme.Text,
        Position = UDim2.new(0, 0, 0.5, -8),
        Size = UDim2.new(0, 16, 0, 16),
        BorderSizePixel = 0,
        Text = "",
        AutoButtonColor = false
    })
    AddCorner(sliderButton, 8)
    
    local buttonGlow = CreateInstance("Frame", {
        Name = "ButtonGlow",
        Parent = sliderButton,
        BackgroundColor3 = Theme.Primary,
        BackgroundTransparency = 0.8,
        Size = UDim2.new(1, 0, 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        ZIndex = -1,
        BorderSizePixel = 0
    })
    AddCorner(buttonGlow, 8)
    
    local min = options.Min or 0
    local max = options.Max or 100
    local default = options.Default or min
    local value = default
    
    local function UpdateSlider(val, instant)
        value = math.clamp(val, min, max)
        local percent = (value - min) / (max - min)
        
        valueLabel.Text = tostring(math.floor(value))
        
        if instant then
            sliderFill.Size = UDim2.new(percent, 0, 1, 0)
            sliderButton.Position = UDim2.new(percent, -8, 0.5, -8)
        else
            Tween(sliderFill, {Size = UDim2.new(percent, 0, 1, 0)}, 0.2)
            Tween(sliderButton, {Position = UDim2.new(percent, -8, 0.5, -8)}, 0.2)
            
            Tween(buttonGlow, {
                Size = UDim2.new(1.5, 0, 1.5, 0),
                Position = UDim2.new(-0.25, 0, -0.25, 0),
                BackgroundTransparency = 0.9
            }, 0.3, Enum.EasingStyle.Quad)
            
            wait(0.3)
            Tween(buttonGlow, {
                Size = UDim2.new(1, 0, 1, 0),
                Position = UDim2.new(0, 0, 0, 0),
                BackgroundTransparency = 0.8
            }, 0.2)
        end
        
        if options.Callback then
            options.Callback(value)
        end
    end
    
    local dragging = false
    
    sliderButton.MouseButton1Down:Connect(function()
        dragging = true
        CreatePulseEffect(sliderButton)
        Tween(sliderButton, {Size = UDim2.new(0, 20, 0, 20)}, 0.2)
    end)
    
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            if dragging then
                Tween(sliderButton, {Size = UDim2.new(0, 16, 0, 16)}, 0.2)
            end
            dragging = false
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local pos = math.clamp((input.Position.X - sliderBar.AbsolutePosition.X) / sliderBar.AbsoluteSize.X, 0, 1)
            UpdateSlider(min + (max - min) * pos)
        end
    end)
    
    sliderBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            CreateRippleEffect(sliderBar, input.Position)
            local pos = math.clamp((input.Position.X - sliderBar.AbsolutePosition.X) / sliderBar.AbsoluteSize.X, 0, 1)
            UpdateSlider(min + (max - min) * pos)
        end
    end)
    
    sliderFrame.MouseEnter:Connect(function()
        Tween(sliderFrame, {
            BackgroundColor3 = Theme.Secondary,
            Size = UDim2.new(1, 0, 0, 58)
        }, 0.2)
    end)
    
    sliderFrame.MouseLeave:Connect(function()
        Tween(sliderFrame, {
            BackgroundColor3 = Theme.Background,
            Size = UDim2.new(1, 0, 0, 55)
        }, 0.2)
    end)
    
    UpdateSlider(default, true)
    
    return {
        SetValue = function(val)
            UpdateSlider(val)
        end,
        GetValue = function()
            return value
        end
    }
end

function Library:CreateButton(options)
    local parent = options.Parent or (self.Frame and self.Frame or self.ScrollFrame)
    
    local button = CreateInstance("TextButton", {
        Name = "Button",
        Parent = parent,
        BackgroundColor3 = Theme.Primary,
        Size = UDim2.new(1, 0, 0, 40),
        BorderSizePixel = 0,
        Font = Enum.Font.GothamBold,
        Text = options.Name or "Button",
        TextColor3 = Theme.Text,
        TextSize = 14,
        AutoButtonColor = false
    })
    AddCorner(button, 8)
    
    local shine = CreateInstance("Frame", {
        Name = "Shine",
        Parent = button,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 0.9,
        Size = UDim2.new(0, 0, 1, 0),
        Position = UDim2.new(-0.5, 0, 0, 0),
        Rotation = -45,
        BorderSizePixel = 0
    })
    
    button.MouseButton1Click:Connect(function()
        CreateRippleEffect(button, UserInputService:GetMouseLocation())
        
        Tween(button, {
            BackgroundColor3 = Theme.Accent,
            Size = UDim2.new(1, 0, 0, 38)
        }, 0.1)
        
        Tween(shine, {
            Position = UDim2.new(1.5, 0, 0, 0),
            BackgroundTransparency = 0.7
        }, 0.6, Enum.EasingStyle.Quad)
        
        wait(0.1)
        Tween(button, {
            BackgroundColor3 = Theme.Primary,
            Size = UDim2.new(1, 0, 0, 40)
        }, 0.1)
        
        wait(0.5)
        shine.Position = UDim2.new(-0.5, 0, 0, 0)
        shine.BackgroundTransparency = 0.9
        
        if options.Callback then
            options.Callback()
        end
    end)
    
    button.MouseEnter:Connect(function()
        Tween(button, {
            BackgroundColor3 = Theme.Accent,
            Size = UDim2.new(1, 0, 0, 42)
        }, 0.2)
    end)
    
    button.MouseLeave:Connect(function()
        Tween(button, {
            BackgroundColor3 = Theme.Primary,
            Size = UDim2.new(1, 0, 0, 40)
        }, 0.2)
    end)
    
    return button
end

function Library:CreateDropdown(options)
    local parent = options.Parent or (self.Frame and self.Frame or self.ScrollFrame)
    
    local dropdownFrame = CreateInstance("Frame", {
        Name = "Dropdown",
        Parent = parent,
        BackgroundColor3 = Theme.Background,
        Size = UDim2.new(1, 0, 0, 45),
        BorderSizePixel = 0,
        ClipsDescendants = true
    })
    AddCorner(dropdownFrame, 8)
    AddStroke(dropdownFrame, Theme.Border, 1)
    
    local label = CreateInstance("TextLabel", {
        Name = "Label",
        Parent = dropdownFrame,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 15, 0, 5),
        Size = UDim2.new(1, -30, 0, 20),
        Font = Enum.Font.GothamMedium,
        Text = options.Name or "Dropdown",
        TextColor3 = Theme.Text,
        TextSize = 12,
        TextXAlignment = Enum.TextXAlignment.Left
    })
    
    local selected = options.Default or (options.Options and options.Options[1]) or "Select"
    
    local dropButton = CreateInstance("TextButton", {
        Name = "DropButton",
        Parent = dropdownFrame,
        BackgroundColor3 = Theme.Secondary,
        Position = UDim2.new(0, 10, 0, 28),
        Size = UDim2.new(1, -20, 0, 35),
        BorderSizePixel = 0,
        Font = Enum.Font.Gotham,
        Text = "  " .. selected,
        TextColor3 = Theme.Text,
        TextSize = 13,
        TextXAlignment = Enum.TextXAlignment.Left,
        AutoButtonColor = false
    })
    AddCorner(dropButton, 6)
    
    local arrow = CreateInstance("TextLabel", {
        Name = "Arrow",
        Parent = dropButton,
        BackgroundTransparency = 1,
        Position = UDim2.new(1, -30, 0, 0),
        Size = UDim2.new(0, 30, 1, 0),
        Font = Enum.Font.GothamBold,
        Text = "▼",
        TextColor3 = Theme.Primary,
        TextSize = 12
    })
    
    local optionsFrame = CreateInstance("Frame", {
        Name = "Options",
        Parent = dropdownFrame,
        BackgroundColor3 = Theme.Secondary,
        Position = UDim2.new(0, 10, 0, 68),
        Size = UDim2.new(1, -20, 0, 0),
        BorderSizePixel = 0,
        Visible = false
    })
    AddCorner(optionsFrame, 6)
    AddStroke(optionsFrame, Theme.Border, 1)
    
    local optionsList = CreateInstance("UIListLayout", {
        Parent = optionsFrame,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 2)
    })
    
    CreateInstance("UIPadding", {
        Parent = optionsFrame,
        PaddingTop = UDim.new(0, 5),
        PaddingBottom = UDim.new(0, 5),
        PaddingLeft = UDim.new(0, 5),
        PaddingRight = UDim.new(0, 5)
    })
    
    local isOpen = false
    
    local function UpdateDropdown(value)
        selected = value
        dropButton.Text = "  " .. selected
        
        if options.Callback then
            options.Callback(selected)
        end
    end
    
    dropButton.MouseButton1Click:Connect(function()
        isOpen = not isOpen
        optionsFrame.Visible = isOpen
        
        if isOpen then
            local contentHeight = #(options.Options or {}) * 32 + 10
            Tween(dropdownFrame, {Size = UDim2.new(1, 0, 0, 45 + contentHeight + 5)})
            Tween(arrow, {Rotation = 180})
            Tween(optionsFrame, {Size = UDim2.new(1, -20, 0, contentHeight)})
        else
            Tween(dropdownFrame, {Size = UDim2.new(1, 0, 0, 45)})
            Tween(arrow, {Rotation = 0})
            Tween(optionsFrame, {Size = UDim2.new(1, -20, 0, 0)})
        end
    end)
    
    for _, option in ipairs(options.Options or {}) do
        local optionButton = CreateInstance("TextButton", {
            Name = option,
            Parent = optionsFrame,
            BackgroundColor3 = Theme.Background,
            Size = UDim2.new(1, 0, 0, 28),
            BorderSizePixel = 0,
            Font = Enum.Font.Gotham,
            Text = "  " .. option,
            TextColor3 = Theme.Text,
            TextSize = 12,
            TextXAlignment = Enum.TextXAlignment.Left,
            AutoButtonColor = false
        })
        AddCorner(optionButton, 4)
        
        optionButton.MouseButton1Click:Connect(function()
            UpdateDropdown(option)
            isOpen = false
            optionsFrame.Visible = false
            Tween(dropdownFrame, {Size = UDim2.new(1, 0, 0, 45)})
            Tween(arrow, {Rotation = 0})
        end)
        
        optionButton.MouseEnter:Connect(function()
            Tween(optionButton, {BackgroundColor3 = Theme.Primary})
        end)
        
        optionButton.MouseLeave:Connect(function()
            Tween(optionButton, {BackgroundColor3 = Theme.Background})
        end)
    end
    
    dropdownFrame.MouseEnter:Connect(function()
        Tween(dropdownFrame, {BackgroundColor3 = Theme.Secondary})
    end)
    
    dropdownFrame.MouseLeave:Connect(function()
        if not isOpen then
            Tween(dropdownFrame, {BackgroundColor3 = Theme.Background})
        end
    end)
    
    return {
        SetValue = function(value)
            UpdateDropdown(value)
        end
    }
end

function Library:CreateLabel(options)
    local parent = options.Parent or (self.Frame and self.Frame or self.ScrollFrame)
    
    local label = CreateInstance("TextLabel", {
        Name = "Label",
        Parent = parent,
        BackgroundColor3 = Theme.Background,
        Size = UDim2.new(1, 0, 0, 35),
        BorderSizePixel = 0,
        Font = Enum.Font.Gotham,
        Text = options.Text or "Label",
        TextColor3 = Theme.TextDark,
        TextSize = 13,
        TextXAlignment = Enum.TextXAlignment.Left
    })
    AddCorner(label, 8)
    AddStroke(label, Theme.Border, 1)
    
    CreateInstance("UIPadding", {
        Parent = label,
        PaddingLeft = UDim.new(0, 15)
    })
    
    return {
        SetText = function(text)
            label.Text = text
        end
    }
end

function Library:CreateTextbox(options)
    local parent = options.Parent or (self.Frame and self.Frame or self.ScrollFrame)
    
    local textboxFrame = CreateInstance("Frame", {
        Name = "Textbox",
        Parent = parent,
        BackgroundColor3 = Theme.Background,
        Size = UDim2.new(1, 0, 0, 45),
        BorderSizePixel = 0
    })
    AddCorner(textboxFrame, 8)
    AddStroke(textboxFrame, Theme.Border, 1)
    
    local label = CreateInstance("TextLabel", {
        Name = "Label",
        Parent = textboxFrame,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 15, 0, 5),
        Size = UDim2.new(1, -30, 0, 15),
        Font = Enum.Font.GothamMedium,
        Text = options.Name or "Textbox",
        TextColor3 = Theme.Text,
        TextSize = 12,
        TextXAlignment = Enum.TextXAlignment.Left
    })
    
    local textbox = CreateInstance("TextBox", {
        Name = "Input",
        Parent = textboxFrame,
        BackgroundColor3 = Theme.Secondary,
        Position = UDim2.new(0, 10, 0, 25),
        Size = UDim2.new(1, -20, 0, 28),
        BorderSizePixel = 0,
        Font = Enum.Font.Gotham,
        PlaceholderText = options.Placeholder or "Enter text...",
        PlaceholderColor3 = Theme.TextDark,
        Text = options.Default or "",
        TextColor3 = Theme.Text,
        TextSize = 12,
        ClearTextOnFocus = false
    })
    AddCorner(textbox, 6)
    
    CreateInstance("UIPadding", {
        Parent = textbox,
        PaddingLeft = UDim.new(0, 10),
        PaddingRight = UDim.new(0, 10)
    })
    
    textbox.FocusLost:Connect(function(enterPressed)
        if options.Callback then
            options.Callback(textbox.Text, enterPressed)
        end
    end)
    
    textbox.Focused:Connect(function()
        Tween(textboxFrame, {BackgroundColor3 = Theme.Secondary})
    end)
    
    textbox.FocusLost:Connect(function()
        Tween(textboxFrame, {BackgroundColor3 = Theme.Background})
    end)
    
    return {
        SetValue = function(text)
            textbox.Text = text
        end
    }
end

function Library:CreateKeybind(options)
    local parent = options.Parent or (self.Frame and self.Frame or self.ScrollFrame)
    
    local keybindFrame = CreateInstance("Frame", {
        Name = "Keybind",
        Parent = parent,
        BackgroundColor3 = Theme.Background,
        Size = UDim2.new(1, 0, 0, 45),
        BorderSizePixel = 0
    })
    AddCorner(keybindFrame, 8)
    AddStroke(keybindFrame, Theme.Border, 1)
    
    local label = CreateInstance("TextLabel", {
        Name = "Label",
        Parent = keybindFrame,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 15, 0, 0),
        Size = UDim2.new(1, -80, 1, 0),
        Font = Enum.Font.GothamMedium,
        Text = options.Name or "Keybind",
        TextColor3 = Theme.Text,
        TextSize = 13,
        TextXAlignment = Enum.TextXAlignment.Left
    })
    
    local currentKey = options.Default or Enum.KeyCode.E
    
    local keybindButton = CreateInstance("TextButton", {
        Name = "Button",
        Parent = keybindFrame,
        BackgroundColor3 = Theme.Secondary,
        Position = UDim2.new(1, -70, 0.5, -15),
        Size = UDim2.new(0, 60, 0, 30),
        BorderSizePixel = 0,
        Font = Enum.Font.GothamBold,
        Text = currentKey.Name,
        TextColor3 = Theme.Primary,
        TextSize = 12,
        AutoButtonColor = false
    })
    AddCorner(keybindButton, 6)
    
    local waiting = false
    
    keybindButton.MouseButton1Click:Connect(function()
        waiting = true
        keybindButton.Text = "..."
        Tween(keybindButton, {BackgroundColor3 = Theme.Primary})
    end)
    
    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if waiting and input.UserInputType == Enum.UserInputType.Keyboard then
            currentKey = input.KeyCode
            keybindButton.Text = input.KeyCode.Name
            waiting = false
            Tween(keybindButton, {BackgroundColor3 = Theme.Secondary})
            
            if options.Callback then
                options.Callback(currentKey)
            end
        elseif not gameProcessed and input.KeyCode == currentKey and not waiting then
            if options.Callback then
                options.Callback(currentKey)
            end
        end
    end)
    
    keybindFrame.MouseEnter:Connect(function()
        Tween(keybindFrame, {BackgroundColor3 = Theme.Secondary})
    end)
    
    keybindFrame.MouseLeave:Connect(function()
        Tween(keybindFrame, {BackgroundColor3 = Theme.Background})
    end)
    
    return {
        SetKey = function(key)
            currentKey = key
            keybindButton.Text = key.Name
        end
    }
end

return Library