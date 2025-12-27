local GITHUB_RAW = "https://raw.githubusercontent.com/dawid-scripts/Fluent/master/"
local FILE_HOST = "https://files.catbox.moe/"

local Fluent = loadstring(game:HttpGet(FILE_HOST .. "hxye8c.lua", true))()
local SaveManager = loadstring(game:HttpGet(GITHUB_RAW .. "Addons/SaveManager.lua", true))()
local InterfaceManager = loadstring(game:HttpGet(GITHUB_RAW .. "Addons/InterfaceManager.lua", true))()

local Window = Fluent:CreateWindow({
    Title = "KimP Hub ",
    TitleIcon = "",
    Image = "",
    Icon = "",
    Theme = "",
    Search = true,
    Acrylic = false,
    TabWidth = 150,
    Size = UDim2.fromOffset(450, 380),
    MinimizeKey = Enum.KeyCode.End,
    BackgroundImage = "image here",
    BackgroundTransparency = 0,
    DropdownsOutsideWindow = true,
    UserInfo = false,
    UserInfoTop = false,
    UserInfoTitle = game.Players.LocalPlayer.DisplayName,
    UserInfoSubtitle = "Blox Fruits",
    UserInfoSubtitleColor = Color3.fromRGB(180, 0, 255)
})

local Tabs = {
    Shop  = Window:AddTab({ Title = "Shop",  Icon = "" }),
    Setting  = Window:AddTab({ Title = "Settings",  Icon = "" }),
    Main  = Window:AddTab({ Title = "Farming",  Icon = "" }),
    Tab4  = Window:AddTab({ Title = "Stack Farm",  Icon = "" })
}

if game.PlaceId == 2753915549 or game.PlaceId == 85211729168715 then
        World1 = true
    elseif game.PlaceId == 4442272183 or game.PlaceId == 79091703265657 then
        World2 = true
    elseif game.PlaceId == 7449423635 or game.PlaceId == 100117331123089 then
        World3 = true
    else 
       game:GetService("Players").LocalPlayer:Kick("This Game Is Not Support [ Yiner Hub ]") 
end

if game:GetService("Players").LocalPlayer.Team == nil then
    repeat
        repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Main (minimal)") and game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"]:FindFirstChild("ChooseTeam")
        local Team = (getgenv().Team or "Pirates")
        local Button = game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"].ChooseTeam.Container[Team].Frame.TextButton
        for _, v in pairs(getconnections(Button.Activated)) do
            v.Function()
        end
        task.wait(1)
    until game:GetService("Players").LocalPlayer.Team ~= nil
    wait(3)
end



function checkmas1(t, n) --// check mastery 
    for _, v in pairs(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")) do
        if v.Type == t and v.Name == n then return v.Mastery end
    end
    return 0 --return 0; neu ko la sai
end

function GetCountMaterials(materialName) --// count item
    for _, v in pairs(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")) do
        if v.Name == materialName then return v.Count end
    end
    return 0
end

function EquipWeapon(w) --// equip 
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if game.Players.LocalPlayer.Backpack:FindFirstChild(w) or v.ToolTip == w then 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)) 
			end
		end
	end)
end

function UnEquipAllWeapon()
    if game.Players.LocalPlayer and game.Players.LocalPlayer.Character then
        _G.NotAutoEquip = true
        wait(0.5)
        for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") then
                v.Parent = game.Players.LocalPlayer.Backpack
            end
        end
        wait(0.1)
        _G.NotAutoEquip = false
    end
end

local Request_Places2 = {}
local Request_Places = {}
local tween
local fkwarp = false
local Distance
local Time
local LocalPlayer = game.Players.LocalPlayer
local PlrData = LocalPlayer.Data
local Level = PlrData.Level
local LastSpawn = PlrData.LastSpawnPoint
local VirtualInputManager = game:GetService("VirtualInputManager")
local rs = game.ReplicatedStorage
local ignore

function q1(I, II)
    if not II then
        II = game.Players.LocalPlayer.Character.PrimaryPart.Position
    end
    if typeof(I) == "CFrame" then
        I = I.Position
    end
    if typeof(II) == "CFrame" then
        II = II.Position
    end
    return (Vector3.new(I.X, 0, I.Z) - Vector3.new(II.X, 0, II.Z)).Magnitude
end

function GetDistance(target1, target2)
    if not target2 then
        target2 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    end
    
    local pos1 = target1
    local pos2 = target2
    
    if typeof(target1) == "CFrame" then
        pos1 = target1.Position
    elseif typeof(target1) == "Instance" and target1:IsA("BasePart") then
        pos1 = target1.Position
    end
    
    if typeof(target2) == "CFrame" then
        pos2 = target2.Position
    elseif typeof(target2) == "Instance" and target2:IsA("BasePart") then
        pos2 = target2.Position
    end

    return (pos1 - pos2).Magnitude
