local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title = "GreenZ Hub | Hop Version | ",
    SubTitle = "Made By LuaAnarchist", 
    TabWidth = 160, 
    Theme = "Dark",
    Acrylic = false,
    Size = UDim2.fromOffset(480, 320), 
    MinimizeKey = Enum.KeyCode.End
})
local Tabs = {
    Information = Window:AddTab({ Title = "Information" }),
    Main = Window:AddTab({ Title = "Main Hop" }),
}
local Options = Fluent.Options

-- Fix GUI elements and animations
do
    local ScreenGui = Instance.new("ScreenGui")
    local ImageButton = Instance.new("ImageButton")
    local UICorner = Instance.new("UICorner")
    local ParticleEmitter = Instance.new("ParticleEmitter")
    local TweenService = game:GetService("TweenService")
    
    ScreenGui.Parent = game.CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    ImageButton.Parent = ScreenGui
    ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderSizePixel = 0
    ImageButton.Position = UDim2.new(0.120833337 - 0.10, 0, 0.0952890813 + 0.01, 0)
    ImageButton.Size = UDim2.new(0, 50, 0, 50)
    ImageButton.Draggable = true
    -- Fixed asset ID to a valid one
    ImageButton.Image = "rbxassetid://6031225814" 
    
    UICorner.Parent = ImageButton
    UICorner.CornerRadius = UDim.new(0, 12) 
    
    ParticleEmitter.Parent = ImageButton
    ParticleEmitter.LightEmission = 1
    ParticleEmitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(1, 0)})
    ParticleEmitter.Lifetime = NumberRange.new(0.5, 1)
    ParticleEmitter.Rate = 0 
    ParticleEmitter.Speed = NumberRange.new(5, 10)
    ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(255, 85, 255), Color3.fromRGB(85, 255, 255))
    
    local rotateTween = TweenService:Create(ImageButton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 360})
    
    ImageButton.MouseButton1Down:Connect(function()
        ParticleEmitter.Rate = 100
        task.delay(1, function()
            ParticleEmitter.Rate = 0
        end)
        rotateTween:Play()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
        rotateTween.Completed:Connect(function()
            ImageButton.Rotation = 0
        end)
        local zoomTween = TweenService:Create(ImageButton, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Size = UDim2.new(0, 60, 0, 60)})
        zoomTween:Play()
        zoomTween.Completed:Connect(function()
            local resetZoom = TweenService:Create(ImageButton, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Size = UDim2.new(0, 50, 0, 50)})
            resetZoom:Play()
        end)
    end)
end

-- Fix death effect disabling
task.defer(function()
    if game:GetService("ReplicatedStorage"):FindFirstChild("Effect") 
        and game:GetService("ReplicatedStorage").Effect:FindFirstChild("Container") 
        and game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
        local DeathEffect = require(game:GetService("ReplicatedStorage").Effect.Container.Death)
        local CameraShaker = require(game:GetService("ReplicatedStorage").Util.CameraShaker)
        if CameraShaker then
            pcall(function() CameraShaker:Stop() end)
        end
        if hookfunction then
            pcall(function() hookfunction(DeathEffect, function(...) return ... end) end)
        end
    end
end)

-- Game functions
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function to(P)
    repeat 
        wait(_G.Fast_Delay or 0)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    until (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
end

function Tween2(KG)
    local Distance = (KG.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local Speed = 350
    local tweenInfo = TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear)
    local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, tweenInfo, {
        CFrame = KG
    })
    tween:Play()
    if _G.StopTween2 then
        tween:Cancel()
    end
    _G.Clip2 = true
    wait(Distance / Speed)
    _G.Clip2 = false
end

function BKP(Point)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
end

TweenSpeed = 350
function Tween(KG)
    local Distance = (KG.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local Speed = TweenSpeed  
    local tweenInfo = TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear)
    local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, tweenInfo, {
        CFrame = KG
    })
    tween:Play()
    if _G.StopTween then
        tween:Cancel()
    end
end

function EquipTool(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end

-- Fix NoClip function to avoid errors when toggling off
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoBoss then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                    Noclip.Velocity = Vector3.new(0, 0, 0)
                end
            else
                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                end
            end
        end)
    end
end)

-- Fix NoClip part 2
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.AutoBoss then
                for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)

-- Stun remover
task.spawn(function()
    if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
        game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
                    game.Players.LocalPlayer.Character.Stun.Value = 0
                end
            end)
        end)
    end
end)

-- Settings management
local foldername = "GreenZ Hub"
local filename = foldername.."/Setting.json"

