local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Zero X Hub | Blox Fruits ",
    SubTitle = "by Saries",
    TabWidth = 160,
    Size = UDim2.fromOffset(530, 350),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.End
})
local Tabs = {
    Main = Window:AddTab({ Title = "General", Icon = "home" }),
    Setting = Window:AddTab({ Title = "Settings", Icon = "settings" }),
}
local Options = Fluent.Options
local HttpService = game:GetService("HttpService")
local Player = game.Players.LocalPlayer
local Path = "Zero X Hub/Blox Fruits/"
local File = Path .. Player.Name .. ".json"

getgenv().Settings = getgenv().Settings or {}

getgenv().Load = function()
    if not (readfile and writefile and isfile and isfolder) then return warn("Status : Undetected Executor") end
    if not isfolder("Zero X Hub") then makefolder("Zero X Hub") end
    if not isfolder(Path) then makefolder(Path) end
    if not isfile(File) then
        writefile(File, HttpService:JSONEncode(getgenv().Settings))
    else
        local Decode = HttpService:JSONDecode(readfile(File))
        for i,v in pairs(Decode) do
            getgenv().Settings[i] = v
        end
    end
end

getgenv().SaveSetting = function()
    if not (readfile and writefile and isfile and isfolder) then return warn("Status : Undetected Executor") end
    writefile(File, HttpService:JSONEncode(getgenv().Settings))
end

getgenv().SetValue = function(key,value)
    getgenv().Settings[key] = value
    getgenv().SaveSetting()
end

getgenv().Load()

--// Simple function
local pla = game:GetService("Players")
local rss = game:GetService("ReplicatedStorage")
local wss = game:GetService("Workspace")
local input = game:GetService("UserInputService")
local run = game:GetService("RunService")
local tween = game:GetService("TweenService")
local https = game:GetService("HttpService")
local teleports = game:GetService("TeleportService")
local vim = game:GetService("VirtualInputManager")

_G.Server = {}
local Services = {
    ws = wss,
    pl = pla,
    rs = rss
}
for key, service in pairs(Services) do
    local proxy = {}
    local map = {}
    for _, obj in ipairs(service:GetDescendants()) do
        map[obj.Name] = obj
    end
    service.DescendantAdded:Connect(function(obj)
        map[obj.Name] = obj
    end)
    setmetatable(proxy, {
        __index = function(_, name)
            return map[name]
        end
    })
    _G.Server[key] = proxy
end