end

for i1,v1 in pairs(workspace._WorldOrigin.PlayerSpawns[tostring(game:GetService("Players").LocalPlayer.Team)]:GetChildren()) do
    if not Request_Places2[v1.Name] then
        Request_Places2[v1.Name] = CFrame.new(v1.WorldPivot.Position)
    end
end

workspace._WorldOrigin.PlayerSpawns[tostring(game:GetService("Players").LocalPlayer.Team)].ChildAdded:Connect(function(aa)
    if not Request_Places2[aa.Name] then
        Request_Places2[aa.Name] = CFrame.new(aa.WorldPivot.Position)
    end
end)

function CheckNearestRequestIsland2(pos, tpinstant)
    local nearestIsland = nil
    local nearestDist = math.huge
    for name, islandPos in pairs(Request_Places2) do
        if Level.Value < 10 or GetDistance(pos, game.Players.LocalPlayer.Character.HumanoidRootPart.Position) < 1500 or not tpinstant then break end
        local dist = GetDistance(islandPos, pos)
        local distoplr = GetDistance(islandPos, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
        if distoplr <= 9500 and dist < nearestDist and (not ignore or ignore ~= name) then
            nearestDist = dist
            nearestIsland = name
        end
    end
    for name, cframe in pairs(Request_Places) do
        if GetDistance(pos, game.Players.LocalPlayer.Character.HumanoidRootPart.Position) < 500 or (World3 and not checkcanentrance()) then break end
        local dist = GetDistance(pos, cframe)
        local distotarget = GetDistance(pos, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
        if dist < nearestDist and dist < distotarget then
            nearestDist = dist
            nearestIsland = name
        end
    end
    if nearestIsland then
        if Request_Places2[nearestIsland] then
            return (LastSpawn.Value ~= nearestIsland) and nearestIsland
        elseif Request_Places[nearestIsland] and GetDistance(Request_Places[nearestIsland], pos) < GetDistance(pos, game.Players.LocalPlayer.Character.HumanoidRootPart.Position) then
            return nearestIsland
        end
    end
    return nil
end

function IsPlayerAlive(player)
    if not player then
        player = game.Players.LocalPlayer
    end
    if not player or not player:IsA("Player") then
        return false
    end
    local character = player.Character
    if not character then
        return false
    end
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid or humanoid.Health <= 0 then
        return false
    end
    return true
end

function checkinv(name)
    local inventory = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
    if not inventory then return false end
    for _, item in pairs(inventory) do
        if item.Name == name then
            return true
        end
    end
    return false
end

function checkcanentrance()
    return game.PlaceId ~= 7449423635 or checkinv("Valkyrie Helm")
end

function NormalTween(Pos)
    if not IsPlayerAlive() then return end
    Distance = q1(Pos.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    local request_place = CheckNearestRequestIsland2(Pos)
    if request_place then
        if Request_Places2[request_place] then
            if PlrData:FindFirstChild("LastSpawnPoint") and type(PlrData.LastSpawnPoint.Value) == "string" and (PlrData.LastSpawnPoint.Value ~= request_place or GetDistance(Request_Places2[request_place], game.Players.LocalPlayer.Character.HumanoidRootPart.Position) >= 1500) then
                if tween then tween:Cancel() end
                if IsPlayerAlive() then
                    setlastspawn(request_place)
                end
                return
            end
        elseif Request_Places[request_place] and checkcanentrance() and not fkwarp then
            rqentrance(request_place)
            Distance = q1(Pos)
            fkwarp = true
        end
    end
    if Pos.Position.Y > 0 and math.abs(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y - Pos.Position.Y) > 50 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
            game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,
            Pos.Position.Y,
            game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z
        )
        wait(0.5)
    end
    if Distance <= 50 then
        Time = 0
    elseif Distance <= 200 then
        Time = 0.25
    else
        Time = Distance / 350
    end
    tween = game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Time, Enum.EasingStyle.Linear),
        { CFrame = Pos }
    )
    AddVelocity()
    tween:Play()
    return tween
end

function StopTween(v)
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and not v then
        NormalTween(LocalPlayer.Character.HumanoidRootPart.CFrame)
        task.wait(0.1)
        RemoveVelocity()
    end
end

function AddVelocity()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        if not LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Yiner Hub") then
            local body = Instance.new("BodyVelocity")
            body.Name = "Yiner Hub"
            body.Parent = LocalPlayer.Character.HumanoidRootPart
            body.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            body.Velocity = Vector3.new(0, 0, 0)
        end
    end
end

function RemoveVelocity()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local velocity = LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Yiner Hub")
        if velocity then
            velocity:Destroy()
        end
    end
end

