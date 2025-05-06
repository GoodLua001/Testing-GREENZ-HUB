local player = game.Players.LocalPlayer
local ContentProvider = game:GetService("ContentProvider")

-- Xóa giao diện cũ nếu đã tồn tại
local existingGui = player.PlayerGui:FindFirstChild("GreenHubOverlay")
if existingGui then
    existingGui:Destroy()
end

-- Tạo giao diện mới
local gui = Instance.new("ScreenGui")
gui.Name = "GreenHubOverlay"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = player.PlayerGui

-- Background chính
local background = Instance.new("Frame")
background.Size = UDim2.new(1, 0, 1, 0)
background.BackgroundColor3 = Color3.new(0, 0, 0)
background.BackgroundTransparency = 0.4
background.Visible = true
background.ZIndex = 1
background.Parent = gui

-- Tiêu đề Green Hub
local titleText = Instance.new("TextLabel")
titleText.Size = UDim2.new(0, 300, 0, 60)
titleText.Position = UDim2.new(0.5, -150, 0.16, 0)
titleText.BackgroundTransparency = 1
titleText.Text = "GreenZ Hub"
titleText.TextColor3 = Color3.fromRGB(255, 255, 255)
titleText.TextSize = 50
titleText.Font = Enum.Font.GothamBold
titleText.ZIndex = 2
titleText.Parent = background

-- Trạng thái boss
local statusText = Instance.new("TextLabel")
statusText.Name = "_TextLabel1" -- Tên cho việc tham chiếu
statusText.Size = UDim2.new(1, 0, 0.05, 0)
statusText.Position = UDim2.new(0, 0, 0.29, 0)
statusText.BackgroundTransparency = 1
statusText.Text = "GreenZ Kaitun Farm Boss"
statusText.TextColor3 = Color3.fromRGB(255, 255, 255)
statusText.TextSize = 24
statusText.Font = Enum.Font.GothamSemibold
statusText.ZIndex = 2
statusText.Parent = background

-- LOGO CHÍNH GIỮA
local logo = Instance.new("ImageLabel")
logo.Size = UDim2.new(0, 300, 0, 300)
logo.Position = UDim2.new(0.5, -150, 0.55, -150)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://93927358445739" -- Sửa lại ID ảnh hợp lệ (generic ID)
logo.ZIndex = 2
logo.Parent = background

-- Thời gian ở dưới
local timeLabel = Instance.new("TextLabel")
timeLabel.Size = UDim2.new(0.5, 0, 0.04, 0)
timeLabel.Position = UDim2.new(0.25, 0, 0.82, 0)
timeLabel.BackgroundTransparency = 1
timeLabel.Text = "Time: 0 Hours 0 Minutes 0 Seconds"
timeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
timeLabel.TextSize = 20
timeLabel.Font = Enum.Font.GothamSemibold
timeLabel.ZIndex = 2
timeLabel.Parent = background

-- Thông tin người chơi
local infoLabel = Instance.new("TextLabel")
infoLabel.Size = UDim2.new(0.6, 0, 0.04, 0)
infoLabel.Position = UDim2.new(0.2, 0, 0.86, 0)
infoLabel.BackgroundTransparency = 1
infoLabel.TextColor3 = Color3.new(1, 1, 1)
infoLabel.TextSize = 18
infoLabel.Font = Enum.Font.GothamSemibold
infoLabel.Text = "Loading..."
infoLabel.ZIndex = 2
infoLabel.Parent = background

-- NÚT BẬT TẮT UI
local toggleButton = Instance.new("ImageButton")
toggleButton.Name = "CustomButton"
toggleButton.Size = UDim2.new(0, 50, 0, 50)
toggleButton.Position = UDim2.new(0.015, 0, 0.15, 0)
toggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
toggleButton.BackgroundTransparency = 0.3
toggleButton.Image = "rbxassetid://93927358445739" -- Sử dụng cùng ID ảnh với logo
toggleButton.ZIndex = 10
toggleButton.Parent = gui

local toggleButtonCorner = Instance.new("UICorner")
toggleButtonCorner.CornerRadius = UDim.new(1, 0)
toggleButtonCorner.Parent = toggleButton

