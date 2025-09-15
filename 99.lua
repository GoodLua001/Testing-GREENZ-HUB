local g = game
g.Lighting.GlobalShadows = false
g.Lighting.FogEnd = 1e10
g.Lighting.Brightness = 0
settings().Rendering.QualityLevel = "Level01"

local function optimize(v)
    if v:IsA("Model") then
        for _, c in ipairs(v:GetDescendants()) do
            if c:IsA("BasePart") or c:IsA("MeshPart") then
                c.Transparency = 1
            end
        end
    elseif (v:IsA("BasePart") or v:IsA("MeshPart")) then
        v.Transparency = 1
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    end
end

for _, v in ipairs(g:GetDescendants()) do
    optimize(v)
end

g.DescendantAdded:Connect(optimize)

for _, e in ipairs(g.Lighting:GetDescendants()) do
    if e:IsA("PostEffect") then
        e.Enabled = false
    end
end

g.Lighting.DescendantAdded:Connect(function(e)
    if e:IsA("PostEffect") then
        e.Enabled = false
    end
end)
getgenv().fps = true
repeat wait() until getgenv().fps

local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function Hop(mode)
    game.StarterGui:SetCore("SendNotification", {Title = "Nexon Hub", Text = "Hopping...", Duration = 3, Icon = ""})
    local PlaceID = game.PlaceId
    local foundAnything, isTeleporting = "", false

    local function bQ(v)
        if v.Name == "ErrorPrompt" then
            if v.Visible and v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then v.Visible = false end
            v:GetPropertyChangedSignal("Visible"):Connect(function()
                if v.Visible and v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then v.Visible = false end
            end)
        end
    end

    for _, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do bQ(v) end
    game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(bQ)

    local function TPReturner()
        if isTeleporting then return end
        local Site = foundAnything == "" 
            and HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100')) 
            or HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" then foundAnything = Site.nextPageCursor end
        local serverList = {}
        for _, v in pairs(Site.data) do
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                table.insert(serverList, {id = tostring(v.id), players = tonumber(v.playing)})
            end
        end
        if mode == "Low" then
            table.sort(serverList, function(a, b) return a.players < b.players end)
        elseif mode == "High" then
            table.sort(serverList, function(a, b) return a.players > b.players end)
            local filtered = {}
            for _, s in pairs(serverList) do
                if s.players > 8 then table.insert(filtered, s) end
            end
            serverList = filtered
        end
        if #serverList > 0 then
            local selectedServer = serverList[math.random(1, #serverList)]
            isTeleporting = true
            pcall(function() TeleportService:TeleportToPlaceInstance(PlaceID, selectedServer.id, LocalPlayer) end)
            task.wait(6)
            isTeleporting = false
        end
    end

    while task.wait(2) do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then TPReturner() end
        end)
    end
end

getgenv().NoClip = true

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

RunService.Stepped:Connect(function()
    pcall(function()
        local char = LocalPlayer.Character
        local head = char and char:FindFirstChild("Head")
        local hrp = char and char:FindFirstChild("HumanoidRootPart")

        if not (char and head and hrp) then return end

        if getgenv().NoClip then
            if not head:FindFirstChild("BodyClip") then
                local bv = Instance.new("BodyVelocity")
                bv.Name = "BodyClip"
                bv.Velocity = Vector3.new(0, 0, 0)
                bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                bv.P = 15000
                bv.Parent = head
            end

            for _, v in ipairs(char:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        else
            local existingClip = head:FindFirstChild("BodyClip")
            if existingClip then
                existingClip:Destroy()
            end

            for _, v in ipairs(char:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = true
                end
            end
        end
    end)
end)

local a = Instance.new("ScreenGui", game:GetService("CoreGui"))
a.Name = "gg"

local b = Instance.new("Frame", a)
b.Size = UDim2.new(1, 0, 1, 0)
b.Position = UDim2.new(0, 0, 0, 0)
b.BackgroundTransparency = 1
b.BorderSizePixel = 0

local image = Instance.new("ImageLabel", b)
image.Size = UDim2.new(0, 200, 0, 200)
image.Position = UDim2.new(0.5, -100, 0.5, -150)
image.BackgroundTransparency = 1
image.Image = "rbxassetid://90131637613962"

local e = Instance.new("TextLabel", b)
e.Size = UDim2.new(0, 200, 0, 50)
e.Position = UDim2.new(0.5, -100, 0.5, 60)
e.BackgroundTransparency = 1
e.Text = "0"
e.TextColor3 = Color3.fromRGB(255, 255, 255)
e.Font = Enum.Font.GothamBold
e.TextScaled = true
e.TextStrokeTransparency = 0.6

task.spawn(function()
    while task.wait(0.2) do
        local diamondGui = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
        if diamondGui then
            local countLabel = diamondGui:FindFirstChild("Interface") 
                and diamondGui.Interface:FindFirstChild("DiamondCount") 
                and diamondGui.Interface.DiamondCount:FindFirstChild("Count")
            if countLabel and countLabel:IsA("TextLabel") then
                e.Text = countLabel.Text
            end
        end
    end
end)

spawn(function()
   while task.wait(0.1) do
      if game.PlaceId~=126509999114328 and game:GetService("Players").LocalPlayer.PlayerGui.Interface.EntryScreen.Visible then
        game:GetService("Players").LocalPlayer.PlayerGui.Interface.EntryScreen.Visible = false
      end
   end
end)

local Players=game:GetService("Players")
local RS=game:GetService("ReplicatedStorage")
local lp=Players.LocalPlayer

local function L_V1(pos)
    if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
        lp.Character:SetPrimaryPartCFrame(pos)
    end
end
local lp = game:GetService("Players").LocalPlayer
local vim = game:GetService("VirtualInputManager")

local lp = game:GetService("Players").LocalPlayer
local vim = game:GetService("VirtualInputManager")

local function L_V2()
    while task.wait(1) do
        if lp.PlayerGui.Interface.LobbyCreate.Visible then
            local gui = lp.PlayerGui.Interface.LobbyCreate
            local btn = gui.ButtonList.Button1
            local createBtn = gui.HeaderFrame.CreateButton
            if btn.BackgroundColor3 == Color3.fromRGB(255,225,0) then
                local pos = createBtn.AbsolutePosition
                local size = createBtn.AbsoluteSize
                local x = pos.X + size.X/2
                local y = pos.Y + size.Y/2 + 70
                vim:SendMouseButtonEvent(x, y, 0, true, game, 0)
                vim:SendMouseButtonEvent(x, y, 0, false, game, 0)
            else
                local absPos = btn.AbsolutePosition
                local absSize = absPos and btn.AbsoluteSize
                local x = absPos.X + absSize.X/2 + 25
                local y = absPos.Y + absSize.Y/2 + 50
                vim:SendMouseButtonEvent(x, y, 0, true, game, 0)
                vim:SendMouseButtonEvent(x, y, 0, false, game, 0)
            end
        else
            for _,obj in ipairs(workspace:GetChildren()) do
                if obj:IsA("Model") and (obj.Name=="Teleporter1" or obj.Name=="Teleporter2" or obj.Name=="Teleporter3") then
                    local g=obj:FindFirstChild("BillboardHolder")
                    if g and g:FindFirstChild("BillboardGui") and g.BillboardGui:FindFirstChild("Players") then
                        local t=g.BillboardGui.Players.Text
                        local x,y=t:match("(%d+)/(%d+)")
                        x,y=tonumber(x),tonumber(y)
                        if x and y and x==0 then
                            local n=obj.Name=="Teleporter1" and 1 or obj.Name=="Teleporter2" and 2 or obj.Name=="Teleporter3" and 3
                            local args={ [1]="Add", [2]=n }
                            game:GetService("ReplicatedStorage").RemoteEvents.TeleportEvent:FireServer(unpack(args))
                        end
                    end
                end
            end
        end
        if lp.PlayerGui.TeleporterAssets.TextButton.Visible then
            break
        end
    end
end


local chestSeen = {}
local lp = game.Players.LocalPlayer

local function L_V3()
    local hrp = lp.Character and lp.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return nil, nil end
    local closest, dist
    for _, v in pairs(workspace.Items:GetChildren()) do
        if v:IsA("Model") and v.Name:find("Chest") and not v.Name:find("Snow") then
            local prox = v:FindFirstChild("ProximityInteraction", true) or v:FindFirstChildWhichIsA("ProximityPrompt", true)
            if prox then
                local p = v:GetPivot().Position
                local d = (hrp.Position - p).Magnitude
                if not dist or d < dist then
                    closest, dist = v, d
                end
            end
        end
    end
    return closest, dist
end

workspace.Items.DescendantAdded:Connect(function(v)
    if v:IsA("Model") and v.Name:find("Chest") and not v.Name:find("Snow") then
        warn("[ChestFarm] New chest added:", v.Name)
    end
end)

local function L_V4()
    for _,d in pairs(workspace:GetDescendants()) do
        if d:IsA("Model") and d.Name=="Diamond" and game.PlaceId==126509999114328 then
            L_V1(CFrame.new(d:GetPivot().Position))
            RS.RemoteEvents.RequestTakeDiamonds:FireServer(d)
            warn("collect kc")
        end
    end
end

spawn(function()
    while task.wait(0.5) do
        if game.PlaceId~=126509999114328 then pcall(L_V2) end
    end
end)

spawn(function()
    while task.wait(0.1) do
        if game.PlaceId == 126509999114328 then
            warn("[ChestFarm] Entered farm place")
            local t = os.time()
            local foundChest = false

            while os.time() - t < 15 do
                local c = 0
                for _, v in workspace.Items:GetChildren() do
                    if v:IsA("Model") and v.Name:find("Chest") and not v.Name:find("Snow") and v:FindFirstChildWhichIsA("ProximityPrompt", true) then
                        c = c + 1
                    end
                end
                warn("[ChestFarm] Checking chests, found:", c)
                if c > 0 then
                    foundChest = true
                    break
                end
                task.wait(5)
            end

            local c = 0
            for _, v in workspace.Items:GetChildren() do
                if v:IsA("Model") and v.Name:find("Chest") and not v.Name:find("Snow") and v:FindFirstChildWhichIsA("ProximityPrompt", true) then
                    c = c + 1
                end
            end
            warn("[ChestFarm] Final chest count before farming:", c)

            task.delay(2, function()
                if c <= 0 and not workspace:FindFirstChild("Diamond", true) then
                    warn("[ChestFarm] Not enough chests, hopping...")
                    Hop("Low")
                    return
                end
            end)

            while true do
                local chest = L_V3()
                if not chest and not workspace:FindFirstChild("Diamond", true) then
                    warn("[ChestFarm] No chest found, hopping...")
                    Hop("Low")
                    return
                end
                if chest then
                    warn("[ChestFarm] Farming chest:", chest.Name)
                    local prox = chest:FindFirstChildWhichIsA("ProximityPrompt", true)
                    local startTime = os.time()
                    while prox and prox.Parent and os.time() - startTime < 10 do
                        L_V1(CFrame.new(chest:GetPivot().Position))
                        task.wait(0.5)
                        fireproximityprompt(prox)
                        warn("[ChestFarm] Prompt fired on:", chest.Name)
                        task.wait(0.5)
                        prox = chest:FindFirstChildWhichIsA("ProximityPrompt", true)
                    end
                    if os.time() - startTime >= 10 then
                        warn("[ChestFarm] Chest timeout (10s), skipping:", chest.Name)
                    end
                    break
                else
                    task.wait(1)
                end
            end
        end
    end
end)

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local diamondGui = player:FindFirstChild("PlayerGui") 
    and player.PlayerGui:FindFirstChild("Interface") 
    and player.PlayerGui.Interface:FindFirstChild("DiamondCount") 
    and player.PlayerGui.Interface.DiamondCount:FindFirstChild("Count")

local diamondCount = diamondGui and tostring(diamondGui.Text) or "0"

local webhook = getgenv().Url
local avatar = "https://raw.githubusercontent.com/NHMdz/32011minhnguyen/main/anh-waifu-12.webp"

local timeNow = os.time()
local formattedTime = os.date("%Y-%m-%d %H:%M:%S", timeNow)
local serverId = game.JobId

local data = {
    username = "Nexon Hub Tracker | 99 Night",
    avatar_url = avatar,
    embeds = {{
        title = "Player Report",
        description = "**Diamond Count:** "..diamondCount.."\n**Time:** "..formattedTime.."\n**Server ID:** "..serverId,
        color = 0x1ABC9C,
        fields = {
            {name = "Player", value = player.Name, inline = true},
            {name = "Server ID", value = serverId, inline = true},
            {name = "Place ID", value = tostring(game.PlaceId), inline = true},
            {name = "Time Since Join", value = tostring(math.floor((os.time() - player.AccountAge)/60)).." minutes ago", inline = true}
        },
        footer = { text = "https://discord.gg/nexonhub/" }
    }}
}

local success, err = pcall(function()
    if request then
        request({
            Url = webhook,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = HttpService:JSONEncode(data)
        })
    elseif requestAsync then
        requestAsync({
            Url = webhook,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = HttpService:JSONEncode(data)
        })
    else
        HttpService:PostAsync(webhook, HttpService:JSONEncode(data), Enum.HttpContentType.ApplicationJson)
    end
end)

if not success then
    warn("Webhook failed:", err)
end

while task.wait(0.1) do
    if game.PlaceId==126509999114328 then
    L_V4()
    end
end