function setlastspawn(Map)
    if not (PlrData:FindFirstChild("LastSpawnPoint") and type(PlrData.LastSpawnPoint.Value) == "string" and (PlrData.LastSpawnPoint.Value ~= Map or GetDistance(Request_Places2[Map], game.Players.LocalPlayer.Character.HumanoidRootPart.Position) >= 1500)) then return end
    if LocalPlayer.Character:FindFirstChild("LastSpawnPoint") and not LocalPlayer.Character.LastSpawnPoint.Disabled then 
        LocalPlayer.Character.LastSpawnPoint.Disabled = true 
    end
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer('SetLastSpawnPoint', Map)
    wait()
    if not IsPlayerAlive() then return end
    game:GetService('Players').LocalPlayer.Data.LastSpawnPoint.Value = Map
    wait()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
    end
end

function rqentrance(request_place)
    if tween then tween:Cancel() end
    if request_place ~= "Green Tree" then
        repeat
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                Request_Places[request_place].Position)
            wait(0.5)
        until GetDistance(Request_Places[request_place], game.Players.LocalPlayer.Character.HumanoidRootPart.Position) < 50
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(30, 50, 0)
        end
    else
        if not workspace.NPCs:FindFirstChild("Mysterious Force") and not workspace.NPCs:FindFirstChild("Mysterious Force3") then
            repeat
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                    Request_Places["Temple Of Time"].Position)
                wait(1)
            until workspace.NPCs:FindFirstChild("Mysterious Force3")
        end
        if workspace.NPCs:FindFirstChild("Mysterious Force3") then
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28610.1328, 14896.8477,
                    105.67765, -0.0388384573, 6.65092799e-08, -0.999245524, -1.15718697e-08, 1, 6.70092675e-08,
                    0.999245524, 1.41656757e-08, -0.0388384573)
            end
            repeat
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaceV4Progress",
                    "TeleportBack")
                wait(1)
            until workspace.NPCs:FindFirstChild("Mysterious Force")
        end
    end
end

function CheckBackPack(bx)
    local BackpackandCharacter = { LocalPlayer.Backpack, LocalPlayer.Character }
    for _, by in pairs(BackpackandCharacter) do
        if by then
            for _, v in pairs(by:GetChildren()) do
                if type(bx) == "table" then
                    if table.find(bx, v.Name) then
                        return v
                    end
                else
                    if v.Name == bx then
                        return v
                    end
                end
            end
        end
    end
    return nil
end

function shouldtp(instant)
    if not instant or CheckBackPack({"Special Microchip", "Flower 1", "Flower 2", "Flower 3", "Hallow Essence", "God's Chalice", "Fist of darkness", "Sweet Chalice"}) then 
        return false 
    end
    return true
end
getgenv().NoClip = false

