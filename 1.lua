spawn(function()
    while wait() do
        local function blockPrints()
            print = function() end
            warn = function() end
            error = function() end
            debug.traceback = function() end
            debug.info = function() end
        end
        local function monitorMetatables()
            local mt = getrawmetatable(game)
            if mt and not mt.__metatable then
                setreadonly(mt, false)
                local oldIndex = mt.__index
                local oldNewIndex = mt.__newindex
                mt.__index = function(self, key)
                    if key == "debug" or key == "getrawmetatable" then
                    end
                    return oldIndex(self, key)
                end
                mt.__newindex = function(self, key, value)
                    if key == "debug" or key == "getrawmetatable" then
                    end
                    return oldNewIndex(self, key, value)
                end
                setreadonly(mt, true)
            end
        end
        local function blockUnsafeFunctions()
            local unsafeFunctions = { "getfenv", "setfenv", "loadstring", "debug.setupvalue", "debug.setfenv" }
            for _, func in ipairs(unsafeFunctions) do
                _G[func] = function() 
                end
            end
        end
        local function blockSensitiveFunctions()
            collectgarbage = function() 
            end
            os.time = function() 
            end
            os.date = function() 
            end
        end
        local function monitorEnvironment()
            local sensitiveVars = { "_G", "getfenv", "setfenv", "debug", "loadstring", "setmetatable", "getrawmetatable" }
            for _, var in ipairs(sensitiveVars) do
                local success, result = pcall(function() return _G[var] end)
                if success and result then
                end
            end
        end
        pcall(blockPrints)
        pcall(monitorMetatables)
        pcall(monitorEnvironment)
        pcall(blockSensitiveFunctions)
        pcall(blockUnsafeFunctions)
    end
end)


local function TypingEffect(label, text, speed)
    label.Text = ""
    for i = 1, #text do
        label.Text = string.sub(text, 1, i)
        wait(speed)
    end
end
shared.LoaderTitle = ''
local Metadata = {
    LoaderData = {
        Colors = shared.LoaderColors or {
            Main = Color3.fromRGB(40, 40, 40),
            LoaderBackground = Color3.fromRGB(3, 252, 3),
        }
    },
    Keyframes = shared.LoaderKeyFrames or {
        [1] = {0.5, 40},
        [2] = {0.7, 80},
        [3] = {0.5, 100},
    }
}
local StepTexts = {
    [1] = "Loading data and checking system... ",
    [2] = "Prepare interface and process information...",
    [3] = "Done Loading!"
}
function TweenObject(object, speed, info)
    game.TweenService:Create(object, TweenInfo.new(speed, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), info):Play()
end
function CreateObject(className, properties)
    local instance = Instance.new(className)
    local parent
    for propertyName, propertyValue in pairs(properties) do
        if propertyName ~= "Parent" then
            instance[propertyName] = propertyValue
        else
            parent = propertyValue
        end
    end
    instance.Parent = parent
    return instance
end
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local userId = player.UserId
local userName = player.Name
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420
local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
local function CreateUICorner(radius, parent)
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, radius)
    UICorner.Parent = parent
end
local Core = CreateObject("ScreenGui", {
    Name = "Core",
    Parent = game.CoreGui
})
local Main = CreateObject("Frame", {
    Name = "Main",
    Parent = Core,
    BackgroundColor3 = Metadata.LoaderData.Colors.Main,
    BorderSizePixel = 3,
    ClipsDescendants = true,
    Position = UDim2.new(40, 40, 40),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Size = UDim2.new(0, 0, 0, 0),
})
CreateUICorner(15, Main)
local UserImage = CreateObject("ImageLabel", {
    Name = "UserImage",
    Parent = Main,
    BackgroundTransparency = 1,
    Image = content,
    Position = UDim2.new(0, 15, 0, 10),
    Size = UDim2.new(0, 60, 0, 60),
})
CreateUICorner(30, UserImage)
local UserName = CreateObject("TextLabel", {
    Name = "UserName",
    Parent = Main,
    BackgroundTransparency = 1,
    Text = "",
    Position = UDim2.new(0, 80, 0, 10),
    Size = UDim2.new(0, 240, 0, 50),
    Font = Enum.Font.GothamBold,
    TextColor3 = Color3.fromRGB(0, 0, 0),
    TextStrokeTransparency = 0,
    TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
    TextSize = 16,
    TextXAlignment = Enum.TextXAlignment.Left,
})
local StepLabel = CreateObject("TextLabel", {
    Name = "StepLabel",
    Parent = Main,
    BackgroundTransparency = 1,
    Position = UDim2.new(0.5, 0, 1, -25),
    Size = UDim2.new(1, -20, 0, 20),
    Text = "",
    Font = Enum.Font.SourceSansBold,
    TextColor3 = Color3.fromRGB(255, 255, 255),
    TextStrokeTransparency = 0,
    TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
    TextSize = 24,
    TextXAlignment = Enum.TextXAlignment.Center,
    AnchorPoint = Vector2.new(0.5, 0.5)
})
local BG = CreateObject("Frame", {
    Name = "BG",
    Parent = Main,
    AnchorPoint = Vector2.new(0.5, 0),
    BackgroundTransparency = 1,
    BackgroundColor3 = Metadata.LoaderData.Colors.LoaderBackground,
    BorderSizePixel = 0,
    Position = UDim2.new(0.5, 0, 0, 70),
    Size = UDim2.new(0.85, 0, 0, 24),
})
CreateUICorner(12, BG)
local Progress = CreateObject("Frame", {
    Name = "Progress",
    Parent = BG,
    BorderSizePixel = 0,
    Size = UDim2.new(0, 0, 0, 24),
})
CreateUICorner(12, Progress)
local UIGradient = Instance.new("UIGradient", Progress)
UIGradient.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255), Color3.fromRGB(0, 0, 0))
UIGradient.Rotation = 45
function UpdateStepText(step)
    TypingEffect(StepLabel, StepTexts[step] or "", 0.03)
end
function UpdatePercentage(percentage, step)
    TweenObject(Progress, 0.3, {
        Size = UDim2.new(percentage / 100, 0, 0, 24)
    })
    UpdateStepText(step)
end
function AnimeAppear(object, speed)
    TweenObject(object, speed, {
        Position = UDim2.new(0.5, 0, 0.5, 0),
        Size = UDim2.new(0, 350, 0, 160)
    })
end
function AnimeDisappear(object, speed)
    TweenObject(object, speed, {
        Position = UDim2.new(0.5, 0, 1, 0),
        Size = UDim2.new(0, 0, 0, 0)
    })
end
AnimeAppear(Main, 0.5)
wait(0.5)
TypingEffect(UserName, "Wellcome: " .. player.DisplayName, 0.03)
wait(0.3)
for i, v in pairs(Metadata.Keyframes) do
    wait(v[1])
    UpdatePercentage(v[2], i)
