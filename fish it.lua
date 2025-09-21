local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title="Zero X Hub",
    SubTitle="", 
    TabWidth=160, 
    Theme="Darker",
    Acrylic=false,
    Size=UDim2.fromOffset(500, 320), 
    MinimizeKey=Enum.KeyCode.End
})
local Tabs = {
  M=Window:AddTab({ Title="General" }),
}
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local folder = "Fish It | " .. LocalPlayer.Name
local file = folder .. "/pos.json"

if not isfolder(folder) then
    makefolder(folder)
end

if not isfile(file) then
    writefile(file, HttpService:JSONEncode({List = {}, LastSelected = nil}))
end

local function encodeCFrame(cf)
    local c = {cf:GetComponents()}
    return c
end

local function decodeCFrame(tbl)
    if type(tbl) == "table" and #tbl == 12 then
        return CFrame.new(unpack(tbl))
    end
    return nil
end

local function loadData()
    local ok, result = pcall(function()
        return HttpService:JSONDecode(readfile(file))
    end)
    if ok and type(result) == "table" then
        return result
    end
    return {List = {}, LastSelected = nil}
end

local function saveData(tbl)
    writefile(file, HttpService:JSONEncode(tbl))
end

local data = loadData()
getgenv().PosSave = {}
for _,v in ipairs(data.List or {}) do
    local cf = decodeCFrame(v)
    if cf then table.insert(getgenv().PosSave, cf) end
end
getgenv().Pos = decodeCFrame(data.LastSelected) or nil

local v1 = Tabs.M:AddDropdown("v1", {
    Title = "Select Pos",
    Description = "",
    Multi = false,
    Default = "Select Pos PosSave",
    Callback = function(selected)
        for _,cf in ipairs(getgenv().PosSave) do
            if tostring(cf) == selected then
                getgenv().Pos = cf
                data.LastSelected = encodeCFrame(cf)
                saveData(data)
                break
            end
        end
    end
})
local function updateDropdown()
    if dropdown then
        for _, cf in ipairs(getgenv().PosSave) do
            dropdown:AddList(tostring(cf))
        end
    end
end

Tabs.M:AddButton({
    Title = "Save Pos",
    Callback = function()
        local pos = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if pos then
            local cf = pos.CFrame
            local exist = false
            for _,c in ipairs(getgenv().PosSave) do
                if tostring(c) == tostring(cf) then exist = true break end
            end
            if not exist then
                table.insert(getgenv().PosSave, cf)
                local list = {}
                for _,c in ipairs(getgenv().PosSave) do
                    table.insert(list, encodeCFrame(c))
                end
                data.List = list
                saveData(data)
                updateDropdown()
            end
        end
    end
})

function itemslist:SetList(newList)
    for _, v in pairs(dropdown.ScrollingFrame:GetChildren()) do
        if v:IsA("Frame") and v.Name == "Items" then
            v:Destroy()
        end
    end
    for _, name in ipairs(newList) do
        dropdown:AddList(name)
    end
end

local function refreshDropdown()
    if dropdown then
        local list = {}
        for _, cf in ipairs(getgenv().PosSave) do
            table.insert(list, tostring(cf))
        end
        dropdown:SetList(list)
    end
end

Tabs.M:AddButton({
    Title = "Remove Pos",
    Callback = function()
        if getgenv().Pos then
            for i,v in ipairs(getgenv().PosSave) do
                if tostring(v) == tostring(getgenv().Pos) then
                    table.remove(getgenv().PosSave, i)
                    break
                end
            end
            local list = {}
            for _,c in ipairs(getgenv().PosSave) do
                table.insert(list, encodeCFrame(c))
            end
            data.List = list
            if data.LastSelected and tostring(decodeCFrame(data.LastSelected)) == tostring(getgenv().Pos) then
                data.LastSelected = nil
                getgenv().Pos = nil
            end
            saveData(data)
            refreshDropdown()
        end
    end
})
local v2 = Tabs.M:AddToggle("v2", {
    Title = "Lock Pos",
    Description = "",
    Default = false,
    Callback = function(state)
        getgenv().LockPos = state
    end
})
local v3 = Tabs.M:AddToggle("v3", {
    Title = "Start Fishing",
    Description = "",
    Default = false,
    Callback = function(state)
        getgenv().Fishing = state
    end
})
function IsPlayerAlive(player)
    if not player then
        player = game.Players.LocalPlayer
    end
    if not player or not player:IsA("Player") then return false end
    local character = player.Character
    if not character then return false end
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid or humanoid.Health <= 0 then return false end
    return true
end

function GetDistance(target1, taget2)
    if not taget2 then
        taget2 = game.Players.LocalPlayer.Character.HumanoidRootPart
    end
    return (target1.Position - taget2.Position).Magnitude
end

function CheckRod()
    local backpackDisplay = game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Display
    for _, v in pairs(backpackDisplay:GetChildren()) do
        local inner = v:FindFirstChild("Inner")
        if inner then
            local tags = inner:FindFirstChild("Tags")
            if tags then
                local itemName = tags:FindFirstChild("ItemName")
                if itemName and itemName:IsA("TextLabel") then
                    local name = itemName.Text
                    if string.find(name, "Rod") and not string.find(name, "Rods") and v.AbsoluteSize == Vector2.new(58, 58) then
                        return true
                    end
                end
            end
        end
    end
    return false
end

spawn(function()
    pcall(function()
        while task.wait(0.1) do
            if getgenv().Fishing and IsPlayerAlive() then
                if getgenv().LockPos and getgenv().Pos then
                    if GetDistance(CFrame.new(getgenv().Pos)) > 10 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getgenv().Pos
                    end
                end
                local rod = CheckRod()
                if rod then
                    local args = {1}
                    game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_net@0.2.0").net:FindFirstChild("RE/EquipToolFromHotbar"):FireServer(unpack(args))
                else
                    repeat task.wait(0.1)
                        if tostring(game:GetService("Players").LocalPlayer.PlayerGui.Fishing.Main.Position) == "{0.5, 0}, {1.5, 0}" then
                            local args = {true}
                            game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_net@0.2.0").net:FindFirstChild("RF/UpdateAutoFishingState"):InvokeServer(unpack(args))
                        elseif tostring(game:GetService("Players").LocalPlayer.PlayerGui.Fishing.Main.Position) ~= "{0.5, 0}, {1.5, 0}" then
                            game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_net@0.2.0").net:FindFirstChild("RE/FishingCompleted"):FireServer()
                        end
                    until not getgenv().Fishing or not IsPlayerAlive()
                end
            else
                local args = {false}
                game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_net@0.2.0").net:FindFirstChild("RF/UpdateAutoFishingState"):InvokeServer(unpack(args))
            end
        end
    end)
end)