game:GetService("RunService").Stepped:Connect(function()
    pcall(function()
        if not (game:GetService("Players").LocalPlayer.Character 
            and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head") 
            and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")) then return end
        if getgenv().NoClip or getgenv().Settings["Start Farm"] then
            if not game:GetService("Players").LocalPlayer.Character.Head:FindFirstChild("BodyClip") then
                local bv = Instance.new("BodyVelocity")
                bv.Name = "BodyClip"
                bv.Velocity = Vector3.new(0, 0, 0)
                bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                bv.P = 15000
                bv.Parent = game:GetService("Players").LocalPlayer.Character.Head
            end
            for _, v in ipairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        else
            if game:GetService("Players").LocalPlayer.Character.Head:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.Head.BodyClip:Destroy()
            end
            for _, v in ipairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = true
                end
            end
        end
    end)
end)
function topos(pos, notinstant)
    if not pos then return end
    local lastPauseTime = tick()
    local localFkwarp = false
    local Pos = typeof(pos) == "CFrame" and pos or CFrame.new(pos.X, pos.Y, pos.Z)
    repeat task.wait() until IsPlayerAlive() and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character:FindFirstChild("Humanoid")
    local Character = LocalPlayer.Character
    local Humanoid = Character:FindFirstChild("Humanoid")
    local HRP = Character:FindFirstChild("HumanoidRootPart")
    if not Humanoid or not HRP then return end
    if Humanoid.Sit then
        repeat
            task.wait()
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
        until not Humanoid.Sit or not Character.Parent
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
    end
    local Distance = q1(Pos.Position, HRP.Position)
    local request_place = CheckNearestRequestIsland2(Pos, shouldtp(not notinstant))
    if request_place then
        if Request_Places2[request_place] and shouldtp(not notinstant) then
            if PlrData:FindFirstChild("LastSpawnPoint") and type(PlrData.LastSpawnPoint.Value) == "string" and PlrData.LastSpawnPoint.Value ~= request_place then
                if tween then tween:Cancel() end
                if IsPlayerAlive() then setlastspawn(request_place) end
            end
        elseif Request_Places[request_place] and checkcanentrance() and not localFkwarp then
            rqentrance(request_place)
            Distance = q1(Pos.Position, HRP.Position)
            localFkwarp = true
        end
    end
    if Pos.Position.Y > 0 and math.abs(HRP.Position.Y - Pos.Position.Y) > 50 then
        HRP.CFrame = CFrame.new(HRP.Position.X, Pos.Position.Y, HRP.Position.Z)
        task.wait(0.5)
    end
    local Time
    if Distance <= 50 then
        Time = 0
    elseif Distance <= 200 then
        Time = 0.25
    else
        Time = Distance / 350
    end
    if HRP and HRP.Parent then
        tween = game:GetService("TweenService"):Create(HRP, TweenInfo.new(Time, Enum.EasingStyle.Linear), {CFrame = Pos})
        AddVelocity()
        tween:Play()
    end
end

function AutoHaki() --// turn on haki
    local char = game.Players.LocalPlayer.Character
    if char and not char:FindFirstChild("HasBuso") then
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Buso")
    end
end

function IsPlayerNearby(position, radius)
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            if (player.Character.HumanoidRootPart.Position - position).Magnitude <= radius then
                return true
            end
        end
    end
    return false
end

local plr = game.Players.LocalPlayer
local RunService = game:GetService("RunService")
local workspace = game:GetService("Workspace")

_G.BringMob = true
local BRING_RANGE = 350

local function GetMobPosition(EnemiesName)
    local pos = Vector3.zero
    local count = 0
    for _, v in pairs(workspace.Enemies:GetChildren()) do
        if v.Name == EnemiesName and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
            pos = pos + v.HumanoidRootPart.Position
            count = count + 1
        end
    end
    if count == 0 then return nil end
    return pos / count
end

local function SetNetwork()
    pcall(function()
        sethiddenproperty(plr, "SimulationRadius", math.huge)
        sethiddenproperty(plr, "MaxSimulationRadius", math.huge)
    end)
end

RunService.Heartbeat:Connect(function()
    if not _G.BringMob then return end
    
    SetNetwork()
    
    local enemies = workspace.Enemies:GetChildren()
    local totalpos = {}

    for _, v in pairs(enemies) do
        if v:IsA("Model") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
            if not totalpos[v.Name] then
                totalpos[v.Name] = GetMobPosition(v.Name)
            end
        end
    end

    for _, v in pairs(enemies) do
        if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
            local hrp = v.HumanoidRootPart
            local hum = v.Humanoid
            
            if hum.Health > 0 then
                local distToPlayer = (hrp.Position - plr.Character.HumanoidRootPart.Position).Magnitude
                
                if distToPlayer <= BRING_RANGE then
                    local targetPosVector = totalpos[v.Name]
                    if targetPosVector then
                        if (hrp.Position - targetPosVector).Magnitude > 5 then
                            hrp.CFrame = CFrame.new(targetPosVector)
                            hrp.CanCollide = false
                            hrp.AssemblyLinearVelocity = Vector3.zero
                            hrp.AssemblyAngularVelocity = Vector3.zero
                            hum.PlatformStand = true
                            if hum:FindFirstChild("Animator") then
                                hum.Animator:Destroy()
                            end
                        end
                    end
                end
            end
        end
    end
end)
function Hop()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Yiner Hub",
        Text = "Hopping...",
        Duration = 3,
        Icon = "rbxassetid://83754196059446"
    })
    local PlaceID = game.PlaceId
    local TeleportService = game:GetService("TeleportService")
    local Players = game:GetService("Players")
    local HttpService = game:GetService("HttpService")
    local LocalPlayer = Players.LocalPlayer
    local AllIDs, nextCursor, isTeleporting = {}, "", false
    local fileName = "ZeroX_HopIDs_"..LocalPlayer.Name..".json"
    if isfile(fileName) then
        local ok, data = pcall(function() return HttpService:JSONDecode(readfile(fileName)) end)
        if ok and type(data) == "table" then
            AllIDs = data
        end
    end
    local function saveIDs()
        if #AllIDs >= 5 then
            AllIDs = {}
        end
        pcall(function() writefile(fileName, HttpService:JSONEncode(AllIDs)) end)
    end
    local function getServers()
        local url = ("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&excludeFullGames=true&limit=100%s"):format(
            PlaceID,
            nextCursor ~= "" and "&cursor="..nextCursor or ""
        )
        local s, r = pcall(function() return HttpService:JSONDecode(game:HttpGet(url)) end)
        if s and r and r.data then
            nextCursor = r.nextPageCursor or ""
            return r.data
        end
        return {}
    end
    local function hopOnce()
        if isTeleporting then
            return false
        end
        local servers = getServers()
        for _, v in ipairs(servers) do
            if tonumber(v.playing) > 0 and tonumber(v.playing) < tonumber(v.maxPlayers) and tonumber(v.ping or 999) > 0 then
                local id = tostring(v.id)
                if not table.find(AllIDs, id) then
                    table.insert(AllIDs, id)
                    saveIDs()
                    isTeleporting = true
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Yiner Hub",
                        Text = "Joining server: "..id.." | "..v.playing.."/"..v.maxPlayers,
                        Duration = 3
                    })
                    TeleportService:TeleportToPlaceInstance(PlaceID, id, LocalPlayer)
                    task.wait(3)
                    isTeleporting = false
                    return true
                end
            end
        end
        return false
    end
    local startTime = tick()
    while task.wait(1) do
        if hopOnce() then
            startTime = tick()
        end
        if tick() - startTime > 180 then
            pcall(function() delfile(fileName) end)
            TeleportService:Teleport(game.PlaceId, Players.LocalPlayer)
        end
    end