end
wait(1)
AnimeDisappear(Main, 0.5)
wait(0.5)
Core:Destroy()
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title="GreenZ Hub",
    SubTitle="By LuaAnarchist", 
    TabWidth=160, 
    Theme="Dark",
    Acrylic=false,
    Size=UDim2.fromOffset(500, 320), 
    MinimizeKey=Enum.KeyCode.End
})
local Tabs = {
    Shop=Window:AddTab({ Title="Tab Shop" }),
    Main=Window:AddTab({ Title="Tab Farming" }),
    Setting=Window:AddTab({ Title="Tab Setting" }),
    Vocalno=Window:AddTab({ Title="Tab Volcano" }),
    Stack=Window:AddTab({ Title="Tab Stack Farming(Updating)" }),
    Sub=Window:AddTab({ Title="Tab Sub Farming(Updating)" }),
    Raid=Window:AddTab({ Title="Raid And Fruits" }),
}
local Options = Fluent.Options
local id = game.PlaceId
if id==2753915549 then Sea1=true; elseif id==4442272183 then Sea2=true; elseif id==7449423635 then Sea3=true; else game:Shutdown() end;
game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait()
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
Sea1=false
Sea2=false
Sea3=false
local placeId = game.PlaceId
if placeId==2753915549 then
Sea1=true
elseif placeId==4442272183 then
Sea2=true
elseif placeId==7449423635 then
Sea3=true
end
function CheckLevel()
local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
if Sea1 then
if Lv==1 or Lv<=9 or SelectMonster=="Bandit" then 
Ms="Bandit"
NameQuest="BanditQuest1"
QuestLv=1
NameMon="Bandit"
CFrameQ=CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
CFrameMon=CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
elseif Lv==10 or Lv<=14 or SelectMonster=="Monkey" then
Ms="Monkey"
NameQuest="JungleQuest"
QuestLv=1
NameMon="Monkey"
CFrameQ=CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
CFrameMon=CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
elseif Lv==15 or Lv<=29 or SelectMonster=="Gorilla" then
Ms="Gorilla"
NameQuest="JungleQuest"
QuestLv=2
NameMon="Gorilla"
CFrameQ=CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
CFrameMon=CFrame.new(-1142.6488037109, 40.462348937988,-515.39227294922)
elseif Lv==30 or Lv<=39 or SelectMonster=="Pirate" then
Ms="Pirate"
NameQuest="BuggyQuest1"
QuestLv=1
NameMon="Pirate"
CFrameQ=CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
CFrameMon=CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
elseif Lv==40 or Lv<=59 or SelectMonster=="Brute" then
Ms="Brute"
NameQuest="BuggyQuest1"
QuestLv=2
NameMon="Brute"
CFrameQ=CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
CFrameMon=CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
elseif Lv==60 or Lv<=74 or SelectMonster=="Desert Bandit" then
Ms="Desert Bandit"
NameQuest="DesertQuest"
QuestLv=1
NameMon="Desert Bandit"
CFrameQ=CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
CFrameMon=CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
elseif Lv==75 or Lv<=89 or SelectMonster=="Desert Officer" then
Ms="Desert Officer"
NameQuest="DesertQuest"
QuestLv=2
NameMon="Desert Officer"
CFrameQ=CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
CFrameMon=CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
elseif Lv==90 or Lv<=99 or SelectMonster=="Snow Bandit" then
Ms="Snow Bandit"
NameQuest="SnowQuest"
QuestLv=1
NameMon="Snow Bandit"
CFrameQ=CFrame.new(1386.8073730469, 87.272789001465,-1298.3576660156)
CFrameMon=CFrame.new(1356.3028564453, 105.76865386963,-1328.2418212891)
elseif Lv==100 or Lv<=119 or SelectMonster=="Snowman" then
Ms="Snowman"
NameQuest="SnowQuest"
QuestLv=2
NameMon="Snowman"
CFrameQ=CFrame.new(1386.8073730469, 87.272789001465,-1298.3576660156)
CFrameMon=CFrame.new(1218.7956542969, 138.01184082031,-1488.0262451172)
elseif Lv==120 or Lv<=149 or SelectMonster=="Chief Petty Officer" then
Ms="Chief Petty Officer"
NameQuest="MarineQuest2"
QuestLv=1
NameMon="Chief Petty Officer"
CFrameQ=CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
CFrameMon=CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
elseif Lv==150 or Lv<=174 or SelectMonster=="Sky Bandit" then
Ms="Sky Bandit"
NameQuest="SkyQuest"
QuestLv=1
NameMon="Sky Bandit"
CFrameQ=CFrame.new(-4842.1372070313, 717.69543457031,-2623.0483398438)
CFrameMon=CFrame.new(-4955.6411132813, 365.46365356445,-2908.1865234375)
elseif Lv==175 or Lv<=189 or SelectMonster=="Dark Master" then
Ms="Dark Master"
NameQuest="SkyQuest"
QuestLv=2
NameMon="Dark Master"
CFrameQ=CFrame.new(-4842.1372070313, 717.69543457031,-2623.0483398438)
CFrameMon=CFrame.new(-5148.1650390625, 439.04571533203,-2332.9611816406)
elseif Lv==190 or Lv<=209 or SelectMonster=="Prisoner" then
Ms="Prisoner"
NameQuest="PrisonerQuest"
QuestLv=1
NameMon="Prisoner"
CFrameQ=CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0,-0.999846935, 0, 0.0175017118)
CFrameMon=CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0,-0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816)
elseif Lv==210 or Lv<=249 or SelectMonster=="Dangerous Prisoner" then
Ms="Dangerous Prisoner"
NameQuest="PrisonerQuest"
QuestLv=2
NameMon="Dangerous Prisoner"
CFrameQ=CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0,-0.999846935, 0, 0.0175017118)
CFrameMon=CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0,-0.438139856, 0, 1, 0, 0.438139856, 0, 0.898906827)
elseif Lv==250 or Lv<=274 or SelectMonster=="Toga Warrior" then
Ms="Toga Warrior"
NameQuest="ColosseumQuest"
QuestLv=1
NameMon="Toga Warrior"
CFrameQ=CFrame.new(-1577.7890625, 7.4151420593262,-2984.4838867188)
CFrameMon=CFrame.new(-1872.5166015625, 49.080215454102,-2913.810546875)
elseif Lv==275 or Lv<=299 or SelectMonster=="Gladiator"  then
Ms="Gladiator"
NameQuest="ColosseumQuest"
QuestLv=2
NameMon="Gladiator"
CFrameQ=CFrame.new(-1577.7890625, 7.4151420593262,-2984.4838867188)
CFrameMon=CFrame.new(-1521.3740234375, 81.203170776367,-3066.3139648438)
elseif Lv==300 or Lv<=324 or SelectMonster=="Military Soldier" then
Ms="Military Soldier"
NameQuest="MagmaQuest"
QuestLv=1
NameMon="Military Soldier"
CFrameQ=CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
CFrameMon=CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
elseif Lv==325 or Lv<=374 or SelectMonster=="Military Spy" then
Ms="Military Spy"
NameQuest="MagmaQuest"
QuestLv=2
NameMon="Military Spy"
CFrameQ=CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
CFrameMon=CFrame.new(-5787.00293, 75.8262634, 8651.69922, 0.838590562, 0,-0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562)
elseif Lv==375 or Lv<=399 or SelectMonster=="Fishman Warrior" then 
Ms="Fishman Warrior"
NameQuest="FishmanQuest"
QuestLv=1
NameMon="Fishman Warrior"
CFrameQ=CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
CFrameMon=CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
end
elseif Lv==400 or Lv<=449 or SelectMonster=="Fishman Commando" then 
Ms="Fishman Commando"
NameQuest="FishmanQuest"
QuestLv=2
NameMon="Fishman Commando"
CFrameQ=CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
CFrameMon=CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
end
elseif Lv==10 or Lv<=474 or SelectMonster=="God's Guard" then 
Ms="God's Guard"
NameQuest="SkyExp1Quest"
QuestLv=1
NameMon="God's Guard"
CFrameQ=CFrame.new(-4721.8603515625, 845.30297851563,-1953.8489990234)
CFrameMon=CFrame.new(-4628.0498046875, 866.92877197266,-1931.2352294922)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248,-1667.55688))
end
elseif Lv==475 or Lv<=524 or SelectMonster=="Shanda" then 
Ms="Shanda"
NameQuest="SkyExp1Quest"
QuestLv=2
NameMon="Shanda"
CFrameQ=CFrame.new(-7863.1596679688, 5545.5190429688,-378.42266845703)
CFrameMon=CFrame.new(-7685.1474609375, 5601.0751953125,-441.38876342773)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625,-380.29119873047))
end
elseif Lv==525 or Lv<=549 or SelectMonster=="Royal Squad" then 
Ms="Royal Squad"
NameQuest="SkyExp2Quest"
QuestLv=1
NameMon="Royal Squad"
CFrameQ=CFrame.new(-7903.3828125, 5635.9897460938,-1410.923828125)
CFrameMon=CFrame.new(-7654.2514648438, 5637.1079101563,-1407.7550048828)
elseif Lv==550 or Lv<=624 or SelectMonster=="Royal Soldier" then 
Ms="Royal Soldier"
NameQuest="SkyExp2Quest"
QuestLv=2
NameMon="Royal Soldier"
CFrameQ=CFrame.new(-7903.3828125, 5635.9897460938,-1410.923828125)
CFrameMon=CFrame.new(-7760.4106445313, 5679.9077148438,-1884.8112792969)
elseif Lv==625 or Lv<=649 or SelectMonster=="Galley Pirate" then 
Ms="Galley Pirate"
NameQuest="FountainQuest"
QuestLv=1
NameMon="Galley Pirate"
CFrameQ=CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
CFrameMon=CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
elseif Lv>=650 or SelectMonster=="Galley Captain" then 
Ms="Galley Captain"
NameQuest="FountainQuest"
QuestLv=2
NameMon="Galley Captain"
CFrameQ=CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
CFrameMon=CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
end
end
if Sea2 then
if Lv==700 or Lv<=724 or SelectMonster=="Raider" then 
Ms="Raider"
NameQuest="Area1Quest"
QuestLv=1
NameMon="Raider"
CFrameQ=CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
CFrameMon=CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
elseif Lv==725 or Lv<=774 or SelectMonster=="Mercenary" then 
Ms="Mercenary"
NameQuest="Area1Quest"
QuestLv=2
NameMon="Mercenary"
CFrameQ=CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
CFrameMon=CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
elseif Lv==775 or Lv<=799 or SelectMonster=="Swan Pirate" then 
Ms="Swan Pirate"
NameQuest="Area2Quest"
QuestLv=1
NameMon="Swan Pirate"
CFrameQ=CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
CFrameMon=CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
elseif Lv==800 or Lv<=874 or SelectMonster=="Factory Staff" then
Ms="Factory Staff"
NameQuest="Area2Quest"
QuestLv=2
NameMon="Factory Staff"
CFrameQ=CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
CFrameMon=CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
elseif Lv==875 or Lv<=899 or SelectMonster=="Marine Lieutenan" then
Ms="Marine Lieutenant"
NameQuest="MarineQuest3"
QuestLv=1
NameMon="Marine Lieutenant"
CFrameQ=CFrame.new(-2440.9934082031, 73.04190826416,-3217.7082519531)
CFrameMon=CFrame.new(-2489.2622070313, 84.613594055176,-3151.8830566406)
elseif Lv==900 or Lv<=949 or SelectMonster=="Marine Captain" then 
Ms="Marine Captain"
NameQuest="MarineQuest3"
QuestLv=2
NameMon="Marine Captain"
CFrameQ=CFrame.new(-2440.9934082031, 73.04190826416,-3217.7082519531)
CFrameMon=CFrame.new(-2335.2026367188, 79.786659240723,-3245.8674316406)
elseif Lv==950 or Lv<=974 or SelectMonster=="Zombie" then
Ms="Zombie"
NameQuest="ZombieQuest"
QuestLv=1
NameMon="Zombie"
CFrameQ=CFrame.new(-5494.3413085938, 48.505931854248,-794.59094238281)
CFrameMon=CFrame.new(-5536.4970703125, 101.08577728271,-835.59075927734)
elseif Lv==975 or Lv<=999 or SelectMonster=="Vampire" then
Ms="Vampire"
NameQuest="ZombieQuest"
QuestLv=2
NameMon="Vampire"
CFrameQ=CFrame.new(-5494.3413085938, 48.505931854248,-794.59094238281)
CFrameMon=CFrame.new(-5806.1098632813, 16.722528457642,-1164.4384765625)
elseif Lv==1000 or Lv<=1049 or SelectMonster=="Snow Trooper" then 
Ms="Snow Trooper"
NameQuest="SnowMountainQuest"
QuestLv=1
NameMon="Snow Trooper"
CFrameQ=CFrame.new(607.05963134766, 401.44781494141,-5370.5546875)
CFrameMon=CFrame.new(535.21051025391, 432.74209594727,-5484.9165039063)
elseif Lv==1050 or Lv<=1099 or SelectMonster=="Winter Warrior" then 
Ms="Winter Warrior"
NameQuest="SnowMountainQuest"
QuestLv=2
NameMon="Winter Warrior"
CFrameQ=CFrame.new(607.05963134766, 401.44781494141,-5370.5546875)
CFrameMon=CFrame.new(1234.4449462891, 456.95419311523,-5174.130859375)
elseif Lv==1100 or Lv<=1124 or SelectMonster=="Lab Subordinate" then 
Ms="Lab Subordinate"
NameQuest="IceSideQuest"
QuestLv=1
NameMon="Lab Subordinate"
CFrameQ=CFrame.new(-6061.841796875, 15.926671981812,-4902.0385742188)
CFrameMon=CFrame.new(-5720.5576171875, 63.309471130371,-4784.6103515625)
elseif Lv==1125 or Lv<=1174 or SelectMonster=="Horned Warrior" then
Ms="Horned Warrior"
NameQuest="IceSideQuest"
QuestLv=2
NameMon="Horned Warrior"
CFrameQ=CFrame.new(-6061.841796875, 15.926671981812,-4902.0385742188)
CFrameMon=CFrame.new(-6292.751953125, 91.181983947754,-5502.6499023438)
elseif Lv==1175 or Lv<=1199 or SelectMonster=="Magma Ninja" then 
Ms="Magma Ninja"
NameQuest="FireSideQuest"
QuestLv=1
NameMon="Magma Ninja"
CFrameQ=CFrame.new(-5429.0473632813, 15.977565765381,-5297.9614257813)
CFrameMon=CFrame.new(-5461.8388671875, 130.36347961426,-5836.4702148438)
elseif Lv==1200 or Lv<=1249 or SelectMonster=="Lava Pirate" then 
Ms="Lava Pirate"
NameQuest="FireSideQuest"
QuestLv=2
NameMon="Lava Pirate"
CFrameQ=CFrame.new(-5429.0473632813, 15.977565765381,-5297.9614257813)
CFrameMon=CFrame.new(-5251.1889648438, 55.164535522461,-4774.4096679688)
elseif Lv==1250 or Lv<=1274 or SelectMonster=="Ship Deckhand" then
Ms="Ship Deckhand"
NameQuest="ShipQuest1"
QuestLv=1
NameMon="Ship Deckhand"
CFrameQ=CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
CFrameMon=CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv==1275 or Lv<=1299 or SelectMonster=="Ship Engineer"  then 
Ms="Ship Engineer"
NameQuest="ShipQuest1"
QuestLv=2
NameMon="Ship Engineer"
CFrameQ=CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
CFrameMon=CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv==1300 or Lv<=1324 or SelectMonster=="Ship Steward" then 
Ms="Ship Steward"
NameQuest="ShipQuest2"
QuestLv=1
NameMon="Ship Steward"
CFrameQ=CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
CFrameMon=CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv==1325 or Lv<=1349 or SelectMonster=="Ship Officer" then 
Ms="Ship Officer"
NameQuest="ShipQuest2"
QuestLv=2
NameMon="Ship Officer"
CFrameQ=CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
CFrameMon=CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv==1350 or Lv<=1374 or SelectMonster=="Arctic Warrior" then 
Ms="Arctic Warrior"
NameQuest="FrostQuest"
QuestLv=1
NameMon="Arctic Warrior"
CFrameQ=CFrame.new(5668.1372070313, 28.202531814575,-6484.6005859375)
CFrameMon=CFrame.new(5935.4541015625, 77.26016998291,-6472.7568359375)
if _G.AutoLevel and (CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715,-132.83953857422))
end
elseif Lv==1375 or Lv<=1424 or SelectMonster=="Snow Lurker" then
Ms="Snow Lurker"
NameQuest="FrostQuest"
QuestLv=2
NameMon="Snow Lurker"
CFrameQ=CFrame.new(5668.1372070313, 28.202531814575,-6484.6005859375)
CFrameMon=CFrame.new(5628.482421875, 57.574996948242,-6618.3481445313)
elseif Lv==1425 or Lv<=1449 or SelectMonster=="Sea Soldier" then
Ms="Sea Soldier"
NameQuest="ForgottenQuest"
QuestLv=1
NameMon="Sea Soldier"
CFrameQ=CFrame.new(-3054.5827636719, 236.87213134766,-10147.790039063)
CFrameMon=CFrame.new(-3185.0153808594, 58.789089202881,-9663.6064453125)
elseif Lv>=1450 or SelectMonster=="Water Fighter" then 
Ms="Water Fighter"
NameQuest="ForgottenQuest"
QuestLv=2
NameMon="Water Fighter"
CFrameQ=CFrame.new(-3054.5827636719, 236.87213134766,-10147.790039063)
CFrameMon=CFrame.new(-3262.9301757813, 298.69036865234,-10552.529296875)
end
end
if Sea3 then
if Lv==1500 or Lv<=1524 or SelectMonster=="Pirate Millionaire" then 
Ms="Pirate Millionaire"
NameQuest="PiratePortQuest"
QuestLv=1
NameMon="Pirate Millionaire"
CFrameQ=CFrame.new(-450.1046447753906, 107.68145751953125, 5950.72607421875)
CFrameMon=CFrame.new(-193.99227905273438, 56.12502670288086, 5755.7880859375)
elseif Lv==1525 or Lv<=1574 or SelectMonster=="Pistol Billionaire" then 
Ms="Pistol Billionaire"
NameQuest="PiratePortQuest"
QuestLv=2
NameMon="Pistol Billionaire"
CFrameQ=CFrame.new(-450.1046447753906, 107.68145751953125, 5950.72607421875)
CFrameMon=CFrame.new(-188.14462280273438, 84.49613189697266, 6337.0419921875)
elseif Lv==1575 or Lv<=1599 or SelectMonster=="Dragon Crew Warrior" then 
Ms="Dragon Crew Warrior"
NameQuest="DragonCrewQuest"
QuestLv=1
NameMon="Dragon Crew Warrior"
CFrameQ=CFrame.new(6735.11083984375, 126.99046325683594,-711.0979614257812)
CFrameMon=CFrame.new(6615.2333984375, 50.847679138183594,-978.93408203125)
elseif Lv==1600 or Lv<=1624 or SelectMonster=="Dragon Crew Archer" then 
Ms="Dragon Crew Archer"
NameQuest="DragonCrewQuest"
QuestLv=2
NameMon="Dragon Crew Archer"
CFrameQ=CFrame.new(6735.11083984375, 126.99046325683594,-711.0979614257812)
CFrameMon=CFrame.new(6818.58935546875, 483.718994140625, 512.726806640625)
elseif Lv==1625 or Lv<=1649 or SelectMonster=="Hydra Enforcer" then 
Ms="Hydra Enforcer"
NameQuest="VenomCrewQuest"
QuestLv=1
NameMon="Hydra Enforcer"
CFrameQ=CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
CFrameMon=CFrame.new(4547.115234375, 1001.60205078125, 334.1954650878906)
elseif Lv==1650 or Lv<=1699 or SelectMonster=="Venomous Assailant" then 
Ms="Venomous Assailant"
NameQuest="VenomCrewQuest"
QuestLv=2
NameMon="Venomous Assailant"
CFrameQ=CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
CFrameMon=CFrame.new(4637.88525390625, 1077.85595703125, 882.4183959960938)
elseif Lv==1700 or Lv<=1724 or SelectMonster=="Marine Commodore" then
Ms="Marine Commodore"
NameQuest="MarineTreeIsland"
QuestLv=1
NameMon="Marine Commodore"
CFrameQ=CFrame.new(2179.98828125, 28.731239318848,-6740.0551757813)
CFrameMon=CFrame.new(2198.0063476563, 128.71075439453,-7109.5043945313)
elseif Lv==1725 or Lv<=1774 or SelectMonster=="Marine Rear Admiral" then
Ms="Marine Rear Admiral"
NameQuest="MarineTreeIsland"
QuestLv=2
NameMon="Marine Rear Admiral"
CFrameQ=CFrame.new(2179.98828125, 28.731239318848,-6740.0551757813)
CFrameMon=CFrame.new(3294.3142089844, 385.41125488281,-7048.6342773438)
elseif Lv==1775 or Lv<=1799 or SelectMonster=="Fishman Raider" then 
Ms="Fishman Raider"
NameQuest="DeepForestIsland3"
QuestLv=1
NameMon="Fishman Raider"
CFrameQ=CFrame.new(-10582.759765625, 331.78845214844,-8757.666015625)
CFrameMon=CFrame.new(-10553.268554688, 521.38439941406,-8176.9458007813)
elseif Lv==1800 or Lv<=1824 or SelectMonster=="Fishman Captain" then
Ms="Fishman Captain"
NameQuest="DeepForestIsland3"
QuestLv=2
NameMon="Fishman Captain"
CFrameQ=CFrame.new(-10583.099609375, 331.78845214844,-8759.4638671875)
CFrameMon=CFrame.new(-10789.401367188, 427.18637084961,-9131.4423828125)
elseif Lv==1825 or Lv<=1849 or SelectMonster=="Forest Pirate" then 
Ms="Forest Pirate"
NameQuest="DeepForestIsland"
QuestLv=1
NameMon="Forest Pirate"
CFrameQ=CFrame.new(-13232.662109375, 332.40396118164,-7626.4819335938)
CFrameMon=CFrame.new(-13489.397460938, 400.30349731445,-7770.251953125)
elseif Lv==1850 or Lv<=1899 or SelectMonster=="Mythological Pirate" then 
Ms="Mythological Pirate"
NameQuest="DeepForestIsland"
QuestLv=2
NameMon="Mythological Pirate"
CFrameQ=CFrame.new(-13232.662109375, 332.40396118164,-7626.4819335938)
CFrameMon=CFrame.new(-13508.616210938, 582.46228027344,-6985.3037109375)
elseif Lv==1900 or Lv<=1924 or SelectMonster=="Jungle Pirate" then 
Ms="Jungle Pirate"
NameQuest="DeepForestIsland2"
QuestLv=1
NameMon="Jungle Pirate"
CFrameQ=CFrame.new(-12682.096679688, 390.88653564453,-9902.1240234375)
CFrameMon=CFrame.new(-12267.103515625, 459.75262451172,-10277.200195313)
elseif Lv==1925 or Lv<=1974 or SelectMonster=="Musketeer Pirate" then 
Ms="Musketeer Pirate"
NameQuest="DeepForestIsland2"
QuestLv=2
NameMon="Musketeer Pirate"
CFrameQ=CFrame.new(-12682.096679688, 390.88653564453,-9902.1240234375)
CFrameMon=CFrame.new(-13291.5078125, 520.47338867188,-9904.638671875)
elseif Lv==1975 or Lv<=1999 or SelectMonster=="Reborn Skeleton" then
Ms="Reborn Skeleton"
NameQuest="HauntedQuest1"
QuestLv=1
NameMon="Reborn Skeleton"
CFrameQ=CFrame.new(-9480.80762, 142.130661, 5566.37305,-0.00655503059, 4.52954225e-08,-0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542,-2.01955679e-08,-0.00655503059)
CFrameMon=CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597,-1.3950732e-05,-0.208259016,-1.08073925e-06, 1,-7.20630269e-05, 0.208259016, 7.07080399e-05, 0.978073597)
elseif Lv==2000 or Lv<=2024 or SelectMonster=="Living Zombie" then
Ms="Living Zombie"
NameQuest="HauntedQuest1"
QuestLv=2
NameMon="Living Zombie"
CFrameQ=CFrame.new(-9480.80762, 142.130661, 5566.37305,-0.00655503059, 4.52954225e-08,-0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542,-2.01955679e-08,-0.00655503059)
CFrameMon=CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.77547141e-08, 0.0324240364,-2.58006327e-08, 1,-6.06848474e-08,-0.0324240364, 5.98163865e-08, 0.999474227)
elseif Lv==2025 or Lv<=2049 or SelectMonster=="Demonic Soul" then
Ms="Demonic Soul"
NameQuest="HauntedQuest2"
QuestLv=1
NameMon="Demonic Soul"
CFrameQ=CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
CFrameMon=CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
elseif Lv==2050 or Lv<=2074 or SelectMonster=="Posessed Mummy" then
Ms="Posessed Mummy"
NameQuest="HauntedQuest2"
QuestLv=2
NameMon="Posessed Mummy"
CFrameQ=CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
CFrameMon=CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
elseif Lv==2075 or Lv<=2099 or SelectMonster=="Peanut Scout" then
Ms="Peanut Scout"
NameQuest="NutsIslandQuest"
QuestLv=1
NameMon="Peanut Scout"
CFrameQ=CFrame.new(-2105.53198, 37.2495995,-10195.5088,-0.766061664, 0,-0.642767608, 0, 1, 0, 0.642767608, 0,-0.766061664)
CFrameMon=CFrame.new(-2150.587890625, 122.49767303467,-10358.994140625)
elseif Lv==2100 or Lv<=2124 or SelectMonster=="Peanut President" then
Ms="Peanut President"
NameQuest="NutsIslandQuest"
QuestLv=2
NameMon="Peanut President"
CFrameQ=CFrame.new(-2105.53198, 37.2495995,-10195.5088,-0.766061664, 0,-0.642767608, 0, 1, 0, 0.642767608, 0,-0.766061664)
CFrameMon=CFrame.new(-2150.587890625, 122.49767303467,-10358.994140625)
elseif Lv==2125 or Lv<=2149 or SelectMonster=="Ice Cream Chef" then
Ms="Ice Cream Chef"
NameQuest="IceCreamIslandQuest"
QuestLv=1
NameMon="Ice Cream Chef"
CFrameQ=CFrame.new(-819.376709, 64.9259796,-10967.2832,-0.766061664, 0, 0.642767608, 0, 1, 0,-0.642767608, 0,-0.766061664)
CFrameMon=CFrame.new(-789.941528, 209.382889,-11009.9805,-0.0703101531,-0,-0.997525156,-0, 1.00000012,-0, 0.997525275, 0,-0.0703101456)
elseif Lv==2150 or Lv<=2199 or SelectMonster=="Ice Cream Commander" then
Ms="Ice Cream Commander"
NameQuest="IceCreamIslandQuest"
QuestLv=2
NameMon="Ice Cream Commander"
CFrameQ=CFrame.new(-819.376709, 64.9259796,-10967.2832,-0.766061664, 0, 0.642767608, 0, 1, 0,-0.642767608, 0,-0.766061664)
CFrameMon=CFrame.new(-789.941528, 209.382889,-11009.9805,-0.0703101531,-0,-0.997525156,-0, 1.00000012,-0, 0.997525275, 0,-0.0703101456)
elseif Lv==2200 or Lv<=2224 or SelectMonster=="Cookie Crafter" then
Ms="Cookie Crafter"
NameQuest="CakeQuest1"
QuestLv=1
NameMon="Cookie Crafter"
CFrameQ=CFrame.new(-2022.29858, 36.9275894,-12030.9766,-0.961273909, 0,-0.275594592, 0, 1, 0, 0.275594592, 0,-0.961273909)
CFrameMon=CFrame.new(-2321.71216, 36.699482,-12216.7871,-0.780074954, 0, 0.625686109, 0, 1, 0,-0.625686109, 0,-0.780074954)
elseif Lv==2225 or Lv<=2249 or SelectMonster=="Cake Guard" then
Ms="Cake Guard"
NameQuest="CakeQuest1"
QuestLv=2
NameMon="Cake Guard"
CFrameQ=CFrame.new(-2022.29858, 36.9275894,-12030.9766,-0.961273909, 0,-0.275594592, 0, 1, 0, 0.275594592, 0,-0.961273909)
CFrameMon=CFrame.new(-1418.11011, 36.6718941,-12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0,-0.997700036, 0, 0.0677844882)
elseif Lv==2250 or Lv<=2274 or SelectMonster=="Baking Staff" then
Ms="Baking Staff"
NameQuest="CakeQuest2"
QuestLv=1
NameMon="Baking Staff"
CFrameQ=CFrame.new(-1928.31763, 37.7296638,-12840.626, 0.951068401,-0,-0.308980465, 0, 1,-0, 0.308980465, 0, 0.951068401)
CFrameMon=CFrame.new(-1980.43848, 36.6716766,-12983.8418,-0.254443765, 0,-0.967087567, 0, 1, 0, 0.967087567, 0,-0.254443765)
elseif Lv==2275 or Lv<=2299 or SelectMonster=="Head Baker" then
Ms="Head Baker"
NameQuest="CakeQuest2"
QuestLv=2
NameMon="Head Baker"
CFrameQ=CFrame.new(-1928.31763, 37.7296638,-12840.626, 0.951068401,-0,-0.308980465, 0, 1,-0, 0.308980465, 0, 0.951068401)
CFrameMon=CFrame.new(-2251.5791, 52.2714615,-13033.3965,-0.991971016, 0,-0.126466095, 0, 1, 0, 0.126466095, 0,-0.991971016)
elseif Lv==2300 or Lv<=2324 or SelectMonster=="Cocoa Warrior" then
Ms="Cocoa Warrior"
NameQuest="ChocQuest1"
QuestLv=1
NameMon="Cocoa Warrior"
CFrameQ=CFrame.new(231.75, 23.9003029,-12200.292,-1, 0, 0, 0, 1, 0, 0, 0,-1)
CFrameMon=CFrame.new(167.978516, 26.2254658,-12238.874,-0.939700961, 0, 0.341998369, 0, 1, 0,-0.341998369, 0,-0.939700961)
elseif Lv==2325 or Lv<=2349 or SelectMonster=="Chocolate Bar Battler" then
Ms="Chocolate Bar Battler"
NameQuest="ChocQuest1"
QuestLv=2
NameMon="Chocolate Bar Battler"
CFrameQ=CFrame.new(231.75, 23.9003029,-12200.292,-1, 0, 0, 0, 1, 0, 0, 0,-1)
CFrameMon=CFrame.new(701.312073, 25.5824986,-12708.2148,-0.342042685, 0,-0.939684391, 0, 1, 0, 0.939684391, 0,-0.342042685)
elseif Lv==2350 or Lv<=2374 or SelectMonster=="Sweet Thief" then
Ms="Sweet Thief"
NameQuest="ChocQuest2"
QuestLv=1
NameMon="Sweet Thief"
CFrameQ=CFrame.new(151.198242, 23.8907146,-12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0,-0.906319618, 0, 0.422592998)
CFrameMon=CFrame.new(-140.258301, 25.5824986,-12652.3115, 0.173624337,-0,-0.984811902, 0, 1,-0, 0.984811902, 0, 0.173624337)
elseif Lv==2375 or Lv<=2400 or SelectMonster=="Candy Rebel" then
Ms="Candy Rebel"
NameQuest="ChocQuest2"
QuestLv=2
NameMon="Candy Rebel"
CFrameQ=CFrame.new(151.198242, 23.8907146,-12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0,-0.906319618, 0, 0.422592998)
CFrameMon=CFrame.new(47.9231453, 25.5824986,-13029.2402,-0.819156051, 0,-0.573571265, 0, 1, 0, 0.573571265, 0,-0.819156051)
elseif Lv==2400 or Lv<=2424 or SelectMonster=="Candy Pirate" then
Ms="Candy Pirate"
NameQuest="CandyQuest1"
QuestLv=1
NameMon="Candy Pirate"
CFrameQ=CFrame.new(-1149.328, 13.5759039,-14445.6143,-0.156446099, 0,-0.987686574, 0, 1, 0, 0.987686574, 0,-0.156446099)
CFrameMon=CFrame.new(-1437.56348, 17.1481285,-14385.6934, 0.173624337,-0,-0.984811902, 0, 1,-0, 0.984811902, 0, 0.173624337)
elseif Lv==2425 or Lv<=2449 or SelectMonster=="Snow Demon" then
Ms="Snow Demon"
NameQuest="CandyQuest1"
QuestLv=2
NameMon="Snow Demon"
CFrameQ=CFrame.new(-1149.328, 13.5759039,-14445.6143,-0.156446099, 0,-0.987686574, 0, 1, 0, 0.987686574, 0,-0.156446099)
CFrameMon=CFrame.new(-916.222656, 17.1481285,-14638.8125, 0.866007268, 0, 0.500031412, 0, 1, 0,-0.500031412, 0, 0.866007268)
elseif Lv==2450 or Lv<=2474 or SelectMonster=="Isle Outlaw" then
Ms="Isle Outlaw"
NameQuest="TikiQuest1"
QuestLv=1
NameMon="Isle Outlaw"
CFrameQ=CFrame.new(-16549.890625, 55.68635559082031,-179.91360473632812)
CFrameMon=CFrame.new(-16162.8193359375, 11.6863374710083,-96.45481872558594)
elseif Lv==2475 or Lv<=2499  or SelectMonster=="Island Boy" then
Ms="Island Boy"
NameQuest="TikiQuest1"
QuestLv=2
NameMon="Island Boy"
CFrameQ=CFrame.new(-16549.890625, 55.68635559082031,-179.91360473632812)
CFrameMon=CFrame.new(-16357.3125, 20.632822036743164, 1005.64892578125)
elseif Lv==2500 or Lv<=2524 or SelectMonster=="Sun-kissed Warrior" then
Ms="Sun-kissed Warrior"
NameQuest="TikiQuest2"
QuestLv=1
NameMon="Sun-kissed Warrior"
CFrameQ=CFrame.new(-16541.021484375, 54.77081298828125, 1051.461181640625)
CFrameMon=CFrame.new(-16357.3125, 20.632822036743164, 1005.64892578125)
elseif Lv==2525 or Lv<=2549 or SelectMonster=="Isle Champion" then
Ms="Isle Champion"
NameQuest="TikiQuest2"
QuestLv=2
NameMon="Isle Champion"
CFrameQ=CFrame.new(-16541.021484375, 54.77081298828125, 1051.461181640625)
CFrameMon=CFrame.new(-16848.94140625, 21.68633460998535, 1041.4490966796875)
elseif Lv==2550 or Lv<=2574 or SelectMonster=="Serpent Hunter" then
Ms="Serpent Hunter"
NameQuest="TikiQuest3"
QuestLv=1
NameMon="Serpent Hunter"
CFrameQ=CFrame.new(-16665.19140625, 104.59640502929688, 1579.6943359375)
CFrameMon=CFrame.new(-16621.4140625, 121.40631103515625, 1290.6881103515625)
elseif Lv==2575 or Lv<=2599 or SelectMonster=="Skull Slayer" or Lv==2600 then
Ms="Skull Slayer"
NameQuest="TikiQuest3"
QuestLv=2
NameMon="Skull Slayer"
CFrameQ=CFrame.new(-16665.19140625, 104.59640502929688, 1579.6943359375)
CFrameMon=CFrame.new(-16811.5703125, 84.625244140625, 1542.235107421875)
end
end
end
if Sea1 then
tableMon={
  "Bandit","Monkey","Gorilla","Pirate","Brute","Desert Bandit","Desert Officer","Snow Bandit","Snowman","Chief Petty Officer","Sky Bandit","Dark Master","Prisoner", "Dangerous Prisoner","Toga Warrior","Gladiator","Military Soldier","Military Spy","Fishman Warrior","Fishman Commando","God's Guard","Shanda","Royal Squad","Royal Soldier","Galley Pirate","Galley Captain"
} elseif Sea2 then
tableMon={
  "Raider","Mercenary","Swan Pirate","Factory Staff","Marine Lieutenant","Marine Captain","Zombie","Vampire","Snow Trooper","Winter Warrior","Lab Subordinate","Horned Warrior","Magma Ninja","Lava Pirate","Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Arctic Warrior","Snow Lurker","Sea Soldier","Water Fighter"
} elseif Sea3 then
tableMon={
  "Pirate Millionaire","Dragon Crew Warrior","Dragon Crew Archer","Hydra Enforcer","Venomous Assailant","Marine Commodore","Marine Rear Admiral","Fishman Raider","Fishman Captain","Forest Pirate","Mythological Pirate","Jungle Pirate","Musketeer Pirate","Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy", "Peanut Scout", "Peanut President", "Ice Cream Chef", "Ice Cream Commander", "Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker", "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief", "Candy Rebel", "Candy Pirate", "Snow Demon","Isle Outlaw","Island Boy","Sun-kissed Warrior","Isle Champion","Serpent Hunter","Skull Slayer"
}
end
if Sea1 then
AreaList={
  'Jungle', 'Buggy', 'Desert', 'Snow', 'Marine', 'Sky', 'Prison', 'Colosseum', 'Magma', 'Fishman', 'Sky Island', 'Fountain'
} elseif Sea2 then
AreaList={
  'Area 1', 'Area 2', 'Zombie', 'Marine', 'Snow Mountain', 'Ice fire', 'Ship', 'Frost', 'Forgotten'
} elseif Sea3 then
AreaList={
  'Pirate Port', 'Amazon', 'Marine Tree', 'Deep Forest', 'Haunted Castle', 'Nut Island', 'Ice Cream Island', 'Cake Island', 'Choco Island', 'Candy Island','Tiki Outpost'
}
end
function CheckBossQuest()
if Sea1 then
if SelectBoss=="The Gorilla King" then
BossMon="The Gorilla King"
NameBoss='The Gorrila King'
NameQuestBoss="JungleQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$2,000\n7,000 Exp."
CFrameQBoss=CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
CFrameBoss=CFrame.new(-1088.75977, 8.13463783,-488.559906,-0.707134247, 0, 0.707079291, 0, 1, 0,-0.707079291, 0,-0.707134247)
elseif SelectBoss=="Bobby" then
BossMon="Bobby"
NameBoss='Bobby'
NameQuestBoss="BuggyQuest1"
QuestLvBoss=3
RewardBoss="Reward:\n$8,000\n35,000 Exp."
CFrameQBoss=CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
CFrameBoss=CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
elseif SelectBoss=="The Saw" then
BossMon="The Saw"
NameBoss='The Saw'
CFrameBoss=CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
elseif SelectBoss=="Yeti" then
BossMon="Yeti"
NameBoss='Yeti'
NameQuestBoss="SnowQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$10,000\n180,000 Exp."
CFrameQBoss=CFrame.new(1386.8073730469, 87.272789001465,-1298.3576660156)
CFrameBoss=CFrame.new(1218.7956542969, 138.01184082031,-1488.0262451172)
elseif SelectBoss=="Mob Leader" then
BossMon="Mob Leader"
NameBoss='Mob Leader'
CFrameBoss=CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
elseif SelectBoss=="Vice Admiral" then
BossMon="Vice Admiral"
NameBoss='Vice Admiral'
NameQuestBoss="MarineQuest2"
QuestLvBoss=2
RewardBoss="Reward:\n$10,000\n180,000 Exp."
CFrameQBoss=CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
CFrameBoss=CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
elseif SelectBoss=="Saber Expert" then
NameBoss='Saber Expert'
BossMon="Saber Expert"
CFrameBoss=CFrame.new(-1458.89502, 29.8870335,-50.633564)
elseif SelectBoss=="Warden" then
BossMon="Warden"
NameBoss='Warden'
NameQuestBoss="ImpelQuest"
QuestLvBoss=1
RewardBoss="Reward:\n$6,000\n850,000 Exp."
CFrameBoss=CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961,-4.49946401e-06, 0.975376427,-1.95412576e-05, 1, 9.03162072e-06,-0.975376427,-2.10519756e-05, 0.220546961)
CFrameQBoss=CFrame.new(5191.86133, 2.84020686, 686.438721,-0.731384635, 0, 0.681965172, 0, 1, 0,-0.681965172, 0,-0.731384635)
elseif SelectBoss=="Chief Warden" then
BossMon="Chief Warden"
NameBoss='Chief Warden'
NameQuestBoss="ImpelQuest"
QuestLvBoss=2
RewardBoss="Reward:\n$10,000\n1,000,000 Exp."
CFrameBoss=CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343,-0.00062915677, 0.939684749, 0.00191645394, 0.999998152,-2.80422337e-05,-0.939682961, 0.00181045406, 0.342041939)
CFrameQBoss=CFrame.new(5191.86133, 2.84020686, 686.438721,-0.731384635, 0, 0.681965172, 0, 1, 0,-0.681965172, 0,-0.731384635)
elseif SelectBoss=="Swan" then
BossMon="Swan"
NameBoss='Swan'
NameQuestBoss="ImpelQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$15,000\n1,600,000 Exp."
CFrameBoss=CFrame.new(5325.09619, 7.03906584, 719.570679,-0.309060812, 0, 0.951042235, 0, 1, 0,-0.951042235, 0,-0.309060812)
CFrameQBoss=CFrame.new(5191.86133, 2.84020686, 686.438721,-0.731384635, 0, 0.681965172, 0, 1, 0,-0.681965172, 0,-0.731384635)
elseif SelectBoss=="Magma Admiral" then
BossMon="Magma Admiral"
NameBoss='Magma Admiral'
NameQuestBoss="MagmaQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$15,000\n2,800,000 Exp."
CFrameQBoss=CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
CFrameBoss=CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
elseif SelectBoss=="Fishman Lord" then
BossMon="Fishman Lord"
NameBoss='Fishman Lord'
NameQuestBoss="FishmanQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$15,000\n4,000,000 Exp."
CFrameQBoss=CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
CFrameBoss=CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
elseif SelectBoss=="Wysper" then
BossMon="Wysper"
NameBoss='Wysper'
NameQuestBoss="SkyExp1Quest"
QuestLvBoss=3
RewardBoss="Reward:\n$15,000\n4,800,000 Exp."
CFrameQBoss=CFrame.new(-7861.947265625, 5545.517578125,-379.85974121094)
CFrameBoss=CFrame.new(-7866.1333007813, 5576.4311523438,-546.74816894531)
elseif SelectBoss=="Thunder God" then
BossMon="Thunder God"
NameBoss='Thunder God'
NameQuestBoss="SkyExp2Quest"
QuestLvBoss=3
RewardBoss="Reward:\n$20,000\n5,800,000 Exp."
CFrameQBoss=CFrame.new(-7903.3828125, 5635.9897460938,-1410.923828125)
CFrameBoss=CFrame.new(-7994.984375, 5761.025390625,-2088.6479492188)
elseif SelectBoss=="Cyborg" then
BossMon="Cyborg"
NameBoss='Cyborg'
NameQuestBoss="FountainQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$20,000\n7,500,000 Exp."
CFrameQBoss=CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
CFrameBoss=CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
elseif SelectBoss=="Ice Admiral" then
BossMon="Ice Admiral"
NameBoss='Ice Admiral'
CFrameBoss=CFrame.new(1266.08948, 26.1757946,-1399.57678,-0.573599219, 0,-0.81913656, 0, 1, 0, 0.81913656, 0,-0.573599219)
elseif SelectBoss=="Greybeard" then
BossMon="Greybeard"
NameBoss='Greybeard'
CFrameBoss=CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
end
end
if Sea2 then
if SelectBoss=="Diamond" then
BossMon="Diamond"
NameBoss='Diamond'
NameQuestBoss="Area1Quest"
QuestLvBoss=3
RewardBoss="Reward:\n$25,000\n9,000,000 Exp."
CFrameQBoss=CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
CFrameBoss=CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
elseif SelectBoss=="Jeremy" then
BossMon="Jeremy"
NameBoss='Jeremy'
NameQuestBoss="Area2Quest"
QuestLvBoss=3
RewardBoss="Reward:\n$25,000\n11,500,000 Exp."
CFrameQBoss=CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
CFrameBoss=CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
elseif SelectBoss=="Fajita" then
BossMon="Fajita"
NameBoss='Fajita'
NameQuestBoss="MarineQuest3"
QuestLvBoss=3
RewardBoss="Reward:\n$25,000\n15,000,000 Exp."
CFrameQBoss=CFrame.new(-2441.986328125, 73.359344482422,-3217.5324707031)
CFrameBoss=CFrame.new(-2172.7399902344, 103.32216644287,-4015.025390625)
elseif SelectBoss=="Don Swan" then
BossMon="Don Swan"
NameBoss='Don Swan'
CFrameBoss=CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
elseif SelectBoss=="Smoke Admiral" then
BossMon="Smoke Admiral"
NameBoss='Smoke Admiral'
NameQuestBoss="IceSideQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$20,000\n25,000,000 Exp."
CFrameQBoss=CFrame.new(-5429.0473632813, 15.977565765381,-5297.9614257813)
CFrameBoss=CFrame.new(-5275.1987304688, 20.757257461548,-5260.6669921875)
elseif SelectBoss=="Awakened Ice Admiral" then
BossMon="Awakened Ice Admiral"
NameBoss='Awakened Ice Admiral'
NameQuestBoss="FrostQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$20,000\n36,000,000 Exp."
CFrameQBoss=CFrame.new(5668.9780273438, 28.519989013672,-6483.3520507813)
CFrameBoss=CFrame.new(6403.5439453125, 340.29766845703,-6894.5595703125)
elseif SelectBoss=="Tide Keeper" then
BossMon="Tide Keeper"
NameBoss='Tide Keeper'
NameQuestBoss="ForgottenQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$12,500\n38,000,000 Exp."
CFrameQBoss=CFrame.new(-3053.9814453125, 237.18954467773,-10145.0390625)
CFrameBoss=CFrame.new(-3795.6423339844, 105.88877105713,-11421.307617188)
elseif SelectBoss=="Darkbeard" then
BossMon="Darkbeard"
NameBoss='Darkbeard'
CFrameMon=CFrame.new(3677.08203125, 62.751937866211,-3144.8332519531)
elseif SelectBoss=="Cursed Captain" then
BossMon="Cursed Captain"
NameBoss='Cursed Captain'
CFrameBoss=CFrame.new(916.928589, 181.092773, 33422)
elseif SelectBoss=="Order" then
BossMon="Order"
NameBoss='Order'
CFrameBoss=CFrame.new(-6217.2021484375, 28.047645568848,-5053.1357421875)
end
end
if Sea3 then
if SelectBoss=="Stone" then
BossMon="Stone"
NameBoss='Stone'
NameQuestBoss="PiratePortQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$25,000\n40,000,000 Exp."
CFrameQBoss=CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
CFrameBoss=CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
elseif SelectBoss=="Hydra Leader" then
BossMon="Hydra Leader"
NameBoss='Hydra Leader'
NameQuestBoss="VenomCrewQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$30,000\n52,000,000 Exp."
CFrameQBoss=CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
CFrameBoss=CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
elseif SelectBoss=="Kilo Admiral" then
BossMon="Kilo Admiral"
NameBoss='Kilo Admiral'
NameQuestBoss="MarineTreeIsland"
QuestLvBoss=3
RewardBoss="Reward:\n$35,000\n56,000,000 Exp."
CFrameQBoss=CFrame.new(2179.3010253906, 28.731239318848,-6739.9741210938)
CFrameBoss=CFrame.new(2764.2233886719, 432.46154785156,-7144.4580078125)
elseif SelectBoss=="Captain Elephant" then
BossMon="Captain Elephant"
NameBoss='Captain Elephant'
NameQuestBoss="DeepForestIsland"
QuestLvBoss=3
RewardBoss="Reward:\n$40,000\n67,000,000 Exp."
CFrameQBoss=CFrame.new(-13232.682617188, 332.40396118164,-7626.01171875)
CFrameBoss=CFrame.new(-13376.7578125, 433.28689575195,-8071.392578125)
elseif SelectBoss=="Beautiful Pirate" then
BossMon="Beautiful Pirate"
NameBoss='Beautiful Pirate'
NameQuestBoss="DeepForestIsland2"
QuestLvBoss=3
RewardBoss="Reward:\n$50,000\n70,000,000 Exp."
CFrameQBoss=CFrame.new(-12682.096679688, 390.88653564453,-9902.1240234375)
CFrameBoss=CFrame.new(5283.609375, 22.56223487854,-110.78285217285)
elseif SelectBoss=="Cake Queen" then
BossMon="Cake Queen"
NameBoss='Cake Queen'
NameQuestBoss="IceCreamIslandQuest"
QuestLvBoss=3
RewardBoss="Reward:\n$30,000\n112,500,000 Exp."
CFrameQBoss=CFrame.new(-819.376709, 64.9259796,-10967.2832,-0.766061664, 0, 0.642767608, 0, 1, 0,-0.642767608, 0,-0.766061664)
CFrameBoss=CFrame.new(-678.648804, 381.353943,-11114.2012,-0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929,-0.417492568, 0.0167988986,-0.90852499)
elseif SelectBoss=="Longma" then
BossMon="Longma"
NameBoss='Longma'
CFrameBoss=CFrame.new(-10238.875976563, 389.7912902832,-9549.7939453125)
elseif SelectBoss=="Soul Reaper" then
BossMon="Soul Reaper"
NameBoss='Soul Reaper'
CFrameBoss=CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
elseif SelectBoss=="rip_indra True Form" then
BossMon="rip_indra True Form"
NameBoss='rip_indra True Form'
CFrameBoss=CFrame.new(-5415.3920898438, 505.74133300781,-2814.0166015625)
end
end
end
function MaterialMon()
if SelectMaterial=="Radioactive Material" then
MMon="Factory Staff"
MPos=CFrame.new(295,73,-56)
SP="Default"
elseif SelectMaterial=="Mystic Droplet" then
MMon="Water Fighter"
MPos=CFrame.new(-3385,239,-10542)
SP="Default"
elseif SelectMaterial=="Magma Ore" then
if Sea1 then
MMon="Military Spy"
MPos=CFrame.new(-5815,84,8820)
SP="Default"
elseif Sea2 then
MMon="Magma Ninja"
MPos=CFrame.new(-5428,78,-5959)
SP="Default"
end
elseif SelectMaterial=="Angel Wings" then
MMon="God's Guard"
MPos=CFrame.new(-4698,845,-1912)
SP="Default"
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-7859.09814, 5544.19043,-381.476196)).Magnitude>=5000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7859.09814, 5544.19043,-381.476196))
end
elseif SelectMaterial=="Leather" then
if Sea1 then
MMon="Brute"
MPos=CFrame.new(-1145,15,4350)
SP="Default"
elseif Sea2 then
MMon="Marine Captain"
MPos=CFrame.new(-2010.5059814453125, 73.00115966796875,-3326.620849609375)
SP="Default"
elseif Sea3 then
MMon="Jungle Pirate"
MPos=CFrame.new(-11975.78515625, 331.7734069824219,-10620.0302734375)
SP="Default"
end
elseif SelectMaterial=="Scrap Metal" then
if Sea1 then
MMon="Brute"
MPos=CFrame.new(-1145,15,4350)
SP="Default"
elseif Sea2 then
MMon="Swan Pirate"
MPos=CFrame.new(878,122,1235)
SP="Default"
elseif Sea3 then
MMon="Jungle Pirate"
MPos=CFrame.new(-12107,332,-10549)
SP="Default"
end
elseif SelectMaterial=="Fish Tail" then
if Sea3 then
MMon="Fishman Raider"
MPos=CFrame.new(-10993,332,-8940)
SP="Default"
elseif Sea1 then
MMon="Fishman Warrior"
MPos=CFrame.new(61123,19,1569)
SP="Default"
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude>=17000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
end
end
elseif SelectMaterial=="Demonic Wisp" then
MMon="Demonic Soul"
MPos=CFrame.new(-9507,172,6158)
SP="Default"
elseif SelectMaterial=="Vampire Fang" then
MMon="Vampire"
MPos=CFrame.new(-6033,7,-1317)
SP="Default"
elseif SelectMaterial=="Conjured Cocoa" then
MMon="Chocolate Bar Battler"
MPos=CFrame.new(620.6344604492188,78.93644714355469,-12581.369140625)
SP="Default"
elseif SelectMaterial=="Dragon Scale" then
MMon="Dragon Crew Archer"
MPos=CFrame.new(6827.91455078125, 609.4127197265625, 252.3538055419922)
SP="Default"
elseif SelectMaterial=="Gunpowder" then
MMon="Pistol Billionaire"
MPos=CFrame.new(-469,74,5904)
SP="Default"
elseif SelectMaterial=="Mini Tusk" then
MMon="Mythological Pirate"
MPos=CFrame.new()
SP="Default"
end
end
function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~="Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name='NameEsp'
                        bill.ExtentsOffset=Vector3.new(0, 1, 0)
                        bill.Size=UDim2.new(1,200,1,30)
                        bill.Adornee=v
                        bill.AlwaysOnTop=true
                        local name = Instance.new('TextLabel',bill)
                        name.Font="GothamBold"
                        name.FontSize="Size14"
                        name.TextWrapped=true
                        name.Size=UDim2.new(1,0,1,0)
                        name.TextYAlignment='Top'
                        name.BackgroundTransparency=1
                        name.TextStrokeTransparency=0.5
                        name.TextColor3=Color3.fromRGB(8, 0, 0)
                    else
                        v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end
