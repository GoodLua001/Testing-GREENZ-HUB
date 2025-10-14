local Players = game:GetService("Players")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AutoPullBanner"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")

local textLabel = Instance.new("TextLabel")
textLabel.Name = "Title"
textLabel.Parent = screenGui
textLabel.Text = "AUTO Mảnh Gương Và Mũ Rip Indra"
textLabel.BackgroundColor3 = Color3.fromRGB(251, 255, 19)
textLabel.BackgroundTransparency = 0.5
textLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
textLabel.BorderSizePixel = 5
textLabel.Size = UDim2.new(0, 511, 0, 54)
textLabel.Position = UDim2.new(0.192, 0, 0.053, 0)
textLabel.TextWrapped = true
textLabel.TextScaled = true
textLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
textLabel.TextStrokeTransparency = 0
textLabel.Font = Enum.Font.GothamBold
textLabel.Visible = true

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")

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
function TP(mode, CF)
    if typeof(CF) == "CFrame" then
        if mode == "TP" then
            game.Players.LocalPlayer.Character:PivotTo(CF)
        elseif mode == "Tween" then
            local hrp = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if hrp then
                local distance = (hrp.Position - CF.Position).Magnitude
                local tween = game:GetService("TweenService"):Create(hrp, TweenInfo.new(distance / 200, Enum.EasingStyle.Linear), {CFrame = CF})
                tween:Play()
            end
        end
        _G.NoClip = true
    end
    if getgenv().StopTween then
        _G.NoClip = false
    end
end
_G.NoClip = false
game:GetService("RunService").Stepped:Connect(function()
    pcall(function()
        local char = game:GetService("Players").LocalPlayer.Character
        if not (char and char:FindFirstChild("Head") and char:FindFirstChild("HumanoidRootPart")) then return end
        if _G.NoClip or _G.AutoManhVaMu then
            if not char.Head:FindFirstChild("BodyClip") then
                local bv = Instance.new("BodyVelocity")
                bv.Name = "BodyClip"
                bv.Velocity = Vector3.new(0, 0, 0)
                bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                bv.P = 15000
                bv.Parent = char.Head
            end
            for _, v in ipairs(char:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        else
            if char.Head:FindFirstChild("BodyClip") then
                char.Head.BodyClip:Destroy()
            end
            for _, v in ipairs(char:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = true
                end
            end
        end
    end)
end)
function checkInventory(name)
    local inventory = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
    for _, item in pairs(inventory) do
        if item.Name == name then
            return true
        end
    end
    return false
end
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function EquipWeapon(ToolSe)
    if ToolSe then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            local Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end
function KillRip()
    if (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra True Form") or (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra") then
        for _, c in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
            if (c.Name == "rip_indra True Form" or c.Name == "rip_indra") and c:FindFirstChild("Humanoid") and c:FindFirstChild("HumanoidRootPart") and c.Humanoid.Health > 0 then
                repeat
                    task.wait()
                    pcall(function()
                        AutoHaki()
                        EquipWeapon(_G.EquipWeapon)
                        TP("Tween", c.HumanoidRootPart.CFrame * CFrame.new(20, 10, 10))
                    end)
                until c.Humanoid.Health <= 0 or not c.Parent
            end
        end
    elseif (game:GetService("ReplicatedStorage")):FindFirstChild("rip_indra") or (game:GetService("ReplicatedStorage")):FindFirstChild("rip_indra True Form") then
        TP("Tween", CFrame.new(-5344.822, 423.985, -2725.093))
        if not foundBoss then
            local rip = game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form")
            if rip then
                TP("Tween", (rip.HumanoidRootPart.CFrame * CFrame.new(5, 10, 7)))
            else
                task.wait(3)
                Hopripindra()
            end
        end
    end
end

function KillDough()
    if (game:GetService("Workspace")).Enemies:FindFirstChild("Dough King") then
        for _, c in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
            if c.Name == "Dough King" and c:FindFirstChild("Humanoid") and c:FindFirstChild("HumanoidRootPart") and c.Humanoid.Health > 0 then
                repeat
                    task.wait()
                    AutoHaki()
                    EquipWeapon(_G.EquipWeapon)
                    TP("Tween", c.HumanoidRootPart.CFrame * CFrame.new(20, 10, 10))
                until c.Humanoid.Health <= 0 or not c.Parent
                Death(1)
            end
        end
    elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Dough King") then
        TP("Tween", ((game:GetService("ReplicatedStorage")):FindFirstChild("Dough King")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
        if not foundBoss then
            local rip = game:GetService("ReplicatedStorage"):FindFirstChild("Dough King")
            if rip then
                TP("Tween", rip.HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
            else
                task.wait(3)
                HopDoughKing()
            end
        end
    end
end
local Mu = checkInventory("Valkyrie Helm")
local Manh = checkInventory("Mirror Fractal")
local Dough = game:GetService("ReplicatedStorage"):FindFirstChild("Dough King")
local Rip = game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form")
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.AutoManhMu then
                if not World3 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                end
                if not Mu then
                    textLabel.Text = "Đang Lấy Mũ Rip"
                    KillRip()
                elseif not Manh then
                    textLabel.Text = "Đang Lấy Mảnh Gương"
                    KillDough()
                elseif Mu and Manh then
                    textLabel.Text = "Đã Hoàn Thành Lấy Mảnh Và Mũ"
                end
            end
        end
    end)
end)