end
_G.ServerData = {} 
_G.ServerData['Chest'] = {}
_G.ChestsConnection = {}
function SortChest()
    local LOROOT = game.Players.LocalPlayer.Character.PrimaryPart or game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
    if LOROOT then
        table.sort(_G.ServerData['Chest'], function(chestA, chestB)  
            local distanceA
            local distanceB
            if chestA:IsA('Model') then 
                distanceA = (Vector3.new(chestA:GetModelCFrame()) - LOROOT.Position).Magnitude
            end 
            if chestB:IsA('Model') then 
                distanceB = (Vector3.new(chestB:GetModelCFrame()) - LOROOT.Position).Magnitude 
            end
            if not distanceA then  distanceA = (chestA.Position - LOROOT.Position).Magnitude end
            if not distanceB then  distanceB = (chestB.Position - LOROOT.Position).Magnitude end
            return distanceA < distanceB 
        end)
    end
end
function AddChest(chest)
    wait()
    if table.find(_G.ServerData['Chest'], chest) or not chest.Parent then return end 
    if not string.find(chest.Name,'Chest') or not (chest.ClassName == ('Part') or chest.ClassName == ('BasePart')) then return end
    if (chest.Position-CFrame.new(-1.4128437, 0.292379826, -6.53605461, 0.999743819, -1.41806034e-09, -0.0226347167, 4.24517754e-09, 1, 1.2485377e-07, 0.0226347167, -1.24917875e-07, 0.999743819).Position).Magnitude <= 10 then 
        return 
    end 
    local CallSuccess,Returned = pcall(function()
        return GetDistance(chest)
    end)
    if not CallSuccess or not Returned then return end
    table.insert(_G.ServerData['Chest'], chest)  
    local parentChangedConnection
    parentChangedConnection = chest:GetPropertyChangedSignal('Parent'):Connect(function()
        local index = table.find(_G.ServerData['Chest'], chest)
        table.remove(_G.ServerData['Chest'], index)
        parentChangedConnection:Disconnect()
        SortChest()
    end)
end

function LoadChest()
    for _, v in pairs(workspace:GetDescendants()) do
        if v.Name:find("Chest") and v.Name:match("%d+") and v.CanTouch then
            task.spawn(function()
                AddChest(v)
                local parentFullName = v and v.Parent and tostring(v.Parent:GetFullName())
                if parentFullName and not _G.ChestsConnection[parentFullName] then
                    _G.ChestsConnection[parentFullName] = v.Parent.ChildAdded:Connect(AddChest)
                end
            end)
        end
    end 
    task.delay(3,function()
        SortChest()
    end)
end
task.spawn(function()
	while task.wait(1) do
		pcall(LoadChest)
	end
end)
function getNearestChest()
    for _, v in pairs(_G.ServerData['Chest']) do
        if v and v.Parent and v:IsA("BasePart") then
            return v
        end
    end
    return false
end
local plr = game.Players.LocalPlayer
local chr = plr.Character or plr.CharacterAdded:Wait()
local h = chr:FindFirstChild("Humanoid") or false
local check = 0
_G.ChestCollect = 0

