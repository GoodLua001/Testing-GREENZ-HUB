local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title="GreenZ Hub",
    SubTitle=" | Freemium Hop |", 
    TabWidth=160, 
    Theme="Dark",
    Acrylic=false,
    Size=UDim2.fromOffset(500, 320), 
    MinimizeKey=Enum.KeyCode.End
})
local Tabs = {
Gay=Window:AddTab({ Title="Information" }),
Main=Window:AddTab({ Title="Main Hop" }),
Farm=Window:AddTab({ Title="Farm Boss" }),
}
local Options = Fluent.Options
function topos(Pos)

    local plr = game.Players.LocalPlayer

    if plr.Character and plr.Character.Humanoid.Health > 0 and plr.Character:FindFirstChild("HumanoidRootPart") then

        if not Pos then 

            return 

        end

        local Distance = (Pos.Position - plr.Character.HumanoidRootPart.Position).Magnitude

        local nearestTeleport = CheckNearestTeleporter(Pos)

        if nearestTeleport then

            requestEntrance(nearestTeleport)

        end

        if not plr.Character:FindFirstChild("PartTele") then

            local PartTele = Instance.new("Part", plr.Character)

            PartTele.Size = Vector3.new(10,1,10)

            PartTele.Name = "PartTele"

            PartTele.Anchored = true

            PartTele.Transparency = 1

            PartTele.CanCollide = false

            PartTele.CFrame = WaitHRP(plr).CFrame 

            PartTele:GetPropertyChangedSignal("CFrame"):Connect(function()

                if not isTeleporting then return end

                task.wait()

                if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then

                    local targetCFrame = PartTele.CFrame

                    WaitHRP(plr).CFrame = CFrame.new(targetCFrame.Position.X, Pos.Position.Y, targetCFrame.Position.Z)

                end

            end)

        end

        isTeleporting = true

        local SpeedTw = getgenv().TweenSpeed

        if Distance <= 250 then

            SpeedTw = SpeedTw * 3

        end

        local targetCFrame = CFrame.new(Pos.Position.X, Pos.Position.Y, Pos.Position.Z)

        local Tween = game:GetService("TweenService"):Create(plr.Character.PartTele, TweenInfo.new(Distance / SpeedTw, Enum.EasingStyle.Linear), {CFrame = Pos})

        Tween:Play()

        Tween.Completed:Connect(function(status)

            if status == Enum.PlaybackState.Completed then

                if plr.Character:FindFirstChild("PartTele") then

                    plr.Character.PartTele:Destroy()

                end

                isTeleporting = false

            end

        end)

    end

end



getgenv().TweenSpeed = 350



function stopTeleport()

    isTeleporting = false

    local plr = game.Players.LocalPlayer

    if plr.Character:FindFirstChild("PartTele") then

        plr.Character.PartTele:Destroy()

    end

end



spawn(function()

    while task.wait() do

        if not isTeleporting then

            stopTeleport()

        end

    end

end)



spawn(function()

    local plr = game.Players.LocalPlayer

    while task.wait() do

        pcall(function()

            if plr.Character:FindFirstChild("PartTele") then

                if (plr.Character.HumanoidRootPart.Position - plr.Character.PartTele.Position).Magnitude >= 100 then

                    stopTeleport()

                end

            end

        end)

    end

end)



local plr = game.Players.LocalPlayer



local function onCharacterAdded(character)

    local humanoid = character:WaitForChild("Humanoid")

    humanoid.Died:Connect(function()

        stopTeleport()

    end)

end



plr.CharacterAdded:Connect(onCharacterAdded)



if plr.Character then

    onCharacterAdded(plr.Character)

end

local PosY = 25
local Type = 1
local Pos = CFrame.new(0, PosY, 0) -- Biến Pos khởi tạo mặc định
spawn(function()
    while task.wait() do
        if Type == 1 then
            Pos = CFrame.new(0, PosY, -19)
        elseif Type == 2 then
            Pos = CFrame.new(19, PosY, 0)
        elseif Type == 3 then
            Pos = CFrame.new(0, PosY, 19)
        elseif Type == 4 then
            Pos = CFrame.new(-19, PosY, 0)
        end
    end
end)