function saveSettings()
    local HttpService = game:GetService("HttpService")
    local json = HttpService:JSONEncode(_G)
    pcall(function()
        if isfolder(foldername) then
            if isfile(filename) then
                writefile(filename, json)
            else
                writefile(filename, json)
            end
        else
            makefolder(foldername)
            writefile(filename, json)
        end
    end)
end

function loadSettings()
    local HttpService = game:GetService("HttpService")
    if isfolder(foldername) and isfile(filename) then
        pcall(function()
            _G = HttpService:JSONDecode(readfile(filename))
        end)
    end
end

-- GUI setup
local Gay = Tabs.Information:AddSection("Information Script")
local Prehistoric = Tabs.Information:AddParagraph({
    Title = "Dev Script",
    Content = "LuaAnarchist, ! •Shinichi, Lilnhan Con, Nghĩa Roblox"
})

-- Add Boss Hop buttons
Tabs.Main:AddButton({
    Title = "Hop RipIndra",
    Description = "",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GoodLua001/Api-All/refs/heads/main/ripindra.lua"))()
    end
})

Tabs.Main:AddButton({
    Title = "Hop Dough King",
    Description = "",
    Callback = function()
        getgenv().Dough = function()
            local url = 'https://xeterapi.vercel.app/api/Dough'
            local chooses
            local foundServers = game:GetService('HttpService'):JSONDecode(game:HttpGet(url))
            for i, v in pairs(foundServers) do
                if v.jobId ~= game.JobId then
                    chooses = v
                    break
                end
            end
            if chooses then
                game:GetService("TeleportService"):TeleportToPlaceInstance(4442272183, chooses.jobId, game.Players.LocalPlayer)
            end
        end

        function CheckDough()
            return game.Workspace._WorldOrigin.Locations:FindFirstChild("Error")
        end

        spawn(function()
            while task.wait(3) do
                pcall(function()
                    if not CheckDough() then
                        Dough()
                    end
                end)
            end
        end)
    end
})

Tabs.Main:AddButton({
    Title = "Hop DarkBread",
    Description = "",
    Callback = function()
        getgenv().Dark = function()
            local url = 'https://xeterapi.vercel.app/api/Dark'
            local chooses
            local foundServers = game:GetService('HttpService'):JSONDecode(game:HttpGet(url))
            for i, v in pairs(foundServers) do
                if v.jobId ~= game.JobId then
                    chooses = v
                    break
                end
            end
            if chooses then
                game:GetService("TeleportService"):TeleportToPlaceInstance(4442272183, chooses.jobId, game.Players.LocalPlayer)
            end
        end

        function CheckDark()
            return game.Workspace._WorldOrigin.Locations:FindFirstChild("Error")
        end

        spawn(function()
            while task.wait(3) do
                pcall(function()
                    if not CheckDark() then
                        Dark()
                    end
                end)
            end
        end)
    end
})

-- Set up boss selection
local tableBoss = {"rip_indra True Form", "Dough King", "Darkbeard"}
local DropdownBoss = Tabs.Main:AddDropdown("DropdownBoss", {
    Title = "Select Boss Need Attack",
    Description = "",
    Values = tableBoss,
    Multi = false,
    Default = 1,
})

DropdownBoss:SetValue(_G.SelectBoss or tableBoss[1])
DropdownBoss:OnChanged(function(Value)
    _G.SelectBoss = Value
    saveSettings()
end)

-- Add boss attack toggle
local ToggleAutoFarmBoss = Tabs.Main:AddToggle("ToggleAutoFarmBoss", {
    Title = "Attack Boss",
    Description = "", 
    Default = false 
})

ToggleAutoFarmBoss:OnChanged(function(Value)
    _G.AutoBoss = Value
    saveSettings()
end)

Options.ToggleAutoFarmBoss:SetValue(_G.AutoBoss or false)

-- Define attack position
_G.Pos = CFrame.new(0, 30, 0)
local Pos = CFrame.new(0, 30, 0)

-- Boss attack function
spawn(function()
    while wait() do
        if _G.AutoBoss then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == _G.SelectBoss then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait(_G.Fast_Delay or 0.1)
                                    AutoHaki()
                                    EquipTool(_G.SelectWeapon or "Melee")
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)                             
                                    Tween(v.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                until not _G.AutoBoss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * Pos)
                    end
                end
            end)
        end
    end
end)

-- Notification
Fluent:Notify({
    Title = "GreenZ Hub",
    Content = "Done Load Code",
    Duration = 1
})

