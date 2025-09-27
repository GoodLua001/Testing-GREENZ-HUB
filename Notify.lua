game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CollectionService = game:GetService("CollectionService")
local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer
getgenv().rz_EnabledOptions = getgenv().rz_EnabledOptions or {}
getgenv().Script_Stats = getgenv().Script_Stats or {}
getgenv().loaded_webhooks = getgenv().loaded_webhooks or true
local Webhook = {}
Webhook.__index = Webhook
function Webhook.deobfuscateString(encodedStr)
    local parts = string.split(encodedStr, "&")
    local mainData = parts[1] .. (parts[3] or "")
    local seed = tonumber(parts[2])
    local rng = Random.new(seed)
    local charToNum = { MaN = "1", QxL = "2", OzI = "3", KLy = "4", fCW = "5", HgA = "6", BYu = "7", DfW = "8", pLq = "9", RyT = "0" }
    local numToChar = { ["1"] = "MaN", ["2"] = "QxL", ["3"] = "OzI", ["4"] = "KLy", ["5"] = "fCW", ["6"] = "HgA", ["7"] = "BYu", ["8"] = "DfW", ["9"] = "pLq", ["0"] = "RyT" }
    local numericStr = mainData
    for char, num in pairs(charToNum) do
        local randomPlaceholder = rng:NextInteger(10000, 99999)
        numericStr = string.gsub(numericStr, char, randomPlaceholder)
        numericStr = string.gsub(numericStr, randomPlaceholder, num)
    end
    local finalParts = string.split(string.reverse(numericStr), "?")
    local result = ""
    for _, part in ipairs(finalParts) do
        local match = string.match(part, "(%d+)_(.+)")
        if match then
            local num, str = string.match(part, "(%d+)_(.+)")
            result = result .. string.rep(str, tonumber(num))
        else
            result = result .. part
        end
    end
    local decodedUrl = result
    for num, char in pairs(numToChar) do
        local randomPlaceholder = rng:NextInteger(10000, 99999)
        decodedUrl = string.gsub(decodedUrl, num, randomPlaceholder)
        decodedUrl = string.gsub(decodedUrl, randomPlaceholder, char)
    end
    return string.reverse(string.gsub(decodedUrl, "-", ""))
end
function Webhook.new(config)
    local self = setmetatable({}, Webhook)
    self.Tag = config.Tag or "Default"
    self.Debounce = 0
    if type(config.Url) == "table" then
        local urlParts = {}
        for i = 1, #config.Url do
            table.insert(urlParts, Webhook.deobfuscateString(config.Url[i]))
        end
        self.Url = table.concat(urlParts)
    else
        self.Url = config.Url
    end
    return self
end
function Webhook:InDebounce()
    if tick() - self.Debounce < 1 then
        return true
    end
    self.Debounce = tick()
    return false
end
function Webhook:Post(content)
    if self:InDebounce() then return end
    local blacklisted = { "@everyone", "@here", "discord.gg", ".gg/", "nigger", "nigga", "monkey" }
    local lowerContent = string.lower(content)
    for _, word in ipairs(blacklisted) do
        if string.find(lowerContent, word) then
            print("Webhook content blocked due to blacklisted word.")
            return
        end
    end
    local requestBody = {
        ["content"] = "Notify Blox Fruits",
        ["embeds"] = {
            {
                ["description"] = content,
                ["color"] = 35535,
                ["author"] = {
                    ["name"] = "Zero X Hub"
                }
            }
        }
    }
    local success, err = pcall(function()
        request({
            Url = self.Url,
            Method = "POST",
            Headers = { ["Content-Type"] = "application/json" },
            Body = HttpService:JSONEncode(requestBody)
        })
    end)
end
local rz_Functions = {}
function rz_Functions:GetRealFruitName(fruit)
    if not fruit or not fruit:IsA("Model") then return "???" end
    local handle = fruit:WaitForChild("Handle", 1)
    if handle then
        local name = string.gsub(handle.Name, " Fruit", "")
        return name
    end
    return "???"
end
function rz_Functions:GetSeaInformations()
    local seaName = "Sea1"
    if game.PlaceId == 4442272183 then
        seaName = "Sea2"
    elseif game.PlaceId == 7449423635 then
        seaName = "Sea3"
    end
    local players = #Players:GetPlayers()
    local jobId = game.JobId
    local realJobId = string.gsub(game.JobId, "-", "")
    return string.format('{"players":%i,"sea":"%s","jobid":"%s","realjobid":"%s"}', players, seaName, jobId, realJobId)