-- Lưu trữ biến chung cho script
local Converted = {}
Converted["_TextLabel1"] = statusText -- Lưu trữ tham chiếu đến statusText

-- Cập nhật thông tin người chơi
spawn(function()
    while wait(1) do
        pcall(function()
            if player and player:FindFirstChild("Data") then
                local level = player.Data.Level.Value
                local beli = player.Data.Beli.Value
                local frags = player.Data.Fragments.Value
                infoLabel.Text = player.DisplayName .. " | Level: " .. level .. " | Beli: " .. beli .. " | Fragments: " .. frags
            else
                infoLabel.Text = "Không thể tải thông tin người chơi"
            end
        end)
    end
end)

-- Xử lý khi nhấn nút bật tắt
local isOpen = true
toggleButton.MouseButton1Click:Connect(function()
    isOpen = not isOpen
    background.Visible = isOpen
    print("Toggle UI: " .. tostring(isOpen))
end)

-- Cập nhật thời gian
local seconds = 0
spawn(function()
    while wait(1) do
        seconds = seconds + 1
        local hrs = math.floor(seconds / 3600)
        local mins = math.floor((seconds % 3600) / 60)
        local secs = seconds % 60
        timeLabel.Text = "Time: " .. hrs .. " Hours " .. mins .. " Minutes " .. secs .. " Seconds"
    end
end)
-- Các cài đặt ban đầu
setclipboard("")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
require(game.ReplicatedStorage.Util.CameraShaker):Stop()

-- Xác định thế giới
local World1, World2, World3
if game.PlaceId == 2753915549 then
    World1 = true
    statusText.Text = "Status: Please go to Third Sea!"
    warn("Script stopped: Not in Third Sea")
    return
elseif game.PlaceId == 4442272183 then
    World2 = true
    statusText.Text = "Status: Please go to Third Sea!"
    warn("Script stopped: Not in Third Sea")
    return
elseif game.PlaceId == 7449423635 then
    World3 = true
    print("World check: In Third Sea")
else
    statusText.Text = "Status: Wrong Sea, please go to Third Sea (PlaceId: " .. game.PlaceId .. ")"
    warn("Invalid PlaceId: " .. game.PlaceId)
    return
end

if not World3 then
    statusText.Text = "Status: Please go to Third Sea"
    return
end

-- Hàm hỗ trợ
function WaitHRP(player)
    if not player then return end
    local character = player.Character
    if character then
        return character:WaitForChild("HumanoidRootPart", 9)
    end
    return nil
end

-- Hàm teleport
local isTeleporting = false
function CheckNearestTeleporter(pos)
    local vcspos = pos.Position
    local minDist = math.huge
    local chosenTeleport = nil
    local TableLocations = {
        ["Floating Turtle"] = Vector3.new(-12462, 375, -7552),
        ["Hydra Island"] = Vector3.new(5662, 1013, -335),
        ["Mansion"] = Vector3.new(-12462, 375, -7552),
        ["Castle"] = Vector3.new(-5036, 315, -3179),
        ["Beautiful Pirate"] = Vector3.new(5319, 23, -93),
        ["Beautiful Room"] = Vector3.new(5314.58203, 22.5364361, -125.942276),
        ["Temple of Time"] = Vector3.new(28286, 14897, 103),
        ["Tiki Outpost"] = Vector3.new(-16600, 62, -17200) -- Tọa độ Tiki Outpost
    }

    local tikiPos = TableLocations["Tiki Outpost"]
    local distToTiki = (tikiPos - vcspos).Magnitude
    if distToTiki < 500 then
        print("Destination is Tiki Outpost, skipping teleporter check")
        return nil
    end

    for name, v in pairs(TableLocations) do
        local dist = (v - vcspos).Magnitude
        if dist < minDist and name ~= "Tiki Outpost" then
            minDist = dist
            chosenTeleport = v
            print("Nearest teleporter:", name, "Distance:", dist)
        end
    end

    local playerPos = WaitHRP(game.Players.LocalPlayer) and game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    if playerPos and minDist <= (vcspos - playerPos).Magnitude then
        return chosenTeleport
    end
    return nil
end