function PickChest(Chest)
    if not _G.ChestCollect or typeof(_G.ChestCollect) ~= "number" then
        _G.ChestCollect = 0
    end
    if not Chest or not Chest.Parent then
        return
    end
    local conn
    conn = Chest:GetPropertyChangedSignal("Parent"):Connect(function()
        if conn then
            conn:Disconnect()
            conn = nil
        end
        _G.ChestCollect += 1
        if typeof(SortChest) == "function" then
            local ok, err = pcall(SortChest)
            if not ok then
                print("SortChest Error:", err)
            end
        end
    end)
    local OldChestCollect = _G.ChestCollect
    local timeout = tick() + 8
    repeat
        task.wait()
        local ok, err = pcall(function()
            if not h or h.Health <= 0 then
                chr = plr.Character or plr.CharacterAdded:Wait()
                h = chr:FindFirstChild("Humanoid") or false
            end
            if Chest and Chest.Parent and Chest:IsA("BasePart") then
                chr:SetPrimaryPartCFrame(Chest.CFrame)
                task.delay(1.3, function()
                    if Chest then
                        Chest.CanTouch = false
                    end
                end)
            end
        end)
        if not ok then
            print("PickChest Loop Error:", err)
        end
        if tick() > timeout then
            break
        end
    until not Chest or not Chest.Parent or not Chest.CanTouch
    check += 1
    if check >= 7 and not CheckBackPack({"God's Chalice", "Fist of darkness", "Sweet Chalice"}) then
        local hum = chr:FindFirstChildOfClass("Humanoid")
        if hum and not CheckBackPack({"God's Chalice", "Fist of darkness", "Sweet Chalice"}) then
            local ok, err = pcall(function()
                hum:ChangeState(15)
            end)
            if not ok then
                print("Humanoid ChangeState Error:", err)
            end
        end
        check = 0
        task.wait(3)
    end
    if Chest and Chest.Parent then
        local ok, err = pcall(function()
            Chest:Destroy()
        end)
        if not ok then
            print("Chest Destroy Error:", err)
        end
    elseif _G.ChestCollect == OldChestCollect then
        _G.ChestCollect += 1
    end
end
function TeleportWorld(world)
    if typeof(world) == "string" then
        world = world:gsub(" ", ""):gsub("Sea", "")
        world = tonumber(world)
    end
    if world == 1 then
        local args = {
            [1] = "TravelMain"
        }
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))
    elseif world == 2 then
        local args = {
            [1] = "TravelDressrosa"
        }
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))
    elseif world == 3 then
        local args = {
            [1] = "TravelZou"
        }
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))
    end
end
function UseSkill()
    local used = {}
    for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if (v.ToolTip == "Melee" or v.ToolTip == "Sword" or v.ToolTip == "Blox Fruit" or v.ToolTip == "Gun") and not used[v.Name] then
            EquipWeapon(v.Name)
            task.wait(0.1)
            down("Z", 0.1)
            down("X", 0.1)
            down("C", 0.1)
            down("F", 0.1)
            used[v.Name] = true
            task.wait(0.2)
        end
    end
end
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
function Check_Eye()
    local success, result = pcall(function()
        local e = workspace.Map.TikiOutpost.IslandModel
        local c = e.IslandChunks.E
        for _, v in pairs({c.Eye3, c.Eye4, e.Eye1, e.Eye2}) do
            if not v or v.Transparency == 1 then return false end
        end
        return true
    end)
    return success and result
end
function CheckBoss(targets)
    local targetList = typeof(targets) == "table" and targets or {targets}
    local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return nil end
    local results = {}
    local function Scan(folder)
        for _, v in pairs(folder:GetChildren()) do
            if v:IsA("Model") and table.find(targetList, v.Name) then
                local h = v:FindFirstChild("Humanoid")
                local r = v:FindFirstChild("HumanoidRootPart")
                if h and h.Health > 0 and r then
                    table.insert(results, {model = v, dist = (hrp.Position - r.Position).Magnitude})
                end
            end
        end
    end
    Scan(game.ReplicatedStorage)
    if game.Workspace:FindFirstChild("Enemies") then
        Scan(game.Workspace.Enemies)
    end
    if #results == 0 then return nil end
    table.sort(results, function(a,b) return a.dist < b.dist end)
    return results[1].model
end

function Death(col)
    task.wait(col or 0)
    local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    if character and character:FindFirstChild("Humanoid") then
        character.Humanoid:ChangeState(15)
    end
end

local Elites = {
    "Deandre",
    "Urban",
    "Diablo"
}

function KillBoss(mobs, death, xxx, hop)
    local targets = typeof(mobs) == "table" and mobs or {mobs}
    for _, bossName in ipairs(targets) do
        if CheckBoss(bossName) then
            local IsBoss = CheckBoss(bossName):GetAttribute("IsBoss") or CheckBoss(bossName).Humanoid.DisplayName:find("Boss") or CheckBoss(bossName).Name == "Core" or table.find(Elites, CheckBoss(bossName).Name)
            repeat
                if hop and IsPlayerNearby(CheckBoss(bossName).HumanoidRootPart.Position, 100) then
                    Rejoin(15)
                    Hop()
                end
                AutoHaki()
                EquipWeapon("Melee")
                if not IsBoss then
                  BringMob(CheckBoss(bossName).Name, CheckBoss(bossName).HumanoidRootPart.Position, 350, false)
                end
                if (bossName == "Cake Prince" or bossName == "Dough King") then
                   if game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Ring") or game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Fist") or game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("MochiSwirl") then
                      topos(CheckBoss(bossName).HumanoidRootPart.CFrame * CFrame.new(0, -40, 0))
                   else
                      topos(CheckBoss(bossName).HumanoidRootPart.CFrame * CFrame.new(10, 20, 10))
                   end
                else
                   topos(CheckBoss(bossName).HumanoidRootPart.CFrame * CFrame.new(5, 30, 10))
                end
                FastAttack:SetTargetMob(CheckBoss(bossName)) 
                task.wait(0.1)
            until not CheckBoss(bossName) or (xxx and xxx()) or (getgenv().Soul and CheckBoss({"Soul Reaper"})) or (getgenv().Soul and CheckBackPack({"Hallow Essence"})) 
            if death then
               Death(0.1)
            end
        end
    end