end
function rz_Functions:WaitIslandChilds(island)
    if island:IsA("Model") and (island.Name == "KitsuneIsland" or island.Name == "MysticIsland" or island.Name == "PrehistoricIsland") then
        task.wait(1)
        return
    end
    island:WaitForChild("DescendantAdded"):Wait()
    task.wait(0.1)
end
function rz_Functions:WaitMirageChilds(mirage)
    if mirage:IsA("Model") and (mirage.Name == "MysticIsland") then
        task.wait(1)
        return
    end
    mirage:WaitForChild("DescendantAdded"):Wait()
    task.wait(0,1)
end
function rz_Functions:OnMirageAdded(mirage)
    if not mirage or not mirage:IsA("Model") then return end
    local dangerLevel = mirage:GetAttribute("DangerLevel")
    if dangerLevel and dangerLevel < 250 then return end
    rz_Functions:WaitMirageChilds(mirage)
    local islandName = string.gsub(mirage.Name, "Island", "")
    local info = rz_Functions:GetSeaInformations()
    local payload = string.format('{"mirage":"%s","info":%s}', islandName, info)
    getgenv().rz_EnabledOptions._Islands:Post(payload)
end
function rz_Functions:OnIslandAdded(island)
    if not island or not island:IsA("Model") then return end
    local dangerLevel = island:GetAttribute("DangerLevel")
    if dangerLevel and dangerLevel < 250 then return end
    rz_Functions:WaitIslandChilds(island)
    local islandName = string.gsub(island.Name, "Island", "")
    local info = rz_Functions:GetSeaInformations()
    local payload = string.format('{"island":"%s","info":%s}', islandName, info)
    getgenv().rz_EnabledOptions._Islands:Post(payload)
end
function rz_Functions:OnMobAdded(mob)
    if not mob or not mob:IsA("Model") then return end
    if not mob:GetAttribute("RaidBoss") then return end
    local humanoid = mob:WaitForChild("Humanoid")
    if humanoid.Health > humanoid.MaxHealth * 1.1 then return end
    local mobName = mob.Name
    local info = rz_Functions:GetSeaInformations()
    local payload = string.format('{"boss":"%s","info":%s}', mobName, info)
    getgenv().rz_EnabledOptions._RaidBoss:Post(payload)