function isnil(thing)
return (thing==nil)
end
local function round(n)
return math.floor(tonumber(n)+0.5)
end
Number=math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v.Character.Head
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size10"
                    name.TextWrapped=true
                    name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    if v.Team==game.Players.LocalPlayer.Team then
                        name.TextColor3=Color3.new(0,0,254)
                    else
                        name.TextColor3=Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text=(v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name='NameEsp'..Number
                        bill.ExtentsOffset=Vector3.new(0, 1, 0)
                        bill.Size=UDim2.new(1,200,1,30)
                        bill.Adornee=v
                        bill.AlwaysOnTop=true
                        local name = Instance.new('TextLabel',bill)
                        name.Font=Enum.Font.GothamSemibold
                        name.FontSize="Size14"
                        name.TextWrapped=true
                        name.Size=UDim2.new(1,0,1,0)
                        name.TextYAlignment='Top'
                        name.BackgroundTransparency=1
                        name.TextStrokeTransparency=0.5
                        if v.Name=="Chest1" then
                            name.TextColor3=Color3.fromRGB(109, 109, 109)
                            name.Text=("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name=="Chest2" then
                            name.TextColor3=Color3.fromRGB(173, 158, 21)
                            name.Text=("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name=="Chest3" then
                            name.TextColor3=Color3.fromRGB(85, 255, 255)
                            name.Text=("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v.Handle
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(255, 255, 255)
                    name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name=="Flower2" or v.Name=="Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(255, 0, 0)
                    if v.Name=="Flower1" then 
                        name.Text=("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3=Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name=="Flower2" then
                        name.Text=("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3=Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(255, 0, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(255, 174, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(251, 255, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end
function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~="Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name='NameEsp'
                        bill.ExtentsOffset=Vector3.new(0, 1, 0)
                        bill.Size=UDim2.new(1,200,1,30)
                        bill.Adornee=v
                        bill.AlwaysOnTop=true
                        local name = Instance.new('TextLabel',bill)
                        name.Font="GothamBold"
                        name.FontSize="Size14"
                        name.TextWrapped=true
                        name.Size=UDim2.new(1,0,1,0)
                        name.TextYAlignment='Top'
                        name.BackgroundTransparency=1
                        name.TextStrokeTransparency=0.5
                        name.TextColor3=Color3.fromRGB(7, 236, 240)
                    else
                        v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end
function isnil(thing)
return (thing==nil)
end
local function round(n)
return math.floor(tonumber(n)+0.5)
end
Number=math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v.Character.Head
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    if v.Team==game.Players.LocalPlayer.Team then
                        name.TextColor3=Color3.new(0,255,0)
                    else
                        name.TextColor3=Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text=(v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name='NameEsp'..Number
                        bill.ExtentsOffset=Vector3.new(0, 1, 0)
                        bill.Size=UDim2.new(1,200,1,30)
                        bill.Adornee=v
                        bill.AlwaysOnTop=true
                        local name = Instance.new('TextLabel',bill)
                        name.Font=Enum.Font.GothamSemibold
                        name.FontSize="Size14"
                        name.TextWrapped=true
                        name.Size=UDim2.new(1,0,1,0)
                        name.TextYAlignment='Top'
                        name.BackgroundTransparency=1
                        name.TextStrokeTransparency=0.5
                        if v.Name=="Chest1" then
                            name.TextColor3=Color3.fromRGB(109, 109, 109)
                            name.Text=("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name=="Chest2" then
                            name.TextColor3=Color3.fromRGB(173, 158, 21)
                            name.Text=("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name=="Chest3" then
                            name.TextColor3=Color3.fromRGB(85, 255, 255)
                            name.Text=("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v.Handle
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(255, 255, 255)
                    name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name=="Flower2" or v.Name=="Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'..Number
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font=Enum.Font.GothamSemibold
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(255, 0, 0)
                    if v.Name=="Flower1" then 
                        name.Text=("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3=Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name=="Flower2" then
                        name.Text=("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3=Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(255, 0, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(255, 174, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name='NameEsp'..Number
                bill.ExtentsOffset=Vector3.new(0, 1, 0)
                bill.Size=UDim2.new(1,200,1,30)
                bill.Adornee=v.Handle
                bill.AlwaysOnTop=true
                local name = Instance.new('TextLabel',bill)
                name.Font=Enum.Font.GothamSemibold
                name.FontSize="Size14"
                name.TextWrapped=true
                name.Size=UDim2.new(1,0,1,0)
                name.TextYAlignment='Top'
                name.BackgroundTransparency=1
                name.TextStrokeTransparency=0.5
                name.TextColor3=Color3.fromRGB(251, 255, 0)
                name.Text=(v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text=(v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end
spawn(function()
while wait() do
    pcall(function()
        if MobESP then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("MobEap") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")
                        BillboardGui.Parent=v
                        BillboardGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active=true
                        BillboardGui.Name="MobEap"
                        BillboardGui.AlwaysOnTop=true
                        BillboardGui.LightInfluence=1.000
                        BillboardGui.Size=UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset=Vector3.new(0, 2.5, 0)
                        TextLabel.Parent=BillboardGui
                        TextLabel.BackgroundColor3=Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency=1.000
                        TextLabel.Size=UDim2.new(0, 200, 0, 50)
                        TextLabel.Font=Enum.Font.GothamBold
                        TextLabel.TextColor3=Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size=35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude)
                    v.MobEap.TextLabel.Text=v.Name.."-"..Dis.." Distance"
                end
            end
        else
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild("MobEap") then
                    v.MobEap:Destroy()
                end
            end
        end
    end)
end
end)
spawn(function()
while wait() do
    pcall(function()
        if SeaESP then
            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("Seaesps") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")
                        BillboardGui.Parent=v
                        BillboardGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active=true
                        BillboardGui.Name="Seaesps"
                        BillboardGui.AlwaysOnTop=true
                        BillboardGui.LightInfluence=1.000
                        BillboardGui.Size=UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset=Vector3.new(0, 2.5, 0)
                        TextLabel.Parent=BillboardGui
                        TextLabel.BackgroundColor3=Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency=1.000
                        TextLabel.Size=UDim2.new(0, 200, 0, 50)
                        TextLabel.Font=Enum.Font.GothamBold
                        TextLabel.TextColor3=Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size=35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude)
                    v.Seaesps.TextLabel.Text=v.Name.."-"..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild("Seaesps") then
                    v.Seaesps:Destroy()
                end
            end
        end
    end)
end
end)
spawn(function()
while wait() do
    pcall(function()
        if NpcESP then
            for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("NpcEspes") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")
                        BillboardGui.Parent=v
                        BillboardGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active=true
                        BillboardGui.Name="NpcEspes"
                        BillboardGui.AlwaysOnTop=true
                        BillboardGui.LightInfluence=1.000
                        BillboardGui.Size=UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset=Vector3.new(0, 2.5, 0)
                        TextLabel.Parent=BillboardGui
                        TextLabel.BackgroundColor3=Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency=1.000
                        TextLabel.Size=UDim2.new(0, 200, 0, 50)
                        TextLabel.Font=Enum.Font.GothamBold
                        TextLabel.TextColor3=Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size=35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude)
                    v.NpcEspes.TextLabel.Text=v.Name.."-"..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild("NpcEspes") then
                    v.NpcEspes:Destroy()
                end
            end
        end
    end)
end
end)
function isnil(thing)
return (thing==nil)
end
local function round(n)
return math.floor(tonumber(n)+0.5)
end
Number=math.random(1, 1000000)
function UpdateIslandMirageESP() 
for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
    pcall(function()
        if MirageIslandESP then 
            if v.Name=="Mirage Island" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font="Code"
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end
function UpdateAuraESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if AuraESP then 
            if v.Name=="Master of Enhancement" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font="Code"
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end
function UpdateLSDESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if LADESP then 
            if v.Name=="Legendary Sword Dealer" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font="Code"
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end
function UpdateGeaESP() 
for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
    pcall(function()
        if GearESP then 
            if v.Name=="MeshPart" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name='NameEsp'
                    bill.ExtentsOffset=Vector3.new(0, 1, 0)
                    bill.Size=UDim2.new(1,200,1,30)
                    bill.Adornee=v
                    bill.AlwaysOnTop=true
                    local name = Instance.new('TextLabel',bill)
                    name.Font="Code"
                    name.FontSize="Size14"
                    name.TextWrapped=true
                    name.Size=UDim2.new(1,0,1,0)
                    name.TextYAlignment='Top'
                    name.BackgroundTransparency=1
                    name.TextStrokeTransparency=0.5
                    name.TextColor3=Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text=(v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position-v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end
function Tween2(Pos, KG)
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
   spawn(function()
            while task.wait() do
                pcall(function()
                    if _G.AutoEvoRace or _G.CastleRaid or _G.CollectAzure or _G.TweenToKitsune or _G.GhostShip or _G.Ship or _G.Auto_Holy_Torch or _G.TeleportPly or _G.Auto_Sea3 or _G.Auto_Sea2 or _G.Tweenfruit or _G.AutoFishCrew or _G.Auto_Saber or _G.AutoShark or _G.Auto_Warden or _G.Auto_RainbowHaki or AutoFarmRace or _G.AutoQuestRace or Auto_Law or AutoTushita or _G.AutoHolyTorch or _G.AutoTerrorshark or _G.farmpiranya or _G.Auto_MusketeerHat or _G.Auto_ObservationV2 or _G.AutoNear or _G.Auto_PoleV1 or _G.Auto_Buddy or _G.Ectoplasm or AutoEvoRace or AutoBartilo or _G.Auto_Canvander or _G.AutoLevel or _G.Auto_DualKatana or Auto_Quest_Yama_3 or Auto_Quest_Yama_2 or Auto_Quest_Yama_1 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3  or _G.Clip2 or _G.Auto_Regoku or _G.AutoBone or _G.AutoBoneNoQuest or _G.AutoBoss or AutoFarmMasDevilFruit or AutoFarmMasGun or AutoHallowSycthe or AutoTushita or _G.Cake or _G.Auto_SkullGuitar or _G.AutoFarmSwan or _G.AutoEliteor or AutoNextIsland or Musketeer or _G.AutoMaterial or AutoFarmRaceQuest or _G.Factory or _G.Auto_Saw or _G.AutoFrozenDimension or _G.AutoKillTrial or _G.AutoUpgrade or _G.TweenToFrozenDimension or _G.AutoFindPrehistoric then
                        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                            local Noclip = Instance.new("BodyVelocity")
                            Noclip.Name="BodyClip"
                            Noclip.Parent=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                            Noclip.MaxForce=Vector3.new(100000,100000,100000)
                            Noclip.Velocity=Vector3.new(0,0,0)
                        end
                    else
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                    end
                end)
            end
        end)
spawn(function()
  pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
      if _G.AutoEvoRace or _G.Auto_RainbowHaki or _G.Auto_SkullGuitar or _G.CastleRaid or _G.CollectAzure or _G.TweenToKitsune or _G.Auto_Sea3 or _G.Auto_Sea2 or _G.GhostShip or _G.Ship or _G.Auto_Holy_Torch or _G.TeleportPly or _G.Tweenfruit or _G.Auto_Saber or _G.Auto_PoleV1 or _G.Auto_MusketeerHat or _G.AutoFishCrew or _G.AutoShark or AutoFarmRace or _G.AutoQuestRace or _G.Auto_Warden or Auto_Law or _G.Auto_DualKatana or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or AutoTushita or _G.AutoHolyTorch or _G.Auto_Buddy or _G.AutoTerrorshark or _G.farmpiranya or Auto_Quest_Yama_3 or _G.Auto_ObservationV2 or Auto_Quest_Yama_2 or Auto_Quest_Yama_1 or _G.AutoNear or _G.Ectoplasm or AutoEvoRace or _G.AutoKillTrial or AutoBartilo or AutoFarmMasGun or _G.Auto_Regoku or _G.AutoLevel or _G.Clip2 or _G.AutoBone or _G.Auto_Canvander or _G.AutoBoneNoQuest or _G.AutoBoss or _G.Auto_Saw or AutoFarmMasDevilFruit or AutoHallowSycthe or AutoTushita or _G.Cake or _G.AutoFarmSwan or _G.AutoEliteor or AutoNextIsland or Musketeer or _G.AutoMaterial or _G.Factory or _G.AutoFrozenDimension or AutoFarmRaceQuest or _G.AutoUpgrade or _G.TweenToFrozenDimension or _G.AutoFindPrehistoric then
      for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
      if v:IsA("BasePart") then
      v.CanCollide=false
      end
      end
      end
      end)
    end)
  end)
  task.spawn(function()
    if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
    game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
      pcall(function()
        if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
        game.Players.LocalPlayer.Character.Stun.Value=0
        end
        end)
      end)
    end
    end)
function CheckMaterial(matname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
if type(v)=="table" then
if v.Type=="Material" then
if v.Name==matname then
return v.Count
end
end
end
end
return 0
end
function GetWeaponInventory(Weaponname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
if type(v)=="table" then
if v.Type=="Sword" then
if v.Name==Weaponname then
return true
end
end
end
end
return false
end

local foldername = "GreenZ Hub"
local filename = foldername.."/Setting.json"
function saveSettings()
    local HttpService = game:GetService("HttpService")
    local json = HttpService:JSONEncode(_G)
    if true then
        if isfolder(foldername) then
            if isfile(filename) then
                writefile(filename, json)
            else
                writefile(filename, json)
            end
        else
            makefolder(foldername)
        end
    end
end

function loadSettings()
    local HttpService = game:GetService("HttpService")
    if isfolder(foldername) then
        if isfile(filename) then
            _G = HttpService:JSONDecode(readfile(filename))
        end
    end
end
local player = game.Players.LocalPlayer
function AttackNoCoolDown()
    local character = player.Character
    if not character then return end
    local equippedWeapon = nil
    for _, item in ipairs(character:GetChildren()) do
        if item:IsA("Tool") then
            equippedWeapon = item
            break
        end
    end
    if not equippedWeapon then return end
    local function IsEntityAlive(entity)
        return entity and entity:FindFirstChild("Humanoid") and entity.Humanoid.Health > 0
    end
    local function GetEnemiesInRange(range)
        local enemies = game:GetService("Workspace").Enemies:GetChildren()
        local targets = {}
        local playerPos = character:GetPivot().Position
        for _, enemy in ipairs(enemies) do
            local primaryPart = enemy:FindFirstChild("HumanoidRootPart")
            if primaryPart and IsEntityAlive(enemy) and (primaryPart.Position - playerPos).Magnitude <= range then
                table.insert(targets, enemy)
            end
        end
        return targets
    end
    if equippedWeapon:FindFirstChild("LeftClickRemote") then
        local attackCount = 1  
        local enemiesInRange = GetEnemiesInRange(60)
        for _, enemy in ipairs(enemiesInRange) do
            local direction = (enemy.HumanoidRootPart.Position - character:GetPivot().Position).Unit
            pcall(function()
                equippedWeapon.LeftClickRemote:FireServer(direction, attackCount)
            end)
            attackCount = attackCount + 1
            if attackCount > 1000000000 then attackCount = 1 end
        end
    else
        local targets = {}
        local enemies = game:GetService("Workspace").Enemies:GetChildren()
        local playerPos = character:GetPivot().Position
        local mainTarget = nil
        for _, enemy in ipairs(enemies) do
            if not enemy:GetAttribute("IsBoat") and IsEntityAlive(enemy) then
                local head = enemy:FindFirstChild("Head")
                if head and (playerPos - head.Position).Magnitude <= 60 then
                    table.insert(targets, { enemy, head })
                    mainTarget = head
                end
            end
        end
        if not mainTarget then return end
        pcall(function()
            local storage = game:GetService("ReplicatedStorage")
            local attackEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterAttack")
            local hitEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit")
            if #targets > 0 then
                attackEvent:FireServer(0.000000001)
                hitEvent:FireServer(mainTarget, targets)
            else
                task.wait(0.000000001)
            end
        end)
    end
end
Type=1
spawn(function()
    while wait() do
        if Type==1 then
            Pos=CFrame.new(0, 20, 0)
        end
    end
end)
spawn(function()
    while wait() do
        Type=1
    end
end)
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end
function to(P)
    repeat wait(_G.Fast_Delay)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=P
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=P
    until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=2000
end
function to(p)
        pcall(function()
            if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>=2000 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health>0 then
                if NameMon=="FishmanQuest" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif Mon=="God's Guard"  then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248,-1667.55688))
                elseif NameMon=="SkyExp1Quest" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625,-380.29119873047))
                elseif NameMon=="ShipQuest1" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                elseif NameMon=="ShipQuest2" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                elseif NameMon=="FrostQuest" then
                    Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                    wait()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715,-132.83953857422))
                else
                        repeat wait(_G.Fast_Delay)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=p
                        wait(.05)
                        game.Players.LocalPlayer.Character.Head:Destroy()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=p
                    until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<2500 and game.Players.LocalPlayer.Character.Humanoid.Health>0
                    wait()
                end
            end
        end)
    end
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
ImageButton.Image="http://www.roblox.com/asset/?id=104550390997640"
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
local Mastery = Tabs.Shop:AddSection("Tab Shop")
local codes = {"KITT_RESET", "Sub2UncleKizaru", "SUB2GAMERROBOT_RESET1", "Sub2Fer999", "Enyu_is_Pro", "JCWK", "StarcodeHEO", "MagicBus", "KittGaming", "Sub2CaptainMaui", "Sub2OfficalNoobie", "TheGreatAce", "Sub2NoobMaster123", "Sub2Daigrock", "Axiore", "StrawHatMaine", "TantaiGaming", "Bluxxy", "SUB2GAMERROBOT_EXP1", "Chandler", "NOMOREHACK", "BANEXPLOIT", "WildDares", "BossBuild", "GetPranked", "EARN_FRUITS", "FIGHT4FRUIT", "NOEXPLOITER", "NOOB2ADMIN", "CODESLIDE", "ADMINHACKED", "ADMINDARES", "fruitconcepts", "krazydares", "TRIPLEABUSE", "SEATROLLING", "24NOADMIN", "REWARDFUN", "NEWTROLL", "fudd10_v2", "Fudd10", "Bignews", "SECRET_ADMIN"}
Tabs.Shop:AddButton({
    Title="Redeem All Code",
    Description="",
    Callback=function()
        for _, code in ipairs(codes) do
            RedeemCode(code)  
        end
    end
})
function RedeemCode(Code)
    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Code)
end
Tabs.Shop:AddButton({
    Title="Teleport To Sea 1",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})
Tabs.Shop:AddButton({
    Title="Teleport To Sea 2",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})
Tabs.Shop:AddButton({
    Title="Teleport To Sea 3",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})
local Sku = Tabs.Shop:AddSection("Skills")
Tabs.Shop:AddButton({
    Title="Geppo",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
    end
})
Tabs.Shop:AddButton({
    Title="Buso",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
    end
})
Tabs.Shop:AddButton({
    Title="Soru",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
    end
})
Tabs.Shop:AddButton({
    Title="Ken",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
    end
})
local Mastery = Tabs.Shop:AddSection("Sword")
Tabs.Shop:AddButton({
    Title="Cutlass",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
    end
})
Tabs.Shop:AddButton({
    Title="Katana",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
    end
})
Tabs.Shop:AddButton({
    Title="Iron Mace",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
    end
})
Tabs.Shop:AddButton({
    Title="Duel Katana",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
    end
})
Tabs.Shop:AddButton({
    Title="Triple Katana",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
    end
})
Tabs.Shop:AddButton({
    Title="Pipe",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
    end
})
Tabs.Shop:AddButton({
    Title="Dual-Headed Blade",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
    end
})
Tabs.Shop:AddButton({
    Title="Bisento",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
    end
})
Tabs.Shop:AddButton({
    Title="Soul Cane",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
    end
})
Tabs.Shop:AddButton({
    Title="Pole V2",
    Description="",
    Callback=function()
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk")
    end
})
local Mastery = Tabs.Shop:AddSection("Gun")
Tabs.Shop:AddButton({
    Title="Musket",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
    end
})
Tabs.Shop:AddButton({
    Title="Slingshot",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
    end
})
Tabs.Shop:AddButton({
    Title="Flintlock",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
    end
})
Tabs.Shop:AddButton({
    Title="Refined Slingshot",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Slingshot")
    end
})
Tabs.Shop:AddButton({
    Title="Dual Flintlock",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual Flintlock")
    end
})
Tabs.Shop:AddButton({
    Title="Cannon",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
    end
})
Tabs.Shop:AddButton({
    Title="Kabucha",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
    end
})
local Mastery = Tabs.Shop:AddSection("Accessory")
Tabs.Shop:AddButton({
    Title="Black Cape",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
    end
})
Tabs.Shop:AddButton({
    Title="Swordsman Hat",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
    end
})
Tabs.Shop:AddButton({
    Title="Tomoe Ring",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
    end
})
local Mastery = Tabs.Shop:AddSection("Martial arts")
Tabs.Shop:AddButton({
    Title="Black Leg",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end
})
Tabs.Shop:AddButton({
    Title="Electro",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end
})
Tabs.Shop:AddButton({
    Title="Fishman Karate",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end
})
Tabs.Shop:AddButton({
    Title="Dragon Claw",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
    end
})
Tabs.Shop:AddButton({
    Title="Superhuman",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end
})
Tabs.Shop:AddButton({
    Title="Death Step",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end
})
Tabs.Shop:AddButton({
    Title="Sharkman Karate",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end
})
Tabs.Shop:AddButton({
    Title="Electric Claw",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end
})
Tabs.Shop:AddButton({
    Title="Dragon Talon",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end
})
Tabs.Shop:AddButton({
    Title="Godhuman",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end
})
Tabs.Shop:AddButton({
    Title="Sanguine Art",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
    end
})
local DaNang = Tabs.Shop:AddSection("Other")
Tabs.Shop:AddButton({
    Title="Refund Start",
    Description="",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
    end
})
Tabs.Shop:AddButton({
    Title="Change Race",
    Description="Random Race Normal",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
    end
})
Tabs.Shop:AddButton({
    Title="Buy Ghoul",
    Description="",
    Callback=function()
        local args = {
            [1]="Ectoplasm",
            [2]="Change",
            [3]=4
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
Tabs.Shop:AddButton({
    Title="Buy Cyborg",
    Description="",
    Callback=function()
        local args = {
            [1]="CyborgTrainer",
            [2]="Buy"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
Tabs.Shop:AddButton({
    Title="Buy Draco",
    Description="Only To Sea 3",
    Callback=function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661.5322265625, 1013.0907592773438,-334.9649963378906))
        Tween2(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
        local targetPosition = Vector3.new(5814.42724609375, 1208.3267822265625, 884.5785522460938)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        repeat
            wait()
        until (character.HumanoidRootPart.Position-targetPosition).Magnitude<1
        local args = {
            [1]={
                ["NPC"]="Dragon Wizard",
                ["Command"]="DragonRace"
            }
        }
        game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(args))
    end
})
local ToggleLevel = Tabs.Main:AddToggle("ToggleLevel", {
        Title="Auto Farm Level",
        Description="",
        Default=false })
    ToggleLevel:OnChanged(function(Value)
        _G.AutoLevel=Value
        if Value==false then
            wait()
            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end)
    Options.ToggleLevel:SetValue(false)
    spawn(function()
        while task.wait() do
        if _G.AutoLevel then
        pcall(function()
          CheckLevel()
          if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
          Tween(CFrameQ)
          if (CFrameQ.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=5 then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,QuestLv)
          end
          elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==true then
          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
          if v.Name==Ms then
          repeat wait(_G.Fast_Delay)
          AttackNoCoolDown()
          bringmob=true
          AutoHaki()
          EquipTool(SelectWeapon)
          Tween(v.HumanoidRootPart.CFrame*Pos)
          v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
          v.HumanoidRootPart.Transparency=1
          v.Humanoid.JumpPower=0
          v.Humanoid.WalkSpeed=0
          v.HumanoidRootPart.CanCollide=false
          FarmPos=v.HumanoidRootPart.CFrame
          MonFarm=v.Name
          until not _G.AutoLevel or not v.Parent or v.Humanoid.Health<=0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible==false
          bringmob=false
        end   
          end
          end
          for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
          if string.find(v.Name,NameMon) then
          if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).Magnitude>=10 then
            Tween(v.HumanoidRootPart.CFrame*Pos)
          end
          saveSettings()
          end
          end
          end
          end)
        end
        end
        end)
local MiscFarm = Tabs.Main:AddSection("Bone Farm")
        local ToggleBone = Tabs.Main:AddToggle("ToggleBone", {
    Title="Auto Farm Bone",
    Description="", 
    Default=false })
ToggleBone:OnChanged(function(Value)
    _G.AutoBone=Value
    if Value==false then
        wait()
        Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
Options.ToggleBone:SetValue(false)
local BoneCFrame = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
spawn(function()
    while wait() do
        if _G.AutoBone then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, "Demonic Soul") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false then
                 Tween(BoneCFrame)
                if (BoneCFrame.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=3 then    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","HauntedQuest2",1)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==true then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 then
                                if v.Name=="Reborn Skeleton" or v.Name=="Living Zombie" or v.Name=="Demonic Soul" or v.Name=="Posessed Mummy" then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
                                        repeat wait(_G.Fast_Delay)
                                            AttackNoCoolDown()
                                            AutoHaki()
                                            bringmob=true
                                            EquipTool(SelectWeapon)
                                            Tween(v.HumanoidRootPart.CFrame*Pos)
                                            v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency=1
                                            v.Humanoid.JumpPower=0
                                            v.Humanoid.WalkSpeed=0
                                            v.HumanoidRootPart.CanCollide=false
                                            FarmPos=v.HumanoidRootPart.CFrame
                                            MonFarm=v.Name
                                        until not _G.AutoBone or v.Humanoid.Health<=0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible==false
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        bringmob=false
                                    end
                                end
                            end
                        end
                    else
                    end
                end
            end)
        end
    end
end)
local BoneNoQuest = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
spawn(function()
    while wait() do
        if _G.AutoBoneNoQuest then
            pcall(function()
                Tween(BoneNoQuest)
                if (BoneNoQuest.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=3 then
                end
                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 then
                            if v.Name=="Reborn Skeleton" or v.Name=="Living Zombie" or v.Name=="Demonic Soul" or v.Name=="Posessed Mummy" then
                                repeat wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    bringmob=true
                                    EquipTool(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame*Pos)
                                    v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency=1
                                    v.Humanoid.JumpPower=0
                                    v.Humanoid.WalkSpeed=0
                                    v.HumanoidRootPart.CanCollide=false
                                    FarmPos=v.HumanoidRootPart.CFrame
                                    MonFarm=v.Name
                                until not _G.AutoBoneNoQuest or v.Humanoid.Health<=0 or not v.Parent
                            end
                        end
                    end
                end
            end)
        end
    end
end)
local KataFarm = Tabs.Main:AddSection("Cake Prince")
local Mob_Kill_Cake_Prince = Tabs.Main:AddParagraph({
    Title="Status CakePrince",
    Content=""
})
spawn(function()
    while wait() do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"))==88 then
                Mob_Kill_Cake_Prince:SetDesc("Still: "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).."")
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"))==87 then
                Mob_Kill_Cake_Prince:SetDesc("Still: "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).."")
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"))==86 then
                Mob_Kill_Cake_Prince:SetDesc("Still: "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." ")
            else
                Mob_Kill_Cake_Prince:SetDesc(" : ✅️")
            end
        end)
    end
end)

   local ToggleCake = Tabs.Main:AddToggle("ToggleCake", {
    Title = "Auto Farm CakePrince",
    Description = "", 
    Default = false
})
ToggleCake:OnChanged(function(Value)
    _G.Cake = Value
    if Value == false then
        wait()
        Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
Options.ToggleCake:SetValue(false)
spawn(function()
    while wait() do
        if _G.Cake then
            pcall(function()
                if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Prince" or v.Name == "Dough King" then
                                repeat
                                    wait(_G.Fast_Delay)  
                                    AutoHaki()  
                                    EquipTool(SelectWeapon)  
                                    v.HumanoidRootPart.CanCollide = false  
                                    v.Humanoid.WalkSpeed = 0  
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                    Tween(v.HumanoidRootPart.CFrame * Pos)  
                                    AttackNoCoolDown()  
                                until _G.Cake == false or not v.Parent or v.Humanoid.Health <= 0
                            end    
                        end    
                    else
                        Tween(CFrame.new(-2116.40308, 66.0019989, -12270.6396, -0.258864403, 0, 0.965913713, 0, 1, 0, -0.965913713, 0, -0.258864403)) 
                    end
                else
                    if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
                                repeat
                                    wait(_G.Fast_Delay)  
                                    AutoHaki()  
                                    EquipTool(SelectWeapon)  
                                    bringmob = true  
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                    POSCAKE = v.HumanoidRootPart.CFrame  
                                    Tween(v.HumanoidRootPart.CFrame * Pos)  
                                    AttackNoCoolDown()  
                                until _G.Cake == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        bringmob = false
                        Tween(CFrame.new(-1579.9111328125, 329.7358703613281, -12310.365234375))
                        saveSettings() 
                    end
                end
            end)
        end
    end
end)
spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.Cake and bringmob and (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
                    v.HumanoidRootPart.CFrame = POSCAKE
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                end
            end
        end)
    end)
end)
spawn(function()
    while wait() do
        if _G.Cake then
            pcall(function()
                if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Prince" or v.Name == "Dough King" then
                                repeat
                                    wait(_G.Fast_Delay)  
                                    AutoHaki()  
                                    EquipTool(SelectWeapon)  
                                    v.HumanoidRootPart.CanCollide = false  
                                    v.Humanoid.WalkSpeed = 0  
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                    Tween(v.HumanoidRootPart.CFrame * Pos)  
                                    AttackNoCoolDown()  
                                until _G.Cake == false or not v.Parent or v.Humanoid.Health <= 0
                            end    
                        end    
                    else
                        Tween(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
                    end
                else
                    if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
                                repeat
                                    wait(_G.Fast_Delay)  
                                    AutoHaki()  
                                    EquipTool(SelectWeapon)  
                                    bringmob = true  
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                    POSCAKE = v.HumanoidRootPart.CFrame  
                                    Tween(v.HumanoidRootPart.CFrame * Pos)  
                                    AttackNoCoolDown()  
                                until _G.Cake == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        bringmob = false
                        Tween(CFrame.new(-1579.9111328125, 329.7358703613281, -12310.365234375)) 
                    end
                end
            end)
        end
    end
end)
    local ToggleSpawnCake = Tabs.Main:AddToggle("ToggleSpawnCake", {
        Title="Auto Spawn CakePrince",
        Description="", 
        Default=true })
    ToggleSpawnCake:OnChanged(function(Value)
      _G.SpawnCakePrince=Value
    end)
    Options.ToggleSpawnCake:SetValue(true)
spawn(function()
  while wait() do
    if _G.SpawnCakePrince then
      local args = {
        [1]="CakePrinceSpawner",
        [2]=true
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                    
      local args = {
        [1]="CakePrinceSpawner"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
     saveSettings()
    end
  end
end)
local DropdownSelectWeapon = Tabs.Setting:AddDropdown("DropdownSelectWeapon", {
    Title = "Select Weapon",
    Description = "",
    Values = {'Melee', 'Sword', 'Blox Fruit'},
    Multi = false,
    Default = 1,
})
DropdownSelectWeapon:SetValue('Melee')
DropdownSelectWeapon:OnChanged(function(Value)
    ChooseWeapon = Value
end)
task.spawn(function()
    while wait() do
        pcall(function()
            if ChooseWeapon == "Melee" then
                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            elseif ChooseWeapon == "Sword" then
                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            elseif ChooseWeapon == "Blox Fruit" then
                for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Blox Fruit" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                            saveSettings()
                        end
                    end
                end
            end
        end)
    end
end)
local ToggleBringMob = Tabs.Setting:AddToggle("ToggleBringMob", {
    Title = "Bring Mob",
    Description = "",
    Default = true
})
ToggleBringMob:OnChanged(function(Value)
    _G.BringMob = Value
end)
Options.ToggleBringMob:SetValue(true)

spawn(function()
    while wait() do
        pcall(function()
            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.BringMob and bringmob then
                    if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        if v.Name == "Factory Staff" then
                            if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 1000000000 then
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.CFrame = FarmPos
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == MonFarm then
                            if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 1000000000 then
                                v.HumanoidRootPart.CFrame = FarmPos
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                v.Humanoid:ChangeState(14)
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            end
        end)
    end
end)
local Gay = Tabs.Vocalno:AddSection("Tab Volcano")
local seatHistory = {}
local boatList = {"Beast Hunter", "Sleigh", "Miracle", "The Sentinel", "Guardian", "Lantern", "Dinghy", "PirateSloop", "PirateBrigade", "PirateGrandBrigade", "MarineGrandBrigade", "MarineBrigade", "MarineSloop"} 
local DropdownBoat = Tabs.Vocalno:AddDropdown("DropdownBoat", {
    Title="Select Boat To Buy",
    Description="",
    Values=Guardian,
    Multi=false,
    Default=1,
})
DropdownBoat:SetValue(selectedBoat)
DropdownBoat:OnChanged(function(Value)
    selectedBoat=Value
end)
local function tpToMyBoat()
    for boatName, seat in pairs(seatHistory) do
        if seat and seat.Parent and seat.Name=="VehicleSeat" and not seat.Occupant then
            Tween2(seat.CFrame)
        end
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    for boatName, seat in pairs(seatHistory) do
        if seat and seat.Parent and seat.Name=="VehicleSeat" and not seat.Occupant then
            seatHistory[boatName]=seat
        end
    end
end)
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local SetSpeedBoat = 350 
local nextDistance = 3000 
local npcPosition = Vector3.new(-16665.191, 104.596, 1579.694) 
local rotationSequence = {80, -50, -80, 50} 
local currentStep = 1
local function getPlayerBoat()
    for _, boat in pairs(Workspace.Boats:GetChildren()) do
        local seat = boat:FindFirstChild("VehicleSeat")
        if seat and seat.Occupant == character:FindFirstChild("Humanoid") then
            return boat
        end
    end
    return nil
end
RunService.RenderStepped:Connect(function()
    if not character or not character.PrimaryPart then return end
    local distance = (character.PrimaryPart.Position - npcPosition).Magnitude
    local distanceInMeters = math.floor(distance / 10)
    if distanceInMeters >= nextDistance then
        local boat = getPlayerBoat()
        if boat and boat.PrimaryPart then
            local angle = rotationSequence[currentStep]
            local newRotation = boat.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(angle), 0)
            boat:SetPrimaryPartCFrame(newRotation)
            currentStep = currentStep + 1
            if currentStep > #rotationSequence then
                currentStep = 1 
            end
            nextDistance = nextDistance + 1000
        end
    end
end)
local seatHistory, isTeleporting, notified = {}, false, false
local islandsToDelete = {
    Prehistoric = { "ShipwreckIsland", "SandIsland", "TreeIsland", "TinyIsland", "MysticIsland", "KitsuneIsland", "FrozenDimension" },
}
local function createToggle(title, toggleKey, islands, islandName, notification)
    local toggle = Tabs.Vocalno:AddToggle(toggleKey, { Title = title, Default = false })
    Options[toggleKey]:SetValue(false)
    toggle:OnChanged(function(value) _G[toggleKey] = value
    if value == true then
            Tween2(CFrame.new(-16927, 9, 433))
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-16927, 9, 433)).Magnitude <= 10 then
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyBoat", selectedBoat)
            end
            wait(1)
        end
    end)
    RunService.RenderStepped:Connect(function()
        if not _G[toggleKey] then
            notified = false
            return
        end
        local humanoid = character:FindFirstChild("Humanoid")
        if not humanoid then return end
        local function tpToMyBoat()
            if isTeleporting then return end
            isTeleporting = true
            for _, seat in pairs(seatHistory) do
                if seat and seat.Parent and seat.Name == "VehicleSeat" and not seat.Occupant then
                    Tween2(seat.CFrame)
                    break
                end
            end
            isTeleporting = false
        end
        local boatFound, currentBoat = false, nil
        for _, boat in pairs(Workspace.Boats:GetChildren()) do
            local seat = boat:FindFirstChild("VehicleSeat")
            if seat then
                if seat.Occupant == humanoid then
                    boatFound, currentBoat = true, seat
                    seatHistory[boat.Name] = seat
                elseif seat.Occupant == nil then
                    tpToMyBoat()
                end
            end
        end
        if not boatFound then return end
        currentBoat.MaxSpeed = SetSpeedBoat
        currentBoat.CFrame = CFrame.new(currentBoat.Position) * currentBoat.CFrame.Rotation
        VirtualInputManager:SendKeyEvent(true, "W", false, game)
        for _, part in pairs(Workspace.Boats:GetDescendants()) do
            if part:IsA("BasePart") then part.CanCollide = false end
        end
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then part.CanCollide = false end
        end
        for _, island in ipairs(islands) do
            local toDelete = Workspace.Map:FindFirstChild(island)
            if toDelete and toDelete:IsA("Model") then
                toDelete:Destroy()
            end
        end
        local targetIsland = Workspace.Map:FindFirstChild(islandName)
        if targetIsland then
            VirtualInputManager:SendKeyEvent(false, "W", false, game)
            _G[toggleKey] = false
            if not notified then
                Fluent:Notify({
                    Title = "GreenZ Hub",
                    Content = Notification,
                    Duration = 10
                })
                notified = true
            end
        end
    end)
end
createToggle("Auto Find Prehistoric", "AutoFindPrehistoric", islandsToDelete.Prehistoric, "PrehistoricIsland", "Volcano Island Spawner!!!")
    local Prehistoric = Tabs.Vocalno:AddParagraph({
    Title="Status Prehistoric",
    Content=""
})
spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland") then
                Prehistoric:SetDesc("Prehistoric: ✅️")
            else
                Prehistoric:SetDesc("Prehistoric: ❌️")
            end
        end
    end)
end)
      local ToggleTPVolcano = Tabs.Vocalno:AddToggle("ToggleTPVolcano", { 
    Title="Teleport To Volcano", 
    Description="", 
    Default=false 
})
ToggleTPVolcano:OnChanged(function(Value)
    _G.TweenToPrehistoric=Value
end)
Options.ToggleTPVolcano:SetValue(false)
spawn(function()
    local island
    while not island do
        island=game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland")
        wait()
    end
    while wait() do
        if _G.TweenToPrehistoric then
            local prehistoricIslandCore = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland")
            if prehistoricIslandCore then
                local relic = prehistoricIslandCore:FindFirstChild("Core") and prehistoricIslandCore.Core:FindFirstChild("PrehistoricRelic")
                local skull = relic and relic:FindFirstChild("Skull")
                if skull then
                    Tween2(CFrame.new(skull.Position))
                    _G.TweenToPrehistoric=false
                end
            end
        end
    end
end)
local ToggleDefendVolcano = Tabs.Vocalno:AddToggle("ToggleDefendVolcano", {
    Title = "Defend Volcano", 
    Description = "", 
    Default = false
})
ToggleDefendVolcano:OnChanged(function(Value)
    _G.AutoDefendVolcano = Value
end)
local ToggleMelee = Tabs.Vocalno:AddToggle("ToggleMelee", {
    Title = "Use Melee(Dragon Talon Is Good)", 
    Description = "", 
    Default = false
})
ToggleMelee:OnChanged(function(Value)
    _G.UseMelee = Value
end)
local ToggleSword = Tabs.Vocalno:AddToggle("ToggleSword", {
    Title = "Use Sword", 
    Description = "", 
    Default = false
})
ToggleSword:OnChanged(function(Value)
    _G.UseSword = Value
end)
local ToggleGun = Tabs.Vocalno:AddToggle("ToggleGun", {
    Title = "Use Gun(Error)", 
    Description = "", 
    Default = false
})
ToggleGun:OnChanged(function(Value)
    _G.UseGun = Value
end)
local function useSkill(skillKey)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, skillKey, false, game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, skillKey, false, game)
end
local function removeLava()
    local interiorLavaModel = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava")
    if interiorLavaModel and interiorLavaModel:IsA("Model") then
        interiorLavaModel:Destroy()
    end
    local prehistoricIsland1 = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
    if prehistoricIsland1 then
        for _, descendant in pairs(prehistoricIsland1:GetDescendants()) do
            if descendant:IsA("Part") and descendant.Name:lower():find("lava") then
                descendant:Destroy()
            end
        end
    end
    local prehistoricIsland2 = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
    if prehistoricIsland2 then
        for _, model in pairs(prehistoricIsland2:GetDescendants()) do
            if model:IsA("Model") then
                for _, child in pairs(model:GetDescendants()) do
                    if child:IsA("MeshPart") and child.Name:lower():find("lava") then
                        child:Destroy()
                    end
                end
            end
        end
    end
end
local function findValidRock()
    local volcanoRocksFolder = game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks
    for _, Rock in pairs(volcanoRocksFolder:GetChildren()) do
        if Rock:IsA("Model") then
            local volcanorock = Rock:FindFirstChild("volcanorock")
            if volcanorock and volcanorock:IsA("MeshPart") then
                local color = volcanorock.Color
                if color == Color3.fromRGB(185, 53, 56) or color == Color3.fromRGB(185, 53, 57) then
                    return volcanorock
                end
            end
        end
    end
    return nil 
end
local function equipAndUseSkill(toolType)
    local player = game.Players.LocalPlayer
    local backpack = player.Backpack
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.ToolTip == toolType then
            item.Parent = player.Character 
            for _, skill in ipairs({"Z", "X", "C", "V", "F"}) do
                wait() 
                pcall(function() useSkill(skill) end) 
            end
            item.Parent = backpack
            break
        end
    end
end
spawn(function()
    while wait() do
        if _G.AutoDefendVolcano then
            AutoHaki() 
            pcall(removeLava) 
            local currentTarget = findValidRock() 
            if currentTarget then
                local targetPosition = CFrame.new(currentTarget.Position + Vector3.new(0, 0, 0))
                Tween2(targetPosition) 
                local color = currentTarget.Color
                if color ~= Color3.fromRGB(185, 53, 56) and color ~= Color3.fromRGB(185, 53, 57) then
                    currentTarget = findValidRock() 
                else
                    local currentPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    local distance = (currentPosition - currentTarget.Position - Vector3.new(0, 0, 0)).Magnitude
                    if distance <= 1 then
                        if _G.UseMelee then
                            equipAndUseSkill("Melee")
                        end
                        if _G.UseSword then
                            equipAndUseSkill("Sword")
                        end
                        if _G.UseGun then
                            equipAndUseSkill("Gun")
                        end
                    end
                    _G.TweenToPrehistoric = false
                end
            else
                _G.TweenToPrehistoric = true
            end
        end
    end
end)
local ToggleKillAura = Tabs.Vocalno:AddToggle("ToggleKillAura", {Title="Kill Golem",Description="", Default=false })
ToggleKillAura:OnChanged(function(Value)
    KillAura=Value
end)
Options.ToggleKillAura:SetValue(false)
spawn(function()
    while wait() do
        if KillAura then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health>0 then
                        repeat task.wait()
                            sethiddenproperty(game:GetService('Players').LocalPlayer,"SimulationRadius",math.huge)
                            v.Humanoid.Health=0
                            v.HumanoidRootPart.CanCollide=false
                        until not KillAura or not v.Parent or v.Humanoid.Health<=0
                    end
                end
            end)
        end
    end
end)
local ToggleCollectBone = Tabs.Vocalno:AddToggle("ToggleCollectBone", {
    Title="Collect Bone", 
    Description="", 
    Default=false
})
ToggleCollectBone:OnChanged(function(Value)
    _G.AutoCollectBone=Value
end)
spawn(function()
    while wait() do
        if _G.AutoCollectBone then
            for _, obj in pairs(workspace:GetDescendants()) do
                if obj:IsA("BasePart") and obj.Name=="DinoBone" then
                    Tween2(CFrame.new(obj.Position))
                end
            end
        end
    end
end)
local ToggleCollectEgg = Tabs.Vocalno:AddToggle("ToggleCollectEgg", {
    Title = "Collect Egg",
    Description = "",
    Default = false
})
ToggleCollectEgg:OnChanged(function(Value)
    _G.AutoCollectEgg = Value
end)
spawn(function()
    while wait() do
        if _G.AutoCollectEgg then
            local dragonEggs = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren()
            if #dragonEggs > 0 then
                local randomEgg = dragonEggs[math.random(1, #dragonEggs)]
                if randomEgg:IsA("Model") and randomEgg.PrimaryPart then
                    Tween2(randomEgg.PrimaryPart.CFrame)
                    local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    local eggPosition = randomEgg.PrimaryPart.Position
                    local distance = (playerPosition - eggPosition).Magnitude
                    if distance <= 1 then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                        wait(1.5)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game)
                    end
                end
            end
        end
    end
end)
local AutoRip = Tabs.Stack:AddToggle("AutoRip", {
    Title = "Attack RipIndra(Wait Fix)",
    Description = "",
    Default = false
})
ToggleCollectEgg:OnChanged(function(Value)
    _G.AutoRipIndra = Value
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoRipIndra then
                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 5000] [Raid Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == ("rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "rip_indra [Lv. 5000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat task.wait()
                                pcall(function()
                                    AttackNoCoolDown()
                                    EquipTool(SelectWeapon)
                                    AutoHaki()
                                    v.HumanoidRootPart.CanCollide = false
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                end)
                            until _G.AutoRipIndra == false or v.Humanoid.Health <= 0
                        end
                    end
                else
                    Tween2(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                end
            end
        end
    end)
end)
Tabs.Stack:AddButton({
    Title="Hop RipIndra(Api Offline)",
    Description="",
    Callback=function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GoodLua001/Api-All/refs/heads/main/ripindra.lua"))()
end
})
local Chips = {"Flame","Ice","Quake","Light","Dark","Spider","Rumble","Magma","Buddha","Sand","Phoenix","Dough"}
local DropdownRaid = Tabs.Raid:AddDropdown("DropdownRaid", {
    Title="Select Chip",
    Description="",
    Values=Chips,
    Multi=false,
    Default=1,
})
DropdownRaid:SetValue(SelectChip)
DropdownRaid:OnChanged(function(Value)
    SelectChip=Value
end)
local ToggleBuy = Tabs.Raid:AddToggle("ToggleBuy", {Title="Auto Buy Chip", Description="",Default=false })
ToggleBuy:OnChanged(function(Value)
    _G.Auto_Buy_Chips_Dungeon=Value
end)
Options.ToggleBuy:SetValue(false)
spawn(function()
    while wait() do
        if _G.Auto_Buy_Chips_Dungeon then
            pcall(function()
                local args = {
                    [1]="RaidsNpc",
                    [2]="Select",
                    [3]=SelectChip
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
        end
    end
end)
    local ToggleStart = Tabs.Raid:AddToggle("ToggleStart", {Title="Start Raid",Description="", Default=false })
    ToggleStart:OnChanged(function(Value)
        _G.Auto_StartRaid=Value
end)
Options.ToggleStart:SetValue(false)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_StartRaid then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible==false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and
                        (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or
                         game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then
                        if Sea2 then
                            Tween2(CFrame.new(-6438.73535, 250.645355,-4501.50684))
                            local args = {
                                [1]="SetSpawnPoint"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif Sea3 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5075.50927734375, 314.5155029296875,-3150.0224609375))
                            Tween2(CFrame.new(-5017.40869, 314.844055,-2823.0127,-0.925743818, 4.48217499e-08,-0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08,-0.925743818))
                            local args = {
                                [1]="SetSpawnPoint"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)
local ToggleNextIsland = Tabs.Raid:AddToggle("ToggleNextIsland", {
    Title="Auto Kill Mobs",
    Description="",
    Default=false
})
ToggleNextIsland:OnChanged(function(Value)
    AutoNextIsland=Value
    if not Value then
        _G.AutoNextIsland=false
    end
end)
Options.ToggleNextIsland:SetValue(false)
spawn(function()
    while wait() do
        if _G.NextIsland then
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
                            repeat wait(_G.Fast_Delay)                               
                                    AutoHaki()
                                    bringmob = true
                                    EquipTool(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * Pos)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    until not _G.NextIsland or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                            bringmob = false
                        end
                    end
                end
            end)
        end
    end
end)
local ToggleAwake = Tabs.Raid:AddToggle("ToggleAwake", {Title="Auto Awake",Description="", Default=false })
ToggleAwake:OnChanged(function(Value)
    AutoAwakenAbilities=Value
end)
Options.ToggleAwake:SetValue(false)
spawn(function()
    while task.wait() do
        if AutoAwakenAbilities then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
            end)
        end
    end
end)
local ToggleGetFruit = Tabs.Raid:AddToggle("ToggleGetFruit", {Title="Get Fruits Under 1M In Inventory",Description="", Default=false })
ToggleGetFruit:OnChanged(function(Value)
    _G.Autofruit=Value
end)
spawn(function()
    while wait() do
        pcall(function()
     if _G.Autofruit then
local args = {
    [1]="LoadFruit",
    [2]="Rocket-Rocket"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Spin-Spin"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Chop-Chop"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Spring-Spring"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Bomb-Bomb"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Smoke-Smoke"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Spike-Spike"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Flame-Flame"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Falcon-Falcon"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Ice-Ice"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Sand-Sand"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Dark-Dark"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Ghost-Ghost"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Diamond-Diamond"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Light-Light"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Rubber-Rubber"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1]="LoadFruit",
    [2]="Barrier-Barrier"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)
end
end)
if Sea2 then
Tabs.Raid:AddButton({
    Title="Teleport To Raid",
    Description="",
    Callback=function()
     Tween2(CFrame.new(-6438.73535, 250.645355,-4501.50684))
end
})
elseif Sea3 then
    Tabs.Raid:AddButton({
        Title="Teleport To Raid",
        Description="",
        Callback=function()
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5075.50927734375, 314.5155029296875,-3150.0224609375))
           Tween2(CFrame.new(-5017.40869, 314.844055,-2823.0127,-0.925743818, 4.48217499e-08,-0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08,-0.925743818))
        end
        })
end
Fluent:Notify({
    Title="GreenZ Hub",
    Content="Done Load Code",
    Duration=1
})
_G.FastAttack = true

if _G.FastAttack then
    local _ENV = (getgenv or getrenv or getfenv)()

    local function SafeWaitForChild(parent, childName)
        local success, result = pcall(function()
            return parent:WaitForChild(childName)
        end)
        if not success or not result then
            warn("noooooo: " .. childName)
        end
        return result
    end

    local function WaitChilds(path, ...)
        local last = path
        for _, child in {...} do
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
        warn("Không tìm thấy người chơi cục bộ.")
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
            for _, Enemy in Folder:GetChildren() do
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
                    FastAttack:BladeHits()
                end
            end
        end)

        _ENV.rz_FastAttack = FastAttack
        return FastAttack
    end)()
end