spawn(function()
    while task.wait(0.1) do
        Type = 1
        task.wait(0.2)
        Type = 2
        task.wait(0.2)
        Type = 3
        task.wait(0.2)
        Type = 4
        task.wait(0.2)
    end
end)
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local ParticleEmitter = Instance.new("ParticleEmitter")
local TweenService = game:GetService("TweenService")
ScreenGui.Parent=game.CoreGui
ScreenGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
ImageButton.Parent=ScreenGui
ImageButton.BackgroundColor3=Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel=0
ImageButton.Position=UDim2.new(0.120833337-0.10, 0, 0.0952890813+0.01, 0)
ImageButton.Size=UDim2.new(0, 50, 0, 50)
ImageButton.Draggable=true
ImageButton.Image="http://www.roblox.com/asset/?id=93927358445739"
UICorner.Parent=ImageButton
UICorner.CornerRadius=UDim.new(0, 12) 
ParticleEmitter.Parent=ImageButton
ParticleEmitter.LightEmission=1
ParticleEmitter.Size=NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(1, 0)})
ParticleEmitter.Lifetime=NumberRange.new(0.5, 1)
ParticleEmitter.Rate=0 
ParticleEmitter.Speed=NumberRange.new(5, 10)
ParticleEmitter.Color=ColorSequence.new(Color3.fromRGB(255, 85, 255), Color3.fromRGB(85, 255, 255))
local rotateTween = TweenService:Create(ImageButton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation=360})
ImageButton.MouseButton1Down:Connect(function()
    ParticleEmitter.Rate=100
    task.delay(1, function()
        ParticleEmitter.Rate=0
    end)
    rotateTween:Play()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
    rotateTween.Completed:Connect(function()
        ImageButton.Rotation=0
    end)
    local zoomTween = TweenService:Create(ImageButton, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Size=UDim2.new(0, 60, 0, 60)})
    zoomTween:Play()
    zoomTween.Completed:Connect(function()
        local resetZoom = TweenService:Create(ImageButton, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {Size=UDim2.new(0, 50, 0, 50)})
        resetZoom:Play()
    end)
end)
task.defer(function()
    if game:GetService("ReplicatedStorage"):FindFirstChild("Effect") 
        and game:GetService("ReplicatedStorage").Effect:FindFirstChild("Container") 
        and game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
        local DeathEffect = require(game:GetService("ReplicatedStorage").Effect.Container.Death)
        local CameraShaker = require(game:GetService("ReplicatedStorage").Util.CameraShaker)
        if CameraShaker then
            CameraShaker:Stop()
        end
        if hookfunction then
            hookfunction(DeathEffect, function(...) return ... end)
        end
    end
end)
function AutoHaki()
    pcall(function()
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end)
end

function EquipWeapon(ToolSe)
    pcall(function()
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            local Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            task.wait(0.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end)
end

_G.SelectWeapon = "Melee"
task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.SelectWeapon == "Melee" then
                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        _G.SelectWeapon = v.Name
                        break
                    end
                end
            end
        end)
    end
end)

-- V3/V4 race skills
_G.AutoTurnOnV3 = false
spawn(function()
    local prevState = false
    while true do
        task.wait(0.1)
        pcall(function()
            if _G.AutoTurnOnV3 ~= prevState then
                if _G.AutoTurnOnV3 then
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                end
                prevState = _G.AutoTurnOnV3
            end
        end)
    end
end)