end
function rz_Functions:SpawnedBerries()
    local berryBushes = CollectionService:GetTagged("BerryBush")
    if #berryBushes < 3 then return end
    local berriesFound = {}
    for _, bush in ipairs(berryBushes) do
        for _, v in pairs(bush:GetAttributes()) do
            local berryName = string.sub(v, -7, -1) == " Berry" and string.sub(v, 1, -7) or v
            table.insert(berriesFound, berryName)
            break
        end
    end
    if #berriesFound > 0 then
        local info = rz_Functions:GetSeaInformations()
        local payload = string.format('{"count":%i,"berries":"%s","info":%s}', #berriesFound, table.concat(berriesFound, ", "), info)
        getgenv().rz_EnabledOptions._Berries:Post(payload)
    end
    task.delay(3600, function()
        rz_Functions:SpawnedBerries()
    end)
end
function rz_Functions:SpawnedFruits()
    for _, fruit in ipairs(workspace:GetChildren()) do
        if string.sub(fruit.Name, 1, 6) == "Fruit " then
            local fruitName = rz_Functions:GetRealFruitName(fruit)
            local info = rz_Functions:GetSeaInformations()
            local payload = string.format('{"fruit":"%s","info":%s}', fruitName, info)
            if getgenv().rz_EnabledOptions.Fruits then
                getgenv().rz_EnabledOptions._Fruits:Post(payload)
            end
        end
    end
end
function rz_Functions:SwordDealer()
    if game.PlaceId ~= 4442272183 then return end 
    local sword = ReplicatedStorage.Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1")
    if type(sword) == "string" and (sword == "Saishi" or sword == "Shizu" or sword == "Oroshi") then
        local info = rz_Functions:GetSeaInformations()
        local payload = string.format('{"sword":"%s","info":%s}', sword, info)
        getgenv().rz_EnabledOptions._Sword:Post(payload)
    end
    task.delay(900, function()
        rz_Functions:SwordDealer()
    end)
end
function rz_Functions:Barista()
    local colorInfo = ReplicatedStorage.Remotes.CommF_:InvokeServer("ColorsDealer", "1")
    if type(colorInfo) == "string" then return end
    local colorName = colorInfo[1]
    local rarity = colorInfo[2]
    local info = rz_Functions:GetSeaInformations()
    local payload = string.format('{"color":"%s","rarity":%i,"info":%s}', colorName, rarity, info)
    getgenv().rz_EnabledOptions._Barista:Post(payload)
end
function rz_Functions:MoonPhase()
    if game.PlaceId ~= 7449423635 then return end 
    local isFullMoon = Lighting:GetAttribute("MoonPhase") == 5 and Lighting.ClockTime >= 18 and Lighting.ClockTime <= 19
    local info = rz_Functions:GetSeaInformations()
    local payload = string.format('{"clockTime":%i,"isFullMoon":%s,"info":%s}', Lighting.ClockTime, tostring(isFullMoon), info)
    getgenv().rz_EnabledOptions._FullMoon:Post(payload)
end
function rz_Functions:LowServer()
    local info = rz_Functions:GetSeaInformations()
    local payload = string.format('{"info":%s}', info)
    getgenv().rz_EnabledOptions._Servers:Post(payload)
end
local remoteFolder = ReplicatedStorage:WaitForChild("Remotes")
local commF = remoteFolder:WaitForChild("CommF_")
getgenv().rz_EnabledOptions._Islands = Webhook.new({ Tag = "ISLANDS", Url = { "https://discord.com/api/webhooks/1421351000610046003/Dcm_szTFUHoztHlbExIek00j421MQOmdQWT13cNXj0ULpL5GZlLS2D5M7oV3FJE_GuT0" } })
getgenv().rz_EnabledOptions._RaidBoss = Webhook.new({ Tag = "BOSSES", Url = { "https://discord.com/api/webhooks/1421351227819556924/aGb3HCGPAn18wu10lShhaO6YMWhF7WZHEiEw3o8xENGipzQDX5H5N37lard53qgxNnBM" } })
getgenv().rz_EnabledOptions._Sword = Webhook.new({ Tag = "LEGENDARY_SWORDS", Url = { "https://discord.com/api/webhooks/1421351401854074901/vsqQrLU0ifgYFFsTwXRibbs8y6q3dRIhspzowIEGqSiairi4_3z5dhYDCVK-elqW8LnV" } })
getgenv().rz_EnabledOptions._Berries = Webhook.new({ Tag = "BERRIES", Url = { "https://discord.com/api/webhooks/1417125458482303047/2usfljzdLeXY79Sgmv9qf0luOHZO8-H4HyX1FiZyFPTgcBhp_6JheVG7NWM7qccg0x_k" } })
getgenv().rz_EnabledOptions._Fruits = Webhook.new({ Tag = "FRUITS", Url = { "" } })
getgenv().rz_EnabledOptions._Servers = Webhook.new({ Tag = "LOW_SERVER", Url = { "https://discord.com/api/webhooks/1421352321681457202/0kw8qsmoevUYS-PTyEKcUSxPhADV1V7XbRLxvW5a1RuW9ZeAMhFa65kgQyUt88KvSBLM" } })
getgenv().rz_EnabledOptions._Barista = Webhook.new({ Tag = "BARISTA", Url = { "https://discord.com/api/webhooks/1421354429210165321/1CukoLesb-FiETtXQn6MIhfkSR3GlUOzXkzLqjcM1GLBnkuyy_dRmePwSU6CUL1l0qU8" } })
getgenv().rz_EnabledOptions._FullMoon = Webhook.new({ Tag = "FULL_MOON", Url = { "https://discord.com/api/webhooks/1421350904367415377/raHpSDJnypEY8mltwssgijZtAQl26LWdLOysC5-nErTOmhz43Qgs1sSNm9DV32Tpn-n9" } })
CollectionService:GetInstanceAddedSignal("BasicMob"):Connect(rz_Functions.OnMobAdded)
workspace.Map.ChildAdded:Connect(rz_Functions.OnIslandAdded)
task.delay(300, rz_Functions.SpawnedBerries)
task.delay(180, rz_Functions.SpawnedFruits)
task.delay(300, rz_Functions.SwordDealer)
task.delay(300, rz_Functions.Barista)
task.delay(600, rz_Functions.MoonPhase)
task.delay(600, rz_Functions.LowServer)
wait(3)
local Http = game:GetService("HttpService")
  local TPS = game:GetService("TeleportService")
  local Api = "https://games.roblox.com/v1/games/"
  local _place = game.PlaceId
  local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
   function ListServers(cursor)
     local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
     return Http:JSONDecode(Raw)
   end
   local Server, Next; repeat
   local Servers = ListServers(Next)
   Server = Servers.data[1]
   Next = Servers.nextPageCursor
  until Server
  TPS:TeleportToPlaceInstance(_place,Server.id,plr)