end


local EnemySpawns = workspace._WorldOrigin.EnemySpawns
local backup = {}

for _,v in pairs(EnemySpawns:GetChildren()) do
    table.insert(backup, v:Clone())
end

spawn(function()
    while task.wait(1) do
        pcall(function()
            for i,v in pairs(backup) do
                if not v.Parent then
                    local clone = v:Clone()
                    clone.Parent = EnemySpawns
                    backup[i] = clone
                end
            end
        end)
    end
end)
function getspawn(Name, mid)
    for _,m in pairs(typeof(Name)=="table" and Name or {Name}) do
        local p,c,first=Vector3.zero,0,nil
        for _,v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
            if v.Name:find(m) then
                local cf=v:GetPivot()
                first=first or cf
                p+=cf.Position
                c+=1
            end
        end
        if c>0 then return mid and CFrame.new(p/c) or first end
    end
end
function KillMobList(Name, gay, mid)
    local N = typeof(Name)=="table" and Name or {Name}
    local HasBoss=false
    for _,m in ipairs(N) do
        if CheckBoss(m) then HasBoss=true break end
    end
    for _,mob in ipairs(N) do
        if HasBoss then
            if CheckBoss(mob) then
                KillBoss(mob,false,gay,false)
            end
        else
            local s=getspawn(mob, mid)
            if s and GetDistance(CFrame.new(s.Position))>15 then
                repeat
                    topos(CFrame.new(s.Position+Vector3.new(0,10,0)))
                    task.wait(0.1)
                until GetDistance(CFrame.new(s.Position))<=15 or HasBoss
                task.wait(0.1)
            end
        end
    end
end


local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local Net = Modules:WaitForChild("Net")
local RegisterAttack = Net:WaitForChild("RE/RegisterAttack")
local RegisterHit = Net:WaitForChild("RE/RegisterHit")

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
    Debounce = 0,
    TargetMobInstance = nil,
    TargetMobName = nil
}

function FastAttack:IsEntityAlive(entity)
    local humanoid = entity and entity:FindFirstChild("Humanoid")
    return humanoid and humanoid.Health > 0
end

function FastAttack:SetTargetMob(mob)
    if typeof(mob) == "string" then
        self.TargetMobName = mob
        self.TargetMobInstance = nil
    elseif typeof(mob) == "Instance" and mob.Parent == Workspace.Enemies and self:IsEntityAlive(mob) then
        self.TargetMobInstance = mob
        self.TargetMobName = mob.Name
    else
        self.TargetMobInstance = nil
        self.TargetMobName = nil
    end
end

function FastAttack:GetTargets()
    local character = LocalPlayer.Character
    local hrp = character and character:FindFirstChild("HumanoidRootPart")
    if not hrp then return {} end
    local targets = {}
    if self.TargetMobInstance and self:IsEntityAlive(self.TargetMobInstance) then
        if (hrp.Position - self.TargetMobInstance.HumanoidRootPart.Position).Magnitude <= self.Distance then
            table.insert(targets, self.TargetMobInstance)
        end
    end
    if self.TargetMobName then
        for _, v in pairs(Workspace.Enemies:GetChildren()) do
            if v.Name == self.TargetMobName and self:IsEntityAlive(v) and v:FindFirstChild("HumanoidRootPart") then
                if (hrp.Position - v.HumanoidRootPart.Position).Magnitude <= self.Distance then
                    if not table.find(targets, v) then
                        table.insert(targets, v)
                    end
                end
            end
        end
    end
    for _, v in pairs(Workspace.Enemies:GetChildren()) do
        if self:IsEntityAlive(v) and v:FindFirstChild("HumanoidRootPart") then
            local dist = (hrp.Position - v.HumanoidRootPart.Position).Magnitude
            if dist <= self.Distance then
                if not table.find(targets, v) then
                    table.insert(targets, v)
                end
            end
        end
    end
    return targets
end

function FastAttack:Attack()
    local character = LocalPlayer.Character
    local hrp = character and character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local weapon = character:FindFirstChildOfClass("Tool")
    if not weapon then return end
    local currentTime = tick()
    if currentTime - self.Debounce < 0.1 then return end
    self.Debounce = currentTime
    local targets = self:GetTargets()
    if #targets == 0 then return end
    local hitTargets = {}
    for _, target in ipairs(targets) do
        local rootPart = target:FindFirstChild("HumanoidRootPart") or target:FindFirstChild("Head")
        if rootPart then
            table.insert(hitTargets, {target, rootPart})
        end
    end
    if #hitTargets > 0 then
        pcall(function()
            SendAttack(0.1, {hitTargets[1][2], hitTargets})
        end)
    end