function requestEntrance(teleportPos)
    pcall(function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", teleportPos)
        local char = WaitHRP(game.Players.LocalPlayer)
        if char then
            char.CFrame = char.CFrame + Vector3.new(0, 50, 0)
        end
    end)
    task.wait(0.5)
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

-- Noclip
spawn(function()
    pcall(function()
        while task.wait() do
            if _G.FarmBoss then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local noclip = Instance.new("BodyVelocity")
                    noclip.Name = "BodyClip"
                    noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                    noclip.Velocity = Vector3.new(0, 0, 0)
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.FarmBoss then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)

-- Vị trí tấn công
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

-- Tấn công nhanh
local env = (getgenv or getrenv or getfenv)();
local rs = game:GetService("ReplicatedStorage");
local players = game:GetService("Players");
local client = players.LocalPlayer;
local modules = rs:WaitForChild("Modules");
local net = modules:WaitForChild("Net");
local charFolder = workspace:WaitForChild("Characters");
local enemyFolder = workspace:WaitForChild("Enemies");
local playerFolder = game:GetService("Players");
local AttackModule = {};
local RegisterAttack = net:WaitForChild("RE/RegisterAttack");
local RegisterHit = net:WaitForChild("RE/RegisterHit");
function AttackModule:AttackEnemy(EnemyHead, Table)
	if EnemyHead then
		RegisterAttack:FireServer(0);
		RegisterAttack:FireServer(1);
		RegisterAttack:FireServer(2);
		RegisterAttack:FireServer(3);
		RegisterHit:FireServer(EnemyHead, Table or {});
	end;
end;
function AttackModule:AttackNearest()
	local mon = {
		nil,
		{}
	};
	for _, Enemy in enemyFolder:GetChildren() do
		if not mon[1] and Enemy:FindFirstChild("HumanoidRootPart", true) and client:DistanceFromCharacter(Enemy.HumanoidRootPart.Position) < 60 then
			mon[1] = Enemy:FindFirstChild("HumanoidRootPart");
		elseif Enemy:FindFirstChild("HumanoidRootPart", true) and client:DistanceFromCharacter(Enemy.HumanoidRootPart.Position) < 60 then
			table.insert(mon[2], {
				[1] = Enemy,
				[2] = Enemy:FindFirstChild("HumanoidRootPart")
			});
		end;
	end;
	self:AttackEnemy(unpack(mon));
	local player = {
		nil,
		{}
	};
	for _, Player in playerFolder:GetChildren() do
		if not player[1] and Player:FindFirstChild("HumanoidRootPart", true) and client:DistanceFromCharacter(Player.Character.HumanoidRootPart.Position) < 60 then
			player[1] = Player.Character:FindFirstChild("HumanoidRootPart");
		elseif Player.Character:FindFirstChild("HumanoidRootPart", true) and client:DistanceFromCharacter(Player.Character.HumanoidRootPart.Position) < 60 then
			table.insert(player[2], {
				[1] = Player,
				[2] = Player.Character:FindFirstChild("HumanoidRootPart")
			});
		end;
	end;
	self:AttackEnemy(unpack(player));
end;
function AttackModule:BladeHits()
	self:AttackNearest();
end;
function Attack()
-- Load TrollApi
local TrollApi = loadstring(game:HttpGet("https://raw.githubusercontent.com/PorryDepTrai/exploit/main/SimpleTroll.lua"))()

-- Hàm hỗ trợ
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
_G.AutoTurnOnV3 = true
task.spawn(function()
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

_G.AutoTurnOnV4 = true
task.spawn(function()
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

-- Hàm gọi API
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")

local function scrapeAPI()
    statusText.Text = "Status: Fetching server data from API..."
    local success, response = pcall(function()
        return game:HttpGet("https://hostserver.porry.store/bloxfruit/bot/JobId/conchimkicuc")
    end)

    if success then
        local data = HttpService:JSONDecode(response)
        print("API response:", response) -- Debug dữ liệu trả về
        if data then
            if data.JobId == nil then
                warn("API returned JobId as nil")
                statusText.Text = "Status: API returned no JobId"
                return nil
            elseif type(data.JobId) == "table" then
                if #data.JobId == 0 then
                    warn("API returned empty JobId array")
                    statusText.Text = "Status: API returned empty JobId array"
                    return nil
                end
                if type(data.JobId[1]) == "string" then
                    print("API success: JobId is a list of strings")
                    statusText.Text = "Status: Found server JobIDs"
                    return { JobId = data.JobId }
                elseif type(data.JobId[1]) == "table" then
                    print("API success: JobId is a list of tables")
                    statusText.Text = "Status: Found server JobIDs"
                    return data
                else
                    local jobIds = {}
                    for jobId, _ in pairs(data.JobId) do
                        table.insert(jobIds, jobId)
                    end
                    if #jobIds > 0 then
                        print("API success: JobId is a table with keys")
                        statusText.Text = "Status: Found server JobIDs"
                        return { JobId = jobIds }
                    end
                end
            elseif type(data.JobId) == "string" then
                print("API success: JobId is a single string")
                statusText.Text = "Status: Found single server JobID"
                return { JobId = {data.JobId} }
            end
            warn("API returned invalid data format")
            statusText.Text = "Status: API returned invalid data format"
            return nil
        else
            warn("API returned invalid data")
            statusText.Text = "Status: API returned invalid data"
            return nil
        end
    else
        warn("Failed to fetch API:", response)
        statusText.Text = "Status: Failed to fetch API data"
        return nil
    end
end

-- Hàm nhảy server
local function autoHopIfNeeded()
    local maxAttempts = 8
    local attempt = 1
    while attempt <= maxAttempts do
        statusText.Text = "Status: Hopping to new server... (Attempt " .. attempt .. "/" .. maxAttempts .. ")"
        local data = scrapeAPI()
        if data and data.JobId and #data.JobId > 0 then
            for _, jobId in ipairs(data.JobId) do
                for id in pairs(jobId) do jobId = id end
                print("Hopping to server with JobId:", jobId)
                statusText.Text = "Status: Trying to Find Server"
                pcall(function()
                    game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", TrollApi["Decode JobId API Porry | discord.gg/umaru | MB KHOI"](jobId, "discord.gg/umaru | MB_Bank 9929992999 Phan Dat Khoi"))
                end)
                task.wait(0.5)
                return
            end
        end
        statusText.Text = "Status: No Tyrant of the Skies server found (Attempt " .. attempt .. "/" .. maxAttempts .. ")"
        warn("No JobId found for hopping")
        attempt = attempt + 1
        task.wait(1)
    end
    statusText.Text = "Status: Failed to find Tyrant of the Skies server"
end

_G.FarmBoss = true
spawn(function()
    while task.wait() do
        if _G.FarmBoss then
            pcall(function()
                local enemies = game:GetService("Workspace").Enemies
                local plr = game.Players.LocalPlayer
                local hrp = WaitHRP(plr)
                if not hrp or not plr.Character or not plr.Character.Humanoid or plr.Character.Humanoid.Health <= 0 then
                    Converted["_TextLabel1"].Text = "Status: Waiting for character..."
                    task.wait(1)
                    return
                end

                -- Kiểm tra và đánh Tyrant of the Skies
                local foundBoss = false
                for _, v in pairs(enemies:GetChildren()) do
                    if v.Name == "Tyrant of the Skies" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        foundBoss = true
                        Converted["_TextLabel1"].Text = "Status: Fighting Tyrant of the Skies"
                        repeat
                            task.wait()
                            if not plr.Character or not plr.Character.Humanoid or plr.Character.Humanoid.Health <= 0 then
                                break
                            end
                            AutoHaki()
                            Attack()
                            EquipWeapon(_G.SelectWeapon)
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.WalkSpeed = 0
                            topos(v.HumanoidRootPart.CFrame * Pos)
                            sethiddenproperty(plr, "SimulationRadius", math.huge)
                        until not _G.FarmBoss or not v.Parent or v.Humanoid.Health <= 0
                    end
                end

                -- Teleport hoặc nhảy server nếu không tìm thấy boss
                if not foundBoss then
                    local tyrant = game:GetService("ReplicatedStorage"):FindFirstChild("Tyrant of the Skies")
                    if tyrant then
                        Converted["_TextLabel1"].Text = "Status: Moving to Tyrant of the Skies"
                        topos(tyrant.HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                    else
                        task.wait(3)
                        autoHopIfNeeded()
                    end
                end
            end)
        end
    end
end)