-- FastAttack implementation
_G.FastAttack = true

if _G.FastAttack then
    local _ENV = (getgenv or getrenv or getfenv)()

    local function SafeWaitForChild(parent, childName)
        local success, result = pcall(function()
            return parent:WaitForChild(childName)
        end)
        if not success or not result then
            warn("Failed to find child: " .. childName)
        end
        return result
    end

    local function WaitChilds(path, ...)
        local last = path
        for _, child in ipairs({...}) do
            last = last:FindFirstChild(child) or SafeWaitForChild(last, child)
            if not last then break end
        end
        return last
    end

    local VirtualInputManager = game:GetService("VirtualInputManager")
    local CollectionService = game:GetService("CollectionService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local TeleportService = game:GetService("TeleportService")
    local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer

    if not Player then
        warn("Local player not found.")
        return
    end

    local Remotes = SafeWaitForChild(ReplicatedStorage, "Remotes")
    if not Remotes then return end

    local Validator = SafeWaitForChild(Remotes, "Validator")
    local CommF = SafeWaitForChild(Remotes, "CommF_")
    local CommE = SafeWaitForChild(Remotes, "CommE")

    local ChestModels = SafeWaitForChild(workspace, "ChestModels")
    local WorldOrigin = SafeWaitForChild(workspace, "_WorldOrigin")
    local Characters = SafeWaitForChild(workspace, "Characters")
    local Enemies = SafeWaitForChild(workspace, "Enemies")
    local Map = SafeWaitForChild(workspace, "Map")

    local EnemySpawns = SafeWaitForChild(WorldOrigin, "EnemySpawns")
    local Locations = SafeWaitForChild(WorldOrigin, "Locations")

    local RenderStepped = RunService.RenderStepped
    local Heartbeat = RunService.Heartbeat
    local Stepped = RunService.Stepped

    local Modules = SafeWaitForChild(ReplicatedStorage, "Modules")
    local Net = SafeWaitForChild(Modules, "Net")

    local sethiddenproperty = sethiddenproperty or function(...) return ... end
    local setupvalue = setupvalue or (debug and debug.setupvalue)
    local getupvalue = getupvalue or (debug and debug.getupvalue)

    local Settings = {
        AutoClick = true,
        ClickDelay = 0,
    }

    local Module = {}

    Module.FastAttack = (function()
        if _ENV.rz_FastAttack then
            return _ENV.rz_FastAttack
        end

        local FastAttack = {
            Distance = 250,
            attackMobs = true,
            attackPlayers = true,
            Equipped = nil
        }

        local RegisterAttack = SafeWaitForChild(Net, "RE/RegisterAttack")
        local RegisterHit = SafeWaitForChild(Net, "RE/RegisterHit")

        local function IsAlive(character)
            return character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
        end

        local function ProcessEnemies(OthersEnemies, Folder)
            local BasePart = nil
            for _, Enemy in ipairs(Folder:GetChildren()) do
                local Head = Enemy:FindFirstChild("Head")
                if Head and IsAlive(Enemy) and Player:DistanceFromCharacter(Head.Position) < FastAttack.Distance then
                    if Enemy ~= Player.Character then
                        table.insert(OthersEnemies, { Enemy, Head })
                        BasePart = Head
                    end
                end
            end
            return BasePart
        end

        function FastAttack:Attack(BasePart, OthersEnemies)
            if not BasePart or #OthersEnemies == 0 then return end
            RegisterAttack:FireServer(Settings.ClickDelay or 0)
            RegisterHit:FireServer(BasePart, OthersEnemies)
        end

        function FastAttack:AttackNearest()
            local OthersEnemies = {}
            local Part1 = ProcessEnemies(OthersEnemies, Enemies)
            local Part2 = ProcessEnemies(OthersEnemies, Characters)
            if #OthersEnemies > 0 then
                self:Attack(Part1 or Part2, OthersEnemies)
            else
                task.wait(0.5)
            end
        end

        function FastAttack:BladeHits()
            local Equipped = IsAlive(Player.Character) and Player.Character:FindFirstChildOfClass("Tool")
            if Equipped and Equipped.ToolTip ~= "Gun" then
                self:AttackNearest()
            else
                task.wait(0.5)
            end
        end

        task.spawn(function()
            while task.wait(Settings.ClickDelay) do
                if Settings.AutoClick then
                    pcall(function()
                        FastAttack:BladeHits()
                    end)
                end
            end
        end)

        _ENV.rz_FastAttack = FastAttack
        return FastAttack
    end)()
end