end

task.spawn(function()
    while task.wait(0.1) do
        pcall(function()
            FastAttack:Attack()
        end)
    end
end)
local Tabel = {}
function createEnemySpawns()
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
    for _, v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
        processSpawn(v)
    end
    for _, v in pairs(workspace.Enemies:GetChildren()) do
        processSpawn(v)
    end
    for _, v in pairs(game.ReplicatedStorage:GetChildren()) do
        processSpawn(v)
    end
end
function getMobCFrames(mobName)
    local matchingCFrames = {}
    local cleanName = mobName:gsub("Lv. ", ""):gsub("[%[%]]", ""):gsub("%d+", ""):gsub("%s+", "")
    for _, v in pairs(workspace.EnemySpawns:GetChildren()) do
        if v.Name == cleanName then
            table.insert(matchingCFrames, v.CFrame)
        end
    end
    return matchingCFrames
end
function QuestCheck()
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
        local enemies = {workspace.Enemies:GetChildren(), game.ReplicatedStorage:GetChildren()}
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

wait(2)
function Check_Sub(p)
    if not p then p = LocalPlayer.Name end
    local h = workspace.Characters:FindFirstChild(p) and workspace.Characters[p]:FindFirstChild("HumanoidRootPart")
    return h and h.Position.X > 0 or false
end

function Farm_Level()
    if not (QuestCheck()[5] and LocalPlayer.Data.Level.Value >= QuestCheck()[5]) then return end
    
    local NPC = typeof(QuestCheck()[2]) == "CFrame" and QuestCheck()[2] or typeof(QuestCheck()[2]) == "table" and CFrame.new(unpack(QuestCheck()[2])) or CFrame.new(QuestCheck()[2].X, QuestCheck()[2].Y, QuestCheck()[2].Z)
    local Gui = LocalPlayer.PlayerGui.Main.Quest.Visible
        and QuestCheck()[3]
        and string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[3])
    
    if Level.Value >= 2600 and not Check_Sub() then
        if LocalPlayer:GetAttribute("CurrentLocation") ~= "Submerged Island" and LocalPlayer:GetAttribute("CurrentLocation") ~= "Sealed Cavern" then
            if (CFrame.new(-16270, 25, 1373).Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10 then
                repeat 
                    topos(CFrame.new(-16270, 25, 1373))
                    task.wait(0.1)
                until (CFrame.new(-16270, 25, 1373).Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 or Check_Sub()
                
                game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer("AskKilledTikiBoss")
                task.wait(0.1)
                game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer("TravelToSubmergedIsland")
                task.wait(3)
    end
            
            
            if LocalPlayer:GetAttribute("CurrentLocation") == "Submerged Island" or LocalPlayer:GetAttribute("CurrentLocation") == "Sealed Cavern" then
                if (CFrame.new(10541.1914, -1205.84863, 9705.28027, -0.329102635, -0.1672149, -0.929371059, -0.178716004, 0.977438927, -0.112577677, 0.927228153, 0.129043877, -0.351561666).Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10 then
                    repeat 
                        topos(CFrame.new(10541.1914, -1205.84863, 9705.28027, -0.329102635, -0.1672149, -0.929371059, -0.178716004, 0.977438927, -0.112577677, 0.927228153, 0.129043877, -0.351561666))
                        task.wait(0.1)
                    until (CFrame.new(10541.1914, -1205.84863, 9705.28027, -0.329102635, -0.1672149, -0.929371059, -0.178716004, 0.977438927, -0.112577677, 0.927228153, 0.129043877, -0.351561666).Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
                end
            end
        end
    elseif LocalPlayer.PlayerGui.Main.Quest.Visible and QuestCheck()[3] and not string.find(LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[3]) then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
    elseif not Gui and NPC then
        repeat 
            task.wait(0.1)
            topos(NPC)
            local HRP = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        until HRP and (HRP.Position - NPC.Position).Magnitude <= 5
        
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1])
    else
        KillMobList(QuestCheck()[3], nil, false)
    end
end
function Farm_Bone()
    if CheckBoss({"Soul Reaper"}) then
        KillBoss({"Soul Reaper"}, true)
    else
        KillMobList({"Demonic Soul", "Posessed Mummy", "Living Zombie", "Reborn Skeleton"}, nil, true)
    end
end
function Farm_Cake()
    if CheckBoss({"Cake Prince", "Dough King"}) then
        KillBoss({"Cake Prince", "Dough King"}, true)
    else
        KillMobList({"Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker"}, nil, true)
    end
end
spawn(function()
    while task.wait() do
        pcall(Farm_Bone)
    end
end)