_G.AutoTurnOnV4 = false
spawn(function()
    local lastCheckTime = 0
    while true do
        task.wait(0.1)
        if _G.AutoTurnOnV4 then
            local currentTime = tick()
            if currentTime - lastCheckTime >= 0.5 then
                lastCheckTime = currentTime
                local character = game.Players.LocalPlayer.Character
                if character and character:FindFirstChild("RaceEnergy") and
                   character.RaceEnergy.Value >= 1 and
                   not character.RaceTransformed.Value then
                    local be = game:GetService("VirtualInputManager")
                    be:SendKeyEvent(true, "Y", false, game)
                    task.wait(0.1)
                    be:SendKeyEvent(false, "Y", false, game)
                end
            end
        end
    end
end)
_G.FastAttack = true
if _G.FastAttack then
    local VirtualInputManager = game:GetService("VirtualInputManager")
    local CollectionService = game:GetService("CollectionService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer

    local Remotes = ReplicatedStorage:WaitForChild("Remotes")
    local Validator = Remotes:WaitForChild("Validator")
    local CommF = Remotes:WaitForChild("CommF_")
    local CommE = Remotes:WaitForChild("CommE")
    local Net = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Net")
    local RegisterAttack = Net:WaitForChild("RE/RegisterAttack")
    local RegisterHit = Net:WaitForChild("RE/RegisterHit")

    local Settings = {
        AutoClick = true,
        ClickDelay = 0
    }

    local FastAttack = {
        Distance = 100,
        attackMobs = true,
        attackPlayers = false,
        Equipped = nil
    }

    local function IsAlive(character)
        return character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
    end

    local function ProcessEnemies(OthersEnemies, Folder)
        local BasePart = nil
        for _, Enemy in Folder:GetChildren() do
            local Head = Enemy:FindFirstChild("Head")
            if Head and IsAlive(Enemy) and Player:DistanceFromCharacter(Head.Position) < FastAttack.Distance then
                if Enemy ~= Player.Character then
                    table.insert(OthersEnemies, {Enemy, Head})
                    BasePart = Head
                end
            end
        end
        return BasePart
    end

    function FastAttack:Attack(BasePart, OthersEnemies)
        if not BasePart or #OthersEnemies == 0 then
            return
        end
        pcall(function()
            RegisterAttack:FireServer(Settings.ClickDelay or 0)
            RegisterHit:FireServer(BasePart, OthersEnemies)
        end)
    end

    function FastAttack:AttackNearest()
        local OthersEnemies = {}
        local Part1 = ProcessEnemies(OthersEnemies, game:GetService("Workspace").Enemies)
        local Part2 = ProcessEnemies(OthersEnemies, game:GetService("Workspace").Characters)

        local character = Player.Character
        if not character then
            return
        end

        local equippedWeapon = character:FindFirstChildOfClass("Tool")
        if equippedWeapon and equippedWeapon:FindFirstChild("LeftClickRemote") then
            for _, enemyData in ipairs(OthersEnemies) do
                local enemy = enemyData[1]
                local direction = (enemy.HumanoidRootPart.Position - character:GetPivot().Position).Unit
                pcall(function()
                    equippedWeapon.LeftClickRemote:FireServer(direction, 1)
                end)
            end
        elseif #OthersEnemies > 0 then
            self:Attack(Part1 or Part2, OthersEnemies)
        else
            task.wait(0)
        end
    end

    function FastAttack:BladeHits()
        local Equipped = IsAlive(Player.Character) and Player.Character:FindFirstChildOfClass("Tool")
        if Equipped and Equipped.ToolTip ~= "Gun" then
            self:AttackNearest()
        else
            task.wait(0)
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
end
Tabs.Gay:AddParagraph({
    Title="Deverloper: LuaAnarchist",
    Content="https://discord.gg/fRg2P9CpzW"
})
local executorName
if identifyexecutor then
    executorName=identifyexecutor()
elseif getexecutorname then
    executorName=getexecutorname()
end
if executorName then
    Tabs.Info:AddParagraph({
        Title="Client Bạn Đang Dùng",
        Content=executorName
    })
end
Tabs.Gay:AddButton({
        Title="Server Discord Me",
        Description="Server Discord Của Tôi",
        Callback=function()
            setclipboard(tostring("https://discord.gg/fRg2P9CpzW")) 
        end
})
local Boss = Tabs.Main:AddSection("Hop Boss")
Tabs.Main:AddButton({
    Title="Hop Dough King",
    Description="Bấm 1 Lần Duy Nhất",
    Callback=function()
        HopDoughKing()
    end
})

Tabs.Main:AddButton({
    Title="Hop Rip Indra",
    Description="Bấm 1 Lần Duy Nhất",
    Callback=function()
        Hopripindra()
    end
})

Tabs.Main:AddButton({
    Title="Hop Darkbeard",
    Description="Bấm 1 Lần Duy Nhất",
    Callback=function()
        HopDarkbeard()
    end
})

Tabs.Main:AddButton({
    Title="Hop Tyrant of the Skies",
    Description="Bấm 1 Lần Duy Nhất",
    Callback=function()
        HopTyrant()
    end
})

local HienTuong = Tabs.Main:AddSection("Hop FullMoon Và Đảo")

Tabs.Main:AddButton({
    Title="Hop Full Moon",
    Description="Bấm 1 Lần Duy Nhất",
    Callback=function()
        HopFullMoon()
    end
})

Tabs.Main:AddButton({
    Title="Hop Mirage",
    Description="Bấm 1 Lần Duy Nhất",
    Callback=function()
        HopMirage()
    end
})
local Cac = Tabs.Farm:AddSection("Farm Boss")
local DoughKing = Tabs.Farm:AddToggle("DoughKing", {
    Title="Auto Attack Dough King",
    Description="", 
    Default=false 
})

DoughKing:OnChanged(function(Value)
    _G.FarmDoughKing=Value
end)

Options.DoughKing:SetValue(false)

spawn(function()
    while task.wait() do
        if _G.FarmDoughKing then
            pcall(function()
                local enemies = game:GetService("Workspace").Enemies
                local plr = game.Players.LocalPlayer
                local hrp = WaitHRP(plr)
                if not hrp or not plr.Character or not plr.Character.Humanoid or plr.Character.Humanoid.Health <= 0 then
                    task.wait(1)
                    return
                end
                local foundBoss = false
                for _, v in pairs(enemies:GetChildren()) do
                    if v.Name == "Dough King" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        foundBoss = true
                        repeat
                            task.wait()
                            if not plr.Character or not plr.Character.Humanoid or plr.Character.Humanoid.Health <= 0 then
                                break
                            end
                            AutoHaki()
                            EquipWeapon(_G.SelectWeapon)
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.WalkSpeed = 0
                            topos(v.HumanoidRootPart.CFrame * Pos)
                            sethiddenproperty(plr, "SimulationRadius", math.huge)
                        until not _G.FarmDoughKing or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)
local Rip = Tabs.Farm:AddToggle("Rip", {
    Title="Auto Attack Rip Indra",
    Description="", 
    Default=false 
})

Rip:OnChanged(function(Value)
    _G.FarmRipIndra=Value
end)

Options.Rip:SetValue(false)

spawn(function()
    while task.wait() do
        if _G.FarmRipIndra then
            pcall(function()
                local enemies = game:GetService("Workspace").Enemies
                local plr = game.Players.LocalPlayer
                local hrp = WaitHRP(plr)
                if not hrp or not plr.Character or not plr.Character.Humanoid or plr.Character.Humanoid.Health <= 0 then
                    task.wait(1)
                    return
                end
                local foundBoss = false
                for _, v in pairs(enemies:GetChildren()) do
                    if v.Name == "rip_indra True Form" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        foundBoss = true
                        repeat
                            task.wait()
                            if not plr.Character or not plr.Character.Humanoid or plr.Character.Humanoid.Health <= 0 then
                                break
                            end
                            AutoHaki()
                            EquipWeapon(_G.SelectWeapon)
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.WalkSpeed = 0
                            topos(v.HumanoidRootPart.CFrame * Pos)
                            sethiddenproperty(plr, "SimulationRadius", math.huge)
                        until not _G.FarmRipIndra or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)
local Dark = Tabs.Farm:AddToggle("Dark", {
    Title="Auto Attack Darkbeard",
    Description="Only To Sea 2", 
    Default=false 
})

Dark:OnChanged(function(Value)
    _G.FarmDark=Value
end)

Options.Dark:SetValue(false)

spawn(function()
    while task.wait() do
        if _G.FarmRipIndra then
            pcall(function()
                local enemies = game:GetService("Workspace").Enemies
                local plr = game.Players.LocalPlayer
                local hrp = WaitHRP(plr)
                if not hrp or not plr.Character or not plr.Character.Humanoid or plr.Character.Humanoid.Health <= 0 then
                    task.wait(1)
                    return
                end
                local foundBoss = false
                for _, v in pairs(enemies:GetChildren()) do
                    if v.Name == "Darkbeard" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        foundBoss = true
                        repeat
                            task.wait()
                            if not plr.Character or not plr.Character.Humanoid or plr.Character.Humanoid.Health <= 0 then
                                break
                            end
                            AutoHaki()
                            EquipWeapon(_G.SelectWeapon)
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.WalkSpeed = 0
                            topos(v.HumanoidRootPart.CFrame * Pos)
                            sethiddenproperty(plr, "SimulationRadius", math.huge)
                        until not _G.FarmDark or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)
local Tyrant = Tabs.Farm:AddToggle("Tyrant", {
    Title="Auto Attack Tyrant of the Skies",
    Description="", 
    Default=false 
})

Rip:OnChanged(function(Value)
    _G.FarmTyrant=Value
end)

Options.Tyrant:SetValue(false)

spawn(function()
    while task.wait() do
        if _G.FarmTyrant then
            pcall(function()
                local enemies = game:GetService("Workspace").Enemies
                local plr = game.Players.LocalPlayer
                local hrp = WaitHRP(plr)
                if not hrp or not plr.Character or not plr.Character.Humanoid or plr.Character.Humanoid.Health <= 0 then
                    task.wait(1)
                    return
                end
                local foundBoss = false
                for _, v in pairs(enemies:GetChildren()) do
                    if v.Name == "Tyrant of the Skies" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        foundBoss = true
                        repeat
                            task.wait()
                            if not plr.Character or not plr.Character.Humanoid or plr.Character.Humanoid.Health <= 0 then
                                break
                            end
                            AutoHaki()
                            EquipWeapon(_G.SelectWeapon)
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.WalkSpeed = 0
                            topos(v.HumanoidRootPart.CFrame * Pos)
                            sethiddenproperty(plr, "SimulationRadius", math.huge)
                        until not _G.FarmTyrant or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")

local TrollApi = loadstring(game:HttpGet("https://raw.githubusercontent.com/PorryDepTrai/exploit/main/SimpleTroll.lua"))()

local function decode(job)
    return TrollApi["Decode JobId API Porry | discord.gg/umaru | MB KHOI"](job, "discord.gg/umaru | MB_Bank 9929992999 Phan Dat Khoi")
end

local function scrapeAPI(SelectApi)
    local url = "https://hostserver.porry.store/bloxfruit/bot/JobId/" .. SelectApi
    
    local success, response = pcall(function()
            return request({
            Url = url,
            Method = "GET"
        })
    end)

    if success and response.Success then
        local data = game.HttpService:JSONDecode(response.Body)

        if data.Amount and data.Amount > 0 then
            local jobIds = {}

            for _, job in ipairs(data.JobId) do
                for jobId, _ in pairs(job) do
                    table.insert(jobIds, jobId)
                end
            end
            
            TS = tick()
            return jobIds
        end
    end
    
    return "Failed"
end

function HopDoughKing()
    local jobIds = scrapeAPI("doughking")
    if jobIds == "Failed" then return false end
    
    for _, jobId in ipairs(jobIds) do
        game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", decode(jobId))
        wait(5)
    end
    
    return true
end

function Hopripindra()
    local jobIds = scrapeAPI("indra")
    if jobIds == "Failed" then return false end
    
    for _, jobId in ipairs(jobIds) do
        game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", decode(jobId))
        wait(5)
    end
    
    return true
end
function HopFullMoon()
    local jobIds = scrapeAPI("fullmoon")
    if jobIds == "Failed" then return false end
    
    for _, jobId in ipairs(jobIds) do
        game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", decode(jobId))
        wait(5)
    end
    
    return true
end
function HopMirage()
    local jobIds = scrapeAPI("mirage")
    if jobIds == "Failed" then return false end
    
    for _, jobId in ipairs(jobIds) do
        game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", decode(jobId))
        wait(5)
    end
    
    return true
end
function HopTyrant()
    local jobIds = scrapeAPI("conchimkicut")
    if jobIds == "Failed" then return false end
    
    for _, jobId in ipairs(jobIds) do
        game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", decode(jobId))
        wait(5)
    end
    
    return true
end
function HopDarkbeard()
    local jobIds = scrapeAPI("darkbread")
    if jobIds == "Failed" then return false end
    
    for _, jobId in ipairs(jobIds) do
        game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", decode(jobId))
        wait(5)
    end
    
    return true
end