local Tabel = {}
function GetCake_CFrame_Mon()
    for _, monster in pairs({"Baking Staff", "Head Baker", "Cake Guard", "Cookie Crafter"}) do
        local cleanName = monster:gsub("Lv. ", ""):gsub("[%[%]]", ""):gsub("%d+", ""):gsub("%s+", "")
        if _G.Server["ws"]["EnemySpawns"]:GetChildren()[math.random(1, #_G.Server["ws"]["EnemySpawns"]:GetChildren())].Name == cleanName then
            return _G.Server["ws"]["EnemySpawns"]:GetChildren()[math.random(1, #_G.Server["ws"]["EnemySpawns"]:GetChildren())].CFrame
        end
    end
end
local function createEnemySpawns()
    local EnemySpawns = Instance.new("Folder", workspace)
    EnemySpawns.Name = "EnemySpawns"
    local function processSpawn(item)
        if item:IsA("Part") or item:IsA("Model") and item:FindFirstChild("HumanoidRootPart") then
            local part = item:IsA("Part") and item or item.HumanoidRootPart
            local clone = part:Clone()
            local cleanName = item.Name:gsub("Lv. ", ""):gsub("[%[%]]", ""):gsub("%d+", ""):gsub("%s+", "")
            clone.Name = cleanName
            clone.Parent = EnemySpawns
            clone.Anchored = true
        end
    end
    for _, v in pairs(_G.Server["ws"]["_WorldOrigin"]["EnemySpawns"]:GetChildren()) do
        processSpawn(v)
    end
    for _, v in pairs(_G.Server["ws"]["Enemies"]:GetChildren()) do
        processSpawn(v)
    end
    for _, v in pairs(rss:GetChildren()) do
        processSpawn(v)
    end
end
local function getMobCFrames(mobName)
    local matchingCFrames = {}
    local cleanName = mobName:gsub("Lv. ", ""):gsub("[%[%]]", ""):gsub("%d+", ""):gsub("%s+", "")
    for _, v in pairs(workspace.EnemySpawns:GetChildren()) do
        if v.Name == cleanName then
            table.insert(matchingCFrames, v.CFrame)
        end
    end
    return matchingCFrames
end
local function QuestCheck()
    local player = game.Players.LocalPlayer
    local level = player.Data.Level.Value
    local team = tostring(player.Team)
    local questData = {
        QuestLevel = 1,
        NPCPosition = nil,
        MobName = "",
        QuestName = "",
        LevelRequire = 0,
        Mon = "",
        MobCFrame = {}
    }
    if level >= 1 and level <= 9 then
        if team == "Marines" then
            questData.MobName = "Trainee"
            questData.QuestName = "MarineQuest"
            questData.Mon = "Trainee"
            questData.LevelRequire = 1
            questData.NPCPosition = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
        else
            questData.MobName = "Bandit"
            questData.Mon = "Bandit"
            questData.QuestName = "BanditQuest1"
            questData.LevelRequire = 1
            questData.NPCPosition = CFrame.new(1059.99731, 16.9222069, 1549.28162, -0.95466274, 7.29721794e-09, 0.297689587, 1.05190106e-08, 1, 9.22064114e-09, -0.297689587, 1.19340022e-08, -0.95466274)
        end
        questData.MobCFrame = getMobCFrames(questData.MobName)
        return {
            questData.QuestLevel,
            questData.NPCPosition,
            questData.MobName,
            questData.QuestName,
            questData.LevelRequire,
            questData.Mon,
            questData.MobCFrame,
            questData.MonQ,
            #questData.MobCFrame
        }
    end
    if level >= 210 and level <= 249 then
        questData.MobName = "Dangerous Prisoner"
        questData.QuestName = "PrisonerQuest"
        questData.QuestLevel = 2
        questData.Mon = "Dangerous Prisoner"
        questData.LevelRequire = 210
        questData.NPCPosition = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
        questData.MobCFrame = getMobCFrames(questData.MobName)
        return {
            questData.QuestLevel,
            questData.NPCPosition,
            questData.MobName,
            questData.QuestName,
            questData.LevelRequire,
            questData.Mon,
            questData.MobCFrame,
            questData.MonQ,
            #questData.MobCFrame
        }
    end
    local GuideModule = require(game.ReplicatedStorage.GuideModule)
    local Quests = require(game.ReplicatedStorage.Quests)
    for npc, data in pairs(GuideModule.Data.NPCList) do
        for questLv, reqLevel in pairs(data.Levels) do
            if level >= reqLevel and reqLevel > questData.LevelRequire then
                questData.NPCPosition = npc.CFrame
                questData.QuestLevel = questLv
                questData.LevelRequire = reqLevel
                if #data.Levels == 3 and questLv == 3 then
                    questData.QuestLevel = 2
                    questData.LevelRequire = data.Levels[2]
                end
            end
        end
    end
    if level >= 375 and level <= 449 then
        if (questData.NPCPosition.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        end
    end
    if level >= 1250 and level <= 1375 then
        if (questData.NPCPosition.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        end
    end
    for questName, questInfo in pairs(Quests) do
        for questLv, data in pairs(questInfo) do
            if data.LevelReq == questData.LevelRequire and questName ~= "CitizenQuest" then
                questData.QuestName = questName
                for mobName, _ in pairs(data.Task) do
                    questData.MobName = mobName
                    questData.Mon = mobName:gsub(" %[Lv%. " .. data.LevelReq .. "%]", "")
                end
            end
        end
    end
    local specialQuests = {
        ["MarineQuest2"] = {QuestLevel = 1, MobName = "Chief Petty Officer", LevelRequire = 120},
        ["ImpelQuest"] = {
            QuestName = "PrisonerQuest", QuestLevel = 2, MobName = "Dangerous Prisoner", LevelRequire = 210,
            NPCPosition = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
        },
        ["SkyExp1Quest"] = {
            [1] = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, 0, -0.0871884301, 0, 1, 0, 0.0871884301, 0, 0.996191859),
            [2] = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
        }
    }
    if specialQuests[questData.QuestName] then
        local special = specialQuests[questData.QuestName]
        for k, v in pairs(special) do
            if type(k) == "string" then
                questData[k] = v
            elseif k == questData.QuestLevel then
                questData.NPCPosition = v
            end
        end
    end
    if questData.QuestName == "Area2Quest" and questData.QuestLevel == 2 then
        questData.QuestLevel = 1
        questData.MobName = "Swan Pirate"
        questData.Mon = "Swan Pirate"
        questData.LevelRequire = 775
    end
    if not questData.MobName:find("Lv") then
        local enemies = {_G.Server["ws"]["Enemies"]:GetChildren(), game.ReplicatedStorage:GetChildren()}
        for _, container in pairs(enemies) do
            for _, enemy in pairs(container) do
                local mobLevel = tonumber(enemy.Name:match("%d+"))
                if enemy.Name:find(questData.MobName) and #enemy.Name > #questData.MobName and mobLevel and mobLevel <= level + 50 then
                    questData.MobName = enemy.Name
                    break
                end
            end
        end
    end
    questData.MobCFrame = getMobCFrames(questData.MobName)
    return {
        questData.QuestLevel,
        questData.NPCPosition,
        questData.MobName,
        questData.QuestName,
        questData.LevelRequire,
        questData.Mon,
        questData.MobCFrame,
        questData.MonQ,
        #questData.MobCFrame
    }
end
createEnemySpawns()


local AllMaterial
if World1 then
    AllMaterial = {
        "Magma Ore",
        "Leather",
        "Scrap Metal",
        "Angel Wings",
        "Fish Tail"
    }
elseif World2 then
    AllMaterial = {
        "Magma Ore",
        "Scrap Metal",
        "Radioactive Material",
        "Vampire Fang",
        "Mystic Droplet"
    }
elseif World3 then
    AllMaterial = {
        "Mini Tusk",
        "Fish Tail",
        "Scrap Metal",
        "Dragon Scale",
        "Conjured Cocoa",
        "Demonic Wisp",
        "Gunpowder",
        "Cursed Dual Katana"
    }
end

table.sort(AllMaterial)

local function CheckMaterial(v1)
    if World1 then
        if v1 == "Magma Ore" then
            MaterialMob = { "Military Soldier", "Military Spy" }
            CFrameMon = getMobCFrames("Military Soldier")
        elseif v1 == "Leather" or v1 == "Scrap Metal" then
            MaterialMob = { "Brute" }
            CFrameMon = getMobCFrames("Brute")
        elseif v1 == "Angel Wings" then
            MaterialMob = { "God's Guard" }
            CFrameMon = getMobCFrames("God's Guard")
        elseif v1 == "Fish Tail" then
            MaterialMob = { "Fishman Warrior", "Fishman Commando" }
            CFrameMon = getMobCFrames("Fishman Warrior")
        end
    elseif World2 then
        if v1 == "Magma Ore" then
            MaterialMob = { "Magma Ninja" }
            CFrameMon = getMobCFrames("Magma Ninja")
        elseif v1 == "Scrap Metal" then
            MaterialMob = { "Swan Pirate" }
            CFrameMon = getMobCFrames("Swan Pirate")
        elseif v1 == "Radioactive Material" then
            MaterialMob = { "Factory Staff" }
            CFrameMon = getMobCFrames("Factory Staff")
        elseif v1 == "Vampire Fang" then
            MaterialMob = { "Vampire" }
            CFrameMon = getMobCFrames("Vampire")
        elseif v1 == "Mystic Droplet" then
            MaterialMob = { "Water Fighter", "Sea Soldier" }
            CFrameMon = getMobCFrames("Water Fighter")
        end
    elseif World3 then
        if v1 == "Mini Tusk" then
            MaterialMob = { "Mythological Pirate" }
            CFrameMon = getMobCFrames("Mythological Pirate")
        elseif v1 == "Fish Tail" then
            MaterialMob = { "Fishman Raider", "Fishman Captain" }
            CFrameMon = getMobCFrames("Fishman Raider")
        elseif v1 == "Scrap Metal" then
            MaterialMob = { "Jungle Pirate" }
            CFrameMon = getMobCFrames("Jungle Pirate")
        elseif v1 == "Dragon Scale" then
            MaterialMob = { "Dragon Crew Archer", "Dragon Crew Warrior" }
            CFrameMon = getMobCFrames("Dragon Crew Archer")
        elseif v1 == "Conjured Cocoa" then
            MaterialMob = { "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief", "Candy Rebel" }
            CFrameMon = getMobCFrames("Cocoa Warrior")
        elseif v1 == "Demonic Wisp" then
            MaterialMob = { "Demonic Soul" }
            CFrameMon = getMobCFrames("Demonic Soul")
        elseif v1 == "Gunpowder" then
            MaterialMob = { "Pistol Billionaire" }
            CFrameMon = getMobCFrames("Pistol Billionaire")
        elseif v1 == "Cursed Dual Katana" then
            MaterialMob = { "Cursed Skeleton" }
            CFrameMon = getMobCFrames("Cursed Skeleton")
        end
    end
end

function Add(n)
    local result = {}
    local folders = n == "boss" and {_G.Server["ws"]["Enemies"], _G.Server["rs"]} or {_G.Server["ws"]["NPCs"], _G.Server["rs"]["NPCs"]}
    for _, f in ipairs(folders) do
        if f then for _, c in ipairs(f:GetChildren()) do if n ~= "boss" or c:GetAttribute("IsBoss") or c:GetAttribute("RaidBoss") then table.insert(result, c) end end end
    end
    return result
end

local lp = _G.Server["pl"]["LocalPlayer"]
local isBringing = false
local bringConnection = nil
local globalTarget = Instance.new("Part")
globalTarget.Name = "GlobalBringTarget"
globalTarget.Size = Vector3.new(1,1,1)
globalTarget.Anchored = true
globalTarget.Transparency = 1
globalTarget.CanCollide = false
globalTarget.Parent = _G.Server["ws"]

function BringMob(mobName, targetPos, range, maxCount, skipDeath)
    if isBringing then return end
    maxCount = maxCount or 5
    range = range or 10
    isBringing = true
    bringConnection = _G.Server["rs"].Heartbeat:Connect(function()
        local hrpPlr = lp.Character and lp.Character:FindFirstChild("HumanoidRootPart")
        if not hrpPlr then return end
        pcall(function() sethiddenproperty(lp, "SimulationRadius", math.huge) end)
        globalTarget.Position = targetPos
        local count = 0
        for _, mob in ipairs(_G.Server["ws"]["Enemies"]:GetChildren()) do
            if count >= maxCount then break end
            if mob.Name == mobName and mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                local hrp = mob.HumanoidRootPart
                hrp.CanCollide = false
                hrp.Size = Vector3.new(1,1,1)
                local att0 = hrp:FindFirstChild("AP_Att0") or Instance.new("Attachment", hrp)
                att0.Name = "AP_Att0"
                local att1 = globalTarget:FindFirstChild("AP_Att1") or Instance.new("Attachment", globalTarget)
                att1.Name = "AP_Att1"
                local ap = hrp:FindFirstChild("AlignPos_AP") or Instance.new("AlignPosition")
                ap.Name = "AlignPos_AP"
                ap.Attachment0 = att0
                ap.Attachment1 = att1
                ap.RigidityEnabled = false
                ap.Responsiveness = 200
                ap.MaxForce = math.huge
                ap.MaxVelocity = math.huge
                ap.Parent = hrp
                local ao = hrp:FindFirstChild("AlignOri_AP") or Instance.new("AlignOrientation")
                ao.Name = "AlignOri_AP"
                ao.Attachment0 = att0
                ao.Attachment1 = att1
                ao.RigidityEnabled = false
                ao.Responsiveness = 200
                ao.MaxTorque = math.huge
                ao.MaxAngularVelocity = math.huge
                ao.Parent = hrp
                hrp.AssemblyLinearVelocity = Vector3.new(0,0,0)
                hrp.AssemblyAngularVelocity = Vector3.new(0,0,0)
                count += 1
                if not skipDeath then
                    task.delay(50, function()
                        if mob and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                            mob.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
                            task.delay(4, function()
                                if mob and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                                    mob.Humanoid.Health = 0
                                end
                            end)
                        end
                    end)
                end
            end
        end
    end)
end

function StopBring()
    if bringConnection then
        bringConnection:Disconnect()
        bringConnection = nil
    end
    isBringing = false
end

local LocalPlayer = _G.Server["pl"]["LocalPlayer"]
local Modules = _G.Server["rs"]:WaitForChild("Modules")
local Net = Modules:WaitForChild("Net")
local RegisterAttack = Net:WaitForChild("RE"):WaitForChild("RegisterAttack")
local RegisterHit = Net:WaitForChild("RE"):WaitForChild("RegisterHit")

local SUCCESS_FLAGS, COMBAT_REMOTE_THREAD = pcall(function()
    return require(Modules.Flags).COMBAT_REMOTE_THREAD or false
end)
local SUCCESS_HIT, HIT_FUNCTION = pcall(function()
    return (getmenv or getsenv)(Net)._G.SendHitsToServer
end)

local function SendAttack(Cooldown, Args)
    RegisterAttack:FireServer(Cooldown)
    if SUCCESS_FLAGS and COMBAT_REMOTE_THREAD and SUCCESS_HIT and HIT_FUNCTION then
        HIT_FUNCTION(Args[1], Args[2])
    else
        RegisterHit:FireServer(Args[1], Args[2])
    end
end

local FastAttack = {
    Distance = 60,
    AttackMobs = true,
    AttackPlayers = true,
    Debounce = 0
}

function FastAttack:IsEntityAlive(entity)
    local humanoid = entity and entity:FindFirstChild("Humanoid")
    return humanoid and humanoid.Health > 0
end

function FastAttack:GetTargets(character)
    if not character or not character:FindFirstChild("HumanoidRootPart") then return {} end
    local playerPos = character.HumanoidRootPart.Position
    local targets = {}
    if self.AttackMobs then
        for _, enemy in ipairs(_G.Server["ws"]["Enemies"]:GetChildren()) do
            local rootPart = enemy:FindFirstChild("HumanoidRootPart")
            local head = enemy:FindFirstChild("Head")
            if rootPart and self:IsEntityAlive(enemy) and (rootPart.Position - playerPos).Magnitude <= self.Distance then
                table.insert(targets, {enemy, head or rootPart})
            end
        end
    end
    if self.AttackPlayers then
        for _, otherPlayer in ipairs(_G.Server["pl"]:GetPlayers()) do
            if otherPlayer ~= LocalPlayer and otherPlayer.Character then
                local rootPart = otherPlayer.Character:FindFirstChild("HumanoidRootPart")
                if rootPart and self:IsEntityAlive(otherPlayer.Character) and (rootPart.Position - playerPos).Magnitude <= self.Distance then
                    table.insert(targets, {otherPlayer.Character, rootPart})
                end
            end
        end
    end
    return targets
end

function FastAttack:Attack()
    local character = LocalPlayer.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end
    local weapon = character:FindFirstChildOfClass("Tool")
    if not weapon then return end
    local tip = weapon.ToolTip
    if tip ~= "Melee" and tip ~= "Sword" then return end
    local currentTime = tick()
    if currentTime - self.Debounce < 0.1 then return end
    self.Debounce = currentTime
    local targets = self:GetTargets(character)
    if #targets == 0 then return end
    local hitTargets = {}
    for _, target in ipairs(targets) do
        table.insert(hitTargets, {target[1], target[2]})
    end
    pcall(function()
        SendAttack(0.1, {hitTargets[1][2], hitTargets})
        task.wait(0.1)
    end)
end
