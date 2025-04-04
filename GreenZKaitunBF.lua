-- RAW TO BASIC Dump Buy Khoi DepTrai

if not game:IsLoaded() then
	game.Loaded:Wait();
end
repeat
	task.wait();
until game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") or (game.Players.LocalPlayer.Team ~= nil) 
print("--[[Join Team]]--");
task.wait();
LoadingScriptSuccess = false;
setfpscap(200);
if _G.AutoDeleteWorkSpace then
	if isfolder("a_temp") then
		delfolder("a_temp");
	end
	if isfile("a_temp/268.txt") then
		delfile("a_temp/268.txt");
	end
	if isfile("BF_Kick_Log.txt") then
		delfile("BF_Kick_Log.txt");
	end
	task.wait(0.1);
end
if not isfolder("a_temp") then
	makefolder("a_temp");
end
if not isfile("a_temp/268.txt") then
	writefile("a_temp/268.txt", tostring(os.time()));
end
local v0 = queue_on_teleport;
if LPH_OBFUSCATED then
	v0([[
		task.wait(0.5)
		setfpscap(200)
	]]);
end
local v1;
v1 = game:HttpGet("https://raw.githubusercontent.com/NightsTimeZ/Donate-Me/main/Debug.boolean");
local v2;
if v1:match("debug owo") then
	v2 = true;
else
	v2 = false;
end
local v3 = false;
spawn(function()
	pcall(function()
		local v260, v261 = pcall(function()
			return game:HttpGet("https://httpbin.org/get", true);
		end);
		if (v260 == true) then
			local v413 = game:GetService("HttpService"):JSONDecode(v261);
			if tostring(v413['headers']["Roblox-Session-Id"]):find("PrivateGame") then
				v3 = true;
			else
				v3 = false;
			end
		else
			v3 = true;
		end
	end);
end);
local v4 = {};
task.spawn(function()
	local v91 = "https://tryhardguides.com/blox-fruits-codes/";
	local v92 = game:HttpGet(v91);
	for v262 in string.gmatch(v92, "<ul>(.-)</ul>") do
		for v388 in string.gmatch(v262, "<li>(.-)</li>") do
			for v414 in string.gmatch(v388, "<strong>([^<]+)</strong>") do
				table.insert(v4, v414);
			end
		end
	end
end);
if (type(getgenv().Configs) ~= "table") then
	getgenv().Configs = {Main={SkipFarm=true,HopIfCantKill=true,BlockAllHop=false,FastAttack=true,Start=true},FirstSea={AutoPole=true,AutoSaber=true,AutoSecondSea=true},SecondSea={AutoRengoku=true,AutoSecondSea=true,AutoQuestFlower=true,AutoRaceV3=true,AutoBartiloQuest=true,AutoCursedCaptain=true,AutoDarkbeard=true,AutoFactory=true,AutoThirdSea=true,AlliesFruit={"Dragon-Dragon","Spirit-Spirit","Venom-Venom","Dough-Dough"}},ThirdSea={AutoHallowScythe=true,AutoBuddySword=true,AutoDoughKing=true,AutoSpikeyTrident=true,AutoTushita=true,AutoEliteHunter=true,AutoDarkDagger=true,AutoYama=true,AutoCanvander=true,SkipGetItemGuitar=true,AutoSoulGuitar=true,AutoRainbowHaki=true,AutoCursedDualKatana=true},FightingStyle={AutoGodHuman=true,AutoSuperhuman=true,AutoDeathStep=true,AutoSharkmanKarate=true,AutoElectricClaw=true,AutoDargonTalon=true},Mastery={AutoDFMastery=true,SettingsSkill={},AutoSwordMastery=true,SelectRaritySword={"Mythical","Legendary"}},Settings={SelectRedeemCodeLevel=1,SelectRateFruitRaid=1000000,LimitFragmentsRaids=100000},FruitsSettings={SelectMainDF={"Dragon-Dragon","Spirit-Spirit","Venom-Venom","Dough-Dough"},SelectSubDF={"Ice-Ice","Sand-Sand","Dark-Dark","Quake-Quake","Light-Light"},AllowEatDFInventory=true,StartSniper=true},Webhook={StartWebhook=false,WebhookURL="",WebhookMode="Send On Level Max And Every 10 min"},Fps={FpsBoost=true,LockFPS=120,LockFPSNow=true,WhiteScreen=false}};
end
local v5 = false;
local v6 = false;
local v7 = false;
local v8 = false;
local v9 = false;
local v10 = false;
local v11 = {};
local v12 = {};
local v13 = false;
local v14 = 0;
local v15 = false;
local v16 = false;
local v17 = false;
local v18 = false;
local v19 = false;
local v20 = false;
local v21 = false;
local v22 = false;
local v23 = false;
local v24 = false;
local v25 = game:GetService("UserInputService");
local v26 = game:GetService("Players");
local v27 = v26.LocalPlayer;
local v28 = v27.Character;
local v29 = game:GetService("Workspace");
local v30 = game:GetService("VirtualUser");
local v31 = game:GetService("CollectionService");
local v32 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title;
local v33 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest;
local v34 = game.Players.LocalPlayer.Data.Level.Value;
local v35 = 0;
local v36 = false;
local v37 = false;
local v38 = "Melee";
local v39 = {};
local v40 = 2550;
local v41 = false;
local v42 = false;
local v43 = 0;
local v44 = false;
if not LPH_OBFUSCATED then
	function LPH_JIT(...)
		return ...;
	end
	function LPH_JIT_MAX(...)
		return ...;
	end
	function LPH_NO_VIRTUALIZE(...)
		return ...;
	end
	function LPH_NO_UPVALUES(...)
		return ...;
	end
end
task.spawn(function()
	while task.wait() do
		pcall(function()
			for v415, v416 in pairs(game.Workspace.Enemies:GetChildren()) do
				if v416:IsA("Model") then
					if (v416:FindFirstChild("Humanoid") and (v416.Name ~= v416:FindFirstChild("Humanoid").DisplayName)) then
						v416.Name = v416:FindFirstChild("Humanoid").DisplayName;
					end
				end
			end
			for v417, v418 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
				if v418:IsA("Model") then
					if (v418:FindFirstChild("Humanoid") and (v418.Name ~= v418:FindFirstChild("Humanoid").DisplayName)) then
						v418.Name = v418:FindFirstChild("Humanoid").DisplayName;
					end
				end
			end
		end);
	end
end);
local v45 = http_request;
v45 = request;
local v46 = game.Players.LocalPlayer:GetMouse();
local v47 = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"):WaitForChild("Particle"));
LPH_NO_VIRTUALIZE(function()
	local v93 = v47.play;
	v47.play = function(...)
	end;
	spawn(function()
		for v389, v390 in pairs(game:GetService("ReplicatedStorage").Effect.Container.Death:GetChildren()) do
			if v390:IsA("ParticleEmitter") then
				v390.Texture = 0;
			end
		end
		for v391, v392 in pairs(game:GetService("ReplicatedStorage").Effect.Container.Death.eff:GetChildren()) do
			v392:Destroy();
		end
	end);
end)();
local v48 = game.PlaceId;
local v49, v50, v51;
if (v48 == 2753915549) then
	v49 = true;
elseif (v48 == 4442272183) then
	v50 = true;
elseif (v48 == 7449423635) then
	v51 = true;
end
local v52;
if v49 then
	v52 = {Vector3.new(61163.8515625, 11.6796875, 1819.7841796875),Vector3.new(3864.8515625, 6.6796875, -1926.7841796875),Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656),Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047)};
elseif v50 then
	v52 = {Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422),Vector3.new(2284, 15, 905),Vector3.new(-286.98907470703125, 306.1379089355469, 597.8827514648438)};
elseif v51 then
	v52 = {Vector3.new(-12548, 337, -7481),Vector3.new(-5096.44482421875, 315.44134521484375, -3105.741943359375),Vector3.new(5746.46044921875, 610.4500122070312, -244.6104278564453),Vector3.new(5314.58203125, 22.562240600585938, -125.94227600097656),Vector3.new(-11993.580078125, 331.8335876464844, -8844.1826171875),Vector3.new(28288.15234375, 14896.5341796875, 100.4998779296875)};
end
function EquipWeapon(...)
	local v95 = {...};
	if v95[1] then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v95[1])) then
			local v455 = game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v95[1]));
			task.wait();
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(v455);
		end
	else
		spawn(function()
			ToolSe = "";
			if (v38 == "Blox Fruit") then
				TypeWeaponReal = "Melee";
			else
				TypeWeaponReal = v38;
			end
			for v456, v457 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v457:IsA("Tool") then
					if (v457.ToolTip == TypeWeaponReal) then
						ToolSe = v457.Name;
					end
				end
			end
			for v458, v459 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v459:IsA("Tool") then
					if (v459.ToolTip == TypeWeaponReal) then
						ToolSe = v459.Name;
					end
				end
			end
			if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
				local v503 = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe);
				task.wait();
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v503);
			end
		end);
	end
end
function checkdoublquest()
	local v96 = {};
	for v264, v265 in pairs(Quest) do
		for v393, v394 in pairs(v265) do
			local v395 = v394.LevelReq;
			for v419, v420 in pairs(v394.Task) do
				if (v419 == getgenv().mobv) then
					for v564, v565 in next, v265 do
						if ((v565.LevelReq <= game.Players.LocalPlayer.Data.Level.Value) and (v565.Name ~= "Town Raid")) then
							for v656, v657 in next, v565.Task do
								if (v657 > 1) then
									table.insert(v96, v656);
								end
							end
						end
					end
				end
			end
		end
	end
	return v96;
end
local v53 = require(game.ReplicatedStorage:WaitForChild("GuideModule"));
function checkquestdata()
	for v266, v267 in next, v53.Data do
		if (v266 == "QuestData") then
			return true;
		end
	end
	return false;
end
function checknamedoublquest()
	local v97;
	if checkquestdata() then
		for v421, v422 in next, v53.Data.QuestData.Task do
			v97 = v421;
		end
	end
	return v97;
end
function doublequestdeptrai()
	checkquest();
	local v98 = {};
	if (getgenv().DoubleQuest and checkquestdata() and (checknamedoublquest() == getgenv().mobv) and (#checkdoublquest() >= 2)) then
		for v423, v424 in pairs(Quest) do
			for v460, v461 in pairs(v424) do
				for v504, v505 in pairs(v461.Task) do
					if (tostring(v504) == getgenv().mobv) then
						for v637, v638 in next, v424 do
							for v658, v659 in next, v638.Task do
								if ((v658 ~= getgenv().mobv) and (v659 > 1)) then
									v98['Name'] = tostring(v658);
									v98['NameQuest'] = v423;
									v98['ID'] = v637;
									return v98;
								end
							end
						end
					end
				end
			end
		end
	else
		v98['Name'] = getgenv().mobv;
		v98['NameQuest'] = getgenv().mobvv;
		v98['ID'] = getgenv().mobvvv;
		return v98;
	end
end
function CheckIsland()
	GoIsland = 0;
	ToIslandCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
	local v100 = {1,2,3,4,5};
	local v101 = {[1]=math.huge,[2]=math.huge,[3]=math.huge,[4]=math.huge,[5]=math.huge};
	for v268, v269 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		local v270 = (v269.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
		if (v269.Name == "Island 5") then
			if ((v270 < v101[5]) and (v270 < 5000)) then
				v101[5] = v270;
				GoIsland = 5;
				v100[5] = v269.CFrame * CFrame.new(0, 80, 1);
			end
		elseif (v269.Name == "Island 4") then
			if ((v270 < v101[4]) and (v270 < 5000)) then
				v101[4] = v270;
				GoIsland = 4;
				v100[4] = v269.CFrame * CFrame.new(0, 80, 1);
			end
		elseif (v269.Name == "Island 3") then
			if ((v270 < v101[3]) and (v270 < 5000)) then
				v101[3] = v270;
				GoIsland = 3;
				v100[3] = v269.CFrame * CFrame.new(0, 80, 1);
			end
		elseif (v269.Name == "Island 2") then
			if ((v270 < v101[2]) and (v270 < 5000)) then
				v101[2] = v270;
				GoIsland = 2;
				v100[2] = v269.CFrame * CFrame.new(0, 80, 1);
			end
		elseif (v269.Name == "Island 1") then
			if ((v270 < v101[1]) and (v270 < 5000)) then
				v101[1] = v270;
				GoIsland = 1;
				v100[1] = v269.CFrame * CFrame.new(0, 80, 1);
			end
		end
	end
	if (GoIsland > 0) then
		return true;
	else
		return false;
	end
end
function NextIsland()
	GoIsland = 0;
	ToIslandCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
	local v103 = {1,2,3,4,5};
	local v104 = {[1]=math.huge,[2]=math.huge,[3]=math.huge,[4]=math.huge,[5]=math.huge};
	local v105;
	pcall(function()
		if string.find(game.Players.LocalPlayer.Data:WaitForChild("DevilFruit").Value, "Phoenix") then
			v105 = CFrame.new(math.random(20, 80), 80, math.random(20, 80));
		else
			v105 = CFrame.new(0, 80, 1);
		end
	end);
	for v271, v272 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
		local v273 = (v272.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
		if (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) then
		elseif (v272.Name == "Island 5") then
			if ((v273 < v104[5]) and (v273 < 4000)) then
				v104[5] = v273;
				GoIsland = 5;
				v103[5] = v272.CFrame * v105;
			end
		elseif (v272.Name == "Island 4") then
			if ((v273 < v104[4]) and (v273 < 4000) and (GoIsland < 4)) then
				v104[4] = v273;
				GoIsland = 4;
				v103[4] = v272.CFrame * v105;
			end
		elseif (v272.Name == "Island 3") then
			if ((v273 < v104[3]) and (v273 < 4000) and (GoIsland < 3)) then
				v104[3] = v273;
				GoIsland = 3;
				v103[3] = v272.CFrame * v105;
			end
		elseif (v272.Name == "Island 2") then
			if ((v273 < v104[2]) and (v273 < 4000) and (GoIsland < 2)) then
				v104[2] = v273;
				GoIsland = 2;
				v103[2] = v272.CFrame * v105;
			end
		elseif (v272.Name == "Island 1") then
			if ((v273 < v104[1]) and (v273 < 4000) and (GoIsland < 1)) then
				v104[1] = v273;
				GoIsland = 1;
				v103[1] = v272.CFrame * v105;
			end
		end
	end
	ToIslandCFrame = v103[GoIsland];
end
function GetFightingStyle(v107)
	ReturnText = "";
	for v274, v275 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v275:IsA("Tool") then
			if (v275.ToolTip == v107) then
				ReturnText = v275.Name;
			end
		end
	end
	for v276, v277 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v277:IsA("Tool") then
			if (v277.ToolTip == v107) then
				ReturnText = v277.Name;
			end
		end
	end
	if (ReturnText ~= "") then
		return ReturnText;
	else
		return "Not Have";
	end
end
inmyself = LPH_JIT_MAX(function(v108)
	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v108) then
		return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v108);
	end
	local v109;
	for v278, v279 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v279:IsA("Tool") then
			if (v279.Name == v108) then
				v109 = v279;
			end
		end
	end
	return v109 or game:GetService("Players").LocalPlayer.Character:FindFirstChild(v108);
end);
function RemoveTextFruit(v110)
	return v110:gsub(" Fruit", "");
end
function RemoveSomeThing(v111)
	return tostring(v111:gsub("RoyXHub_BF\\", ""));
end
function TableInsertNoDuplicates(v112, v113)
	if table.find(v112, v113) then
	else
		table.insert(v112, v113);
	end
end
local v54 = {};
v54.TeleportFast = function(v114)
	if ((v3 == false) and not BlockAllHop) then
		if (os.time() > tonumber(readfile("a_temp/268.txt"))) then
			ShowDoingStatus("Server Hop");
			pcall(function()
				writefile("a_temp/268.txt", tostring(os.time() + 60));
			end);
			local v462 = game.PlaceId;
			local v463 = {};
			local v464 = "";
			local v465 = os.date("!*t").hour;
			local v466 = false;
			local v467 = pcall(function()
				v463 = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"));
			end);
			if not v467 then
				table.insert(v463, v465);
				writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v463));
			end
			function TPReturner()
				local v510;
				if (v464 == "") then
					v510 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v462 .. "/servers/Public?sortOrder=Asc&limit=100"));
				else
					v510 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v462 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. v464));
				end
				local v511 = "";
				if (v510.nextPageCursor and (v510.nextPageCursor ~= "null") and (v510.nextPageCursor ~= nil)) then
					v464 = v510.nextPageCursor;
				end
				local v512 = 0;
				for v566, v567 in pairs(v510.data) do
					local v568 = true;
					v511 = tostring(v567.id);
					if (tonumber(v567.maxPlayers) > tonumber(v567.playing)) then
						for v664, v665 in pairs(v463) do
							if (v512 ~= 0) then
								if (v511 == tostring(v665)) then
									v568 = false;
								end
							elseif (tonumber(v465) ~= tonumber(v665)) then
								local v740 = pcall(function()
									delfile("NotSameServers.json");
									v463 = {};
									table.insert(v463, v465);
								end);
							end
							v512 = v512 + 1;
						end
						if (v568 == true) then
							table.insert(v463, v511);
							task.wait();
							pcall(function()
								writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v463));
								task.wait();
								local v713 = {[1]="teleport",[2]=v511};
								game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(unpack(v713));
							end);
							task.wait(0.5);
						end
					end
				end
			end
			function Teleport()
				while task.wait() do
					pcall(function()
						TPReturner();
						if (v464 ~= "") then
							TPReturner();
						end
					end);
				end
			end
			Teleport();
		else
			ShowDoingStatus("Wait Hop ( Anti 268 )");
		end
	end
end;
v54.NormalTeleport = function(v115)
	if ((v3 == false) and not BlockAllHop) then
		if (os.time() > tonumber(readfile("a_temp/268.txt"))) then
			ShowDoingStatus("Server Hop");
			local v468 = game.PlaceId;
			local v469 = {};
			local v470 = "";
			local v471 = os.date("!*t").hour;
			local v472 = false;
			local v473 = pcall(function()
				v469 = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"));
			end);
			if not v473 then
				table.insert(v469, v471);
				writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v469));
			end
			function TPReturner()
				local v513;
				if (v470 == "") then
					v513 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v468 .. "/servers/Public?sortOrder=Asc&limit=100"));
				else
					v513 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v468 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. v470));
				end
				local v514 = "";
				if (v513.nextPageCursor and (v513.nextPageCursor ~= "null") and (v513.nextPageCursor ~= nil)) then
					v470 = v513.nextPageCursor;
				end
				local v515 = 0;
				for v569, v570 in pairs(v513.data) do
					local v571 = true;
					v514 = tostring(v570.id);
					if (tonumber(v570.maxPlayers) > tonumber(v570.playing)) then
						for v666, v667 in pairs(v469) do
							if (v515 ~= 0) then
								if (v514 == tostring(v667)) then
									v571 = false;
								end
							elseif (tonumber(v471) ~= tonumber(v667)) then
								local v741 = pcall(function()
									delfile("NotSameServers.json");
									v469 = {};
									table.insert(v469, v471);
								end);
							end
							v515 = v515 + 1;
						end
						if (v571 == true) then
							table.insert(v469, v514);
							task.wait();
							pcall(function()
								writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v469));
								task.wait();
								local v714 = {[1]="teleport",[2]=v514};
								game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(unpack(v714));
							end);
							task.wait(0.5);
						end
					end
				end
			end
			function Teleport()
				pcall(function()
					writefile("a_temp/268.txt", tostring(os.time() + 60));
				end);
				while task.wait() do
					pcall(function()
						TPReturner();
						if (v470 ~= "") then
							TPReturner();
						end
					end);
				end
			end
			if v50 then
				Teleport();
			else
				task.delay(15, function()
					pcall(function()
						loadstring(game:HttpGet("https://raw.githubusercontent.com/NightsTimeZ/Api/main/BitCoinDeCodeApi.cs"))();
					end);
				end);
				repeat
					task.wait();
					pcall(function()
						game:GetService("Players")['LocalPlayer'].PlayerGui.ServerBrowser.Enabled = true;
						task.wait(0.5);
					end);
				until game:GetService("Players")['LocalPlayer'].PlayerGui.ServerBrowser.Frame.FakeScroll.Inside:FindFirstChild("Template") 
				local v572 = 0;
				repeat
					task.wait();
					local v607 = game:GetService("Players")['LocalPlayer'].PlayerGui.ServerBrowser.Frame.ScrollingFrame;
					v607.CanvasPosition = Vector2.new(0, 300);
					v572 = v572 + 1;
				until (ScrFrane.CanvasPosition == Vector2.new(0, 300)) or (v572 >= 6) 
				while task.wait(0.1) do
					pcall(function()
						local v640 = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart");
						v640.CFrame = CFrame.new(v640.Position.X, 5000, v640.Position.Z);
						for v668, v669 in pairs(game:GetService("Players")['LocalPlayer'].PlayerGui.ServerBrowser.Frame.FakeScroll.Inside:GetChildren()) do
							if (v669:FindFirstChild("Join") and (v669:FindFirstChild("Join").Text == "Join")) then
								local v715 = v669:FindFirstChild("Join"):GetAttribute("Job");
								if ((v715 ~= game.JobId) and (v715 ~= "1234567890123")) then
									local v742 = {[1]="teleport",[2]=v715};
									game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(unpack(v742));
									task.wait();
								end
							end
						end
						task.wait();
						local v642 = game:GetService("Players")['LocalPlayer'].PlayerGui.ServerBrowser.Frame.ScrollingFrame;
						v642.CanvasPosition = Vector2.new(0, v642.CanvasPosition.Y + 260);
					end);
				end
			end
		else
			ShowDoingStatus("Wait Hop ( Anti 268 )");
		end
	end
end;
v54.Rejoin = function(v116)
	if (os.time() > tonumber(readfile("a_temp/268.txt"))) then
		ShowDoingStatus("Rejoin");
		pcall(function()
			writefile("a_temp/268.txt", tostring(os.time() + 60));
		end);
		local v402 = game:GetService("TeleportService");
		local v403 = game:GetService("Players").LocalPlayer;
		v402:TeleportToPlaceInstance(game.PlaceId, game.JobId, v403);
	else
		ShowDoingStatus("Wait Hop ( Anti 268 )");
	end
end;
function DieWait()
	if ((game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0) or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head")) then
		if tween then
			tween:Cancel();
		end
		repeat
			task.wait();
		until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 
		task.wait(1);
		if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
			Com("F_", "Buso");
		end
	end
end
function RedeemCode(v117)
	return game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v117);
end
function CheckAllMyDF()
	local v118 = {HaveFruitInMySelf=false,HaveFruitInStore=false,NameDF="",Price=0};
	for v280, v281 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v281:IsA("Tool") then
			if v281.Name:find("Fruit") then
				v118['HaveFruitInMySelf'] = true;
				v118['NameDF'] = v281.Name;
			end
		end
	end
	for v282, v283 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v283:IsA("Tool") then
			if v283.Name:find("Fruit") then
				v118['HaveFruitInMySelf'] = true;
				v118['NameDF'] = v283.Name;
			end
		end
	end
	local v119 = v118['NameDF']:gsub(" Fruit", "");
	if (v118['NameDF'] == "Bird: Falcon Fruit") then
		NameFruit = "Bird-Bird: Falcon";
	elseif (v118['NameDF'] == "Bird: Phoenix Fruit") then
		NameFruit = "Bird-Bird: Phoenix";
	elseif (v118['NameDF'] == "Human: Buddha Fruit") then
		NameFruit = "Human-Human: Buddha";
	else
		NameFruit = v119 .. "-" .. v119;
	end
	for v284, v285 in pairs(Com("F_", "getInventory")) do
		if (v285.Name == NameFruit) then
			v118['HaveFruitInStore'] = true;
		end
	end
	for v286, v287 in pairs(Com("F_", "GetFruits")) do
		if (v287.Name == NameFruit) then
			v118['Price'] = v287.Price;
		end
	end
	return v118;
end
function Abbreviate(v120)
	local v121 = {"K","M","B","T","QD","QT","SXT","SEPT","OCT","NON","DEC","UDEC","DDEC"};
	if (v120 < 1000) then
		return tostring(v120);
	end
	local v122 = math.floor(math.log10(v120)) + 1;
	local v123 = math.min(#v121, math.floor((v122 - 1) / 3));
	local v124 = v120 / math.pow(10, v123 * 3);
	return string.format("%i%s", v124, v121[v123]);
end
function GetIsLandNer(...)
	local v125 = {...};
	local v126 = v125[1];
	local v127;
	if (type(v126) == "vector") then
		v127 = v126;
	elseif (type(v126) == "userdata") then
		v127 = v126.Position;
	elseif (type(v126) == "number") then
		v127 = CFrame.new(unpack(v125));
		v127 = v127.p;
	end
	local v128 = false;
	local v129 = "None";
	local v130;
	if v49 then
		v130 = 1800;
	else
		v130 = 2000;
	end
	if game.Players.LocalPlayer.Team then
		for v428, v429 in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do
			local v430 = (v127 - v429:GetModelCFrame().p).Magnitude;
			if (v430 <= v130) then
				v130 = v430;
				ReturnValue3 = v429:GetModelCFrame();
				v129 = v429.Name;
				v128 = true;
			end
		end
	end
	return v128, v129, ReturnValue3;
end
tablefoundforu = LPH_NO_VIRTUALIZE(function(v131, v132)
	for v288, v289 in pairs(v131) do
		if (v289.CFrame == v132) then
			return true;
		end
	end
	return false;
end);
function tablefound(v133, v134)
	if not v134 then
		return false;
	end
	for v290, v291 in pairs(v133) do
		if (tostring(v291) == v134) then
			return true;
		end
	end
	return false;
end
function CheckEnemySpawn(v135)
	local v136;
	local v137 = {};
	for v292, v293 in pairs(v12) do
		if ((tostring(v135) == tostring(v293.Name)) or tostring(v135):match("^" .. v293.Name)) then
			v136 = v293.CFrame * CFrame.new(2, 50, 0);
			table.insert(v137, v136);
		end
	end
	if (#v137 > 0) then
		for v431, v432 in pairs(v137) do
			if not table.find(v11, v432) then
				if (v13 == false) then
					v13 = true;
					task.delay(0.8, function()
						table.insert(v11, v432);
						v13 = false;
					end);
				end
				return v432;
			end
		end
		task.delay(0.01, function()
			v11 = {};
		end);
		return v11[1];
	end
	for v294, v295 in pairs(game:GetService("CollectionService"):GetTagged("ActiveRig")) do
		if ((v295.Name == v135) and v295:FindFirstChild("Humanoid") and v295:FindFirstChild("HumanoidRootPart") and (v295.Humanoid.Health > 0)) then
			v136 = v295.HumanoidRootPart.CFrame * CFrame.new(2, 50, 0);
		end
	end
	for v296, v297 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
		if ((v297.Name == v135) and v297:FindFirstChild("Humanoid") and v297:FindFirstChild("HumanoidRootPart") and (v297.Humanoid.Health > 0)) then
			v136 = v297.HumanoidRootPart.CFrame * CFrame.new(2, 50, 0);
		end
	end
	return v136;
end
local function v58(v138)
	if (v138 == "Common") then
		RareNumber = 0;
	elseif (v138 == "Uncommon") then
		RareNumber = 1;
	elseif (v138 == "Rare") then
		RareNumber = 2;
	elseif (v138 == "Legendary") then
		RareNumber = 3;
	elseif (v138 == "Mythical") then
		RareNumber = 4;
	else
		return nil;
	end
	return RareNumber;
end
function comma_value(v139)
	local v140 = tostring(v139):reverse():gsub("(%d%d%d)", "%1,");
	v140 = v140:gsub("^,", ""):reverse();
	if (v140:sub(1, 1) == ",") then
		v140 = v140:sub(2);
	end
	return v140;
end
function CheckMasteryWeapon(v141, v142)
	if inmyself(v141) then
		if (tonumber(inmyself(v141):WaitForChild("Level").Value) < tonumber(v142)) then
			return "DownTo";
		elseif (tonumber(inmyself(v141):WaitForChild("Level").Value) > tonumber(v142)) then
			return "UpTo";
		elseif (tonumber(inmyself(v141):WaitForChild("Level").Value) == tonumber(v142)) then
			return "true";
		end
	end
	return "else";
end
function GetMasteryWeaponOnline(v143)
	for v298, v299 in pairs(Com("F_", "getInventory")) do
		if (type(v299) == "table") then
			if (v299.Type == "Sword") then
				if (v299.Name == v143) then
					return v299.Mastery or 1;
				end
			end
		end
	end
end
Com = LPH_NO_VIRTUALIZE(function(v144, v145, v146, v147, v148, v149)
	DieWait();
	local v150 = {v145,v146,v147,v148,v149};
	if tostring(v150[1]):find("Buy") then
		if Usefastattack then
			return;
		else
			task.wait();
		end
	elseif tostring(v150[1]):find("Travel") then
		if (os.time() > tonumber(readfile("a_temp/268.txt"))) then
		else
			return;
		end
	end
	local v151 = game:GetService("ReplicatedStorage").Remotes:FindFirstChild("Comm" .. v144);
	if v151:IsA("RemoteEvent") then
		return v151:FireServer(unpack(v150));
	elseif v151:IsA("RemoteFunction") then
		return v151:InvokeServer(unpack(v150));
	end
end);
FastModeF = LPH_NO_VIRTUALIZE(function()
	if not game:IsLoaded() then
		repeat
			task.wait();
		until game:IsLoaded() 
	end
	game.Players.LocalPlayer.PlayerScripts.WaterCFrame.Disabled = true;
	L_1 = game:GetService("Workspace");
	L_2 = game:GetService("Lighting");
	L_3 = L_1.Terrain;
	L_4 = game:GetService("Players");
	L_5 = L_4.LocalPlayer.Character;
	L_3.WaterWaveSize = 0;
	L_3.WaterWaveSpeed = 0;
	L_3.WaterReflectance = 0;
	L_3.WaterTransparency = 0;
	L_2.GlobalShadows = false;
	L_2.FogEnd = tonumber(8999999488);
	L_2.Brightness = 0;
	settings().Rendering.QualityLevel = "Level01";
	settings().Rendering.GraphicsMode = "NoGraphics";
	sethiddenproperty(L_2, "Technology", "Compatibility");
	for v300, v301 in pairs(L_1:GetDescendants()) do
		if ((v301.ClassName == "Part") or (v301.ClassName == "SpawnLocation") or (v301.ClassName == "WedgePart") or (v301.ClassName == "Terrain") or (v301.ClassName == "MeshPart")) then
			v301.Material = "Plastic";
			v301.Reflectance = 0;
			v301.CastShadow = false;
		elseif ((v301.ClassName == "Decal") or v301:IsA("Texture")) then
			v301.Texture = 0;
			v301.Transparency = 1;
		elseif (v301:IsA("ParticleEmitter") or v301:IsA("Trail")) then
			v301.LightInfluence = 0;
			v301.Texture = 0;
			v301.Lifetime = NumberRange.new(0);
		elseif v301:IsA("Explosion") then
			v301.BlastPressure = 0;
			v301.BlastRadius = 0;
		elseif (v301:IsA("Fire") or v301:IsA("SpotLight") or v301:IsA("Smoke") or v301:IsA("Sparkles")) then
			v301.Enabled = false;
		elseif v301:IsA("MeshPart") then
			v301.Material = "Plastic";
			v301.Reflectance = 0;
			v301.TextureId = 0;
			v301.CastShadow = false;
			v301.RenderFidelity = Enum.RenderFidelity.Performance;
		elseif (v301.ClassName == "SpecialMesh") then
			v301.TextureId = "rbxassetid://0";
		elseif ((v301.ClassName == "Shirt") or (v301.ClassName == "Pants") or (v301.ClassName == "Accessory")) then
			v301:Destroy();
		end
	end
	for v302, v303 in pairs(L_2:GetDescendants()) do
		if (v303:IsA("BlurEffect") or v303:IsA("SunRaysEffect") or v303:IsA("ColorCorrectionEffect") or v303:IsA("BloomEffect") or v303:IsA("DepthOfFieldEffect")) then
			v303.Enabled = false;
		end
	end
	for v304, v305 in pairs(L_2:GetDescendants()) do
		if (v305.ClassName == "Sky") then
			v305:Destroy();
		end
	end
	for v306, v307 in pairs(L_5:GetDescendants()) do
		if ((v307.ClassName == "Shirt") or (v307.ClassName == "Pants") or (v307.ClassName == "Accessory")) then
			v307:Destroy();
		end
	end
	function change(v308)
		pcall(function()
			if ((v308.ClassName == "Shirt") or (v308.ClassName == "Pants") or (v308.ClassName == "Accessory")) then
				v308:Destroy();
			end
			if (v308.ClassName == "Sky") then
				v308:Destroy();
			end
			if (v308:IsA("BlurEffect") or v308:IsA("SunRaysEffect") or v308:IsA("ColorCorrectionEffect") or v308:IsA("BloomEffect") or v308:IsA("DepthOfFieldEffect")) then
				v308.Enabled = false;
			end
			if ((v308.ClassName == "Part") or (v308.ClassName == "SpawnLocation") or (v308.ClassName == "WedgePart") or (v308.ClassName == "Terrain") or (v308.ClassName == "MeshPart")) then
				v308.Material = "Plastic";
				v308.Reflectance = 0;
				v308.CastShadow = false;
			elseif ((v308.ClassName == "Decal") or v308:IsA("Texture")) then
				v308.Texture = 0;
				v308.Transparency = 1;
			elseif (v308:IsA("ParticleEmitter") or v308:IsA("Trail")) then
				v308.LightInfluence = 0;
				v308.Texture = 0;
				v308.Lifetime = NumberRange.new(0);
			elseif v308:IsA("Explosion") then
				v308.BlastPressure = 0;
				v308.BlastRadius = 0;
			elseif (v308:IsA("Fire") or v308:IsA("SpotLight") or v308:IsA("Smoke") or v308:IsA("Sparkles")) then
				v308.Enabled = false;
			elseif v308:IsA("MeshPart") then
				v308.Material = "Plastic";
				v308.Reflectance = 0;
				v308.TextureId = 0;
				v308.CastShadow = false;
				v308.RenderFidelity = Enum.RenderFidelity.Performance;
			elseif (v308.ClassName == "SpecialMesh") then
				v308.TextureId = "rbxassetid://0";
			elseif ((v308.ClassName == "Shirt") or (v308.ClassName == "Pants") or (v308.ClassName == "Accessory")) then
				v308:Destroy();
			end
		end);
	end
	game.DescendantAdded:Connect(function(v309)
		pcall(function()
			change(v309);
		end);
	end);
end);
function InMyNetWork(v164)
	if isnetworkowner then
		return isnetworkowner(v164);
	else
		if ((v164.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 450) then
			return true;
		end
		return false;
	end
end
function StoreMyFruit()
	DieWait();
	if (not HaveDevilFruitSea3 and not StopRaidsPls and not RaidsNow) then
	else
		return;
	end
	HaveFruitInStore = false;
	for v310, v311 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if (string.find(v311.Name, "Fruit") and v311:IsA("Tool")) then
			local v437 = v311.Name:gsub(" Fruit", "");
			if (v311.Name == "Bird: Falcon Fruit") then
				NameFruit = "Bird-Bird: Falcon";
			elseif (v311.Name == "Bird: Phoenix Fruit") then
				NameFruit = "Bird-Bird: Phoenix";
			elseif (v311.Name == "Human: Buddha Fruit") then
				NameFruit = "Human-Human: Buddha";
			else
				NameFruit = v437 .. "-" .. v437;
			end
			for v479, v480 in pairs(Com("F_", "getInventory")) do
				if (v480.Name == NameFruit) then
					HaveFruitInStore = true;
				end
			end
			if (HaveFruitInStore == false) then
				Com("F_", "StoreFruit", NameFruit, inmyself(v311.Name));
			end
			HaveFruitInStore = false;
		end
	end
	HaveFruitInStore = false;
	for v312, v313 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if (string.find(v313.Name, "Fruit") and v313:IsA("Tool")) then
			local v438 = v313.Name:gsub(" Fruit", "");
			if (v313.Name == "Bird: Falcon Fruit") then
				NameFruit = "Bird-Bird: Falcon";
			elseif (v313.Name == "Bird: Phoenix Fruit") then
				NameFruit = "Bird-Bird: Phoenix";
			elseif (v313.Name == "Human: Buddha Fruit") then
				NameFruit = "Human-Human: Buddha";
			else
				NameFruit = v438 .. "-" .. v438;
			end
			for v481, v482 in pairs(Com("F_", "getInventory")) do
				if (v482.Name == NameFruit) then
					HaveFruitInStore = true;
				end
			end
			if (HaveFruitInStore == false) then
				Com("F_", "StoreFruit", NameFruit, inmyself(v313.Name));
			end
			HaveFruitInStore = false;
		end
	end
end
function GetRareFruitText()
	local v165 = {};
	for v314, v315 in pairs(Com("F_", "getInventoryFruits")) do
		if not v315.Price then
			break;
		end
		if (v315.Price >= 1000000) then
			table.insert(v165, v315.Name);
		end
	end
	return v165 or {"None"};
end
function CheckRateFruit(v166)
	for v316, v317 in pairs(Com("F_", "getInventoryFruits")) do
		if not v317.Price then
			break;
		end
		if (v317.Price < v166) then
			return true;
		end
	end
	return false;
end
function HaveFruitToSea3(v167)
	for v318, v319 in pairs(Com("F_", "getInventoryFruits")) do
		if not v319.Price then
			break;
		end
		if ((v319.Price >= 1000000) and not table.find(v167, v319.Name)) then
			return true;
		end
	end
	return false;
end
function CheckAwaken()
	local v168 = Com("F_", "AwakeningChanger", "Check");
	if (v168 == true) then
		local v404 = Com("F_", "getAwakenedAbilities");
		if (Com("F_", "getAwakenedAbilities") and v404) then
			if not v404['V'] then
				return true;
			end
			if (v404['V']['Awakened'] == true) then
				return true;
			end
		end
	elseif (v168 == nil) then
		return true;
	end
	return false;
end
function CheckStun()
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stun") then
		return game:GetService("Players").LocalPlayer.Character.Stun.Value ~= 0;
	end
	return false;
end
function BuyAllHaki()
	if not game:GetService("CollectionService"):HasTag(game.Players.LocalPlayer.Character, "Buso") then
		Com("F_", "BuyHaki", "Buso");
	end
	if (not game:GetService("CollectionService"):HasTag(game.Players.LocalPlayer.Character, "Ken") and v49) then
		Com("F_", "KenTalk", "Buy");
	end
	if not game:GetService("CollectionService"):HasTag(game.Players.LocalPlayer.Character, "Geppo") then
		Com("F_", "BuyHaki", "Geppo");
	end
	if not game:GetService("CollectionService"):HasTag(game.Players.LocalPlayer.Character, "Soru") then
		Com("F_", "BuyHaki", "Soru");
	end
end
function GetMaterial(v169)
	for v320, v321 in pairs(Com("F_", "getInventory")) do
		if (type(v321) == "table") then
			if (v321.Type == "Material") then
				if (v321.Name == v169) then
					return v321.Count;
				end
			end
		end
	end
	return 0;
end
function GetNameRaids(...)
	local v170 = {...};
	local v171 = v170[1] or {HaveFruitInMySelf=false,HaveFruitInStore=false,NameDF="",Price=0};
	local v172 = tostring(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value);
	local v173 = tostring(v172:split("-")[2]);
	if (((v172 ~= nil) or (v172 ~= "")) and (v173 ~= nil)) then
		if table.find({"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Sand","Buddha"}, v173) then
			return v173;
		end
	end
	return "Flame";
end
function GetAwakened()
	local v174 = {};
	if (Com("F_", "AwakeningChanger", "Check") == true) then
		local v405 = Com("F_", "getAwakenedAbilities");
		if (Com("F_", "getAwakenedAbilities") and v405) then
			if not v405['V'] then
				return true;
			end
			for v525, v526 in pairs(v405) do
				if (v526['Awakened'] == true) then
					table.insert(v174, v525);
				end
			end
		end
	end
	return (function()
		if (#v174 > 0) then
			return table.concat(v174, " ,");
		else
			return "";
		end
	end)();
end
function CustomFindFirstChild(v175)
	for v322, v323 in pairs(v175) do
		if game:GetService("Workspace").Enemies:FindFirstChild(v323) then
			return true;
		end
	end
	return false;
end
function GetWeaponMastery(...)
	local v176 = {};
	local v177 = {...};
	for v324, v325 in pairs(v177) do
		for v406, v407 in pairs(Com("F_", "getInventory")) do
			if (type(v407) == "table") then
				if (v407.Name == v325) then
					table.insert(v176, {Name=v407.Name,Mastery=v407.Mastery});
				end
			end
		end
	end
	return v176;
end
function CheckHakiColor(v178)
	local v179 = Com("F_", "getColors");
	for v326, v327 in pairs(v179) do
		if v327.HiddenName:find(v178) then
			if v327.Unlocked then
				return v327.Unlocked;
			end
		end
	end
	return false;
end
function CheckButtonColorOpen()
	local v180 = 0;
	for v328, v329 in pairs(game:GetService("Workspace").Map["Boat Castle"].Summoner.Circle:GetChildren()) do
		if v329:IsA("Part") then
			if (v329:FindFirstChild("Part") and (v329:FindFirstChild("Part").BrickColor == BrickColor.new("Lime green"))) then
				v180 = v180 + 1;
			end
		end
	end
	return v180 == 3;
end
function GetRarityWeaponSword(v181, v182, v183)
	if (v181 == "Common") then
		RareNumber = 0;
	elseif (v181 == "Uncommon") then
		RareNumber = 1;
	elseif (v181 == "Rare") then
		RareNumber = 2;
	elseif (v181 == "Legendary") then
		RareNumber = 3;
	elseif (v181 == "Mythical") then
		RareNumber = 4;
	else
		return "Worng InPut";
	end
	local v184 = {};
	for v330, v331 in pairs(Com("F_", "getInventory")) do
		if (type(v331) == "table") then
			if (v331.Rarity and (v331.Type == "Sword")) then
				if ((not v182 and (tonumber(v331.Rarity) == RareNumber)) or (v182 and (tonumber(v331.Rarity) >= RareNumber))) then
					if v183 then
						table.insert(v184, v331.Name .. " " .. v331.Mastery);
					else
						table.insert(v184, v331.Name);
					end
				end
			end
		end
	end
	if (#v184 > 0) then
		return v184;
	else
		return {};
	end
end
function GetMeleeText(v185, v186)
	if not v186 then
		v186 = ", ";
	end
	local v187 = {"Godhuman","Superhuman","SharkmanKarate","DragonTalon","ElectricClaw","DeathStep"};
	local v188 = {};
	for v332, v333 in pairs(v187) do
		if (Com("F_", "Buy" .. tostring(v333), true) == 1) then
			table.insert(v188, tostring(v333));
			if ((tostring(v333) == "Godhuman") and not v185) then
				break;
			end
		end
		task.wait(0.1);
	end
	if not v185 then
		if table.find(v188, "Godhuman") then
			return "Godhuman";
		end
	end
	if (#v188 > 0) then
		return table.concat(v188, v186);
	else
		return "None";
	end
end
function CheckCanTeleport()
	local v189 = {};
	for v334, v335 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v335:IsA("Tool") then
			if ((v335.ToolTip == "") and v335:FindFirstChild("Handle")) then
				table.insert(v189, v335.Name);
			elseif table.find({"Sweet Chalice","God's Chalice","Holy Torch"}, v335.Name) then
				table.insert(v189, v335.Name);
			end
		end
	end
	for v336, v337 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v337:IsA("Tool") then
			if ((v337.ToolTip == "") and v337:FindFirstChild("Handle")) then
				table.insert(v189, v337.Name);
			elseif table.find({"Sweet Chalice","God's Chalice","Holy Torch"}, v337.Name) then
				table.insert(v189, v337.Name);
			end
		end
	end
	return #v189 == 0;
end
function CheckMobDistanceCollection(v190, v191)
	local v191 = v191 or 1000;
	for v338, v339 in pairs(game:GetService("CollectionService"):GetTagged("ActiveRig")) do
		if (not tostring(v339.Name):match("%[Boss]$") and tostring(v339.Name):find("%[Lv.")) then
			if ((v339.HumanoidRootPart.Position - v190).Magnitude <= v191) then
				return true;
			end
		end
	end
	return false;
end
function CheckMobDistanceWorkspace(v192, v193)
	local v193 = v193 or 1000;
	for v340, v341 in pairs(game.Workspace.Enemies:GetChildren()) do
		if tostring(v341.Name):find("%[Lv.") then
			if ((v341.HumanoidRootPart.Position - v192).Magnitude <= v193) then
				return true;
			end
		end
	end
	return false;
end
function CheckNotNotifyHazeESP()
	for v342, v343 in pairs(game:GetService("CollectionService"):GetTagged("ActiveRig")) do
		if v343:FindFirstChild("HazeESP") then
			return true;
		end
	end
	for v344, v345 in pairs(game.Workspace.Enemies:GetChildren()) do
		if v345:FindFirstChild("HazeESP") then
			return true;
		end
	end
	for v346, v347 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
		if v347:FindFirstChild("HazeESP") then
			return true;
		end
	end
	return false;
end
function CheckNotifyComplete()
	for v348, v349 in pairs(game:GetService("Players")['LocalPlayer'].PlayerGui:FindFirstChild("Notifications"):GetChildren()) do
		if (v349.Name == "NotificationTemplate") then
			if string.lower(v349.Text):find(string.lower("!&gt;")) then
				pcall(function()
					v349:Destroy();
				end);
				return true;
			end
		end
	end
	return false;
end
function CDKCheckAllIn1(v194)
	local v195;
	if game:GetService("Workspace").Map.Turtle.Cursed:FindFirstChild("GoodScroll") then
		v195 = Com("F_", "CDKQuest", "Progress", "Good");
	elseif game:GetService("Workspace").Map.Turtle.Cursed:FindFirstChild("EvilScroll") then
		v195 = Com("F_", "CDKQuest", "Progress", "Evil");
	else
		v195 = Com("F_", "CDKQuest", "Progress");
	end
	if v195.Opened then
		if (v195.Good < 4) then
			Com("F_", "CDKQuest", "StartTrial", "Good");
		elseif (v195.Evil < 4) then
			Com("F_", "CDKQuest", "StartTrial", "Evil");
		end
		if game:GetService("Workspace").Map.Turtle.Cursed:FindFirstChild("GoodScroll") then
			v195 = Com("F_", "CDKQuest", "Progress", "Good");
		elseif game:GetService("Workspace").Map.Turtle.Cursed:FindFirstChild("EvilScroll") then
			v195 = Com("F_", "CDKQuest", "Progress", "Evil");
		else
			v195 = Com("F_", "CDKQuest", "Progress");
		end
	end
	if (v194 == "done") then
		return (v195.Good == 4) and (v195.Evil == 4) and (v195.Finished == true);
	elseif (v194 == "kill boss") then
		return (v195.Good == 4) and (v195.Evil == 4) and not v195.Finished;
	elseif (v194 == "hell") then
		return (v195.Good == -2) and (v195.Finished == false) and (v195.Evil == -5);
	elseif (v194 == "Haze") then
		return (v195.Good == -2) and (v195.Finished == false) and (v195.Evil == -4);
	elseif (v194 == "die") then
		return (v195.Good == -2) and (v195.Finished == false) and (v195.Evil == -3);
	elseif (v194 == "Heaven") then
		return (v195.Good == -5) and (v195.Finished == false) and (v195.Evil == -2);
	elseif (v194 == "pirate") then
		return (v195.Good == -4) and (v195.Finished == false) and (v195.Evil == -2);
	elseif (v194 == "boat") then
		return (v195.Good == -3) and (v195.Finished == false) and (v195.Evil == -2);
	else
		print("BOOm");
		return false;
	end
end
local v59 = {Dai=false,Jer=false,Faji=false};
function RaceAllIn1()
	if ((game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") or (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") or (game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman")) then
	else
		return false;
	end
	local v196 = Com("F_", "Wenlocktoad", "1");
	if (v196 == 0) then
		Com("F_", "Wenlocktoad", "2");
		v196 = Com("F_", "Wenlocktoad", "1");
	end
	if (v196 == 2) then
		Com("F_", "Wenlocktoad", "3");
	elseif (v196 == 1) then
		if (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") then
			return "DoMinkRace";
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") then
			if (havemob("Diamond [Lv. 750] [Boss]") and (v59['Dai'] == false)) then
				return "DoDiamond";
			elseif (havemob("Jeremy [Lv. 850] [Boss]") and (v59['Jer'] == false)) then
				return "DoJeremy";
			elseif (havemob("Fajita [Lv. 925] [Boss]") and (v59['Faji'] == false)) then
				return "DoFajita";
			end
		elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman") then
			return "DoFishmanRace";
		end
	end
	return false;
end
function GetGenshinImg()
	local v197 = v45({Url="https://danbooru.donmai.us/posts/random.json?tags=genshin_impact%20score:%3E=60%20rating:general",Method="GET"}).Body;
	gettableimg = game:GetService("HttpService"):JSONDecode(v197)['file_url'];
	if (gettableimg == nil) then
		GetGenshinImg();
	end
	return gettableimg or "https://cdn.donmai.us/original/e8/6d/e86d7d4b452a470933dd4d709fb8dc1b.jpg";
end
local v60 = false;
local v61 = false;
toTarget = LPH_JIT_MAX(function(...)
	local v199 = {...};
	local v200 = v199[1];
	local v201;
	if (type(v200) == "vector") then
		v201 = CFrame.new(v200);
	elseif (type(v200) == "userdata") then
		v201 = v200;
	elseif (type(v200) == "number") then
		v201 = CFrame.new(unpack(v199));
	end
	DieWait();
	local v202 = (v201.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude;
	local v203;
	local v204;
	local v205 = false;
	for v350, v351 in pairs(v52) do
		local v352 = v351 + Vector3.new(1, 60, 0);
		v204 = (v352 - v201.Position).Magnitude;
		if (v204 < v202) then
			v202 = v204;
			v205 = true;
			v203 = v352;
		end
	end
	if (v60 == false) then
		v60 = true;
		local v408, v409, v410 = GetIsLandNer(v201);
		if (CheckCanTeleport() and ((v205 and ((v203 - v201.Position).Magnitude > 5000)) or ((v205 == false) and ((game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position - v201.Position).Magnitude > 5000))) and v408) then
			if tween then
				tween:Cancel();
				task.wait(0.2);
			end
			repeat
				task.wait();
				game.Players.LocalPlayer.Character:PivotTo(v201);
				task.wait(0.01);
				local v527 = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid");
				if v527 then
					v527:ChangeState(15);
				end
				repeat
					task.wait(0.1);
					game.Players.LocalPlayer.Character:PivotTo(v201);
				until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 
				task.wait(0.3);
			until game:GetService("Players")['LocalPlayer'].Data:FindFirstChild("LastSpawnPoint").Value == tostring(v409) 
			task.wait(0.2);
		elseif (v205 == true) then
			if tween then
				tween:Cancel();
			end
			task.wait();
			Com("F_", "requestEntrance", v203);
			if tween then
				tween:Cancel();
			end
			task.wait(0.2);
		end
		v60 = false;
	end
	local v206 = (v201.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude;
	if (v206 < 300) then
		Speed = 345;
	elseif (v206 < 500) then
		Speed = 385;
	elseif (v206 < 1000) then
		Speed = 355;
	elseif (v206 >= 1000) then
		Speed = 335;
	end
	local v207 = game:service("TweenService");
	local v208 = TweenInfo.new((v201.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude / Speed, Enum.EasingStyle.Linear);
	local v209, v210 = pcall(function()
		tween = v207:Create(game.Players.LocalPlayer.Character['HumanoidRootPart'], v208, {CFrame=v201});
		tween:Play();
	end);
	local v211 = {};
	v211.Stop = function(v354)
		return tween:Cancel();
	end;
	v211.Wait = function(v355)
		return tween.Completed:Wait();
	end;
	return v211;
end);
function ShowDoingStatus(v214)
	task.spawn(function()
		if (v5 == false) then
			v5 = true;
			if not string.find(DoingS:Update().Text, v214) then
				local v528 = "Doing Status : " .. v214;
				for v576 = 1, #v528, 1 do
					DoingS:Update().Text = string.sub(v528, 1, v576);
					task.wait(0.025);
				end
			end
			v5 = false;
		end
	end);
end
pcall(RefreshStatus);
task.spawn(function()
	while task.wait() do
		if (game.Players.LocalPlayer:FindFirstChild("Backpack") and game.Players.LocalPlayer.Character) then
			pcall(RefreshStatus);
			task.wait(math.random(3, 10));
		end
	end
end);
function havemob(v215)
	return game.Workspace.Enemies:FindFirstChild(v215) or game.ReplicatedStorage:FindFirstChild(v215);
end
local v62 = {};
function CheckMobRainBowHaki()
	local v216 = Com("F_", "HornedMan");
	return (tostring(v216):find("Stone") and havemob("Stone [Lv. 1550] [Boss]")) or (tostring(v216):find("Island Empress") and havemob("Island Empress [Lv. 1675] [Boss]")) or (tostring(v216):find("Kilo Admiral") and havemob("Kilo Admiral [Lv. 1750] [Boss]]")) or (tostring(v216):find("Captain Elephant") and havemob("Captain Elephant [Lv. 1875] [Boss]")) or (tostring(v216):find("Beautiful Pirate") and havemob("Beautiful Pirate [Lv. 1950] [Boss]"));
end
pcall(function()
	for v356, v357 in pairs(game.Workspace:GetDescendants()) do
		if (v357.Name == "Lava") then
			v357:Destroy();
		end
	end
end);
spawn(function()
	while task.wait() do
		TeleportType = math.random(1, 5);
		task.wait(0.3);
	end
end);
spawn(function()
	while task.wait() do
		TypeSeabeast = 0;
		task.wait(1);
		TypeSeabeast = 1;
		task.wait(1);
	end
end);
LPH_NO_VIRTUALIZE(function()
	local v217 = getrawmetatable(game);
	local v218 = v217.__index;
	setreadonly(v217, false);
	v217.__index = newcclosure(function(...)
		local v358 = {...};
		if StartKaiTun then
			if SpamSkillSea then
				if ((v358[1] == v46) and (v358[2] == "Hit") and not checkcaller()) then
					return CFrame.new(PosKillSea);
				end
			elseif UseSkillMasteryDevilFruit then
				if ((v358[1] == v46) and (v358[2] == "Hit") and not checkcaller()) then
					return CFrame.new(PositionSkillMasteryDevilFruit);
				end
			elseif (v49 and (v358[1] == v46) and (v358[2] == "Hit") and not checkcaller() and inmyself("Slingshot") and (UsefastattackPlayers == false) and (DoingS:Update().Text == "Doing Status : Skip Farm Level")) then
				return CFrame.new(PositionSling);
			end
		end
		return v218(unpack(v358));
	end);
end)();
local v63 = Com("F_", "GetFruits");
Table_DevilFruitSniper = {};
for v220, v221 in pairs(v63) do
	table.insert(Table_DevilFruitSniper, v221.Name);
end
game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
	task.wait(1);
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
end);
local v64 = tostring(math.random(10000000, 99999999));
local v65 = getfenv();
local v66 = v65.sethiddenproperty or v65.set_hidden_property or v65.set_hidden_prop or v65.sethiddenprop;
spawn(LPH_NO_VIRTUALIZE(function()
	game:GetService("RunService").Stepped:Connect(function()
		local v359 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid");
		local v360 = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart");
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true);
		end
		if v66 then
			v66(game.Players.LocalPlayer, "SimulationRadius", math.huge);
		end
		if (StartKaiTun and not AntiSit) then
			for v483, v484 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
				if (v484:IsA("Model") and ((v484:GetModelCFrame().Position - v360.Position).Magnitude <= 500)) then
					v484.Parent = game:GetService("Workspace").Enemies;
				end
			end
			if ((v359:GetState() == Enum.HumanoidStateType.Seated) or (v359.Health <= 0)) then
				v359.Jump = true;
				v359.Sit = false;
				if v360:FindFirstChild("NoClip" .. v64) then
					v360:FindFirstChild("NoClip" .. v64):Destroy();
				end
			end
			if ((v359.Sit == false) and (v359.Health > 0)) then
				for v580, v581 in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v581:IsA("BasePart") then
						v581.CanCollide = false;
					end
				end
			else
				v359.Sit = false;
			end
			if (not v360:FindFirstChild("NoClip" .. v64) and (v359.Sit == false)) then
				local v532 = Instance.new("BodyVelocity");
				v532.Parent = v360;
				v532.Name = "NoClip" .. v64;
				v532.MaxForce = Vector3.new(math.huge, math.huge, math.huge);
				v532.Velocity = Vector3.new(0, 0, 0);
			end
		elseif v360:FindFirstChild("NoClip" .. v64) then
			v360:FindFirstChild("NoClip" .. v64):Destroy();
		end
	end);
end));
function toAroundTarget(v222)
	if (TeleportType == 1) then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v222 * CFrame.new(0, 30, 1);
	elseif (TeleportType == 2) then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v222 * CFrame.new(0, 1, 30);
	elseif (TeleportType == 3) then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v222 * CFrame.new(1, 1, -30);
	elseif (TeleportType == 4) then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v222 * CFrame.new(30, 1, 0);
	elseif (TeleportType == 5) then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v222 * CFrame.new(-30, 1, 0);
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v222 * CFrame.new(0, 30, 1);
	end
end
function CheckNight()
	if ((tonumber(game:GetService("Lighting").ClockTime) >= 18) and (tonumber(game:GetService("Lighting").ClockTime) <= 23.999999999)) then
	elseif ((tonumber(game:GetService("Lighting").ClockTime) >= 0) and (tonumber(game:GetService("Lighting").ClockTime) < 5)) then
	else
		return false;
	end
	return true;
end
local function v67()
	for v361, v362 in pairs(game:GetService("Workspace").Boats:GetChildren()) do
		if v362:FindFirstChild("Owner") then
			if (tostring(v362.Owner.Value) == game.Players.LocalPlayer.Name) then
				return v362:FindFirstChildOfClass("VehicleSeat");
			end
		end
	end
	return false;
end
local function v68()
	for v363, v364 in pairs(game.Workspace.SeaBeasts:GetChildren()) do
		if v364:FindFirstChild("HumanoidRootPart") then
			return v364;
		end
	end
	return false;
end
function CheckPirateBoat()
	for v365, v366 in pairs(game.Workspace.Enemies:GetChildren()) do
		if ((v366.Name == "PirateBasic") or (v366.Name == "PirateBrigade")) then
			return true;
		end
	end
	return false;
end
function CheckMaterial(v223)
	if v49 then
		if (v223 == "Magma Ore") then
			MaterialMob = {"Military Soldier [Lv. 300]","Military Spy [Lv. 325]"};
			CFrameMonM = {CFrame.new(-5455.29296875, 41.13956069946289, 8464.63671875),CFrame.new(-5783.017578125, 119.99700927734375, 8776.46484375)};
		elseif ((v223 == "Leather") or (v223 == "Scrap Metal")) then
			MaterialMob = {"Brute [Lv. 45]","Pirate [Lv. 35]"};
			CFrameMonM = {Frame.new(-1145, 15, 4350)};
		elseif (v223 == "Angel Wings") then
			MaterialMob = {"God's Guard [Lv. 450]"};
			CFrameMonM = {CFrame.new(-4698, 845, -1912)};
		elseif (v223 == "Fish Tail") then
			MaterialMob = {"Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]"};
			CFrameMonM = {CFrame.new(61891.4609375, 18.508621215820312, 1489.7476806640625),CFrame.new(61891.4609375, 18.508621215820312, 1489.7476806640625),CFrame.new(60927.4765625, 18.508621215820312, 1558.352294921875),CFrame.new(60927.4765625, 18.508621215820312, 1558.352294921875)};
		end
	end
	if v50 then
		if (v223 == "Magma Ore") then
			MaterialMob = {"Magma Ninja [Lv. 1175]"};
			CFrameMonM = {CFrame.new(-5428, 78, -5959)};
		elseif (v223 == "Scrap Metal") then
			MaterialMob = {"Swan Pirate [Lv. 775]"};
			CFrameMonM = {CFrame.new(878, 122, 1235)};
		elseif (v223 == "Radioactive Material") then
			MaterialMob = {"Factory Staff [Lv. 800]"};
			CFrameMonM = {CFrame.new(644.6807250976562, 72.98555755615234, 99.28926849365234),CFrame.new(-112.70913696289062, 149.4581756591797, -265.8367614746094)};
		elseif (v223 == "Vampire Fang") then
			MaterialMob = {"Vampire [Lv. 975]"};
			CFrameMonM = {CFrame.new(-6033, 7, -1317)};
		elseif (v223 == "Mystic Droplet") then
			MaterialMob = {"Water Fighter [Lv. 1450]","Sea Soldier [Lv. 1425]"};
			CFrameMonM = {CFrame.new(-3360.7841796875, 283.960205078125, -10533.2021484375),CFrame.new(-3541.21044921875, 291.1770935058594, -10315.7109375),CFrame.new(-3380.38232421875, 26.98096466064453, -9802.15625),CFrame.new(-2743.450439453125, 82.7505874633789, -9815.638671875)};
		end
	end
	if v51 then
		if (v223 == "Mini Tusk") then
			MaterialMob = {"Mythological Pirate [Lv. 1850]"};
			CFrameMonM = {CFrame.new(-13545, 470, -6917)};
		elseif (v223 == "Scrap Metal") then
			MaterialMob = {"Jungle Pirate [Lv. 1900]"};
			CFrameMonM = {CFrame.new(-12290.34375, 331.7640686035156, -10476.703125),CFrame.new(-11836.0517578125, 331.7640686035156, -10582.94140625)};
		elseif (v223 == "Dragon Scale") then
			MaterialMob = {"Dragon Crew Archer [Lv. 1600]","Dragon Crew Warrior [Lv. 1575]"};
			CFrameMonM = {CFrame.new(6583.35595703125, 378.4302978515625, 59.373531341552734),CFrame.new(6452.26953125, 51.5220832824707, -1016.1766967773438),CFrame.new(6210.6875, 51.54628372192383, -1472.1185302734375)};
		elseif (v223 == "Conjured Cocoa") then
			MaterialMob = {"Cocoa Warrior [Lv. 2300]","Chocolate Bar Battler [Lv. 2325]","Sweet Thief [Lv. 2350]","Candy Rebel [Lv. 2375]"};
			CFrameMonM = {CFrame.new(51.04587173461914, 55.005882263183594, -12310.1484375),CFrame.new(588.1917724609375, 77.18791198730469, -12463.6884765625),CFrame.new(128.77529907226562, 77.24769592285156, -12878.697265625)};
		elseif (v223 == "Demonic Wisp") then
			MaterialMob = {"Demonic Soul [Lv. 2025]"};
			CFrameMonM = {CFrame.new(-9507, 172, 6158)};
		elseif (v223 == "Fish Tail") then
			MaterialMob = {"Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]"};
			CFrameMonM = {CFrame.new(-10993, 332, -8940)};
		elseif (v223 == "Gunpowder") then
			MaterialMob = {"Pistol Billionaire [Lv. 1525]"};
			CFrameMonM = {CFrame.new(-469, 74, 5904)};
		end
	end
end
CheckQuest = LPH_JIT_MAX(function()
	local v224 = game.Players.LocalPlayer.Data.Level.Value;
	if v49 then
		if ((v224 == 1) or (v224 <= 9)) then
			LevelFarm = 1;
			Monster = "Bandit [Lv. 5]";
			NameQuest = "BanditQuest1";
			LevelQuest = 1;
			NameCheckQuest = "Bandit";
			CFrameMyMon = CFrame.new(1145, 17, 1634);
			CFrameQuest = CFrame.new(1060, 17, 1547);
			VectorQuest = Vector3.new(1060, 17, 1547);
		elseif ((v224 == 10) or (v224 <= 14)) then
			LevelFarm = 2;
			Monster = "Monkey [Lv. 14]";
			NameQuest = "JungleQuest";
			LevelQuest = 1;
			NameCheckQuest = "Monkey";
			CFrameMyMon = CFrame.new(-1496, 39, 35);
			CFrameQuest = CFrame.new(-1602, 37, 152);
			VectorQuest = Vector3.new(-1602, 37, 152);
		elseif ((v224 == 15) or (v224 <= 29)) then
			LevelFarm = 3;
			Monster = "Gorilla [Lv. 20]";
			NameQuest = "JungleQuest";
			LevelQuest = 2;
			NameCheckQuest = "Gorilla";
			CFrameMyMon = CFrame.new(-1237, 6, -486);
			CFrameQuest = CFrame.new(-1602, 37, 152);
			VectorQuest = Vector3.new(-1602, 37, 152);
		elseif ((v224 == 30) or (v224 <= 39)) then
			LevelFarm = 4;
			Monster = "Pirate [Lv. 35]";
			NameQuest = "BuggyQuest1";
			LevelQuest = 1;
			NameCheckQuest = "Pirate";
			CFrameMyMon = CFrame.new(-1115, 14, 3938);
			CFrameQuest = CFrame.new(-1140, 5, 3828);
			VectorQuest = Vector3.new(-1140, 5, 3828);
		elseif ((v224 == 40) or (v224 <= 59)) then
			LevelFarm = 5;
			Monster = "Brute [Lv. 45]";
			NameQuest = "BuggyQuest1";
			LevelQuest = 2;
			NameCheckQuest = "Brute";
			CFrameMyMon = CFrame.new(-1145, 15, 4350);
			VectorMon = Vector3.new(-1146, 15, 4350);
			CFrameQuest = CFrame.new(-1140, 5, 3828);
			VectorQuest = Vector3.new(-1140, 5, 3828);
		elseif ((v224 == 60) or (v224 <= 74)) then
			LevelFarm = 6;
			Monster = "Desert Bandit [Lv. 60]";
			NameQuest = "DesertQuest";
			LevelQuest = 1;
			NameCheckQuest = "Desert Bandit";
			CFrameMyMon = CFrame.new(932, 7, 4484);
			CFrameQuest = CFrame.new(897, 7, 4388);
			VectorQuest = Vector3.new(897, 7, 4388);
		elseif ((v224 == 75) or (v224 <= 89)) then
			LevelFarm = 7;
			Monster = "Desert Officer [Lv. 70]";
			NameQuest = "DesertQuest";
			LevelQuest = 2;
			NameCheckQuest = "Desert Officer";
			CFrameMyMon = CFrame.new(1572, 10, 4373);
			VectorMon = Vector3.new(1572, 10, 4373);
			CFrameQuest = CFrame.new(897, 7, 4388);
			VectorQuest = Vector3.new(897, 7, 4388);
		elseif ((v224 == 90) or (v224 <= 99)) then
			LevelFarm = 8;
			Monster = "Snow Bandit [Lv. 90]";
			NameQuest = "SnowQuest";
			LevelQuest = 1;
			NameCheckQuest = "Snow Bandits";
			CFrameMyMon = CFrame.new(1289, 150, -1442);
			VectorMon = Vector3.new(1289, 106, -1442);
			CFrameQuest = CFrame.new(1386, 87, -1297);
			VectorQuest = Vector3.new(1386, 87, -1297);
		elseif ((v224 == 100) or (v224 <= 119)) then
			LevelFarm = 9;
			Monster = "Snowman [Lv. 100]";
			NameQuest = "SnowQuest";
			LevelQuest = 2;
			NameCheckQuest = "Snowman";
			CFrameMyMon = CFrame.new(1289, 150, -1442);
			VectorMon = Vector3.new(1289, 106, -1442);
			CFrameQuest = CFrame.new(1386, 87, -1297);
			VectorQuest = Vector3.new(1386, 87, -1297);
		elseif ((v224 == 120) or (v224 <= 149)) then
			LevelFarm = 10;
			Monster = "Chief Petty Officer [Lv. 120]";
			NameQuest = "MarineQuest2";
			LevelQuest = 1;
			NameCheckQuest = "Chief Petty Officer";
			CFrameMyMon = CFrame.new(-4855, 23, 4308);
			VectorMon = Vector3.new(-4855, 23, 4308);
			CFrameQuest = CFrame.new(-5036, 29, 4325);
			VectorQuest = Vector3.new(-5036, 29, 4325);
		elseif ((v224 == 150) or (v224 <= 174)) then
			LevelFarm = 11;
			Monster = "Sky Bandit [Lv. 150]";
			NameQuest = "SkyQuest";
			LevelQuest = 1;
			NameCheckQuest = "Sky Bandit";
			CFrameMyMon = CFrame.new(-4981, 278, -2830);
			VectorMon = Vector3.new(-4981, 278, -2830);
			CFrameQuest = CFrame.new(-4842, 718, -2623);
			VectorQuest = Vector3.new(-4842, 718, -2623);
		elseif ((v224 == 175) or (v224 <= 189)) then
			LevelFarm = 12;
			Monster = "Dark Master [Lv. 175]";
			NameQuest = "SkyQuest";
			LevelQuest = 2;
			NameCheckQuest = "Dark Master";
			CFrameMyMon = CFrame.new(-5250, 389, -2272);
			VectorMon = Vector3.new(-5250, 389, -2272);
			CFrameQuest = CFrame.new(-4842, 718, -2623);
			VectorQuest = Vector3.new(-4842, 718, -2623);
		elseif ((v224 == 190) or (v224 <= 209)) then
			LevelFarm = 13;
			Monster = "Prisoner [Lv. 190]";
			NameQuest = "PrisonerQuest";
			LevelQuest = 1;
			NameCheckQuest = "8 Prisoners";
			CFrameMyMon = CFrame.new(5411, 96, 690);
			VectorMon = Vector3.new(5411, 96, 690);
			CFrameQuest = CFrame.new(5308, 2, 474);
			VectorQuest = Vector3.new(5308, 2, 474);
		elseif ((v224 == 210) or (v224 <= 249)) then
			LevelFarm = 14;
			Monster = "Dangerous Prisoner [Lv. 210]";
			NameQuest = "PrisonerQuest";
			LevelQuest = 2;
			NameCheckQuest = "Dangerous Prisoner";
			CFrameMyMon = CFrame.new(5411, 96, 690);
			VectorMon = Vector3.new(5411, 96, 690);
			CFrameQuest = CFrame.new(5308, 2, 474);
			VectorQuest = Vector3.new(5308, 2, 474);
		elseif ((v224 == 250) or (v224 <= 274)) then
			LevelFarm = 15;
			Monster = "Toga Warrior [Lv. 250]";
			NameQuest = "ColosseumQuest";
			LevelQuest = 1;
			NameCheckQuest = "Toga Warrior";
			CFrameMyMon = CFrame.new(-1641.4344482421875, 7.415142059326172, -2864.462646484375);
			CFrameQuest = CFrame.new(-1576, 8, -2985);
			VectorQuest = Vector3.new(-1576, 8, -2985);
		elseif ((v224 == 275) or (v224 <= 299)) then
			LevelFarm = 16;
			Monster = "Gladiator [Lv. 275]";
			NameQuest = "ColosseumQuest";
			LevelQuest = 2;
			NameCheckQuest = "Gladiato";
			CFrameMyMon = CFrame.new(-1385.5233154296875, 7.468349456787109, -3163.066650390625);
			VectorMon = Vector3.new(-1278, 8, -3240);
			CFrameQuest = CFrame.new(-1576, 8, -2985);
			VectorQuest = Vector3.new(-1576, 8, -2985);
		elseif ((v224 == 300) or (v224 <= 329)) then
			LevelFarm = 17;
			Monster = "Military Soldier [Lv. 300]";
			NameQuest = "MagmaQuest";
			LevelQuest = 1;
			NameCheckQuest = "Military Soldier";
			CFrameMyMon = CFrame.new(-5408, 11, 8447);
			VectorMon = Vector3.new(-5408, 11, 8447);
			CFrameQuest = CFrame.new(-5316, 12, 8517);
			VectorQuest = Vector3.new(-5316, 12, 8517);
		elseif ((v224 == 330) or (v224 <= 374)) then
			LevelFarm = 18;
			Monster = "Military Spy [Lv. 325]";
			NameQuest = "MagmaQuest";
			LevelQuest = 2;
			NameCheckQuest = "Military Spy";
			CFrameMyMon = CFrame.new(-5815, 84, 8820);
			VectorMon = Vector3.new(-5815, 84, 8820);
			CFrameQuest = CFrame.new(-5316, 12, 8517);
			VectorQuest = Vector3.new(-5316, 12, 8517);
		elseif ((v224 == 375) or (v224 <= 399)) then
			LevelFarm = 19;
			Monster = "Fishman Warrior [Lv. 375]";
			NameQuest = "FishmanQuest";
			LevelQuest = 1;
			NameCheckQuest = "Fishman Warrior";
			CFrameMyMon = CFrame.new(60859, 19, 1501);
			VectorMon = Vector3.new(60859, 19, 1501);
			CFrameQuest = CFrame.new(61123, 19, 1569);
			VectorQuest = Vector3.new(61123, 19, 1569);
		elseif ((v224 == 400) or (v224 <= 449)) then
			LevelFarm = 20;
			Monster = "Fishman Commando [Lv. 400]";
			NameQuest = "FishmanQuest";
			LevelQuest = 2;
			NameCheckQuest = "Fishman Commando";
			CFrameMyMon = CFrame.new(61891, 19, 1470);
			VectorMon = Vector3.new(61891, 19, 1470);
			CFrameQuest = CFrame.new(61123, 19, 1569);
			VectorQuest = Vector3.new(61123, 19, 1569);
		elseif ((v224 == 450) or (v224 <= 474)) then
			LevelFarm = 21;
			Monster = "God's Guard [Lv. 450]";
			NameQuest = "SkyExp1Quest";
			LevelQuest = 1;
			NameCheckQuest = "God's Guards";
			CFrameMyMon = CFrame.new(-4698, 845, -1912);
			VectorMon = Vector3.new(-4698, 845, -1912);
			CFrameQuest = CFrame.new(-4722, 845, -1954);
			VectorQuest = Vector3.new(-4722, 846, -1954);
		elseif ((v224 == 475) or (v224 <= 524)) then
			LevelFarm = 22;
			Monster = "Shanda [Lv. 475]";
			NameQuest = "SkyExp1Quest";
			LevelQuest = 2;
			NameCheckQuest = "Shandas";
			CFrameMyMon = CFrame.new(-7685, 5567, -502);
			VectorMon = Vector3.new(-7685, 5567, -502);
			CFrameQuest = CFrame.new(-7862, 5546, -380);
			VectorQuest = Vector3.new(-7862, 5546, -380);
		elseif ((v224 == 525) or (v224 <= 549)) then
			LevelFarm = 23;
			Monster = "Royal Squad [Lv. 525]";
			NameQuest = "SkyExp2Quest";
			LevelQuest = 1;
			NameCheckQuest = "Royal Squad";
			CFrameMyMon = CFrame.new(-7670, 5607, -1460);
			VectorMon = Vector3.new(-7670, 5607, -1460);
			CFrameQuest = CFrame.new(-7904, 5636, -1412);
			VectorQuest = Vector3.new(-7904, 5636, -1412);
		elseif ((v224 == 550) or (v224 <= 624)) then
			LevelFarm = 24;
			Monster = "Royal Soldier [Lv. 550]";
			NameQuest = "SkyExp2Quest";
			LevelQuest = 2;
			NameCheckQuest = "Royal Soldier";
			CFrameMyMon = CFrame.new(-7828, 5607, -1744);
			VectorMon = Vector3.new(-7828, 5607, -1744);
			CFrameQuest = CFrame.new(-7904, 5636, -1412);
			VectorQuest = Vector3.new(-7904, 5636, -1412);
		elseif ((v224 == 625) or (v224 <= 649)) then
			LevelFarm = 25;
			Monster = "Galley Pirate [Lv. 625]";
			NameQuest = "FountainQuest";
			LevelQuest = 1;
			NameCheckQuest = "Galley Pirate";
			CFrameMyMon = CFrame.new(5589, 45, 3996);
			VectorMon = Vector3.new(5589, 45, 3996);
			CFrameQuest = CFrame.new(5256, 39, 4050);
			VectorQuest = Vector3.new(5256, 39, 4050);
		elseif (v224 >= 650) then
			LevelFarm = 26;
			Monster = "Galley Captain [Lv. 650]";
			NameQuest = "FountainQuest";
			LevelQuest = 2;
			NameCheckQuest = "Galley Captain";
			CFrameMyMon = CFrame.new(5649, 39, 4936);
			VectorMon = Vector3.new(5649, 39, 4936);
			CFrameQuest = CFrame.new(5256, 39, 4050);
			VectorQuest = Vector3.new(5256, 39, 4050);
		end
	end
	if v50 then
		if ((v224 == 700) or (v224 <= 724)) then
			LevelFarm = 1;
			Monster = "Raider [Lv. 700]";
			NameQuest = "Area1Quest";
			LevelQuest = 1;
			NameCheckQuest = "Raider";
			CFrameQuest = CFrame.new(-425, 73, 1837);
			VectorQuest = Vector3.new(-425, 73, 1837);
			CFrameMyMon = CFrame.new(-746, 39, 2390);
			VectorMon = Vector3.new(-746, 39, 2389);
		elseif ((v224 == 725) or (v224 <= 774)) then
			LevelFarm = 2;
			Monster = "Mercenary [Lv. 725]";
			NameQuest = "Area1Quest";
			LevelQuest = 2;
			NameCheckQuest = "Mercenary";
			CFrameQuest = CFrame.new(-425, 73, 1837);
			VectorQuest = Vector3.new(-425, 73, 1837);
			CFrameMyMon = CFrame.new(-874, 141, 1312);
			VectorMon = Vector3.new(-874, 141, 1312);
		elseif ((v224 == 775) or (v224 <= 799)) then
			LevelFarm = 3;
			Monster = "Swan Pirate [Lv. 775]";
			NameQuest = "Area2Quest";
			LevelQuest = 1;
			NameCheckQuest = "Swan Pirate";
			CFrameQuest = CFrame.new(634, 73, 918);
			VectorQuest = Vector3.new(634, 73, 918);
			CFrameMyMon = CFrame.new(878, 122, 1235);
			VectorMon = Vector3.new(878, 122, 1235);
		elseif ((v224 == 800) or (v224 <= 874)) then
			LevelFarm = 4;
			Monster = "Factory Staff [Lv. 800]";
			NameQuest = "Area2Quest";
			LevelQuest = 2;
			NameCheckQuest = "Factory Staff";
			CFrameQuest = CFrame.new(634, 73, 918);
			VectorQuest = Vector3.new(634, 73, 918);
			CFrameMyMon = CFrame.new(295, 73, -56);
			VectorMon = Vector3.new(295, 73, -56);
		elseif ((v224 == 875) or (v224 <= 899)) then
			LevelFarm = 5;
			Monster = "Marine Lieutenant [Lv. 875]";
			NameQuest = "MarineQuest3";
			LevelQuest = 1;
			NameCheckQuest = "Marine Lieutenant";
			CFrameMyMon = CFrame.new(-2806, 73, -3038);
			VectorMon = Vector3.new(-2806, 73, -3038);
			CFrameQuest = CFrame.new(-2443, 73, -3219);
			VectorQuest = Vector3.new(-2443, 73, -3219);
		elseif ((v224 == 900) or (v224 <= 949)) then
			LevelFarm = 6;
			Monster = "Marine Captain [Lv. 900]";
			NameQuest = "MarineQuest3";
			LevelQuest = 2;
			NameCheckQuest = "Marine Captain";
			CFrameMyMon = CFrame.new(-1869, 73, -3320);
			VectorMon = Vector3.new(-1869, 73, -3320);
			CFrameQuest = CFrame.new(-2443, 73, -3219);
			VectorQuest = Vector3.new(-2443, 73, -3219);
		elseif ((v224 == 950) or (v224 <= 974)) then
			LevelFarm = 7;
			Monster = "Zombie [Lv. 950]";
			NameQuest = "ZombieQuest";
			LevelQuest = 1;
			NameCheckQuest = "Zombie";
			CFrameMyMon = CFrame.new(-5736, 126, -728);
			VectorMon = Vector3.new(-5736, 126, -728);
			CFrameQuest = CFrame.new(-5494, 49, -795);
			VectorQuest = Vector3.new(-5494, 49, -794);
		elseif ((v224 == 975) or (v224 <= 999)) then
			LevelFarm = 8;
			Monster = "Vampire [Lv. 975]";
			NameQuest = "ZombieQuest";
			LevelQuest = 2;
			NameCheckQuest = "Vampire";
			CFrameMyMon = CFrame.new(-6033, 7, -1317);
			VectorMon = Vector3.new(-6033, 7, -1317);
			CFrameQuest = CFrame.new(-5494, 49, -795);
			VectorQuest = Vector3.new(-5494, 49, -795);
		elseif ((v224 == 1000) or (v224 <= 1049)) then
			LevelFarm = 9;
			Monster = "Snow Trooper [Lv. 1000]";
			NameQuest = "SnowMountainQuest";
			LevelQuest = 1;
			NameCheckQuest = "Snow Trooper";
			CFrameMyMon = CFrame.new(478, 402, -5362);
			VectorMon = Vector3.new(478, 402, -5362);
			CFrameQuest = CFrame.new(605, 402, -5371);
			VectorQuest = Vector3.new(605, 402, -5371);
		elseif ((v224 == 1050) or (v224 <= 1099)) then
			LevelFarm = 10;
			Monster = "Winter Warrior [Lv. 1050]";
			NameQuest = "SnowMountainQuest";
			LevelQuest = 2;
			NameCheckQuest = "Winter Warrior";
			CFrameMyMon = CFrame.new(1157, 430, -5188);
			VectorMon = Vector3.new(1157, 430, -5188);
			CFrameQuest = CFrame.new(605, 402, -5371);
			VectorQuest = Vector3.new(605, 402, -5371);
		elseif ((v224 == 1100) or (v224 <= 1124)) then
			LevelFarm = 11;
			Monster = "Lab Subordinate [Lv. 1100]";
			NameQuest = "IceSideQuest";
			LevelQuest = 1;
			NameCheckQuest = "Lab Subordinate";
			CFrameMyMon = CFrame.new(-5782, 42, -4484);
			VectorMon = Vector3.new(-5782, 42, -4484);
			CFrameQuest = CFrame.new(-6060, 16, -4905);
			VectorQuest = Vector3.new(-6060, 16, -4905);
		elseif ((v224 == 1125) or (v224 <= 1174)) then
			LevelFarm = 12;
			Monster = "Horned Warrior [Lv. 1125]";
			NameQuest = "IceSideQuest";
			LevelQuest = 2;
			NameCheckQuest = "Horned Warrior";
			CFrameMyMon = CFrame.new(-6406, 24, -5805);
			VectorMon = Vector3.new(-6406, 24, -5805);
			CFrameQuest = CFrame.new(-6060, 16, -4905);
			VectorQuest = Vector3.new(-6060, 16, -4905);
		elseif ((v224 == 1175) or (v224 <= 1199)) then
			LevelFarm = 13;
			Monster = "Magma Ninja [Lv. 1175]";
			NameQuest = "FireSideQuest";
			LevelQuest = 1;
			NameCheckQuest = "Magma Ninja";
			CFrameMyMon = CFrame.new(-5428, 78, -5959);
			VectorMon = Vector3.new(-5428, 78, -5959);
			CFrameQuest = CFrame.new(-5430, 16, -5295);
			VectorQuest = Vector3.new(-5430, 16, -5296);
		elseif ((v224 == 1200) or (v224 <= 1249)) then
			LevelFarm = 14;
			Monster = "Lava Pirate [Lv. 1200]";
			NameQuest = "FireSideQuest";
			LevelQuest = 2;
			NameCheckQuest = "Lava Pirate";
			CFrameMyMon = CFrame.new(-5270, 42, -4800);
			VectorMon = Vector3.new(-5270, 42, -4800);
			CFrameQuest = CFrame.new(-5430, 16, -5295);
			VectorQuest = Vector3.new(-5430, 16, -5296);
		elseif ((v224 == 1250) or (v224 <= 1274)) then
			LevelFarm = 15;
			Monster = "Ship Deckhand [Lv. 1250]";
			NameQuest = "ShipQuest1";
			LevelQuest = 1;
			NameCheckQuest = "Ship Deckhand";
			CFrameMyMon = CFrame.new(1198, 126, 33031);
			VectorMon = Vector3.new(1198, 126, 33031);
			CFrameQuest = CFrame.new(1038, 125, 32913);
			VectorQuest = Vector3.new(1038, 125, 32913);
		elseif ((v224 == 1275) or (v224 <= 1299)) then
			LevelFarm = 16;
			Monster = "Ship Engineer [Lv. 1275]";
			NameQuest = "ShipQuest1";
			LevelQuest = 2;
			NameCheckQuest = "Ship Engineer";
			CFrameMyMon = CFrame.new(918, 44, 32787);
			VectorMon = Vector3.new(918, 44, 32787);
			CFrameQuest = CFrame.new(1038, 125, 32913);
			VectorQuest = Vector3.new(1038, 125, 32913);
		elseif ((v224 == 1300) or (v224 <= 1324)) then
			LevelFarm = 17;
			Monster = "Ship Steward [Lv. 1300]";
			NameQuest = "ShipQuest2";
			LevelQuest = 1;
			NameCheckQuest = "Ship Steward";
			CFrameMyMon = CFrame.new(915, 130, 33419);
			VectorMon = Vector3.new(915, 130, 33419);
			CFrameQuest = CFrame.new(969, 125, 33245);
			VectorQuest = Vector3.new(969, 125, 33245);
		elseif ((v224 == 1325) or (v224 <= 1349)) then
			LevelFarm = 18;
			Monster = "Ship Officer [Lv. 1325]";
			NameQuest = "ShipQuest2";
			LevelQuest = 2;
			NameCheckQuest = "Ship Officer";
			CFrameMyMon = CFrame.new(916, 181, 33335);
			VectorMon = Vector3.new(916, 181, 33335);
			CFrameQuest = CFrame.new(969, 125, 33245);
			VectorQuest = Vector3.new(969, 125, 33245);
		elseif ((v224 == 1350) or (v224 <= 1374)) then
			LevelFarm = 19;
			Monster = "Arctic Warrior [Lv. 1350]";
			NameQuest = "FrostQuest";
			LevelQuest = 1;
			NameCheckQuest = "Arctic Warrior";
			CFrameMyMon = CFrame.new(6038, 29, -6231);
			VectorMon = Vector3.new(6038, 29, -6231);
			VectorQuest = Vector3.new(5669, 28, -6482);
			CFrameQuest = CFrame.new(5669, 28, -6482);
		elseif ((v224 == 1375) or (v224 <= 1424)) then
			LevelFarm = 20;
			Monster = "Snow Lurker [Lv. 1375]";
			NameQuest = "FrostQuest";
			LevelQuest = 2;
			NameCheckQuest = "Snow Lurker";
			CFrameMyMon = CFrame.new(5560, 42, -6826);
			VectorMon = Vector3.new(5560, 42, -6826);
			VectorQuest = Vector3.new(5669, 28, -6482);
			CFrameQuest = CFrame.new(5669, 28, -6482);
		elseif ((v224 == 1425) or (v224 <= 1449)) then
			LevelFarm = 21;
			Monster = "Sea Soldier [Lv. 1425]";
			NameQuest = "ForgottenQuest";
			LevelQuest = 1;
			NameCheckQuest = "Sea Soldier";
			CFrameMyMon = CFrame.new(-3022, 16, -9722);
			VectorMon = Vector3.new(-3022, 16, -9722);
			CFrameQuest = CFrame.new(-3054, 237, -10148);
			VectorQuest = Vector3.new(-3054, 237, -10148);
		elseif (v224 >= 1450) then
			LevelFarm = 22;
			Monster = "Water Fighter [Lv. 1450]";
			NameQuest = "ForgottenQuest";
			LevelQuest = 2;
			NameCheckQuest = "Water Fighter";
			CFrameMyMon = CFrame.new(-3385, 239, -10542);
			VectorMon = Vector3.new(-3385, 239, -10542);
			CFrameQuest = CFrame.new(-3054, 237, -10148);
			VectorQuest = Vector3.new(-3054, 237, -10148);
		end
	end
	if v51 then
		if ((v224 == 1500) or (v224 <= 1524)) then
			LevelFarm = 1;
			Monster = "Pirate Millionaire [Lv. 1500]";
			NameQuest = "PiratePortQuest";
			LevelQuest = 1;
			NameCheckQuest = "Pirate Millionaire";
			CFrameMyMon = CFrame.new(-373, 75, 5550);
			VectorMon = Vector3.new(-373, 75, 5550);
			CFrameQuest = CFrame.new(-288, 44, 5576);
			VectorQuest = Vector3.new(-288, 44, 5576);
		elseif ((v224 == 1525) or (v224 <= 1574)) then
			LevelFarm = 2;
			Monster = "Pistol Billionaire [Lv. 1525]";
			NameQuest = "PiratePortQuest";
			LevelQuest = 2;
			NameCheckQuest = "Pistol Billionaire";
			CFrameMyMon = CFrame.new(-469, 74, 5904);
			VectorMon = Vector3.new(-469, 74, 5904);
			CFrameQuest = CFrame.new(-288, 44, 5576);
			VectorQuest = Vector3.new(-288, 44, 5576);
		elseif ((v224 == 1575) or (v224 <= 1599)) then
			LevelFarm = 3;
			Monster = "Dragon Crew Warrior [Lv. 1575]";
			NameQuest = "AmazonQuest";
			LevelQuest = 1;
			NameCheckQuest = "Dragon Crew Warrior";
			CFrameMyMon = CFrame.new(6339, 52, -1213);
			VectorMon = Vector3.new(6338, 52, -1213);
			CFrameQuest = CFrame.new(5835, 52, -1105);
			VectorQuest = Vector3.new(5835, 52, -1105);
		elseif ((v224 == 1600) or (v224 <= 1624)) then
			LevelFarm = 4;
			Monster = "Dragon Crew Archer [Lv. 1600]";
			NameQuest = "AmazonQuest";
			LevelQuest = 2;
			NameCheckQuest = "Dragon Crew Archer";
			CFrameMyMon = CFrame.new(6594, 383, 139);
			VectorMon = Vector3.new(6594, 383, 139);
			CFrameQuest = CFrame.new(5835, 52, -1105);
			VectorQuest = Vector3.new(5835, 52, -1105);
		elseif ((v224 == 1625) or (v224 <= 1649)) then
			LevelFarm = 5;
			Monster = "Female Islander [Lv. 1625]";
			NameQuest = "AmazonQuest2";
			LevelQuest = 1;
			NameCheckQuest = "Female Islander";
			CFrameMyMon = CFrame.new(5308, 819, 1047);
			VectorMon = Vector3.new(5308, 819, 1047);
			CFrameQuest = CFrame.new(5443, 602, 751);
			VectorQuest = Vector3.new(5443, 602, 751);
		elseif ((v224 == 1650) or (v224 <= 1699)) then
			LevelFarm = 6;
			Monster = "Giant Islander [Lv. 1650]";
			NameQuest = "AmazonQuest2";
			LevelQuest = 2;
			NameCheckQuest = "Giant Islanders";
			CFrameMyMon = CFrame.new(4951, 602, -68);
			VectorMon = Vector3.new(4951, 602, -68);
			CFrameQuest = CFrame.new(5443, 602, 751);
			VectorQuest = Vector3.new(5443, 602, 751);
		elseif ((v224 == 1700) or (v224 <= 1724)) then
			LevelFarm = 7;
			Monster = "Marine Commodore [Lv. 1700]";
			NameQuest = "MarineTreeIsland";
			LevelQuest = 1;
			NameCheckQuest = "Marine Commodore";
			CFrameMyMon = CFrame.new(2447, 73, -7470);
			VectorMon = Vector3.new(2447, 73, -7470);
			CFrameQuest = CFrame.new(2180, 29, -6737);
			VectorQuest = Vector3.new(2180, 29, -6737);
		elseif ((v224 == 1725) or (v224 <= 1774)) then
			LevelFarm = 8;
			Monster = "Marine Rear Admiral [Lv. 1725]";
			NameQuest = "MarineTreeIsland";
			LevelQuest = 2;
			NameCheckQuest = "Marine Rear Admiral";
			CFrameMyMon = CFrame.new(3671, 161, -6932);
			VectorMon = Vector3.new(3671, 161, -6932);
			CFrameQuest = CFrame.new(2180, 29, -6737);
			VectorQuest = Vector3.new(2180, 29, -6737);
		elseif ((v224 == 1775) or (v224 <= 1800)) then
			LevelFarm = 9;
			Monster = "Fishman Raider [Lv. 1775]";
			NameQuest = "DeepForestIsland3";
			LevelQuest = 1;
			NameCheckQuest = "Fishman Raider";
			CFrameMyMon = CFrame.new(-10560, 332, -8466);
			VectorMon = Vector3.new(-10560, 332, -8466);
			CFrameQuest = CFrame.new(-10584, 332, -8758);
			VectorQuest = Vector3.new(-10584, 332, -8758);
		elseif ((v224 == 1800) or (v224 <= 1824)) then
			LevelFarm = 10;
			Monster = "Fishman Captain [Lv. 1800]";
			NameQuest = "DeepForestIsland3";
			LevelQuest = 2;
			NameCheckQuest = "Fishman Captain";
			CFrameMyMon = CFrame.new(-10993, 332, -8940);
			VectorMon = Vector3.new(-10993, 332, -8940);
			CFrameQuest = CFrame.new(-10584, 332, -8758);
			VectorQuest = Vector3.new(-10584, 332, -8758);
		elseif ((v224 == 1825) or (v224 <= 1849)) then
			LevelFarm = 11;
			Monster = "Forest Pirate [Lv. 1825]";
			NameQuest = "DeepForestIsland";
			LevelQuest = 1;
			NameCheckQuest = "Forest Pirate";
			CFrameMyMon = CFrame.new(-13479, 333, -7905);
			VectorMon = Vector3.new(-13479, 333, -7905);
			CFrameQuest = CFrame.new(-13232, 333, -7627);
			VectorQuest = Vector3.new(-13232, 333, -7627);
		elseif ((v224 == 1850) or (v224 <= 1899)) then
			LevelFarm = 12;
			Monster = "Mythological Pirate [Lv. 1850]";
			NameQuest = "DeepForestIsland";
			LevelQuest = 2;
			NameCheckQuest = "Mythological Pirate";
			CFrameMyMon = CFrame.new(-13545, 470, -6917);
			VectorMon = Vector3.new(-13545, 470, -6917);
			CFrameQuest = CFrame.new(-13232, 333, -7627);
			VectorQuest = Vector3.new(-13232, 333, -7627);
		elseif ((v224 == 1900) or (v224 <= 1924)) then
			LevelFarm = 13;
			Monster = "Jungle Pirate [Lv. 1900]";
			NameQuest = "DeepForestIsland2";
			LevelQuest = 1;
			NameCheckQuest = "Jungle Pirate";
			CFrameMyMon = CFrame.new(-12107, 332, -10549);
			VectorMon = Vector3.new(-12106, 332, -10549);
			CFrameQuest = CFrame.new(-12684, 391, -9902);
			VectorQuest = Vector3.new(-12684, 391, -9902);
		elseif ((v224 == 1925) or (v224 <= 1974)) then
			LevelFarm = 14;
			Monster = "Musketeer Pirate [Lv. 1925]";
			NameQuest = "DeepForestIsland2";
			LevelQuest = 2;
			NameCheckQuest = "Musketeer Pirate";
			CFrameMyMon = CFrame.new(-13286, 392, -9769);
			VectorMon = Vector3.new(-13286, 392, -9768);
			CFrameQuest = CFrame.new(-12684, 391, -9902);
			VectorQuest = Vector3.new(-12684, 391, -9902);
		elseif ((v224 == 1975) or (v224 <= 1999)) then
			LevelFarm = 15;
			Monster = "Reborn Skeleton [Lv. 1975]";
			NameQuest = "HauntedQuest1";
			LevelQuest = 1;
			NameCheckQuest = "Reborn Skeleton";
			CFrameMyMon = CFrame.new(-8760, 142, 6039);
			VectorMon = Vector3.new(-8760, 142, 6039);
			CFrameQuest = CFrame.new(-9482, 142, 5567);
			VectorQuest = Vector3.new(-9482, 142, 5567);
		elseif ((v224 == 2000) or (v224 <= 2024)) then
			LevelFarm = 16;
			Monster = "Living Zombie [Lv. 2000]";
			NameQuest = "HauntedQuest1";
			LevelQuest = 2;
			NameCheckQuest = "Living Zombie";
			CFrameMyMon = CFrame.new(-10144, 140, 5932);
			VectorMon = Vector3.new(-10144, 140, 5932);
			CFrameQuest = CFrame.new(-9482, 142, 5567);
			VectorQuest = Vector3.new(-9482, 142, 5567);
		elseif ((v224 == 2025) or (v224 <= 2049)) then
			LevelFarm = 17;
			Monster = "Demonic Soul [Lv. 2025]";
			NameQuest = "HauntedQuest2";
			LevelQuest = 1;
			NameCheckQuest = "Demonic Soul";
			CFrameMyMon = CFrame.new(-9507, 172, 6158);
			VectorMon = Vector3.new(-9506, 172, 6158);
			CFrameQuest = CFrame.new(-9513, 172, 6079);
			VectorQuest = Vector3.new(-9513, 172, 6079);
		elseif ((v224 == 2050) or (v224 <= 2074)) then
			LevelFarm = 18;
			Monster = "Posessed Mummy [Lv. 2050]";
			NameQuest = "HauntedQuest2";
			LevelQuest = 2;
			NameCheckQuest = "Posessed Mummy";
			CFrameMyMon = CFrame.new(-9577, 6, 6223);
			VectorMon = Vector3.new(-9577, 6, 6223);
			CFrameQuest = CFrame.new(-9513, 172, 6079);
			VectorQuest = Vector3.new(-9513, 172, 6079);
		elseif ((v224 == 2075) or (v224 <= 2099)) then
			LevelFarm = 19;
			Monster = "Peanut Scout [Lv. 2075]";
			NameQuest = "NutsIslandQuest";
			LevelQuest = 1;
			NameCheckQuest = "Peanut Scout";
			CFrameMyMon = CFrame.new(-2124, 123, -10435);
			VectorMon = Vector3.new(-2124, 123, -10435);
			CFrameQuest = CFrame.new(-2104, 38, -10192);
			VectorQuest = Vector3.new(-2104, 38, -10192);
		elseif ((v224 == 2100) or (v224 <= 2124)) then
			LevelFarm = 20;
			Monster = "Peanut President [Lv. 2100]";
			NameQuest = "NutsIslandQuest";
			LevelQuest = 2;
			NameCheckQuest = "Peanut President";
			CFrameMyMon = CFrame.new(-2124, 123, -10435);
			VectorMon = Vector3.new(-2124, 123, -10435);
			CFrameQuest = CFrame.new(-2104, 38, -10192);
			VectorQuest = Vector3.new(-2104, 38, -10192);
		elseif ((v224 == 2125) or (v224 <= 2149)) then
			LevelFarm = 21;
			Monster = "Ice Cream Chef [Lv. 2125]";
			NameQuest = "IceCreamIslandQuest";
			LevelQuest = 1;
			NameCheckQuest = "Ice Cream Chef";
			CFrameMyMon = CFrame.new(-641, 127, -11062);
			VectorMon = Vector3.new(-641, 127, -11062);
			CFrameQuest = CFrame.new(-822, 66, -10965);
			VectorQuest = Vector3.new(-822, 66, -10965);
		elseif ((v224 == 2150) or (v224 <= 2199)) then
			LevelFarm = 22;
			Monster = "Ice Cream Commander [Lv. 2150]";
			NameQuest = "IceCreamIslandQuest";
			LevelQuest = 2;
			NameCheckQuest = "Ice Cream Commander";
			CFrameMyMon = CFrame.new(-641, 127, -11062);
			VectorMon = Vector3.new(-641, 127, -11062);
			CFrameQuest = CFrame.new(-822, 66, -10965);
			VectorQuest = Vector3.new(-822, 66, -10965);
		elseif ((v224 == 2200) or (v224 <= 2224)) then
			LevelFarm = 23;
			Monster = "Cookie Crafter [Lv. 2200]";
			NameQuest = "CakeQuest1";
			LevelQuest = 1;
			NameCheckQuest = "Cookie Crafter";
			CFrameMyMon = CFrame.new(-2365, 38, -12099);
			VectorMon = Vector3.new(-2365, 38, -12099);
			CFrameQuest = CFrame.new(-2020, 38, -12025);
			VectorQuest = Vector3.new(-2020, 38, -12025);
		elseif ((v224 == 2225) or (v224 <= 2249)) then
			LevelFarm = 24;
			Monster = "Cake Guard [Lv. 2225]";
			NameQuest = "CakeQuest1";
			LevelQuest = 2;
			NameCheckQuest = "Cake Guard";
			CFrameMyMon = CFrame.new(-1651, 38, -12308);
			VectorMon = Vector3.new(-1651, 38, -12308);
			CFrameQuest = CFrame.new(-2020, 38, -12025);
			VectorQuest = Vector3.new(-2020, 38, -12025);
		elseif ((v224 == 2250) or (v224 <= 2274)) then
			LevelFarm = 25;
			Monster = "Baking Staff [Lv. 2250]";
			NameQuest = "CakeQuest2";
			LevelQuest = 1;
			NameCheckQuest = "Baking Staff";
			CFrameMyMon = CFrame.new(-1870, 38, -12938);
			VectorMon = Vector3.new(-1870, 38, -12938);
			CFrameQuest = CFrame.new(-1926, 38, -12850);
			VectorQuest = Vector3.new(-1926, 38, -12850);
		elseif ((v224 == 2275) or (v224 <= 2300)) then
			LevelFarm = 26;
			Monster = "Head Baker [Lv. 2275]";
			NameQuest = "CakeQuest2";
			LevelQuest = 2;
			NameCheckQuest = "Head Baker";
			CFrameMyMon = CFrame.new(-1926, 88, -12850);
			VectorMon = CFrame.new(-1870, 38, -12938);
			CFrameQuest = CFrame.new(-1926, 38, -12850);
			VectorQuest = Vector3.new(-1926, 38, -12850);
		elseif ((v224 == 2300) or (v224 <= 2324)) then
			LevelFarm = 27;
			Monster = "Cocoa Warrior [Lv. 2300]";
			NameQuest = "ChocQuest1";
			LevelQuest = 1;
			NameCheckQuest = "Cocoa Warrior";
			CFrameMyMon = CFrame.new(79.4172134399414, 73.42101287841797, -12310.0205078125);
			CFrameQuest = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1);
		elseif ((v224 == 2325) or (v224 <= 2349)) then
			LevelFarm = 28;
			Monster = "Chocolate Bar Battler [Lv. 2325]";
			NameQuest = "ChocQuest1";
			LevelQuest = 2;
			NameCheckQuest = "Chocolate Bar Battler";
			CFrameMyMon = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625);
			CFrameQuest = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1);
		elseif ((v224 == 2350) or (v224 <= 2374)) then
			LevelFarm = 29;
			Monster = "Sweet Thief [Lv. 2350]";
			NameQuest = "ChocQuest2";
			LevelQuest = 1;
			NameCheckQuest = "Sweet Thief";
			CFrameMyMon = CFrame.new(71.89511108398438, 77.21478271484375, -12632.435546875);
			CFrameQuest = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998);
		elseif ((v224 == 2375) or (v224 <= 2399)) then
			LevelFarm = 30;
			Monster = "Candy Rebel [Lv. 2375]";
			NameQuest = "ChocQuest2";
			LevelQuest = 2;
			NameCheckQuest = "Candy Rebel";
			CFrameMyMon = CFrame.new(134.3748016357422, 77.21473693847656, -12882.1650390625);
			CFrameQuest = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998);
		elseif ((v224 == 2400) or (v224 <= 2424)) then
			LevelFarm = 31;
			Monster = "Candy Pirate [Lv. 2400]";
			NameQuest = "CandyQuest1";
			LevelQuest = 1;
			NameCheckQuest = "Candy Pirate";
			CFrameMyMon = CFrame.new(-1271.6993408203125, 139.93331909179688, -14354.8515625);
			CFrameQuest = CFrame.new(-1147.6552734375, 17.82676887512207, -14447.7099609375);
		elseif ((v224 == 2425) or (v224 <= 2449)) then
			LevelFarm = 32;
			Monster = "Snow Demon [Lv. 2425]";
			NameQuest = "CandyQuest1";
			LevelQuest = 2;
			NameCheckQuest = "Snow Demon";
			CFrameMyMon = CFrame.new(-850.6035766601562, 14.933446884155273, -14326.2763671875);
			CFrameQuest = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099);
		elseif ((v224 == 2450) or (v224 <= 2474)) then
			LevelFarm = 33;
			Monster = "Isle Outlaw [Lv. 2450]";
			NameQuest = "TikiQuest1";
			LevelQuest = 1;
			NameCheckQuest = "Isle Outlaw";
			CFrameMyMon = CFrame.new(-16277.9599609375, 94.06755828857422, -168.73194885253906);
			CFrameQuest = CFrame.new(-16545.927734375, 55.68635559082031, -173.01036071777344);
		elseif ((v224 == 2475) or (v224 <= 2499)) then
			LevelFarm = 34;
			Monster = "Island Boy [Lv. 2475]";
			NameQuest = "TikiQuest1";
			LevelQuest = 2;
			NameCheckQuest = "Island Boy";
			CFrameMyMon = CFrame.new(-16749.416015625, 125.9124755859375, -272.1277770996094);
			CFrameQuest = CFrame.new(-16545.927734375, 55.68635559082031, -173.01036071777344);
		elseif ((v224 == 2500) or (v224 <= 2524)) then
			LevelFarm = 35;
			Monster = "Sun-kissed Warrior [Lv. 2500]";
			NameQuest = "TikiQuest2";
			LevelQuest = 1;
			NameCheckQuest = "kissed Warrior";
			CFrameMyMon = CFrame.new(-16277.009765625, 68.78734588623047, 1041.3009033203125);
			CFrameQuest = CFrame.new(-16538.888671875, 55.68632888793945, 1051.730712890625);
		elseif (v224 >= 2525) then
			LevelFarm = 36;
			Monster = "Isle Champion [Lv. 2525]";
			NameQuest = "TikiQuest2";
			LevelQuest = 2;
			NameCheckQuest = "Isle Champion";
			CFrameMyMon = CFrame.new(-16743.2421875, 137.21322631835938, 1148.2789306640625);
			CFrameQuest = CFrame.new(-16538.888671875, 55.68632888793945, 1051.730712890625);
		end
	end
	CFrameMon = CheckEnemySpawn(Monster) or CFrameMyMon;
end);
CheckOldQuest = LPH_JIT_MAX(function(v225)
	if v49 then
		if (v225 == 1) then
			Monster = "Bandit [Lv. 5]";
			NameQuest = "BanditQuest1";
			LevelQuest = 1;
			NameCheckQuest = "Bandit";
			CFrameMyMon = CFrame.new(1145, 17, 1634);
			VectorMon = Vector3.new(1145, 17, 1634);
			CFrameQuest = CFrame.new(1060, 17, 1547);
			VectorQuest = Vector3.new(1060, 17, 1547);
		elseif (v225 == 2) then
			Monster = "Monkey [Lv. 14]";
			NameQuest = "JungleQuest";
			LevelQuest = 1;
			NameCheckQuest = "Monkey";
			CFrameMyMon = CFrame.new(-1496, 39, 35);
			VectorMon = Vector3.new(-1496, 39, 35);
			CFrameQuest = CFrame.new(-1602, 37, 152);
			VectorQuest = Vector3.new(-1602, 37, 152);
		elseif (v225 == 3) then
			Monster = "Gorilla [Lv. 20]";
			NameQuest = "JungleQuest";
			LevelQuest = 2;
			NameCheckQuest = "Gorilla";
			CFrameMyMon = CFrame.new(-1237, 6, -486);
			VectorMon = Vector3.new(-1237, 7, -486);
			CFrameQuest = CFrame.new(-1602, 37, 152);
			VectorQuest = Vector3.new(-1602, 37, 152);
		elseif (v225 == 4) then
			Monster = "Pirate [Lv. 35]";
			NameQuest = "BuggyQuest1";
			LevelQuest = 1;
			NameCheckQuest = "Pirate";
			CFrameMyMon = CFrame.new(-1115, 14, 3938);
			VectorMon = Vector3.new(-1115, 14, 3938);
			CFrameQuest = CFrame.new(-1140, 5, 3828);
			VectorQuest = Vector3.new(-1140, 5, 3828);
		elseif (v225 == 5) then
			Monster = "Brute [Lv. 45]";
			NameQuest = "BuggyQuest1";
			LevelQuest = 2;
			NameCheckQuest = "Brute";
			CFrameMyMon = CFrame.new(-1145, 15, 4350);
			VectorMon = Vector3.new(-1146, 15, 4350);
			CFrameQuest = CFrame.new(-1140, 5, 3828);
			VectorQuest = Vector3.new(-1140, 5, 3828);
		elseif (v225 == 6) then
			Monster = "Desert Bandit [Lv. 60]";
			NameQuest = "DesertQuest";
			LevelQuest = 1;
			NameCheckQuest = "Desert Bandit";
			CFrameMyMon = CFrame.new(932, 7, 4484);
			VectorMon = Vector3.new(932, 7, 4484);
			CFrameQuest = CFrame.new(897, 7, 4388);
			VectorQuest = Vector3.new(897, 7, 4388);
		elseif (v225 == 7) then
			Monster = "Desert Officer [Lv. 70]";
			NameQuest = "DesertQuest";
			LevelQuest = 2;
			NameCheckQuest = "Desert Officer";
			CFrameMyMon = CFrame.new(1572, 10, 4373);
			VectorMon = Vector3.new(1572, 10, 4373);
			CFrameQuest = CFrame.new(897, 7, 4388);
			VectorQuest = Vector3.new(897, 7, 4388);
		elseif (v225 == 8) then
			Monster = "Snow Bandit [Lv. 90]";
			NameQuest = "SnowQuest";
			LevelQuest = 1;
			NameCheckQuest = "Snow Bandits";
			CFrameMyMon = CFrame.new(1289, 150, -1442);
			VectorMon = Vector3.new(1289, 106, -1442);
			CFrameQuest = CFrame.new(1386, 87, -1297);
			VectorQuest = Vector3.new(1386, 87, -1297);
		elseif (v225 == 9) then
			Monster = "Snowman [Lv. 100]";
			NameQuest = "SnowQuest";
			LevelQuest = 2;
			NameCheckQuest = "Snowman";
			CFrameMyMon = CFrame.new(1289, 150, -1442);
			VectorMon = Vector3.new(1289, 106, -1442);
			CFrameQuest = CFrame.new(1386, 87, -1297);
			VectorQuest = Vector3.new(1386, 87, -1297);
		elseif (v225 == 10) then
			Monster = "Chief Petty Officer [Lv. 120]";
			NameQuest = "MarineQuest2";
			LevelQuest = 1;
			NameCheckQuest = "Chief Petty Officer";
			CFrameMyMon = CFrame.new(-4855, 23, 4308);
			VectorMon = Vector3.new(-4855, 23, 4308);
			CFrameQuest = CFrame.new(-5036, 29, 4325);
			VectorQuest = Vector3.new(-5036, 29, 4325);
		elseif (v225 == 11) then
			Monster = "Sky Bandit [Lv. 150]";
			NameQuest = "SkyQuest";
			LevelQuest = 1;
			NameCheckQuest = "Sky Bandit";
			CFrameMyMon = CFrame.new(-4981, 278, -2830);
			VectorMon = Vector3.new(-4981, 278, -2830);
			CFrameQuest = CFrame.new(-4842, 718, -2623);
			VectorQuest = Vector3.new(-4842, 718, -2623);
		elseif (v225 == 12) then
			Monster = "Dark Master [Lv. 175]";
			NameQuest = "SkyQuest";
			LevelQuest = 2;
			NameCheckQuest = "Dark Master";
			CFrameMyMon = CFrame.new(-5250, 389, -2272);
			VectorMon = Vector3.new(-5250, 389, -2272);
			CFrameQuest = CFrame.new(-4842, 718, -2623);
			VectorQuest = Vector3.new(-4842, 718, -2623);
		elseif (v225 == 13) then
			Monster = "Prisoner [Lv. 190]";
			NameQuest = "PrisonerQuest";
			LevelQuest = 1;
			NameCheckQuest = "8 Prisoner";
			CFrameMyMon = CFrame.new(5411, 96, 690);
			VectorMon = Vector3.new(5411, 96, 690);
			CFrameQuest = CFrame.new(5308, 2, 474);
			VectorQuest = Vector3.new(5308, 2, 474);
		elseif (v225 == 14) then
			Monster = "Dangerous Prisoner [Lv. 210]";
			NameQuest = "PrisonerQuest";
			LevelQuest = 2;
			NameCheckQuest = "Dangerous Prisoner";
			CFrameMyMon = CFrame.new(5411, 96, 690);
			VectorMon = Vector3.new(5411, 96, 690);
			CFrameQuest = CFrame.new(5308, 2, 474);
			VectorQuest = Vector3.new(5308, 2, 474);
		elseif (v225 == 15) then
			Monster = "Toga Warrior [Lv. 250]";
			NameQuest = "ColosseumQuest";
			LevelQuest = 1;
			NameCheckQuest = "Toga Warrior";
			CFrameMyMon = CFrame.new(-1641.4344482421875, 7.415142059326172, -2864.462646484375);
			VectorMon = Vector3.new(-1770, 8, -2777);
			CFrameQuest = CFrame.new(-1576, 8, -2985);
			VectorQuest = Vector3.new(-1576, 8, -2985);
		elseif (v225 == 16) then
			Monster = "Gladiator [Lv. 275]";
			NameQuest = "ColosseumQuest";
			LevelQuest = 2;
			NameCheckQuest = "Gladiato";
			CFrameMyMon = CFrame.new(-1385.5233154296875, 7.468349456787109, -3163.066650390625);
			VectorMon = Vector3.new(-1278, 8, -3240);
			CFrameQuest = CFrame.new(-1576, 8, -2985);
			VectorQuest = Vector3.new(-1576, 8, -2985);
		elseif (v225 == 17) then
			Monster = "Military Soldier [Lv. 300]";
			NameQuest = "MagmaQuest";
			LevelQuest = 1;
			NameCheckQuest = "Military Soldier";
			CFrameMyMon = CFrame.new(-5408, 11, 8447);
			VectorMon = Vector3.new(-5408, 11, 8447);
			CFrameQuest = CFrame.new(-5316, 12, 8517);
			VectorQuest = Vector3.new(-5316, 12, 8517);
		elseif (v225 == 18) then
			Monster = "Military Spy [Lv. 325]";
			NameQuest = "MagmaQuest";
			LevelQuest = 2;
			NameCheckQuest = "Military Spy";
			CFrameMyMon = CFrame.new(-5815, 84, 8820);
			VectorMon = Vector3.new(-5815, 84, 8820);
			CFrameQuest = CFrame.new(-5316, 12, 8517);
			VectorQuest = Vector3.new(-5316, 12, 8517);
		elseif (v225 == 19) then
			Monster = "Fishman Warrior [Lv. 375]";
			NameQuest = "FishmanQuest";
			LevelQuest = 1;
			NameCheckQuest = "Fishman Warrior";
			CFrameMyMon = CFrame.new(60859, 19, 1501);
			VectorMon = Vector3.new(60859, 19, 1501);
			CFrameQuest = CFrame.new(61123, 19, 1569);
			VectorQuest = Vector3.new(61123, 19, 1569);
		elseif (v225 == 20) then
			Monster = "Fishman Commando [Lv. 400]";
			NameQuest = "FishmanQuest";
			LevelQuest = 2;
			NameCheckQuest = "Fishman Commando";
			CFrameMyMon = CFrame.new(61891, 19, 1470);
			VectorMon = Vector3.new(61891, 19, 1470);
			CFrameQuest = CFrame.new(61123, 19, 1569);
			VectorQuest = Vector3.new(61123, 19, 1569);
		elseif (v225 == 21) then
			Monster = "God's Guard [Lv. 450]";
			NameQuest = "SkyExp1Quest";
			LevelQuest = 1;
			NameCheckQuest = "God's Guards";
			CFrameMyMon = CFrame.new(-4698, 845, -1912);
			VectorMon = Vector3.new(-4698, 845, -1912);
			CFrameQuest = CFrame.new(-4722, 845, -1954);
			VectorQuest = Vector3.new(-4722, 846, -1954);
		elseif (v225 == 22) then
			Monster = "Shanda [Lv. 475]";
			NameQuest = "SkyExp1Quest";
			LevelQuest = 2;
			NameCheckQuest = "Shandas";
			CFrameMyMon = CFrame.new(-7685, 5567, -502);
			VectorMon = Vector3.new(-7685, 5567, -502);
			CFrameQuest = CFrame.new(-7862, 5546, -380);
			VectorQuest = Vector3.new(-7862, 5546, -380);
		elseif (v225 == 23) then
			Monster = "Royal Squad [Lv. 525]";
			NameQuest = "SkyExp2Quest";
			LevelQuest = 1;
			NameCheckQuest = "Royal Squad";
			CFrameMyMon = CFrame.new(-7670, 5607, -1460);
			VectorMon = Vector3.new(-7670, 5607, -1460);
			CFrameQuest = CFrame.new(-7904, 5636, -1412);
			VectorQuest = Vector3.new(-7904, 5636, -1412);
		elseif (v225 == 24) then
			Monster = "Royal Soldier [Lv. 550]";
			NameQuest = "SkyExp2Quest";
			LevelQuest = 2;
			NameCheckQuest = "Royal Soldier";
			CFrameMyMon = CFrame.new(-7828, 5607, -1744);
			VectorMon = Vector3.new(-7828, 5607, -1744);
			CFrameQuest = CFrame.new(-7904, 5636, -1412);
			VectorQuest = Vector3.new(-7904, 5636, -1412);
		elseif (v225 == 25) then
			Monster = "Galley Pirate [Lv. 625]";
			NameQuest = "FountainQuest";
			LevelQuest = 1;
			NameCheckQuest = "Galley Pirate";
			CFrameMyMon = CFrame.new(5589, 45, 3996);
			VectorMon = Vector3.new(5589, 45, 3996);
			CFrameQuest = CFrame.new(5256, 39, 4050);
			VectorQuest = Vector3.new(5256, 39, 4050);
		elseif (v225 == 26) then
			Monster = "Galley Captain [Lv. 650]";
			NameQuest = "FountainQuest";
			LevelQuest = 2;
			NameCheckQuest = "Galley Captain";
			CFrameMyMon = CFrame.new(5649, 39, 4936);
			VectorMon = Vector3.new(5649, 39, 4936);
			CFrameQuest = CFrame.new(5256, 39, 4050);
			VectorQuest = Vector3.new(5256, 39, 4050);
		end
	end
	if v50 then
		if (v225 == 1) then
			Monster = "Raider [Lv. 700]";
			NameQuest = "Area1Quest";
			LevelQuest = 1;
			NameCheckQuest = "Raider";
			CFrameQuest = CFrame.new(-425, 73, 1837);
			VectorQuest = Vector3.new(-425, 73, 1837);
			CFrameMyMon = CFrame.new(-746, 39, 2390);
			VectorMon = Vector3.new(-746, 39, 2389);
		elseif (v225 == 2) then
			Monster = "Mercenary [Lv. 725]";
			NameQuest = "Area1Quest";
			LevelQuest = 2;
			NameCheckQuest = "Mercenary";
			CFrameQuest = CFrame.new(-425, 73, 1837);
			VectorQuest = Vector3.new(-425, 73, 1837);
			CFrameMyMon = CFrame.new(-874, 141, 1312);
			VectorMon = Vector3.new(-874, 141, 1312);
		elseif (v225 == 3) then
			Monster = "Swan Pirate [Lv. 775]";
			NameQuest = "Area2Quest";
			LevelQuest = 1;
			NameCheckQuest = "Swan Pirate";
			CFrameQuest = CFrame.new(634, 73, 918);
			VectorQuest = Vector3.new(634, 73, 918);
			CFrameMyMon = CFrame.new(878, 122, 1235);
			VectorMon = Vector3.new(878, 122, 1235);
		elseif (v225 == 4) then
			Monster = "Factory Staff [Lv. 800]";
			NameQuest = "Area2Quest";
			LevelQuest = 2;
			NameCheckQuest = "Factory Staff";
			CFrameQuest = CFrame.new(634, 73, 918);
			VectorQuest = Vector3.new(634, 73, 918);
			CFrameMyMon = CFrame.new(295, 73, -56);
			VectorMon = Vector3.new(295, 73, -56);
		elseif (v225 == 5) then
			Monster = "Marine Lieutenant [Lv. 875]";
			NameQuest = "MarineQuest3";
			LevelQuest = 1;
			NameCheckQuest = "Marine Lieutenant";
			CFrameMyMon = CFrame.new(-2806, 73, -3038);
			VectorMon = Vector3.new(-2806, 73, -3038);
			CFrameQuest = CFrame.new(-2443, 73, -3219);
			VectorQuest = Vector3.new(-2443, 73, -3219);
		elseif (v225 == 6) then
			Monster = "Marine Captain [Lv. 900]";
			NameQuest = "MarineQuest3";
			LevelQuest = 2;
			NameCheckQuest = "Marine Captain";
			CFrameMyMon = CFrame.new(-1869, 73, -3320);
			VectorMon = Vector3.new(-1869, 73, -3320);
			CFrameQuest = CFrame.new(-2443, 73, -3219);
			VectorQuest = Vector3.new(-2443, 73, -3219);
		elseif (v225 == 7) then
			Monster = "Zombie [Lv. 950]";
			NameQuest = "ZombieQuest";
			LevelQuest = 1;
			NameCheckQuest = "Zombie";
			CFrameMyMon = CFrame.new(-5736, 126, -728);
			VectorMon = Vector3.new(-5736, 126, -728);
			CFrameQuest = CFrame.new(-5494, 49, -795);
			VectorQuest = Vector3.new(-5494, 49, -794);
		elseif (v225 == 8) then
			Monster = "Vampire [Lv. 975]";
			NameQuest = "ZombieQuest";
			LevelQuest = 2;
			NameCheckQuest = "Vampire";
			CFrameMyMon = CFrame.new(-6033, 7, -1317);
			VectorMon = Vector3.new(-6033, 7, -1317);
			CFrameQuest = CFrame.new(-5494, 49, -795);
			VectorQuest = Vector3.new(-5494, 49, -795);
		elseif (v225 == 9) then
			Monster = "Snow Trooper [Lv. 1000]";
			NameQuest = "SnowMountainQuest";
			LevelQuest = 1;
			NameCheckQuest = "Snow Trooper";
			CFrameMyMon = CFrame.new(478, 402, -5362);
			VectorMon = Vector3.new(478, 402, -5362);
			CFrameQuest = CFrame.new(605, 402, -5371);
			VectorQuest = Vector3.new(605, 402, -5371);
		elseif (v225 == 10) then
			Monster = "Winter Warrior [Lv. 1050]";
			NameQuest = "SnowMountainQuest";
			LevelQuest = 2;
			NameCheckQuest = "Winter Warrior";
			CFrameMyMon = CFrame.new(1157, 430, -5188);
			VectorMon = Vector3.new(1157, 430, -5188);
			CFrameQuest = CFrame.new(605, 402, -5371);
			VectorQuest = Vector3.new(605, 402, -5371);
		elseif (v225 == 11) then
			Monster = "Lab Subordinate [Lv. 1100]";
			NameQuest = "IceSideQuest";
			LevelQuest = 1;
			NameCheckQuest = "Lab Subordinate";
			CFrameMyMon = CFrame.new(-5782, 42, -4484);
			VectorMon = Vector3.new(-5782, 42, -4484);
			CFrameQuest = CFrame.new(-6060, 16, -4905);
			VectorQuest = Vector3.new(-6060, 16, -4905);
		elseif (v225 == 12) then
			Monster = "Horned Warrior [Lv. 1125]";
			NameQuest = "IceSideQuest";
			LevelQuest = 2;
			NameCheckQuest = "Horned Warrior";
			CFrameMyMon = CFrame.new(-6406, 24, -5805);
			VectorMon = Vector3.new(-6406, 24, -5805);
			CFrameQuest = CFrame.new(-6060, 16, -4905);
			VectorQuest = Vector3.new(-6060, 16, -4905);
		elseif (v225 == 13) then
			Monster = "Magma Ninja [Lv. 1175]";
			NameQuest = "FireSideQuest";
			LevelQuest = 1;
			NameCheckQuest = "Magma Ninja";
			CFrameMyMon = CFrame.new(-5428, 78, -5959);
			VectorMon = Vector3.new(-5428, 78, -5959);
			CFrameQuest = CFrame.new(-5430, 16, -5295);
			VectorQuest = Vector3.new(-5430, 16, -5296);
		elseif (v225 == 14) then
			Monster = "Lava Pirate [Lv. 1200]";
			NameQuest = "FireSideQuest";
			LevelQuest = 2;
			NameCheckQuest = "Lava Pirate";
			CFrameMyMon = CFrame.new(-5270, 42, -4800);
			VectorMon = Vector3.new(-5270, 42, -4800);
			CFrameQuest = CFrame.new(-5430, 16, -5295);
			VectorQuest = Vector3.new(-5430, 16, -5296);
		elseif (v225 == 15) then
			Monster = "Ship Deckhand [Lv. 1250]";
			NameQuest = "ShipQuest1";
			LevelQuest = 1;
			NameCheckQuest = "Ship Deckhand";
			CFrameMyMon = CFrame.new(1198, 126, 33031);
			VectorMon = Vector3.new(1198, 126, 33031);
			CFrameQuest = CFrame.new(1038, 125, 32913);
			VectorQuest = Vector3.new(1038, 125, 32913);
		elseif (v225 == 16) then
			Monster = "Ship Engineer [Lv. 1275]";
			NameQuest = "ShipQuest1";
			LevelQuest = 2;
			NameCheckQuest = "Ship Engineer";
			CFrameMyMon = CFrame.new(918, 44, 32787);
			VectorMon = Vector3.new(918, 44, 32787);
			CFrameQuest = CFrame.new(1038, 125, 32913);
			VectorQuest = Vector3.new(1038, 125, 32913);
		elseif (v225 == 17) then
			Monster = "Ship Steward [Lv. 1300]";
			NameQuest = "ShipQuest2";
			LevelQuest = 1;
			NameCheckQuest = "Ship Steward";
			CFrameMyMon = CFrame.new(915, 130, 33419);
			VectorMon = Vector3.new(915, 130, 33419);
			CFrameQuest = CFrame.new(969, 125, 33245);
			VectorQuest = Vector3.new(969, 125, 33245);
		elseif (v225 == 18) then
			Monster = "Ship Officer [Lv. 1325]";
			NameQuest = "ShipQuest2";
			LevelQuest = 2;
			NameCheckQuest = "Ship Officer";
			CFrameMyMon = CFrame.new(916, 181, 33335);
			VectorMon = Vector3.new(916, 181, 33335);
			CFrameQuest = CFrame.new(969, 125, 33245);
			VectorQuest = Vector3.new(969, 125, 33245);
		elseif (v225 == 19) then
			Monster = "Arctic Warrior [Lv. 1350]";
			NameQuest = "FrostQuest";
			LevelQuest = 1;
			NameCheckQuest = "Arctic Warrior";
			CFrameMyMon = CFrame.new(6038, 29, -6231);
			VectorMon = Vector3.new(6038, 29, -6231);
			VectorQuest = Vector3.new(5669, 28, -6482);
			CFrameQuest = CFrame.new(5669, 28, -6482);
		elseif (v225 == 20) then
			Monster = "Snow Lurker [Lv. 1375]";
			NameQuest = "FrostQuest";
			LevelQuest = 2;
			NameCheckQuest = "Snow Lurker";
			CFrameMyMon = CFrame.new(5560, 42, -6826);
			VectorMon = Vector3.new(5560, 42, -6826);
			VectorQuest = Vector3.new(5669, 28, -6482);
			CFrameQuest = CFrame.new(5669, 28, -6482);
		elseif (v225 == 21) then
			Monster = "Sea Soldier [Lv. 1425]";
			NameQuest = "ForgottenQuest";
			LevelQuest = 1;
			NameCheckQuest = "Sea Soldier";
			CFrameMyMon = CFrame.new(-3022, 16, -9722);
			VectorMon = Vector3.new(-3022, 16, -9722);
			CFrameQuest = CFrame.new(-3054, 237, -10148);
			VectorQuest = Vector3.new(-3054, 237, -10148);
		elseif (v225 == 22) then
			Monster = "Water Fighter [Lv. 1450]";
			NameQuest = "ForgottenQuest";
			LevelQuest = 2;
			NameCheckQuest = "Water Fighter";
			CFrameMyMon = CFrame.new(-3385, 239, -10542);
			VectorMon = Vector3.new(-3385, 239, -10542);
			CFrameQuest = CFrame.new(-3054, 237, -10148);
			VectorQuest = Vector3.new(-3054, 237, -10148);
		end
	end
	if v51 then
		if (v225 == 1) then
			Monster = "Pirate Millionaire [Lv. 1500]";
			NameQuest = "PiratePortQuest";
			LevelQuest = 1;
			NameCheckQuest = "Pirate";
			CFrameMyMon = CFrame.new(-373, 75, 5550);
			VectorMon = Vector3.new(-373, 75, 5550);
			CFrameQuest = CFrame.new(-288, 44, 5576);
			VectorQuest = Vector3.new(-288, 44, 5576);
		elseif (v225 == 2) then
			Monster = "Pistol Billionaire [Lv. 1525]";
			NameQuest = "PiratePortQuest";
			LevelQuest = 2;
			NameCheckQuest = "Pistol";
			CFrameMyMon = CFrame.new(-469, 74, 5904);
			VectorMon = Vector3.new(-469, 74, 5904);
			CFrameQuest = CFrame.new(-288, 44, 5576);
			VectorQuest = Vector3.new(-288, 44, 5576);
		elseif (v225 == 3) then
			Monster = "Dragon Crew Warrior [Lv. 1575]";
			NameQuest = "AmazonQuest";
			LevelQuest = 1;
			NameCheckQuest = "Warrior";
			CFrameMyMon = CFrame.new(6339, 52, -1213);
			VectorMon = Vector3.new(6338, 52, -1213);
			CFrameQuest = CFrame.new(5835, 52, -1105);
			VectorQuest = Vector3.new(5835, 52, -1105);
		elseif (v225 == 4) then
			Monster = "Dragon Crew Archer [Lv. 1600]";
			NameQuest = "AmazonQuest";
			LevelQuest = 2;
			NameCheckQuest = "Archer";
			CFrameMyMon = CFrame.new(6594, 383, 139);
			VectorMon = Vector3.new(6594, 383, 139);
			CFrameQuest = CFrame.new(5835, 52, -1105);
			VectorQuest = Vector3.new(5835, 52, -1105);
		elseif (v225 == 5) then
			Monster = "Female Islander [Lv. 1625]";
			NameQuest = "AmazonQuest2";
			LevelQuest = 1;
			NameCheckQuest = "Female";
			CFrameMyMon = CFrame.new(5308, 819, 1047);
			VectorMon = Vector3.new(5308, 819, 1047);
			CFrameQuest = CFrame.new(5443, 602, 751);
			VectorQuest = Vector3.new(5443, 602, 751);
		elseif (v225 == 6) then
			Monster = "Giant Islander [Lv. 1650]";
			NameQuest = "AmazonQuest2";
			LevelQuest = 2;
			NameCheckQuest = "Giant Islanders";
			CFrameMyMon = CFrame.new(4951, 602, -68);
			VectorMon = Vector3.new(4951, 602, -68);
			CFrameQuest = CFrame.new(5443, 602, 751);
			VectorQuest = Vector3.new(5443, 602, 751);
		elseif (v225 == 7) then
			Monster = "Marine Commodore [Lv. 1700]";
			NameQuest = "MarineTreeIsland";
			LevelQuest = 1;
			NameCheckQuest = "Marine Commodore";
			CFrameMyMon = CFrame.new(2447, 73, -7470);
			VectorMon = Vector3.new(2447, 73, -7470);
			CFrameQuest = CFrame.new(2180, 29, -6737);
			VectorQuest = Vector3.new(2180, 29, -6737);
		elseif (v225 == 8) then
			Monster = "Marine Rear Admiral [Lv. 1725]";
			NameQuest = "MarineTreeIsland";
			LevelQuest = 2;
			NameCheckQuest = "Marine Rear Admiral";
			CFrameMyMon = CFrame.new(3671, 161, -6932);
			VectorMon = Vector3.new(3671, 161, -6932);
			CFrameQuest = CFrame.new(2180, 29, -6737);
			VectorQuest = Vector3.new(2180, 29, -6737);
		elseif (v225 == 9) then
			Monster = "Fishman Raider [Lv. 1775]";
			NameQuest = "DeepForestIsland3";
			LevelQuest = 1;
			NameCheckQuest = "Fishman Raider";
			CFrameMyMon = CFrame.new(-10560, 332, -8466);
			VectorMon = Vector3.new(-10560, 332, -8466);
			CFrameQuest = CFrame.new(-10584, 332, -8758);
			VectorQuest = Vector3.new(-10584, 332, -8758);
		elseif (v225 == 10) then
			Monster = "Fishman Captain [Lv. 1800]";
			NameQuest = "DeepForestIsland3";
			LevelQuest = 2;
			NameCheckQuest = "Fishman Captain";
			CFrameMyMon = CFrame.new(-10993, 332, -8940);
			VectorMon = Vector3.new(-10993, 332, -8940);
			CFrameQuest = CFrame.new(-10584, 332, -8758);
			VectorQuest = Vector3.new(-10584, 332, -8758);
		elseif (v225 == 11) then
			Monster = "Forest Pirate [Lv. 1825]";
			NameQuest = "DeepForestIsland";
			LevelQuest = 1;
			NameCheckQuest = "Forest Pirate";
			CFrameMyMon = CFrame.new(-13479, 333, -7905);
			VectorMon = Vector3.new(-13479, 333, -7905);
			CFrameQuest = CFrame.new(-13232, 333, -7627);
			VectorQuest = Vector3.new(-13232, 333, -7627);
		elseif (v225 == 12) then
			Monster = "Mythological Pirate [Lv. 1850]";
			NameQuest = "DeepForestIsland";
			LevelQuest = 2;
			NameCheckQuest = "Mythological Pirate";
			CFrameMyMon = CFrame.new(-13545, 470, -6917);
			VectorMon = Vector3.new(-13545, 470, -6917);
			CFrameQuest = CFrame.new(-13232, 333, -7627);
			VectorQuest = Vector3.new(-13232, 333, -7627);
		elseif (v225 == 13) then
			Monster = "Jungle Pirate [Lv. 1900]";
			NameQuest = "DeepForestIsland2";
			LevelQuest = 1;
			NameCheckQuest = "Jungle Pirate";
			CFrameMyMon = CFrame.new(-12107, 332, -10549);
			VectorMon = Vector3.new(-12106, 332, -10549);
			CFrameQuest = CFrame.new(-12684, 391, -9902);
			VectorQuest = Vector3.new(-12684, 391, -9902);
		elseif (v225 == 14) then
			Monster = "Musketeer Pirate [Lv. 1925]";
			NameQuest = "DeepForestIsland2";
			LevelQuest = 2;
			NameCheckQuest = "Musketeer Pirate";
			CFrameMyMon = CFrame.new(-13286, 392, -9769);
			VectorMon = Vector3.new(-13286, 392, -9768);
			CFrameQuest = CFrame.new(-12684, 391, -9902);
			VectorQuest = Vector3.new(-12684, 391, -9902);
		elseif (v225 == 15) then
			Monster = "Reborn Skeleton [Lv. 1975]";
			NameQuest = "HauntedQuest1";
			LevelQuest = 1;
			NameCheckQuest = "Reborn Skeleton";
			CFrameMyMon = CFrame.new(-8760, 142, 6039);
			VectorMon = Vector3.new(-8760, 142, 6039);
			CFrameQuest = CFrame.new(-9482, 142, 5567);
			VectorQuest = Vector3.new(-9482, 142, 5567);
		elseif (v225 == 16) then
			Monster = "Living Zombie [Lv. 2000]";
			NameQuest = "HauntedQuest1";
			LevelQuest = 2;
			NameCheckQuest = "Living Zombie";
			CFrameMyMon = CFrame.new(-10144, 140, 5932);
			VectorMon = Vector3.new(-10144, 140, 5932);
			CFrameQuest = CFrame.new(-9482, 142, 5567);
			VectorQuest = Vector3.new(-9482, 142, 5567);
		elseif (v225 == 17) then
			Monster = "Demonic Soul [Lv. 2025]";
			NameQuest = "HauntedQuest2";
			LevelQuest = 1;
			NameCheckQuest = "Demonic Soul";
			CFrameMyMon = CFrame.new(-9507, 172, 6158);
			VectorMon = Vector3.new(-9506, 172, 6158);
			CFrameQuest = CFrame.new(-9513, 172, 6079);
			VectorQuest = Vector3.new(-9513, 172, 6079);
		elseif (v225 == 18) then
			Monster = "Posessed Mummy [Lv. 2050]";
			NameQuest = "HauntedQuest2";
			LevelQuest = 2;
			NameCheckQuest = "Posessed Mummy";
			CFrameMyMon = CFrame.new(-9577, 6, 6223);
			VectorMon = Vector3.new(-9577, 6, 6223);
			CFrameQuest = CFrame.new(-9513, 172, 6079);
			VectorQuest = Vector3.new(-9513, 172, 6079);
		elseif (v225 == 19) then
			Monster = "Peanut Scout [Lv. 2075]";
			NameQuest = "NutsIslandQuest";
			LevelQuest = 1;
			NameCheckQuest = "Peanut Scout";
			CFrameMyMon = CFrame.new(-2124, 123, -10435);
			VectorMon = Vector3.new(-2124, 123, -10435);
			CFrameQuest = CFrame.new(-2104, 38, -10192);
			VectorQuest = Vector3.new(-2104, 38, -10192);
		elseif (v225 == 20) then
			Monster = "Peanut President [Lv. 2100]";
			NameQuest = "NutsIslandQuest";
			LevelQuest = 2;
			NameCheckQuest = "Peanut President";
			CFrameMyMon = CFrame.new(-2124, 123, -10435);
			VectorMon = Vector3.new(-2124, 123, -10435);
			CFrameQuest = CFrame.new(-2104, 38, -10192);
			VectorQuest = Vector3.new(-2104, 38, -10192);
		elseif (v225 == 21) then
			Monster = "Ice Cream Chef [Lv. 2125]";
			NameQuest = "IceCreamIslandQuest";
			LevelQuest = 1;
			NameCheckQuest = "Ice Cream Chef";
			CFrameMyMon = CFrame.new(-641, 127, -11062);
			VectorMon = Vector3.new(-641, 127, -11062);
			CFrameQuest = CFrame.new(-822, 66, -10965);
			VectorQuest = Vector3.new(-822, 66, -10965);
		elseif (v225 == 22) then
			Monster = "Ice Cream Commander [Lv. 2150]";
			NameQuest = "IceCreamIslandQuest";
			LevelQuest = 2;
			NameCheckQuest = "Ice Cream Commander";
			CFrameMyMon = CFrame.new(-641, 127, -11062);
			VectorMon = Vector3.new(-641, 127, -11062);
			CFrameQuest = CFrame.new(-822, 66, -10965);
			VectorQuest = Vector3.new(-822, 66, -10965);
		elseif (v225 == 23) then
			Monster = "Cookie Crafter [Lv. 2200]";
			NameQuest = "CakeQuest1";
			LevelQuest = 1;
			NameCheckQuest = "Cookie Crafter";
			CFrameMyMon = CFrame.new(-2365, 38, -12099);
			VectorMon = Vector3.new(-2365, 38, -12099);
			CFrameQuest = CFrame.new(-2020, 38, -12025);
			VectorQuest = Vector3.new(-2020, 38, -12025);
		elseif (v225 == 24) then
			Monster = "Cake Guard [Lv. 2225]";
			NameQuest = "CakeQuest1";
			LevelQuest = 2;
			NameCheckQuest = "Cake Guard";
			CFrameMyMon = CFrame.new(-1651, 38, -12308);
			VectorMon = Vector3.new(-1651, 38, -12308);
			CFrameQuest = CFrame.new(-2020, 38, -12025);
			VectorQuest = Vector3.new(-2020, 38, -12025);
		elseif (v225 == 25) then
			Monster = "Baking Staff [Lv. 2250]";
			NameQuest = "CakeQuest2";
			LevelQuest = 1;
			NameCheckQuest = "Baking Staff";
			CFrameMyMon = CFrame.new(-1870, 38, -12938);
			VectorMon = Vector3.new(-1870, 38, -12938);
			CFrameQuest = CFrame.new(-1926, 38, -12850);
			VectorQuest = Vector3.new(-1926, 38, -12850);
		elseif (v225 == 26) then
			Monster = "Head Baker [Lv. 2275]";
			NameQuest = "CakeQuest2";
			LevelQuest = 2;
			NameCheckQuest = "Head Baker";
			CFrameMyMon = CFrame.new(-1926, 88, -12850);
			VectorMon = CFrame.new(-1870, 38, -12938);
			CFrameQuest = CFrame.new(-1926, 38, -12850);
			VectorQuest = Vector3.new(-1926, 38, -12850);
		elseif (v225 == 27) then
			Monster = "Cocoa Warrior [Lv. 2300]";
			NameQuest = "ChocQuest1";
			LevelQuest = 1;
			NameCheckQuest = "Cocoa Warrior";
			CFrameMyMon = CFrame.new(79.4172134399414, 73.42101287841797, -12310.0205078125);
			CFrameQuest = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1);
		elseif (v225 == 28) then
			Monster = "Chocolate Bar Battler [Lv. 2325]";
			NameQuest = "ChocQuest1";
			LevelQuest = 2;
			NameCheckQuest = "Chocolate Bar Battler";
			CFrameMyMon = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625);
			CFrameQuest = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1);
		elseif (v225 == 29) then
			Monster = "Sweet Thief [Lv. 2350]";
			NameQuest = "ChocQuest2";
			LevelQuest = 1;
			NameCheckQuest = "Sweet Thief";
			CFrameMyMon = CFrame.new(71.89511108398438, 77.21478271484375, -12632.435546875);
			CFrameQuest = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998);
		elseif (v225 == 30) then
			Monster = "Candy Rebel [Lv. 2375]";
			NameQuest = "ChocQuest2";
			LevelQuest = 2;
			NameCheckQuest = "Candy Rebel";
			CFrameMyMon = CFrame.new(134.3748016357422, 77.21473693847656, -12882.1650390625);
			CFrameQuest = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998);
		elseif (v225 == 31) then
			Monster = "Candy Pirate [Lv. 2400]";
			NameQuest = "CandyQuest1";
			LevelQuest = 1;
			NameCheckQuest = "Candy Pirate";
			CFrameMyMon = CFrame.new(-1271.6993408203125, 139.93331909179688, -14354.8515625);
			CFrameQuest = CFrame.new(-1147.6552734375, 17.82676887512207, -14447.7099609375);
		elseif (v225 == 32) then
			Monster = "Snow Demon [Lv. 2425]";
			NameQuest = "CandyQuest1";
			LevelQuest = 2;
			NameCheckQuest = "Snow Demon";
			CFrameMyMon = CFrame.new(-844.35546875, 138.32464599609375, -14496.455078125);
			CFrameQuest = CFrame.new(-1147.6552734375, 17.82676887512207, -14447.7099609375);
		elseif (v225 == 33) then
			Monster = "Isle Outlaw [Lv. 2450]";
			NameQuest = "TikiQuest1";
			LevelQuest = 1;
			NameCheckQuest = "Isle Outlaw";
			CFrameMyMon = CFrame.new(-16277.9599609375, 94.06755828857422, -168.73194885253906);
			CFrameQuest = CFrame.new(-16545.927734375, 55.68635559082031, -173.01036071777344);
		elseif (v225 == 34) then
			Monster = "Island Boy [Lv. 2475]";
			NameQuest = "TikiQuest1";
			LevelQuest = 2;
			NameCheckQuest = "Island Boy";
			CFrameMyMon = CFrame.new(-16749.416015625, 125.9124755859375, -272.1277770996094);
			CFrameQuest = CFrame.new(-16545.927734375, 55.68635559082031, -173.01036071777344);
		elseif (v225 == 35) then
			Monster = "Sun-kissed Warrior [Lv. 2500]";
			NameQuest = "TikiQuest2";
			LevelQuest = 1;
			NameCheckQuest = "kissed Warrior";
			CFrameMyMon = CFrame.new(-16277.009765625, 68.78734588623047, 1041.3009033203125);
			CFrameQuest = CFrame.new(-16538.888671875, 55.68632888793945, 1051.730712890625);
		elseif (v225 == 36) then
			Monster = "Isle Champion [Lv. 2525]";
			NameQuest = "TikiQuest2";
			LevelQuest = 2;
			NameCheckQuest = "Isle Champion";
			CFrameMyMon = CFrame.new(-16743.2421875, 137.21322631835938, 1148.2789306640625);
			CFrameQuest = CFrame.new(-16538.888671875, 55.68632888793945, 1051.730712890625);
		end
	end
	CFrameMon = CheckEnemySpawn(Monster) or CFrameMyMon;
end);
function CheckQuestBoss(v226)
	local v227 = game.Players.LocalPlayer.Data.Level.Value;
	if v49 then
		if ((v227 >= 20) and (v226 == "JungleQuest") and havemob("The Gorilla King [Lv. 25] [Boss]")) then
			Bosses = "The Gorilla King [Lv. 25] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "King";
			CFrameBoss = CFrame.new(-1196.4288330078125, 6.791248798370361, -448.4755554199219);
		elseif ((v227 >= 55) and (v226 == "BuggyQuest1") and havemob("Bobby [Lv. 55] [Boss]")) then
			Bosses = "Bobby [Lv. 55] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Bobby";
			CFrameBoss = CFrame.new(-1097.8865966796875, 27.307741165161133, 4051.182373046875);
		elseif ((v227 >= 105) and (v226 == "SnowQuest") and havemob("Yeti [Lv. 110] [Boss]")) then
			Bosses = "Yeti [Lv. 110] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Yeti";
			CFrameBoss = CFrame.new(1202.99462890625, 143.6376495361328, -1550.9326171875);
		elseif ((v227 >= 130) and (v226 == "MarineQuest2") and havemob("Vice Admiral [Lv. 130] [Boss]")) then
			Bosses = "Vice Admiral [Lv. 130] [Boss]";
			LevelQuestBoss = 2;
			NameCheckQuestBoss = "Vice";
			CFrameBoss = CFrame.new(-5087.49267578125, 98.71009826660156, 4406.0498046875);
		elseif ((v227 >= 220) and (v226 == "PrisonerQuest") and havemob("Warden [Lv. 220] [Boss]")) then
			Bosses = "Warden [Lv. 220] [Boss]";
			LevelQuestBoss = 1;
			NameCheckQuestBoss = "t Warden";
			NameQuest = "ImpelQuest";
			CFrameQuest = CFrame.new(5190.45703125, 2.5952436923980713, 688.2589111328125);
			CFrameBoss = CFrame.new(5184.12744140625, 57.404136657714844, 829.398681640625);
		elseif ((v227 >= 230) and (v226 == "PrisonerQuest") and havemob("Chief Warden [Lv. 230] [Boss]")) then
			Bosses = "Chief Warden [Lv. 230] [Boss]";
			LevelQuestBoss = 2;
			NameCheckQuestBoss = "Chief";
			NameQuest = "ImpelQuest";
			CFrameQuest = CFrame.new(5190.45703125, 2.5952436923980713, 688.2589111328125);
			CFrameBoss = CFrame.new(5184.12744140625, 57.404136657714844, 829.398681640625);
		elseif ((v227 >= 230) and (v226 == "PrisonerQuest") and havemob("Swan [Lv. 240] [Boss]")) then
			Bosses = "Swan [Lv. 240] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Swan";
			NameQuest = "ImpelQuest";
			CFrameQuest = CFrame.new(5190.45703125, 2.5952436923980713, 688.2589111328125);
			CFrameBoss = CFrame.new(5184.12744140625, 57.404136657714844, 829.398681640625);
		elseif ((v227 >= 350) and (v226 == "MagmaQuest") and havemob("Magma Admiral [Lv. 350] [Boss]")) then
			Bosses = "Magma Admiral [Lv. 350] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Admiral";
			CFrameBoss = CFrame.new(-5682.41064453125, 16.40520668029785, 8751.5849609375);
		elseif ((v227 >= 425) and (v226 == "FishmanQuest") and havemob("Fishman Lord [Lv. 425] [Boss]")) then
			Bosses = "Fishman Lord [Lv. 425] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Lord";
			CFrameBoss = CFrame.new(61347.0078125, 30.053680419921875, 1125.32177734375);
		elseif ((v227 >= 500) and (v226 == "SkyExp1Quest") and havemob("Wysper [Lv. 500] [Boss]")) then
			Bosses = "Wysper [Lv. 500] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Wysper";
			CFrameBoss = CFrame.new(-7811.53271484375, 5585.1279296875, -652.8221435546875);
		elseif ((v227 >= 575) and (v226 == "SkyExp2Quest") and havemob("Thunder God [Lv. 575] [Boss]")) then
			Bosses = "Thunder God [Lv. 575] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Thunder";
			CFrameBoss = CFrame.new(-7795.9287109375, 5605.951171875, -2231.444580078125);
		elseif ((v227 >= 675) and (v226 == "FountainQuest") and havemob("Cyborg [Lv. 675] [Boss]")) then
			Bosses = "Cyborg [Lv. 675] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Cyborg";
			CFrameBoss = CFrame.new(6026.85498046875, 56.75627136230469, 3911.870849609375);
		else
			Bosses = "";
		end
	elseif v50 then
		if ((v227 >= 750) and (v226 == "Area1Quest") and havemob("Diamond [Lv. 750] [Boss]")) then
			Bosses = "Diamond [Lv. 750] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Diamond";
			CFrameBoss = CFrame.new(-1768.1483154296875, 315.549560546875, -61.178192138671875);
		elseif ((v227 >= 850) and (v226 == "Area2Quest") and havemob("Jeremy [Lv. 850] [Boss]")) then
			Bosses = "Jeremy [Lv. 850] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Jeremy";
			CFrameBoss = CFrame.new(2035.4229736328125, 447.9889221191406, 712.2064819335938);
		elseif ((v227 >= 925) and (v226 == "MarineQuest3") and havemob("Fajita [Lv. 925] [Boss]")) then
			Bosses = "Fajita [Lv. 925] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Fajita";
			CFrameBoss = CFrame.new(-2123.315673828125, 89.35710144042969, -4079.322021484375);
		elseif ((v227 >= 1150) and (v226 == "IceSideQuest") and havemob("Smoke Admiral [Lv. 1150] [Boss]")) then
			Bosses = "Smoke Admiral [Lv. 1150] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Smoke Admiral";
			CFrameBoss = CFrame.new(-5106.25146484375, 22.789506912231445, -5341.25146484375);
		elseif ((v227 >= 1400) and (v226 == "FrostQuest") and havemob("Awakened Ice Admiral [Lv. 1400] [Boss]")) then
			Bosses = "Awakened Ice Admiral [Lv. 1400] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Awakened Ice Admiral";
			CFrameBoss = CFrame.new(6407.33935546875, 339.2467041015625, -6892.52099609375);
		elseif ((v227 >= 1475) and (v226 == "ForgottenQuest") and havemob("Tide Keeper [Lv. 1475] [Boss]")) then
			Bosses = "Tide Keeper [Lv. 1475] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Tide Keeper";
			CFrameBoss = CFrame.new(-3570.1865234375, 123.32894897460938, -11555.9072265625);
		else
			Bosses = "";
		end
	elseif v51 then
		if ((v227 >= 1550) and (v226 == "PiratePortQuest") and havemob("Stone [Lv. 1550] [Boss]")) then
			Bosses = "Stone [Lv. 1550] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Stone";
			CFrameBoss = CFrame.new(-1141.4222412109375, 96.33948516845703, 6993.21337890625);
		elseif ((v227 >= 1675) and (v226 == "AmazonQuest2") and havemob("Island Empress [Lv. 1675] [Boss]")) then
			Bosses = "Island Empress [Lv. 1675] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Island Empress";
			CFrameBoss = CFrame.new(5567.677734375, 650.8583374023438, 195.727783203125);
		elseif ((v227 >= 1750) and (v226 == "MarineTreeIsland") and havemob("Kilo Admiral [Lv. 1750] [Boss]")) then
			Bosses = "Kilo Admiral [Lv. 1750] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Kilo Admiral";
			CFrameBoss = CFrame.new(2915.359375, 455.9102783203125, -7375.900390625);
		elseif ((v227 >= 1875) and (v226 == "DeepForestIsland") and havemob("Captain Elephant [Lv. 1875] [Boss]")) then
			Bosses = "Captain Elephant [Lv. 1875] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Elephant";
			CFrameBoss = CFrame.new(-13351.3642578125, 404.9483642578125, -8570.650390625);
		elseif ((v227 >= 1950) and (v226 == "DeepForestIsland2") and havemob("Beautiful Pirate [Lv. 1950] [Boss]")) then
			Bosses = "Beautiful Pirate [Lv. 1950] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Beautiful";
			CFrameBoss = CFrame.new(5314.58203125, 21.594484329223633, -125.94227600097656);
		elseif ((v227 >= 2175) and (v226 == "IceCreamIslandQuest") and havemob("Cake Queen [Lv. 2175] [Boss]")) then
			Bosses = "Cake Queen [Lv. 2175] [Boss]";
			LevelQuestBoss = 3;
			NameCheckQuestBoss = "Cake Queen";
			CFrameBoss = CFrame.new(-717.3067016601562, 380.62359619140625, -11006.7158203125);
		else
			Bosses = "";
		end
	end
end
CheckGoodMob = LPH_JIT_MAX(function(v228, v229)
	local v230 = (v228.Position - v229).Magnitude;
	local v231;
	local v232;
	local v233 = false;
	for v367, v368 in pairs(v52) do
		local v369 = v368 + Vector3.new(1, 60, 0);
		v232 = (v369 - v228.Position).Magnitude;
		if (v232 < v230) then
			v230 = v232;
			v233 = true;
			v231 = v369;
		end
	end
	return v233, v231;
end);
CheckQuest();
LPH_NO_VIRTUALIZE(function()
	task.spawn(function()
		while true do
			pcall(function()
				for v486, v487 in pairs(game:GetService("Workspace")['_WorldOrigin']:FindFirstChild("EnemySpawns"):GetChildren()) do
					if not tablefoundforu(v12, v487.CFrame) then
						table.insert(v12, {Name=v487.Name,CFrame=v487.CFrame});
					end
				end
			end);
			task.wait(0.5);
		end
	end);
end)();
if not isfile("BF_Kick_Log.txt") then
	writefile("BF_Kick_Log.txt", "-- BF Kick Log --");
end
if v49 then
	AutoPole = getgenv().Configs.FirstSea.AutoPole;
	AutoSaber = getgenv().Configs.FirstSea.AutoSaber;
	AutoSea2 = getgenv().Configs.FirstSea.AutoSecondSea;
elseif v50 then
	alliesfruit = getgenv().Configs.SecondSea.AlliesFruit;
	AutoRengoku = getgenv().Configs.SecondSea.AutoRengoku;
	AutoBartilo = getgenv().Configs.SecondSea.AutoBartiloQuest;
	AutoCursedCaptain = getgenv().Configs.SecondSea.AutoCursedCaptain;
	AutoQuestFlower = getgenv().Configs.SecondSea.AutoQuestFlower;
	AutoV3Race = getgenv().Configs.SecondSea.AutoRaceV3;
	AutoDarkbeard = getgenv().Configs.SecondSea.AutoDarkbeard;
	AutoFactory = getgenv().Configs.SecondSea.AutoFactory;
	AutoSoulGuitar = getgenv().Configs.SecondSea.AutoSoulGuitar;
	AutoSea3 = getgenv().Configs.SecondSea.AutoThirdSea;
elseif v51 then
	AutoHallowScythe = getgenv().Configs.ThirdSea.AutoHallowScythe;
	AutoBuddySword = getgenv().Configs.ThirdSea.AutoBuddySword;
	AutoDoughKing = getgenv().Configs.ThirdSea.AutoDoughKing;
	AutoSpikeyTrident = getgenv().Configs.ThirdSea.AutoSpikeyTrident;
	AutoTushita = getgenv().Configs.ThirdSea.AutoTushita;
	AutoEliteHunter = getgenv().Configs.ThirdSea.AutoEliteHunter;
	AutoRipIndra = getgenv().Configs.ThirdSea.AutoDarkDagger;
	AutoYama = getgenv().Configs.ThirdSea.AutoYama;
	AutoCanvander = getgenv().Configs.ThirdSea.AutoCanvander;
	AutoSoulGuitar = getgenv().Configs.ThirdSea.AutoSoulGuitar;
	SkipGetItemSoulInSea2 = getgenv().Configs.ThirdSea.SkipGetItemGuitar;
	AutoRainbowHaki = getgenv().Configs.ThirdSea.AutoRainbowHaki;
	AutoCDK = getgenv().Configs.ThirdSea.AutoCursedDualKatana;
end
StartKaiTun = getgenv().Configs.Main.Start;
SkipFarmLevel = getgenv().Configs.Main.SkipFarm;
HopCantKill = getgenv().Configs.Main.HopIfCantKill;
AutoFastMode = getgenv().Configs.Fps.FpsBoost;
BlockAllHop = getgenv().Configs.Main.BlockAllHop;
SelectRedeemCodeLevel = getgenv().Configs.Settings.SelectRedeemCodeLevel or v40;
RateFruitRaids = getgenv().Configs.Settings.SelectRateFruitRaid or 5000001;
LimitRaidsFrag = getgenv().Configs.Settings.LimitFragmentsRaids or 100000;
AutoGodhuman = getgenv().Configs.FightingStyle.AutoGodHuman;
AutoSuperhuman = getgenv().Configs.FightingStyle.AutoSuperhuman;
AutoDeathStep = getgenv().Configs.FightingStyle.AutoDeathStep;
AutoSharkmanKarate = getgenv().Configs.FightingStyle.AutoSharkmanKarate;
AutoElectricClaw = getgenv().Configs.FightingStyle.AutoElectricClaw;
AutoDargonTalon = getgenv().Configs.FightingStyle.AutoDargonTalon;
AutoFarmMasteryDevilFruit = getgenv().Configs.Mastery.AutoDFMastery;
AutoFarmMasterySword = getgenv().Configs.Mastery.AutoSwordMastery;
SwordFarmRarity = getgenv().Configs.Mastery.SelectRaritySword;
SelectMainDevilFruitSniper = getgenv().Configs.FruitsSettings.SelectMainDF;
SelectSubDevilFruitSinper = getgenv().Configs.FruitsSettings.SelectSubDF;
EatFruitInventroy = getgenv().Configs.FruitsSettings.AllowEatDFInventory;
StartSniper = getgenv().Configs.FruitsSettings.StartSniper;
SelectLockFPS = getgenv().Configs.Fps.LockFPS or 25;
LockFPSNow = getgenv().Configs.Fps.LockFPSNow;
WhiteScreen = getgenv().Configs.Fps.WhiteScreen;
function HaveThisFruitSell(v234)
	for v374, v375 in pairs(Com("F_", "GetFruits", false)) do
		if (v375['OnSale'] == true) then
			if tablefound(v234, v375.Name) then
				return "OneSell", v375.Name;
			end
		end
	end
	for v376, v377 in pairs(Com("F_", "getInventory")) do
		if tablefound(v234, v377.Name) then
			return "Inven", v377.Name;
		end
	end
	for v378, v379 in pairs(v234) do
		local v380 = tostring(v379:split("-")[2]) .. " Fruit";
		if inmyself(v380) then
			return "Inmy", v380;
		end
	end
	return false;
end
if (StartSniper == true) then
	StopRaidsPls = false;
end
spawn(function()
	while task.wait(1) do
		if StartSniper then
			DieWait();
			local v449 = game:GetService("Players")['LocalPlayer']:WaitForChild("Data").DevilFruit.Value;
			local v450, v451 = HaveThisFruitSell(SelectMainDevilFruitSniper);
			local v452, v453 = HaveThisFruitSell(SelectSubDevilFruitSinper);
			if tablefound(SelectMainDevilFruitSniper, v449) then
				StartSniper = false;
				break;
			elseif v450 then
				if (v450 == "Inmy") then
					if inmyself(v451) then
						local v717 = inmyself(v451);
						if v717 then
							StartKaiTun = false;
							EquipWeapon(v451);
							local v749 = v717.EatRemote:InvokeServer("Eat");
							StartKaiTun = true;
							if (v749 == true) then
								task.wait(4);
								if tablefound(SelectMainDevilFruitSniper, v449) then
									StopRaidsPls = false;
									StartSniper = false;
									break;
								end
							end
						end
					end
				elseif (v450 == "OneSell") then
					Com("F_", "PurchaseRawFruit", v451);
				elseif (v450 == "Inven") then
					StopRaidsPls = true;
					Com("F_", "LoadFruit", v451);
					task.wait(0.5);
				end
			elseif tablefound(SelectSubDevilFruitSinper, v449) then
				StopRaidsPls = false;
				task.wait(2);
			elseif v452 then
				if (v452 == "Inmy") then
					if inmyself(v453) then
						local v778 = inmyself(v453);
						if v778 then
							StartKaiTun = false;
							EquipWeapon(v453);
							v778.EatRemote:InvokeServer("Eat");
							StartKaiTun = true;
							task.wait(3);
							StopRaidsPls = false;
						end
					end
				elseif (v452 == "OneSell") then
					Com("F_", "PurchaseRawFruit", v453);
				elseif (v452 == "Inven") then
					StopRaidsPls = true;
					Com("F_", "LoadFruit", v453);
					task.wait(0.5);
				end
			end
		else
			break;
		end
	end
end);
spawn(function()
	while task.wait() do
		if getgenv().Configs.Webhook.StartWebhook then
			if (getgenv().Configs.Webhook.WebhookMode == "Send Every 10 min") then
				DataSend = v62:WebHookSend(getgenv().Configs.Webhook.WebhookURL);
				if (DataSend.StatusCode == 204) then
					local v612 = 0;
					local v613 = getgenv().Configs.Webhook.WebhookMode;
					repeat
						task.wait(1);
						v612 = v612 + 1;
					until (v612 >= 600) or (getgenv().Configs.Webhook.WebhookMode ~= v613) or not getgenv().Configs.Webhook.StartWebhook 
					task.wait();
				else
					warn("Send Webhook Error");
					getgenv().Configs.Webhook.StartWebhook = false;
					break;
				end
			else
				local v550, v551 = pcall(function()
					return game.Players.localPlayer.Data.Level.Value;
				end);
				if v550 then
					if (tonumber(v551) >= v40) then
						DataSend = v62:WebHookSend(getgenv().Configs.Webhook.WebhookURL);
						if (DataSend.StatusCode == 204) then
							if (getgenv().Configs.Webhook.WebhookMode == "Send On Level Max And Every 10 min") then
								local v750 = 0;
								local v751 = getgenv().Configs.Webhook.WebhookMode;
								repeat
									task.wait(1);
									v750 = v750 + 1;
								until (v750 >= 600) or (getgenv().Configs.Webhook.WebhookMode ~= v751) or not getgenv().Configs.Webhook.StartWebhook 
								task.wait();
							else
								getgenv().Configs.Webhook.StartWebhook = false;
								break;
							end
						else
							warn("Send Webhook Error");
							getgenv().Configs.Webhook.StartWebhook = false;
							break;
						end
					end
				end
			end
		else
			break;
		end
	end
end);
spawn(function()
	repeat
		task.wait();
	until LoadingScriptSuccess 
	if LockFPSNow then
		setfpscap(SelectLockFPS);
	else
		setfpscap(200);
	end
end);
local v25 = game:GetService("UserInputService");
local v89 = game:GetService("RunService");
spawn(function()
	if WhiteScreen then
		v89:Set3dRenderingEnabled(false);
	else
		v89:Set3dRenderingEnabled(true);
	end
	v25.InputBegan:Connect(function(v381, v382)
		if v382 then
			return;
		end
		if (v381.KeyCode == Enum.KeyCode.L) then
			WhiteScreen = not WhiteScreen;
			v89:Set3dRenderingEnabled(not WhiteScreen);
		end
	end);
end);
function AutoKaiTunOldWorld(v235, v236, v237, v238)
	local v239 = v235;
	local v240 = v236;
	local v241 = v237;
	local v242 = v238;
	if (AutoPole and (v241 >= 200) and string.find(PoleV1S:Update().Text, XMark) and (game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]") or game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]"))) then
		ShowDoingStatus("Kill Tunder God");
		if game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
			for v552, v553 in pairs(game.Workspace.Enemies:GetChildren()) do
				if (StartKaiTun and (v553.Name == "Thunder God [Lv. 575] [Boss]") and v553:FindFirstChild("HumanoidRootPart") and v553:FindFirstChild("Humanoid") and (v553.Humanoid.Health > 0)) then
					repeat
						task.wait();
						if ((v553.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(v553.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10));
						elseif ((v553.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							EquipWeapon();
							Usefastattack = true;
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								Com("F_", "Buso");
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v553.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
						end
					until not StartKaiTun or not v553.Parent or (v553.Humanoid.Health <= 0) 
					Usefastattack = false;
					pcall(RefreshStatus);
				end
			end
		elseif game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
			local v583 = CFrame.new(-7917.53613, 5616.61377, -2277.78564);
			if ((v583.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Questtween = toTarget(v583);
			elseif ((v583.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Questtween then
					Questtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v583;
			end
			Com("F_", "SetSpawnPoint");
		end
	elseif (AutoSaber and (v241 >= 200) and (game.Workspace.Map.Jungle.Final.Part.CanCollide == false) and string.find(SaberQuestS:Update().Text, XMark) and (game.ReplicatedStorage:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]"))) then
		ShowDoingStatus("Kill Saber");
		if game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
			for v615, v616 in pairs(game.Workspace.Enemies:GetChildren()) do
				if (StartKaiTun and (v616.Name == "Saber Expert [Lv. 200] [Boss]") and v616:FindFirstChild("HumanoidRootPart") and v616:FindFirstChild("Humanoid") and (v616.Humanoid.Health > 0)) then
					repeat
						task.wait();
						if ((v616.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(v616.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10));
						elseif ((v616.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							EquipWeapon();
							Usefastattack = true;
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								Com("F_", "Buso");
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v616.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
						end
					until not StartKaiTun or not v616.Parent or (v616.Humanoid.Health <= 0) 
					BuyAllHaki();
					Usefastattack = false;
					pcall(RefreshStatus);
				end
			end
		elseif game.ReplicatedStorage:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
			local v649 = CFrame.new(-1458.89502, 29.8870335, -50.633564);
			if ((v649.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Questtween = toTarget(v649);
			elseif ((v649.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Questtween then
					Questtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v649;
			end
			Com("F_", "SetSpawnPoint");
		end
	elseif (AutoSaber and (v241 >= 200) and (game.Workspace.Map.Jungle.Final.Part.CanCollide == true)) then
		ShowDoingStatus("Doing Quest Saber");
		if (game.Workspace.Map.Jungle.QuestPlates.Door.CanCollide == false) then
			if (game.Workspace.Map.Desert.Burn.Part.CanCollide == false) then
				if (Com("F_", "ProQuestProgress", "SickMan") == 0) then
					if (Com("F_", "ProQuestProgress", "RichSon") == 0) then
						if game.Workspace.Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
							for v808, v809 in pairs(game.Workspace.Enemies:GetChildren()) do
								if (StartKaiTun and v809:IsA("Model") and v809:FindFirstChild("Humanoid") and v809:FindFirstChild("HumanoidRootPart") and (v809.Humanoid.Health > 0) and (v809.Name == "Mob Leader [Lv. 120] [Boss]")) then
									repeat
										task.wait();
										if ((v809.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
											Farmtween = toTarget(v809.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10));
										elseif ((v809.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
											if Farmtween then
												Farmtween:Stop();
											end
											EquipWeapon();
											Usefastattack = true;
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												Com("F_", "Buso");
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v809.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
										end
									until not StartKaiTun or not v809.Parent or (v809.Humanoid.Health <= 0) 
									Usefastattack = false;
								end
							end
						elseif ((CFrame.new(-2848.59399, 7.4272871, 5342.44043).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Questtween = toTarget(CFrame.new(-2848.59399, 7.4272871, 5342.44043));
						elseif ((CFrame.new(-2848.59399, 7.4272871, 5342.44043).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Questtween then
								Questtween:Stop();
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-8, 0.371961564, -7.6181664e-8, 1, 4.4447486e-8, -0.371961564, 1.2921643e-8, -0.928248107);
						end
					elseif (Com("F_", "ProQuestProgress", "RichSon") == 1) then
						EquipWeapon("Relic");
						task.wait(0.5);
						if (game.ReplicatedStorage:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]")) then
							if ((CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.6690688e-9, 0.481375456, 2.53852e-8, 1, -5.799956e-8, -0.481375456, 6.3057264e-8, 0.876514494).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
								Questtween = toTarget(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.6690688e-9, 0.481375456, 2.53852e-8, 1, -5.799956e-8, -0.481375456, 6.3057264e-8, 0.876514494));
							elseif ((CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.6690688e-9, 0.481375456, 2.53852e-8, 1, -5.799956e-8, -0.481375456, 6.3057264e-8, 0.876514494).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
								if Questtween then
									Questtween:Stop();
								end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.6690688e-9, 0.481375456, 2.53852e-8, 1, -5.799956e-8, -0.481375456, 6.3057264e-8, 0.876514494);
							end
						else
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.6690688e-9, 0.481375456, 2.53852e-8, 1, -5.799956e-8, -0.481375456, 6.3057264e-8, 0.876514494);
						end
					else
						Com("F_", "ProQuestProgress", "RichSon");
					end
				else
					Com("F_", "ProQuestProgress", "GetCup");
					task.wait(0.5);
					EquipWeapon("Cup");
					task.wait(0.5);
					Com("F_", "ProQuestProgress", "FillCup", inmyself("Cup"));
					task.wait();
					Com("F_", "ProQuestProgress", "SickMan");
				end
			elseif inmyself("Torch") then
				if tween then
					tween:Cancel();
				end
				EquipWeapon("Torch");
				task.wait(0.5);
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.87708, 4.9214654, 4349.8501, -0.612586915, -9.686978e-8, 0.790403247, -1.2634203e-7, 1, 2.4638446e-8, -0.790403247, -8.476796e-8, -0.612586915);
				task.wait(8.14285714286);
			elseif not inmyself("Torch") then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.00003423728, -0.258850515, 0.965917408);
			end
		else
			for v672, v673 in pairs(game:GetService("Workspace").Map.Jungle.QuestPlates:GetChildren()) do
				if v673:IsA("Model") then
					task.wait();
					if ((v673.Button.BrickColor ~= BrickColor.new("Camo")) and StartKaiTun) then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v673:FindFirstChild("Button").CFrame;
						firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v673:FindFirstChild("Button"), 0);
						task.wait(0.1);
						firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v673:FindFirstChild("Button"), 1);
						task.wait(0.2);
					end
				end
			end
			task.wait(0.5);
		end
	elseif (AutoSea2 and (v241 >= 700) and (string.find(SaberQuestS:Update().Text, CheckMark) or not AutoSaber)) then
		ShowDoingStatus("Doing Quest Sea 2");
		if (Com("F_", "DressrosaQuestProgress", "Dressrosa") ~= 0) then
			if ((game.Workspace.Map.Ice.Door.CanCollide == false) and (game.Workspace.Map.Ice.Door.Transparency == 1)) then
				if game.Workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
					if DoorNewWorldTween then
						DoorNewWorldTween:Stop();
					end
					for v779, v780 in pairs(game.Workspace.Enemies:GetChildren()) do
						if (StartKaiTun and v780:IsA("Model") and v780:FindFirstChild("Humanoid") and v780:FindFirstChild("HumanoidRootPart") and (v780.Humanoid.Health > 0) and (v780.Name == "Ice Admiral [Lv. 700] [Boss]")) then
							repeat
								task.wait();
								if ((v780.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
									Farmtween = toTarget(v780.HumanoidRootPart.CFrame);
								elseif ((v780.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
									if Farmtween then
										Farmtween:Stop();
									end
									EquipWeapon();
									Usefastattack = true;
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										Com("F_", "Buso");
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v780.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
								end
							until not v780.Parent or (v780.Humanoid.Health <= 0) or (StartKaiTun == false) 
							Usefastattack = false;
							a = 1;
							repeat
								task.wait();
								a = a + 1;
								Com("F_", "TravelDressrosa");
							until (a == 20) or (StartKaiTun == false) 
						end
					end
				else
					DoorNewWorldTween = toTarget(CFrame.new(1382.562255859375, 26.999441146850586, -1458.77783203125));
					Com("F_", "TravelDressrosa");
				end
			elseif inmyself("Key") then
				EquipWeapon("Key");
				task.wait(0.1);
				if ((CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
					DoorNewWorldTween = toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488));
				elseif ((CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
					if DoorNewWorldTween then
						DoorNewWorldTween:Stop();
					end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.7124, 37.3751602, -1325.6488);
					task.wait(0.3);
				end
			elseif not inmyself("Key") then
				Com("F_", "DressrosaQuestProgress", "Detective");
				task.wait(0.3);
			end
		else
			Com("F_", "TravelDressrosa");
		end
	elseif (SkipFarmLevel and (v241 >= 10) and (v241 <= 40)) then
		local v689 = CFrame.new(-4713.13134765625, 845.2769775390625, -1859.4736328125);
		if game:GetService("Workspace").Enemies:FindFirstChild("God's Guard [Lv. 450]") then
			for v755, v756 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if (SkipFarmLevel and StartKaiTun and (v756.Name == "God's Guard [Lv. 450]") and v756:FindFirstChild("HumanoidRootPart") and v756:FindFirstChild("Humanoid") and (v756.Humanoid.Health > 0)) then
					repeat
						task.wait();
						if (v756:FindFirstChild("HumanoidRootPart") and v756:FindFirstChild("Humanoid") and ((v756.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150)) then
							FarmtoTarget = toTarget(v756.HumanoidRootPart.Position, v756.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1));
						elseif (v756:FindFirstChild("HumanoidRootPart") and v756:FindFirstChild("Humanoid") and ((v756.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150)) then
							if FarmtoTarget then
								FarmtoTarget:Stop();
							end
							Usefastattack = true;
							EquipWeapon();
							StartMagnetFarmLevelSkip = true;
							if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150)) then
								game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
								game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
							end
							toAroundTarget(v756.HumanoidRootPart.CFrame);
						end
					until not game:GetService("Workspace").Enemies:FindFirstChild("God's Guard [Lv. 450]") or not (SkipFarmLevel or StartKaiTun) or (v756.Humanoid.Health <= 0) or not v756.Parent 
					Usefastattack = false;
					StartMagnetFarmLevelSkip = false;
				end
			end
		else
			Usefastattack = false;
			StartMagnetFarmLevelSkip = false;
			Modstween = toTarget(v689.Position, v689);
			if ((v689.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Modstween then
					Modstween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v689;
			end
			task.wait();
		end
	elseif (SkipFarmLevel and (v241 >= 41) and (v241 <= 75)) then
		local v728 = {CFrame.new(-7682.611328125, 5567.037109375, -497.36492919921875),CFrame.new(-7630.34375, 5637.08056640625, -1425.1163330078125),CFrame.new(-7862.18310546875, 5662.13720703125, -1705.7489013671875)};
		if (game:GetService("Workspace").Enemies:FindFirstChild("Shanda [Lv. 475]") or game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad [Lv. 525]") or game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier [Lv. 550]")) then
			for v781, v782 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if (SkipFarmLevel and StartKaiTun and table.find({"Shanda [Lv. 475]","Royal Squad [Lv. 525]","Royal Soldier [Lv. 550]"}, v782.Name) and v782:FindFirstChild("HumanoidRootPart") and v782:FindFirstChild("Humanoid") and (v782.Humanoid.Health > 0)) then
					repeat
						task.wait();
						if (v782:FindFirstChild("HumanoidRootPart") and v782:FindFirstChild("Humanoid") and ((v782.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150)) then
							FarmtoTarget = toTarget(v782.HumanoidRootPart.Position, v782.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1));
						elseif (v782:FindFirstChild("HumanoidRootPart") and v782:FindFirstChild("Humanoid") and ((v782.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150)) then
							if FarmtoTarget then
								FarmtoTarget:Stop();
							end
							Usefastattack = true;
							EquipWeapon();
							StartMagnetFarmLevelSkip = true;
							if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150)) then
								game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
								game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
							end
							toAroundTarget(v782.HumanoidRootPart.CFrame);
						end
					until not (game:GetService("Workspace").Enemies:FindFirstChild("Shanda [Lv. 475]") or game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad [Lv. 525]") or game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier [Lv. 550]")) or not (SkipFarmLevel or StartKaiTun) or (v782.Humanoid.Health <= 0) or not v782.Parent 
					Usefastattack = false;
					StartMagnetFarmLevelSkip = false;
				end
			end
		else
			Usefastattack = false;
			StartMagnetFarmLevelSkip = false;
			for v783, v784 in pairs(v728) do
				if (SkipFarmLevel and StartKaiTun and not (game:GetService("Workspace").Enemies:FindFirstChild("Shanda [Lv. 475]") or game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad [Lv. 525]") or game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier [Lv. 550]"))) then
					while SkipFarmLevel and StartKaiTun and not (game:GetService("Workspace").Enemies:FindFirstChild("Shanda [Lv. 475]") or game:GetService("Workspace").Enemies:FindFirstChild("Royal Squad [Lv. 525]") or game:GetService("Workspace").Enemies:FindFirstChild("Royal Soldier [Lv. 550]")) do
						task.wait();
						Modstween = toTarget(v784);
						if ((v784.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Modstween then
								Modstween:Stop();
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v784;
							break;
						end
						task.wait(0.2);
					end
					task.wait(0.1);
				end
			end
			if Modstween then
				Modstween:Stop();
			end
		end
	elseif (function()
		for v767, v768 in pairs(game:GetService("Workspace"):GetChildren()) do
			if (v768:IsA("Tool") and string.find(v768.Name, "Fruit")) then
				return true;
			end
		end
		return false;
	end)() then
		for v785, v786 in pairs(game:GetService("Workspace"):GetChildren()) do
			if (v786:IsA("Tool") and string.find(v786.Name, "Fruit") and StartKaiTun) then
				if FruitTarget then
					FruitTarget:Stop();
				end
				repeat
					task.wait(0.1);
					FruitTarget = toTarget(v786.Handle.CFrame);
				until ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v786.Handle.Position).Magnitude <= 8) or not StartKaiTun or not v786.Parent 
				task.wait(0.5);
				StoreMyFruit();
			end
		end
	else
		local v769 = {};
		for v787, v788 in pairs(game:GetService("Players"):GetChildren()) do
			if (v788:FindFirstChild("Data") and v788.Character and (v788 ~= game.Players.LocalPlayer)) then
				if ((v788.Data.Level.Value >= 25) and ((v788.Data.Level.Value or v241) >= (v241 - 70)) and ((v788.Data.Level.Value or v241) <= (v241 + 70))) then
					table.insert(v769, v788.Name);
				end
			end
		end
		if (not havesling and (game.Players.LocalPlayer.Data.Beli.Value >= 5000)) then
			Com("F_", "BuyItem", "Slingshot");
			task.wait(0.2);
			if (#GetWeaponMastery("Slingshot") > 0) then
				havesling = true;
			end
		end
		if (not string.find(v239.Text, NameCheckQuest) and not v240.Container.QuestReward.Title.Text:match("50,000,000 Exp.")) then
			Com("F_", "AbandonQuest");
		end
		if (v240.Visible == false) then
			if (v43 >= 30) then
				if (v10 == false) then
					v10 = true;
					task.delay(300, function()
						v43 = 0;
						v10 = false;
					end);
				end
			end
			if ((v241 < 40) or not SkipFarmLevel or (#v769 == 0) or (v43 >= 30) or not havesling) then
				if (HopCantKill and (v43 >= 30)) then
					v54:NormalTeleport();
					return;
				end
			else
				local v822 = tostring(Com("F_", "PlayerHunter"));
				if v822:find("We heard some") then
					v43 = v43 + 1;
					return;
				else
					task.wait(0.1);
					local v846 = tostring(Com("F_", "PlayerHunter"));
					if v846:find("We heard some") then
						v43 = v43 + 1;
						return;
					end
				end
			end
			Usefastattack = false;
			StartMagnetFarmLevel = false;
			if ((CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Questtween = toTarget(CFrameQuest);
			elseif ((CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Questtween then
					Questtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest;
				task.wait(0.95);
				Com("F_", "StartQuest", NameQuest, LevelQuest);
				Com("F_", "SetSpawnPoint");
			end
		elseif (v240.Visible == true) then
			if v240.Container.QuestReward.Title.Text:match("50,000,000 Exp.") then
				ShowDoingStatus("Skip Farm Level");
				for v863, v864 in pairs(game:GetService("Players"):GetChildren()) do
					if (v864:FindFirstChild("Data") and v864.Character and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, (function()
						if v864 then
							return v864.Name;
						else
							return "NIL";
						end
					end)())) then
						if ((v864.Data.Level.Value >= 25) and ((v864.Data.Level.Value or v241) >= (v241 - 70)) and ((v864.Data.Level.Value or v241) <= (v241 + 70))) then
							if (StartKaiTun and SkipFarmLevel and (v864.Name == v239.Text:split(" ")[2]) and v864.Character:FindFirstChild("HumanoidRootPart") and v864.Character:FindFirstChild("Humanoid") and (v864.Character.Humanoid.Health > 0)) then
								repeat
									task.wait();
									if (game:GetService("Players")['LocalPlayer'].PlayerGui.Main.PvpDisabled.Visible == true) then
										Com("F_", "EnablePvp");
									end
									if (v864.Character:FindFirstChild("HumanoidRootPart") and v864.Character:FindFirstChild("Humanoid") and ((v864.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150)) then
										FarmtoTarget = toTarget(v864.Character.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1));
									elseif (v864.Character:FindFirstChild("HumanoidRootPart") and v864.Character:FindFirstChild("Humanoid") and ((v864.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150)) then
										if FarmtoTarget then
											FarmtoTarget:Stop();
										end
										if (havesling and (UsefastattackPlayers == false) and (game:GetService("Players")['LocalPlayer'].PlayerGui.Main.InCombat.Visible == false) and not inmyself("Slingshot")) then
											PositionSling = v864.Character.HumanoidRootPart.Position;
											if not inmyself("Slingshot") then
												Com("F_", "LoadItem", "Slingshot");
												return;
											elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Slingshot") then
												game.Players.LocalPlayer.Backpack:FindFirstChild("Slingshot").Parent = game.Players.LocalPlayer.Character;
											end
											task.wait();
											v30:CaptureController();
											v30:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame);
										else
											EquipWeapon();
										end
										v864.Character.HumanoidRootPart.Size = Vector3.new(30, 30, 30);
										if (UsefastattackPlayers == true) then
											toAroundTarget(v864.Character.HumanoidRootPart.CFrame);
										else
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v864.Character.HumanoidRootPart.CFrame + (v864.Character.HumanoidRootPart.CFrame.LookVector * -20);
										end
										if (v8 == false) then
											v8 = true;
											task.delay(2.5, function()
												EquipWeapon();
												task.wait();
												UsefastattackPlayers = true;
												v8 = false;
											end);
										end
										if (function()
											for v1021, v1022 in pairs(game:GetService("Players")['LocalPlayer'].PlayerGui:FindFirstChild("Notifications"):GetChildren()) do
												if (v1022.Name == "NotificationTemplate") then
													if string.lower(v1022.Text):find("can") then
														pcall(function()
															v1022:Destroy();
														end);
														return true;
													end
												end
											end
											return false;
										end)() then
											break;
										end
									end
								until (not v864 and not StartKaiTun) or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, (function()
									if v864 then
										return v864.Name;
									else
										return "NIL";
									end
								end)()) or (v864.Character.Humanoid.Health <= 0) or not v864.Character or (v240.Visible == false) 
								UsefastattackPlayers = false;
								spawn(function()
									task.wait(2.62);
									UsefastattackPlayers = false;
								end);
							end
						else
							UsefastattackPlayers = false;
							task.wait();
							Com("F_", "AbandonQuest");
						end
					end
				end
			else
				ShowDoingStatus("Auto Farm");
				if game:GetService("Workspace").Enemies:FindFirstChild(Monster) then
					for v895, v896 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (StartKaiTun and (v896.Name == Monster) and v896:FindFirstChild("HumanoidRootPart") and v896:FindFirstChild("Humanoid") and (v896.Humanoid.Health > 0)) then
							if string.find(v239.Text, NameCheckQuest) then
								repeat
									task.wait();
									if (v896:FindFirstChild("HumanoidRootPart") and v896:FindFirstChild("Humanoid")) then
										if ((v896.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
											FarmtoTarget = toTarget(v896.HumanoidRootPart.Position, v896.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1));
										elseif ((v896.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
											if FarmtoTarget then
												FarmtoTarget:Stop();
											end
											Usefastattack = true;
											EquipWeapon();
											StartMagnetFarmLevel = true;
											PosMon = v896.HumanoidRootPart.CFrame;
											toAroundTarget(v896.HumanoidRootPart.CFrame);
										end
									end
								until not game:GetService("Workspace").Enemies:FindFirstChild(Monster) or not StartKaiTun or not string.find(v239.Text, NameCheckQuest) or (v896.Humanoid.Health <= 0) or not v896.Parent or (v240.Visible == false) 
								Usefastattack = false;
								StartMagnetFarmLevel = false;
								if (v240.Visible == false) then
									break;
								end
							else
								Com("F_", "AbandonQuest");
							end
						end
					end
				else
					StartMagnetFarmLevel = false;
					Usefastattack = false;
					if ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
						Modstween = toTarget(CFrameMon);
					elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
						if Modstween then
							Modstween:Stop();
						end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
						task.wait(0.314285714286);
					end
				end
			end
		end
	end
end
function AutoKaiTunNewWorld(v243, v244, v245, v246)
	local v247 = v243;
	local v248 = v244;
	local v249 = v245;
	local v250 = v246;
	if (((AutoDeathStep and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and (Com("F_", "BuyDeathStep", true) ~= 1) and game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild("PhoeyuDoor")) or string.find(RengokuS:Update().Text, XMark)) and (game.ReplicatedStorage:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") or game.Workspace.Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]"))) then
		ShowDoingStatus("Kill Awaken Ice");
		if game.Workspace.Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
			for v554, v555 in pairs(game.Workspace.Enemies:GetChildren()) do
				if (StartKaiTun and (v555.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]") and v555:FindFirstChild("HumanoidRootPart") and v555:FindFirstChild("Humanoid") and (v555.Humanoid.Health > 0)) then
					repeat
						task.wait();
						if ((v555.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(v555.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10));
						elseif ((v555.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							EquipWeapon();
							Usefastattack = true;
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								Com("F_", "Buso");
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v555.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
						end
					until not StartKaiTun or not v555.Parent or (v555.Humanoid.Health <= 0) 
					Usefastattack = false;
				end
			end
		elseif game.ReplicatedStorage:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
			local v584 = CFrame.new(6407.33936, 340.223785, -6892.521);
			if ((v584.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Questtween = toTarget(v584);
			elseif ((v584.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Questtween then
					Questtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v584;
			end
			Com("F_", "SetSpawnPoint");
		end
	elseif (AutoSharkmanKarate and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and (Com("F_", "BuySharkmanKarate", true) ~= 1) and (tonumber(Com("F_", "BuySharkmanKarate", true)) ~= 0) and (game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]"))) then
		ShowDoingStatus("Kill Tide Keeper");
		if game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
			for v617, v618 in pairs(game.Workspace.Enemies:GetChildren()) do
				if (StartKaiTun and (v618.Name == "Tide Keeper [Lv. 1475] [Boss]") and v618:FindFirstChild("HumanoidRootPart") and v618:FindFirstChild("Humanoid") and (v618.Humanoid.Health > 0)) then
					repeat
						task.wait();
						if ((v618.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(v618.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10));
						elseif ((v618.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							EquipWeapon();
							Usefastattack = true;
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								Com("F_", "Buso");
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v618.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
						end
					until not StartKaiTun or not v618.Parent or (v618.Humanoid.Health <= 0) 
					Usefastattack = false;
				end
			end
		elseif game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
			local v650 = CFrame.new(-3570.18652, 123.328949, -11555.9072);
			if ((v650.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Questtween = toTarget(v650);
			elseif ((v650.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Questtween then
					Questtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v650;
			end
			Com("F_", "SetSpawnPoint");
		end
	elseif (AutoCursedCaptain and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and (game.ReplicatedStorage:FindFirstChild("Cursed Captain [Lv. 1325] [Raid Boss]") or game.Workspace.Enemies:FindFirstChild("Cursed Captain [Lv. 1325] [Raid Boss]"))) then
		ShowDoingStatus("Kill Cursed Captain");
		if game.Workspace.Enemies:FindFirstChild("Cursed Captain [Lv. 1325] [Raid Boss]") then
			for v674, v675 in pairs(game.Workspace.Enemies:GetChildren()) do
				if (StartKaiTun and (v675.Name == "Cursed Captain [Lv. 1325] [Raid Boss]") and v675:FindFirstChild("HumanoidRootPart") and v675:FindFirstChild("Humanoid") and (v675.Humanoid.Health > 0)) then
					repeat
						task.wait();
						if ((v675.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(v675.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10));
						elseif ((v675.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							EquipWeapon();
							Usefastattack = true;
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								Com("F_", "Buso");
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v675.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
						end
					until not StartKaiTun or not v675.Parent or (v675.Humanoid.Health <= 0) 
					Usefastattack = false;
				end
			end
		elseif game.ReplicatedStorage:FindFirstChild("Cursed Captain [Lv. 1325] [Raid Boss]") then
			local v691 = CFrame.new(916.928589, 181.092773, 33422);
			if ((v691.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Questtween = toTarget(v691);
			elseif ((v691.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Questtween then
					Questtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v691;
			end
			Com("F_", "SetSpawnPoint");
		end
	elseif ((AutoDarkbeard or AutoSoulGuitar) and (game.ReplicatedStorage:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or game.Workspace.Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]"))) then
		ShowDoingStatus("Kill Darkbeard");
		if game.Workspace.Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
			for v719, v720 in pairs(game.Workspace.Enemies:GetChildren()) do
				if (StartKaiTun and (v720.Name == "Darkbeard [Lv. 1000] [Raid Boss]") and v720:FindFirstChild("HumanoidRootPart") and v720:FindFirstChild("Humanoid") and (v720.Humanoid.Health > 0)) then
					repeat
						task.wait();
						if ((v720.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(v720.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10));
						elseif ((v720.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							EquipWeapon();
							Usefastattack = true;
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								Com("F_", "Buso");
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v720.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
						end
					until not StartKaiTun or not v720.Parent or (v720.Humanoid.Health <= 0) 
					Usefastattack = false;
				end
			end
		elseif game.ReplicatedStorage:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
			local v731 = CFrame.new(3876.00366, 24.6882591, -3820.21777);
			if ((v731.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Questtween = toTarget(v731);
			elseif ((v731.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Questtween then
					Questtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v731;
			end
			Com("F_", "SetSpawnPoint");
		end
	elseif ((AutoDarkbeard or AutoSoulGuitar) and inmyself("Fist of Darkness")) then
		ShowDoingStatus("Use Fist of Darkness");
		EquipWeapon("Fist of Darkness");
		toTarget(CFrame.new(3777.35693, 14.675993, -3499.71313, 0.189889491, -1.57955e-8, -0.981805444, 3.886598e-8, 1, -8.571207e-9, 0.981805444, -3.653125e-8, 0.189889491));
		task.wait(1);
	elseif (inmyself("Red Key") and not game:GetService("Workspace").Map.CakeLoaf:FindFirstChild("RedDoor")) then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2712.4619140625, 64.36634826660156, -12892.9345703125);
		Com("F_", "CakeScientist", "Check");
		task.wait(0.2);
		Com("F_", "RaidsNpc", "Check");
		task.wait(0.2);
	elseif (AutoFactory and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and (game.Workspace.Enemies:FindFirstChild("Core") or game:GetService("ReplicatedStorage"):FindFirstChild("Core"))) then
		ShowDoingStatus("Do Factory");
		if (game:GetService("ReplicatedStorage"):FindFirstChild("Core") and game:GetService("ReplicatedStorage"):FindFirstChild("Core"):FindFirstChild("Humanoid")) then
			GOtween = toTarget(CFrame.new(448.46756, 199.356781, -441.389252).Position, CFrame.new(448.46756, 199.356781, -441.389252));
			if ((CFrame.new(448.46756, 199.356781, -441.389252).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if GOtween then
					GOtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(448.46756, 199.356781, -441.389252);
			end
		elseif game.Workspace.Enemies:FindFirstChild("Core") then
			for v834, v835 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if (StartKaiTun and (v835.Name == "Core") and v835:FindFirstChild("Humanoid") and (v835.Humanoid.Health > 0)) then
					repeat
						task.wait(0.1);
						if ((v835.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(v835.HumanoidRootPart.Position, v835.HumanoidRootPart.CFrame);
						elseif ((v835.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							EquipWeapon();
							Usefastattack = true;
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v835.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
						end
					until not StartKaiTun or (v835.Humanoid.Health <= 0) or not v835.Parent 
					Usefastattack = false;
				end
			end
		end
	elseif ((v249 >= 850) and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and AutoBartilo and ((Com("F_", "BartiloQuestProgress", "Bartilo") == 0) or ((Com("F_", "BartiloQuestProgress", "Bartilo") == 1) and (game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]"))) or (Com("F_", "BartiloQuestProgress", "Bartilo") == 2))) then
		ShowDoingStatus("Do Bartilo Quest");
		if (Com("F_", "BartiloQuestProgress", "Bartilo") == 0) then
			if (string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
				if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
					for v897, v898 in pairs(game.Workspace.Enemies:GetChildren()) do
						if ((v898.Name == "Swan Pirate [Lv. 775]") and v898:FindFirstChild("HumanoidRootPart") and v898:FindFirstChild("Humanoid") and (v898.Humanoid.Health > 0)) then
							repeat
								task.wait();
								if ((v898.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
									Farmtween = toTarget(v898.HumanoidRootPart.CFrame);
								elseif ((v898.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
									if Farmtween then
										Farmtween:Stop();
									end
									EquipWeapon();
									Usefastattack = true;
									StartMagnetSwan = true;
									PosMon = v898.HumanoidRootPart.CFrame;
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										Com("F_", "Buso");
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v898.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
								end
							until not v898.Parent or (v898.Humanoid.Health <= 0) or (StartKaiTun == false) or (game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
							Usefastattack = false;
							StartMagnetSwan = false;
						end
					end
				else
					StartMagnetSwan = false;
					Questtween = toTarget(CFrame.new(1057.92761, 137.614319, 1242.08069));
					if ((CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
						if Questtween then
							Questtween:Stop();
						end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069);
					end
				end
			else
				Bartilotween = toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966));
				if ((CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
					if Bartilotween then
						Bartilotween:Stop();
					end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-456.28952, 73.0200958, 299.895966);
					Com("F_", "StartQuest", "BartiloQuest", 1);
				end
			end
		elseif (Com("F_", "BartiloQuestProgress", "Bartilo") == 1) then
			if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
				for v899, v900 in pairs(game.Workspace.Enemies:GetChildren()) do
					if ((v900.Name == "Jeremy [Lv. 850] [Boss]") and v900:FindFirstChild("HumanoidRootPart") and v900:FindFirstChild("Humanoid") and (v900.Humanoid.Health > 0)) then
						repeat
							task.wait();
							if ((v900.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
								Farmtween = toTarget(v900.HumanoidRootPart.CFrame);
							elseif ((v900.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
								if Farmtween then
									Farmtween:Stop();
								end
								EquipWeapon();
								Usefastattack = true;
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									Com("F_", "Buso");
								end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v900.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
							end
						until not v900.Parent or (v900.Humanoid.Health <= 0) or (StartKaiTun == false) 
						Usefastattack = false;
					end
				end
			else
				Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375));
				if ((CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
					if Bartilotween then
						Bartilotween:Stop();
					end
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375);
				end
			end
		elseif (Com("F_", "BartiloQuestProgress", "Bartilo") == 2) then
			if ((CFrame.new(-1836, 30, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Bartilotween = toTarget(CFrame.new(-1836, 30, 1714));
			elseif ((CFrame.new(-1836, 30, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Bartilotween then
					Bartilotween:Stop();
				end
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714);
				task.wait(0.5);
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685);
				task.wait(1);
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807);
				task.wait(1);
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685);
				task.wait(1);
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541);
				task.wait(1);
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659);
				task.wait(1);
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368);
				task.wait(1);
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625);
				task.wait(1);
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541);
			end
		end
	elseif ((v249 >= 850) and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and AutoQuestFlower and (game.Players.LocalPlayer.Data.Beli.Value >= 500000) and inmyself("Flower 1") and inmyself("Flower 2") and inmyself("Flower 3")) then
		Com("F_", "Alchemist", "1");
		Com("F_", "Alchemist", "2");
		if ((CFrame.new(-2777.6001, 72.9661407, -3571.42285).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
			Farmtween = toTarget(CFrame.new(-2777.6001, 72.9661407, -3571.42285).Position, CFrame.new(-2777.6001, 72.9661407, -3571.42285));
		elseif ((CFrame.new(-2777.6001, 72.9661407, -3571.42285).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
			if Farmtween then
				Farmtween:Stop();
			end
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2777.6001, 72.9661407, -3571.42285);
			Com("F_", "Alchemist", "3");
		end
	elseif ((v249 >= 850) and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and AutoQuestFlower and (game.Players.LocalPlayer.Data.Beli.Value >= 500000) and (tonumber(Com("F_", "BartiloQuestProgress", "Bartilo")) == 3) and (Com("F_", "Alchemist", "1") ~= -2) and (((workspace.Flower2.Transparency ~= 1) and not inmyself("Flower 2")) or not inmyself("Flower 2") or not inmyself("Flower 3"))) then
		ShowDoingStatus("Do Flower Quest");
		Com("F_", "Alchemist", "1");
		Com("F_", "Alchemist", "2");
		if (not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 1") and (workspace.Flower1.Transparency ~= 1)) then
			if ((workspace.Flower1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Farmtween = toTarget(workspace.Flower1.Position, workspace.Flower1.CFrame);
			elseif ((workspace.Flower1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Farmtween then
					Farmtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Flower1.CFrame;
			end
		elseif (not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 2") and (workspace.Flower2.Transparency ~= 1)) then
			if ((workspace.Flower2.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Farmtween = toTarget(workspace.Flower2.Position, workspace.Flower2.CFrame);
			elseif ((workspace.Flower2.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Farmtween then
					Farmtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Flower2.CFrame;
			end
		elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") then
			if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
				for v971, v972 in pairs(game.Workspace.Enemies:GetChildren()) do
					if (StartKaiTun and (v972.Name == "Swan Pirate [Lv. 775]") and v972:FindFirstChild("Humanoid") and (v972.Humanoid.Health >= 0)) then
						repeat
							task.wait();
							if ((v972.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
								Farmtween = toTarget(v972.HumanoidRootPart.Position, v972.HumanoidRootPart.CFrame);
							elseif ((v972.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
								if Farmtween then
									Farmtween:Stop();
								end
								StartMagnetSwan = true;
								PosMon = v972.HumanoidRootPart.CFrame;
								EquipWeapon();
								Usefastattack = true;
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v972.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
							end
						until not v972.Parent or (v972.Humanoid.Health <= 0) or (StartKaiTun == false) or game.Players.LocalPlayer.Backpack:FindFirstChild("Flower 3") 
						StartMagnetSwan = false;
						Usefastattack = false;
					end
				end
			else
				StartMagnetSwan = false;
				if ((CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
					Farmtween = toTarget(CFrame.new(1057.92761, 137.614319, 1242.08069).Position, CFrame.new(1057.92761, 137.614319, 1242.08069));
				elseif ((CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
					if Farmtween then
						Farmtween:Stop();
					end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069);
				end
			end
		end
	elseif (AutoV3Race and (v249 >= 1000) and (Com("F_", "Alchemist", "1") == -2) and (Com("F_", "Wenlocktoad", "1") ~= -2) and (game.Players.LocalPlayer.Data.Beli.Value >= 2000000) and RaceAllIn1()) then
		local v875 = RaceAllIn1();
		if (v875 == "DoMinkRace") then
			if (function()
				for v932, v933 in pairs(game.Workspace:GetDescendants()) do
					if (v933.Name:match("Chest") and v933:IsA("BasePart")) then
						return true;
					end
				end
				return false;
			end)() then
				for v950, v951 in pairs(game.Workspace:GetDescendants()) do
					if (v951.Name:match("Chest") and v951:IsA("BasePart") and StartKaiTun) then
						if ChestTarget then
							ChestTarget:Stop();
						end
						repeat
							task.wait();
							ChestTarget = toTarget(v951.CFrame);
							task.wait(0.2);
						until ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v951.Position).Magnitude <= 10) or not StartKaiTun or not v951.Parent 
						if not StartKaiTun then
							if tween then
								tween:Cancel();
							end
							break;
						end
						task.wait(5);
					end
				end
			end
		elseif (v875 == "DoFishmanRace") then
			local v934 = v67();
			if (v934 and (v934.Parent.Humanoid.Value <= 0)) then
				game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false;
				task.wait();
				AntiSit = false;
				v934.Parent:Destroy();
				task.wait(0.2);
			end
			if ((game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and (game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true)) or v68() or CheckPirateBoat()) then
				if v68() then
					xpcall(function()
						AntiSit = false;
						game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false;
						for v1004, v1005 in pairs(game.Workspace.SeaBeasts:GetChildren()) do
							if (StartKaiTun and v1005:FindFirstChild("HumanoidRootPart") and (v1005.Health.Value > 0)) then
								repeat
									task.wait();
									local v1035 = v1005:FindFirstChild("HumanoidRootPart").CFrame;
									if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (Vector3.new(v1035.X, 10, v1035.Z))).magnitude > 150) then
										Farmtween = toTarget(CFrame.new(v1035.X, 10, v1035.Z));
									elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (Vector3.new(v1035.X, 10, v1035.Z))).magnitude <= 150) then
										if Farmtween then
											Farmtween:Stop();
										end
										if (TypeSeabeast == 0) then
											PosKillSea = Vector3.new(v1035.X, 80, v1035.Z);
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1035.X, 10, v1035.Z);
										else
											PosKillSea = Vector3.new(v1035.X, 60, v1035.Z);
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1035.X, 70, v1035.Z);
										end
										SpamSkillSea = true;
									end
								until not StartKaiTun or not v1005.Parent or not v1005:FindFirstChild("HumanoidRootPart") or (v1005.Health.Value == 0) 
								SpamSkillSea = false;
								AntiSit = false;
							end
						end
					end, function(...)
						print(...);
					end);
				elseif CheckPirateBoat() then
					xpcall(function()
						AntiSit = false;
						game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false;
						for v1024, v1025 in pairs(game.Workspace.Enemies:GetChildren()) do
							if (StartKaiTun and ((v1025.Name == "PirateBasic") or (v1025.Name == "PirateBrigade")) and v1025:FindFirstChildOfClass("VehicleSeat") and (v1025.Health.Value > 0)) then
								repeat
									task.wait();
									local v1053 = v1025:FindFirstChildOfClass("VehicleSeat").CFrame;
									if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (Vector3.new(v1053.X, 30, v1053.Z))).magnitude > 150) then
										Farmtween = toTarget(CFrame.new(v1053.X, 30, v1053.Z));
									elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (Vector3.new(v1053.X, 30, v1053.Z))).magnitude <= 150) then
										if Farmtween then
											Farmtween:Stop();
										end
										PosKillSea = v1053.Position;
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1053 * CFrame.new(0, 10, 1);
										SpamSkillSea = true;
									end
								until not StartKaiTun or not v1025.Parent or not v1025:FindFirstChildOfClass("VehicleSeat") or (v1025.Health.Value == 0) 
								SpamSkillSea = false;
								AntiSit = false;
							end
						end
					end, function(...)
						print(...);
					end);
				elseif (game.Players.LocalPlayer.Character.Humanoid.Sit == true) then
					AntiSit = true;
					SpamSkillSea = false;
					game:service("VirtualInputManager"):SendKeyEvent(true, "W", false, game);
					task.wait(0.5);
					game:service("VirtualInputManager"):SendKeyEvent(false, "W", false, game);
					task.wait(1);
					game:service("VirtualInputManager"):SendKeyEvent(true, "S", false, game);
					task.wait(0.5);
					game:service("VirtualInputManager"):SendKeyEvent(false, "S", false, game);
					task.wait(1);
				end
			elseif ((v934 and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and (game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false) and v50 and ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(38.905670166015625, -0.4971587657928467, 5150.13623046875)).Magnitude > 30)) or (v51 and ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(163.8607940673828, -0.4971587657928467, 3242.834716796875)).Magnitude > 30))) then
				AntiSit = false;
				SpamSkillSea = false;
				local v980;
				if v50 then
					v980 = toTarget(CFrame.new(38.905670166015625, -0.4971587657928467, 5150.13623046875));
				elseif v51 then
					v980 = toTarget(CFrame.new(163.8607940673828, -0.4971587657928467, 3242.834716796875));
				end
				v980:Wait();
				task.wait(2);
			elseif (v934 and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and (game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false)) then
				AntiSit = true;
				SpamSkillSea = false;
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
				task.wait(0.1);
				v934:Sit(game.Players.LocalPlayer.Character:WaitForChild("Humanoid"));
			elseif not v934 then
				Com("F_", "BuyBoat", "PirateBasic");
				task.wait(1);
			end
		elseif ((v875 == "DoFajita") or (v875 == "DoJeremy") or (v875 == "DoDiamond")) then
			local v963 = "";
			if (v875 == "DoDiamond") then
				v963 = "Diamond [Lv. 750] [Boss]";
			elseif (v875 == "DoJeremy") then
				v963 = "Jeremy [Lv. 850] [Boss]";
			elseif (v875 == "DoFajita") then
				v963 = "Fajita [Lv. 925] [Boss]";
			end
			if game.Workspace.Enemies:FindFirstChild(v963) then
				if KillBossTar then
					KillBossTar:Stop();
				end
				for v994, v995 in pairs(game.Workspace.Enemies:GetChildren()) do
					if (AutoEvoRace3 and (v995.Name == v963) and v995:FindFirstChild("HumanoidRootPart") and (v995.Humanoid.Health >= 0)) then
						repeat
							task.wait();
							if ((v995.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150) then
								Farmtween = toTarget(v995.HumanoidRootPart.Position, v995.HumanoidRootPart.CFrame);
							elseif ((v995.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
								if Farmtween then
									Farmtween:Stop();
								end
								EquipWeapon(SelectToolWeapon);
								Usefastattack = true;
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v995.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
							end
						until not v995.Parent or (v995.Humanoid.Health <= 0) or (AutoEvoRace3 == false) 
						Usefastattack = false;
						if (not v995.Parent or (v995.Humanoid.Health <= 0)) then
							if (v875 == "DoDiamond") then
								v59['Dai'] = true;
							elseif (v875 == "DoJeremy") then
								v59['Jer'] = true;
							elseif (v875 == "DoFajita") then
								v59['Faji'] = true;
							end
						end
					end
				end
			else
				Usefastattack = false;
				local v981 = havemob(v963);
				if not v981 then
					return;
				end
				KillBossTar = toTarget(v981.HumanoidRootPart.CFrame * CFrame.new(1, 50, 0));
			end
		end
	elseif (game:GetService("Workspace").Map.IceCastle:FindFirstChild("RengokuChest") and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and string.find(RengokuS:Update().Text, XMark) and inmyself("Hidden Key") and AutoRengoku) then
		ShowDoingStatus("Use Hidden Key");
		EquipWeapon("Hidden Key");
		if ((CFrame.new(6571.81885, 296.689758, -6966.76514).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
			Farmtween = toTarget(CFrame.new(6571.81885, 296.689758, -6966.76514));
		elseif ((CFrame.new(6571.81885, 296.689758, -6966.76514).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
			if Farmtween then
				Farmtween:Stop();
			end
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6571.81885, 296.689758, -6966.76514, 0.825126112, 8.412257e-10, 0.564948559, -2.4237083e-8, 1, 3.3910034e-8, -0.564948559, -4.167276e-8, 0.825126112);
			pcall(RefreshStatus);
		end
	elseif (game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild("PhoeyuDoor") and inmyself("Library Key") and AutoDeathStep and v50 and (Com("F_", "OpenLibrary", true) ~= true)) then
		ShowDoingStatus("Use Library Key");
		EquipWeapon("Library Key");
		task.wait(0.1);
		Com("F_", "OpenLibrary");
	elseif ((v249 >= 1500) and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and string.find(RengokuS:Update().Text, XMark) and AutoRengoku) then
		ShowDoingStatus("Do Rengoku");
		if game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") then
			for v996, v997 in pairs(game.Workspace.Enemies:GetChildren()) do
				if (StartKaiTun and (v997.Name == "Snow Lurker [Lv. 1375]") and v997:FindFirstChild("Humanoid") and v997:FindFirstChild("HumanoidRootPart") and (v997.Humanoid.Health > 0)) then
					repeat
						task.wait();
						if ((v997.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(v997.HumanoidRootPart.CFrame);
							StartMagnetSnowLurker = false;
						elseif ((v997.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							PosMon = v997.HumanoidRootPart.CFrame;
							EquipWeapon();
							Usefastattack = true;
							StartMagnetSnowLurker = true;
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								Com("F_", "Buso");
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v997.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
						end
					until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or (StartKaiTun == false) or not v997.Parent or (v997.Humanoid.Health <= 0) 
					StartMagnetSnowLurker = false;
					Usefastattack = false;
				end
			end
		else
			StartMagnetSnowLurker = false;
			if ((CFrame.new(5518.00684, 60.5559731, -6828.80518).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Farmtween = toTarget(CFrame.new(5518.00684, 60.5559731, -6828.80518));
			elseif ((CFrame.new(5518.00684, 60.5559731, -6828.80518).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Farmtween then
					Farmtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.6429295e-8, 0.759265184, -4.0766865e-9, 1, 4.4485464e-8, -0.759265184, 2.5855025e-8, -0.650781393);
			end
		end
	elseif ((v249 >= 1500) and AutoSea3 and not SkipGetItemSoulInSea2 and AutoSoulGuitar and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and string.find(SoulGuitarS:Update().Text, XMark) and (((GetMaterial("Dark Fragment") < 1) and (function()
		for v982, v983 in pairs(game.Workspace:GetDescendants()) do
			if (v983.Name:match("Chest") and v983:IsA("BasePart")) then
				return true;
			end
		end
		return false;
	end)()) or (GetMaterial("Ectoplasm") < 300))) then
		ShowDoingStatus("Do Soul Guitar");
		if (GetMaterial("Ectoplasm") < 300) then
			if (function()
				for v1027, v1028 in pairs(game.Workspace.Enemies:GetChildren()) do
					if (string.find(v1028.Name, "Ship") and v1028:FindFirstChild("HumanoidRootPart")) then
						return true;
					end
				end
				return false;
			end)() then
				for v1036, v1037 in pairs(game.Workspace.Enemies:GetChildren()) do
					if (StartKaiTun and string.find(v1037.Name, "Ship") and v1037:FindFirstChild("HumanoidRootPart")) then
						repeat
							task.wait();
							if v1037:FindFirstChild("HumanoidRootPart") then
								if ((v1037.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
									Usefastattack = false;
									Farmtween = toTarget(v1037.HumanoidRootPart.CFrame * CFrame.new(1, 20, 0));
									StartMagnetEctoplasm = false;
								elseif ((v1037.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
									if Farmtween then
										Farmtween:Stop();
									end
									EquipWeapon(SelectToolWeapon);
									PosMon = v1037.HumanoidRootPart.CFrame;
									Usefastattack = true;
									StartMagnetEctoplasm = true;
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1037.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
								end
							end
						until (StartKaiTun == false) or not v1037.Parent or (v1037.Humanoid.Health <= 0) 
						Usefastattack = false;
						StartMagnetEctoplasm = false;
					end
				end
			elseif ((CFrame.new(920.14447, 129.581833, 33442.168).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Farmtween = toTarget(CFrame.new(920.14447, 129.581833, 33442.168).Position, CFrame.new(920.14447, 129.581833, 33442.168));
			elseif ((CFrame.new(920.14447, 129.581833, 33442.168).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Farmtween then
					Farmtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(920.14447, 129.581833, 33442.168, -0.999913812, 0, -0.0131403487, 0, 1, 0, 0.0131403487, 0, -0.999913812);
			end
		elseif (GetMaterial("Dark Fragment") < 1) then
			if (function()
				for v1042, v1043 in pairs(game.Workspace:GetDescendants()) do
					if (v1043.Name:match("Chest") and v1043:IsA("BasePart")) then
						return true;
					end
				end
				return false;
			end)() then
				for v1055, v1056 in pairs(game.Workspace:GetDescendants()) do
					if (v1056.Name:match("Chest") and v1056:IsA("BasePart") and StartKaiTun) then
						if ChestTarget then
							ChestTarget:Stop();
						end
						if inmyself("Fist of Darkness") then
							break;
						end
						repeat
							task.wait();
							ChestTarget = toTarget(v1056.CFrame);
							task.wait(0.2);
						until ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1056.Position).Magnitude <= 10) or not StartKaiTun or not v1056.Parent 
						if not StartKaiTun then
							if tween then
								tween:Cancel();
							end
							break;
						end
						task.wait(5);
					end
				end
			end
		end
	elseif ((v249 >= 1500) and AutoSea3 and (((Com("F_", "GetUnlockables").FlamingoAccess ~= true) and HaveFruitToSea3(alliesfruit)) or (Com("F_", "GetUnlockables").FlamingoAccess == true)) and (not game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor:FindFirstChild("PhoeyuDoor") or not AutoDeathStep) and ((tonumber(Com("F_", "BuySharkmanKarate", true)) == 1) or (tonumber(Com("F_", "BuySharkmanKarate", true)) == 0) or not AutoSharkmanKarate)) then
		if (Com("F_", "GetUnlockables").FlamingoAccess == true) then
			ShowDoingStatus("Do Sea 3");
			if (Com("F_", "ZQuestProgress", "Check") == 0) then
				if game.Workspace.Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
					for v1075, v1076 in pairs(game.Workspace.Enemies:GetChildren()) do
						if (StartKaiTun and (v1076.Name == "rip_indra [Lv. 1500] [Boss]") and v1076:FindFirstChild("HumanoidRootPart") and v1076:FindFirstChild("Humanoid") and (v1076.Humanoid.Health > 0)) then
							repeat
								task.wait();
								if ((v1076.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
									Farmtween = toTarget(v1076.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10));
								elseif ((v1076.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
									if Farmtween then
										Farmtween:Stop();
									end
									EquipWeapon();
									Usefastattack = true;
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										Com("F_", "Buso");
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1076.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
								end
							until not StartKaiTun or not v1076.Parent or (Com("F_", "ZQuestProgress").KilledIndraBoss == true) 
							Usefastattack = false;
							while task.wait(1) do
								Com("F_", "TravelZou");
							end
						end
					end
				else
					Com("F_", "ZQuestProgress", "Check");
					task.wait();
					Com("F_", "ZQuestProgress", "Begin");
				end
			elseif (Com("F_", "ZQuestProgress", "Check") == 1) then
				Com("F_", "TravelZou");
			elseif (game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]")) then
				if game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
					for v1112, v1113 in pairs(game.Workspace.Enemies:GetChildren()) do
						if (StartKaiTun and (v1113.Name == "Don Swan [Lv. 1000] [Boss]") and v1113:FindFirstChild("HumanoidRootPart") and v1113:FindFirstChild("Humanoid") and (v1113.Humanoid.Health > 0)) then
							repeat
								task.wait();
								if ((v1113.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
									Farmtween = toTarget(v1113.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10));
								elseif ((v1113.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
									if Farmtween then
										Farmtween:Stop();
									end
									EquipWeapon();
									Usefastattack = true;
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										Com("F_", "Buso");
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1113.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
								end
							until not StartKaiTun or not v1113.Parent or (v1113.Humanoid.Health <= 0) 
							Usefastattack = false;
						end
					end
				else
					if ((CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
						Questtween = toTarget(CFrame.new(2288.802, 15.1870775, 863.034607));
					elseif ((CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
						if Questtween then
							Questtween:Stop();
						end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2288.802, 15.1870775, 863.034607);
					end
					Com("F_", "SetSpawnPoint");
				end
			else
				v54:NormalTeleport();
			end
		else
			ShowDoingStatus("Find Fruit Sea 3");
			HaveDevilFruitSea3 = false;
			local v1029 = math.huge;
			local v1030 = "";
			for v1038, v1039 in pairs(Com("F_", "getInventoryFruits")) do
				if not v1039.Price then
					break;
				end
				if ((v1039.Price >= 1000000) and not table.find(alliesfruit, v1039.Name) and (v1039.Price < v1029)) then
					v1029 = v1039.Price or math.huge;
					v1030 = v1039.Name;
					HaveDevilFruitSea3 = true;
				end
			end
			if HaveDevilFruitSea3 then
				Com("F_", "LoadFruit", v1030);
				task.wait(0.5);
				for v1058 = 1, 3 do
					Com("F_", "TalkTrevor", tostring(v1058));
				end
			end
		end
	elseif (RaidsDoughNow and (game.Players.LocalPlayer.Data.DevilFruit.Value == "Dough-Dough") and (Com("F_", "CakeScientist", "Check") == true) and not CheckAwaken() and (HaveFruitToSea3(alliesfruit) or ((v250['HaveFruitInMySelf'] == true) and (v250.Price >= 1000000)) or inmyself("Special Microchip") or CheckIsland() or (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true)) and not havemob("rip_indra True Form [Lv. 5000] [Raid Boss]") and not StopRaidsPls and (v249 >= 1100)) then
		ShowDoingStatus("Doing Raids Dough");
		if tween then
			tween:Cancel();
		end
		if (inmyself("Special Microchip") or CheckIsland()) then
			if (inmyself("Special Microchip") and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and (CheckIsland() == false)) then
				if v50 then
					fireclickdetector(v29.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
				elseif v51 then
					fireclickdetector(v29.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
				end
				task.wait(17);
			elseif (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true) then
				repeat
					task.wait();
					if (game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1")) then
						GoIsland = false;
						NextIsland();
						if (GoIsland == false) then
							task.wait(0.1);
						elseif ((ToIslandCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(ToIslandCFrame);
						elseif ((ToIslandCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ToIslandCFrame;
						end
					end
					for v1107, v1108 in pairs(game.Workspace.Enemies:GetChildren()) do
						if (StartKaiTun and v1108:FindFirstChild("Humanoid") and v1108:FindFirstChild("HumanoidRootPart") and ((v1108.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500)) then
							repeat
								task.wait();
								if not v1108:FindFirstChild("Humanoid") then
									return;
								end
								v1108.Humanoid.Health = 0;
							until not StartKaiTun or (v1108.Humanoid.Health <= 0) or not v1108.Parent 
						end
					end
					Com("F_", "Awakener", "Check");
					Com("F_", "Awakener", "Awaken");
				until (StartKaiTun == false) or not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") or (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) 
				task.wait(5);
				for v1091 = 1, 5 do
					Com("F_", "Awakener", "Check");
					Com("F_", "Awakener", "Awaken");
					task.wait(0.5);
				end
			end
		else
			GoIsland = false;
			local v1044 = math.huge;
			local v1045 = "";
			if ((v250['HaveFruitInMySelf'] == true) and (v250.Price >= 1000000) and (game.Players.LocalPlayer:WaitForChild("Data"):WaitForChild("Fragments").Value < 5000) and (v250['HaveFruitInStore'] == false)) then
				StoreMyFruit();
			elseif (game.Players.LocalPlayer:WaitForChild("Data"):WaitForChild("Fragments").Value >= 4000) then
				for v1092, v1093 in pairs(Com("F_", "getInventoryFruits")) do
					if not v1093.Price then
						break;
					end
					if ((v1093.Price >= 1000000) and not table.find(alliesfruit, v1093.Name)) then
						if (v1093.Price < v1044) then
							v1044 = v1093.Price;
							v1045 = v1093.Name;
						end
					end
				end
				if (v1045 ~= "") then
					Com("F_", "LoadFruit", v1045);
				end
				Com("F_", "RaidsNpc", "Select", "Dough");
			else
				for v1094, v1095 in pairs(Com("F_", "getInventoryFruits")) do
					if not v1095.Price then
						break;
					end
					if (v1095.Price < RateFruitRaids) then
						if (v1095.Price < v1044) then
							v1044 = v1095.Price;
							v1045 = v1095.Name;
						end
					end
				end
				if (v1045 ~= "") then
					Com("F_", "LoadFruit", v1045);
				end
				Com("F_", "RaidsNpc", "Select", "Flame");
			end
			Com("F_", "Awakener", "Check");
			Com("F_", "Awakener", "Awaken");
		end
	elseif ((((v250['HaveFruitInMySelf'] == true) and (v250['HaveFruitInStore'] == true)) or (RaidsNow and CheckRateFruit(RateFruitRaids)) or inmyself("Special Microchip") or CheckIsland() or (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true)) and (v249 >= 1100) and not StopRaidsPls) then
		if ((game.Players.LocalPlayer:WaitForChild("Data"):WaitForChild("Fragments").Value > (LimitRaidsFrag or 100000)) and (v250['HaveFruitInMySelf'] == true)) then
			if (game.Players.LocalPlayer.Data.DevilFruit.Value ~= "Dough-Dough") then
				game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15);
				return;
			end
		end
		ShowDoingStatus("Doing Raids");
		if tween then
			tween:Cancel();
		end
		if (inmyself("Special Microchip") or CheckIsland()) then
			if (inmyself("Special Microchip") and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and (CheckIsland() == false)) then
				if v50 then
					fireclickdetector(v29.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
				elseif v51 then
					fireclickdetector(v29.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
				end
				task.wait(17);
			elseif (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true) then
				repeat
					task.wait();
					if (game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1")) then
						GoIsland = false;
						NextIsland();
						if (GoIsland == false) then
							task.wait(0.1);
						elseif ((ToIslandCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(ToIslandCFrame);
						elseif ((ToIslandCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ToIslandCFrame;
						end
					end
					for v1120, v1121 in pairs(game.Workspace.Enemies:GetChildren()) do
						if (StartKaiTun and v1121:FindFirstChild("Humanoid") and v1121:FindFirstChild("HumanoidRootPart") and ((v1121.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500)) then
							repeat
								task.wait();
								if not v1121:FindFirstChild("Humanoid") then
									return;
								end
								v1121.Humanoid.Health = 0;
							until not StartKaiTun or (v1121.Humanoid.Health <= 0) or not v1121.Parent 
						end
					end
					Com("F_", "Awakener", "Check");
					Com("F_", "Awakener", "Awaken");
				until (StartKaiTun == false) or not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") or (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) 
				task.wait(5);
				for v1114 = 1, 5 do
					Com("F_", "Awakener", "Check");
					Com("F_", "Awakener", "Awaken");
					task.wait(0.5);
				end
			end
		else
			GoIsland = false;
			if ((game.Players.LocalPlayer.Data.DevilFruit.Value == "Dough-Dough") and not CheckAwaken() and not RaidsNow) then
				if ((Com("F_", "CakeScientist", "Check") == true) and (v250['HaveFruitInMySelf'] == false) and (game.Players.LocalPlayer:WaitForChild("Data"):WaitForChild("Fragments").Value >= 1000)) then
					Com("F_", "RaidsNpc", "Select", "Dough");
				elseif ((Com("F_", "CakeScientist", "Check") == true) and (v250['HaveFruitInMySelf'] == true) and (v250.Price >= 1000000)) then
					Com("F_", "RaidsNpc", "Select", "Dough");
				else
					Com("F_", "RaidsNpc", "Select", GetNameRaids());
				end
				return;
			end
			if RaidsNow then
				local v1081 = math.huge;
				local v1082 = "";
				for v1096, v1097 in pairs(Com("F_", "getInventoryFruits")) do
					if (v1097.Price < RateFruitRaids) then
						if (v1097.Price < v1081) then
							v1081 = v1097.Price;
							v1082 = v1097.Name;
						end
					end
				end
				if (v1082 ~= "") then
					Com("F_", "LoadFruit", v1082);
				end
			end
			Com("F_", "RaidsNpc", "Select", GetNameRaids());
			Com("F_", "Awakener", "Check");
			Com("F_", "Awakener", "Awaken");
		end
	elseif (function()
		for v1065, v1066 in pairs(game:GetService("Workspace"):GetChildren()) do
			if (v1066:IsA("Tool") and string.find(v1066.Name, "Fruit")) then
				return true;
			end
		end
		return false;
	end)() then
		for v1077, v1078 in pairs(game:GetService("Workspace"):GetChildren()) do
			if (v1078:IsA("Tool") and string.find(v1078.Name, "Fruit") and StartKaiTun) then
				if FruitTarget then
					FruitTarget:Stop();
				end
				repeat
					task.wait(0.1);
					FruitTarget = toTarget(v1078.Handle.CFrame);
				until ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1078.Handle.Position).Magnitude <= 8) or not StartKaiTun or not v1078.Parent 
				task.wait(0.5);
				StoreMyFruit();
			end
		end
	else
		ShowDoingStatus("Auto Farm");
		if not string.find(v247.Text, NameCheckQuest) then
			Com("F_", "AbandonQuest");
		end
		if (v248.Visible == false) then
			Usefastattack = false;
			StartMagnetFarmLevel = false;
			if ((CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Questtween = toTarget(CFrameQuest);
			elseif ((CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Questtween then
					Questtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest;
				task.wait(0.95);
				Com("F_", "StartQuest", NameQuest, LevelQuest);
				Com("F_", "SetSpawnPoint");
			end
		elseif (v248.Visible == true) then
			if game:GetService("Workspace").Enemies:FindFirstChild(Monster) then
				for v1132, v1133 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (StartKaiTun and (v1133.Name == Monster) and v1133:FindFirstChild("HumanoidRootPart") and v1133:FindFirstChild("Humanoid") and (v1133.Humanoid.Health > 0)) then
						if string.find(v247.Text, NameCheckQuest) then
							repeat
								task.wait();
								if (v1133:FindFirstChild("HumanoidRootPart") and v1133:FindFirstChild("Humanoid")) then
									if ((v1133.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
										FarmtoTarget = toTarget(v1133.HumanoidRootPart.Position, v1133.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1));
									elseif ((v1133.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
										if FarmtoTarget then
											FarmtoTarget:Stop();
										end
										Usefastattack = true;
										EquipWeapon();
										StartMagnetFarmLevel = true;
										PosMon = v1133.HumanoidRootPart.CFrame;
										toAroundTarget(v1133.HumanoidRootPart.CFrame);
									end
								end
							until not game:GetService("Workspace").Enemies:FindFirstChild(Monster) or not StartKaiTun or not string.find(v247.Text, NameCheckQuest) or (v1133.Humanoid.Health <= 0) or not v1133.Parent or (v248.Visible == false) 
							Usefastattack = false;
							StartMagnetFarmLevel = false;
						else
							Com("F_", "AbandonQuest");
						end
					end
				end
			else
				StartMagnetFarmLevel = false;
				Usefastattack = false;
				if ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
					Modstween = toTarget(CFrameMon);
				elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
					if Modstween then
						Modstween:Stop();
					end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
					task.wait(0.314285714286);
				end
			end
		end
	end
end
function AutoKaiTunThreeWorld(v251, v252, v253, v254)
	local v255 = v251;
	local v256 = v252;
	local v257 = v253;
	local v258 = v254;
	if (inmyself("Fire Essence") and (Com("F_", "BuyDragonTalon", true) == 3)) then
		Com("F_", "BuyDragonTalon");
	elseif (AutoHallowScythe and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and inmyself("Hallow Essence")) then
		Questtween = toTarget(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame);
		if ((game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
			if Questtween then
				Questtween:Stop();
			end
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame;
		end
	elseif (AutoCDK and (v257 >= 2200) and string.find(CDKS:Update().Text, XMark) and string.find(TushitaS:Update().Text, CheckMark) and string.find(YamaS:Update().Text, CheckMark) and (GetMasteryWeaponOnline("Yama") >= 350) and (GetMasteryWeaponOnline("Tushita") >= 350) and (CDKCheckAllIn1("done") == false) and (((CDKCheckAllIn1("pirate") == true) and (CheckMobDistanceCollection(Vector3.new(-5545.8134765625, 313.7655944824219, -2978.4912109375), 1000) == true)) or ((CDKCheckAllIn1("Heaven") == true) and havemob("Cake Queen [Lv. 2175] [Boss]")) or (game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") and (tostring(game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension"):FindFirstChild("ActivePlayers").Value.Value) == game.Players.LocalPlayer.Name)) or ((CDKCheckAllIn1("hell") == true) and (havemob("Soul Reaper [Lv. 2100] [Raid Boss]") or ((GetMaterial("Bones") >= 50) and ((({Com("F_", "Bones", "Check")})[3] or 0) > 0)) or (game:GetService("Workspace").Map:FindFirstChild("HellDimension") and (tostring(game:GetService("Workspace").Map:FindFirstChild("HellDimension"):FindFirstChild("ActivePlayers").Value.Value) == game.Players.LocalPlayer.Name)))) or (CDKCheckAllIn1("die") == true) or (CDKCheckAllIn1("Haze") == true) or (CDKCheckAllIn1("kill boss") == true) or (CDKCheckAllIn1("boat") == true))) then
		ShowDoingStatus("Do CDK");
		local v587;
		if game:GetService("Workspace").Map.Turtle.Cursed:FindFirstChild("GoodScroll") then
			v587 = Com("F_", "CDKQuest", "Progress", "Good");
		else
			v587 = Com("F_", "CDKQuest", "Progress", "Evil");
		end
		if ((v587.Good == 4) and (v587.Evil == 4) and (v587.Finished == true)) then
		elseif ((v587.Good == 4) and (v587.Evil == 4) and not v587.Finished) then
			if (inmyself("Yama") or inmyself("Tushita")) then
				if (game.Workspace.Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]")) then
					if KillBossTween then
						KillBossTween:Stop();
					end
					for v789, v790 in pairs(game.Workspace.Enemies:GetChildren()) do
						if (StartKaiTun and (v790.Name == "Cursed Skeleton Boss [Lv. 2025] [Boss]") and v790:FindFirstChild("Humanoid") and v790:FindFirstChild("HumanoidRootPart") and (v790.Humanoid.Health > 0)) then
							repeat
								task.wait();
								Farmtween = toTarget(v790.HumanoidRootPart.Position, v790.HumanoidRootPart.CFrame);
								if ((v790.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
									if Farmtween then
										Farmtween:Stop();
									end
									EquipWeapon(GetFightingStyle("Sword"));
									Usefastattack = true;
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v790.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
								end
							until not StartKaiTun or (v790.Humanoid.Health <= 0) or not v790.Parent 
							Usefastattack = false;
						end
					end
				elseif (game:GetService("Workspace").Map.Turtle.Cursed.Pedestal3.ProximityPrompt.Enabled == false) then
					if ((game:GetService("Workspace").Map.Turtle.Cursed.BossDoor.Position - Vector3.new(-12346, 582.058, -6551.01)).Magnitude <= 3) then
						KillBossTween = toTarget(CFrame.new(-12278.8193359375, 598.8648071289062, -6551.98876953125));
						KillBossTween:Wait();
						Com("F_", "CDKQuest", "StartTrial", "Boss");
						KillBossTween = toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875));
						KillBossTween:Wait();
					end
				else
					KillBossTween = toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875));
					if ((CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250) then
						if KillBossTween then
							KillBossTween:Stop();
						end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875);
						task.wait(2);
						fireproximityprompt(game:GetService("Workspace").Map.Turtle.Cursed.Pedestal3.ProximityPrompt, 0);
						print("F2");
					end
				end
			else
				Com("F_", "StoreItem", tostring(GetFightingStyle("Sword")), inmyself(GetFightingStyle("Sword")));
				task.wait(1);
				Com("F_", "LoadItem", tostring("Tushita"));
				task.wait(1);
			end
		elseif ((v587.Good == -2) and (v587.Finished == false) and (v587.Evil == -5)) then
			if (game:GetService("Workspace").Map:FindFirstChild("HellDimension") and game:GetService("Workspace").Map.HellDimension:FindFirstChild("Exit") and (game:GetService("Workspace").Map.HellDimension:FindFirstChild("Exit").Color ~= Color3.fromRGB(0, 0, 0))) then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HellDimension:FindFirstChild("Exit").CFrame;
			elseif (game:GetService("Workspace").Map:FindFirstChild("HellDimension") and (tostring(game:GetService("Workspace").Map:FindFirstChild("HellDimension"):FindFirstChild("ActivePlayers").Value.Value) == game.Players.LocalPlayer.Name)) then
				if Questtween then
					Questtween:Stop();
				end
				if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Hell Dimension").Position).Magnitude <= 500) then
					if TorchTween then
						TorchTween:Stop();
					end
					if CheckMobDistanceWorkspace(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Hell Dimension").Position, 500) then
						for v865, v866 in pairs(game.Workspace.Enemies:GetChildren()) do
							if (StartKaiTun and v866:FindFirstChild("Humanoid") and v866:FindFirstChild("HumanoidRootPart") and (v866.Humanoid.Health > 0)) then
								repeat
									task.wait();
									if ((v866.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
										Farmtween = toTarget(v866.HumanoidRootPart.Position, v866.HumanoidRootPart.CFrame);
										Usefastattack = false;
									elseif ((v866.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
										if Farmtween then
											Farmtween:Stop();
										end
										spawn(function()
											NoDupeMob = 0.1;
											for v984, v985 in pairs(game.Workspace.Enemies:GetChildren()) do
												if (InMyNetWork(v866.HumanoidRootPart) and (v985.Name == v866.Name) and v866:FindFirstChild("Humanoid") and v866:FindFirstChild("HumanoidRootPart")) then
													v985.HumanoidRootPart.CFrame = v866.HumanoidRootPart.CFrame * CFrame.new(NoDupeMob, 0, 0);
													v985.HumanoidRootPart.CanCollide = false;
													v985.HumanoidRootPart.Size = Vector3.new(55, 55, 55);
													NoDupeMob = NoDupeMob + 0.2;
												end
											end
										end);
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v866.HumanoidRootPart.CFrame * CFrame.new(1, 30, 1);
										EquipWeapon();
										Usefastattack = true;
									end
								until not StartKaiTun or (game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0) or (v866.Humanoid.Health == 0) or not v866.Parent 
								Usefastattack = false;
								task.wait();
							end
						end
					elseif (game:GetService("Workspace").Map.HellDimension.Torch1:FindFirstChild("ProximityPrompt").Enabled == true) then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HellDimension.Torch1.CFrame;
						task.wait(0.5);
						fireproximityprompt(game:GetService("Workspace").Map.HellDimension.Torch1.ProximityPrompt, 4);
						task.wait(0.2);
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(1, 50, 0);
					elseif (game:GetService("Workspace").Map.HellDimension.Torch2:FindFirstChild("ProximityPrompt").Enabled == true) then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HellDimension.Torch2.CFrame;
						task.wait(0.5);
						fireproximityprompt(game:GetService("Workspace").Map.HellDimension.Torch2.ProximityPrompt, 4);
						task.wait(0.2);
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(1, 50, 0);
					elseif (game:GetService("Workspace").Map.HellDimension.Torch3:FindFirstChild("ProximityPrompt").Enabled == true) then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HellDimension.Torch3.CFrame;
						task.wait(0.5);
						fireproximityprompt(game:GetService("Workspace").Map.HellDimension.Torch3.ProximityPrompt, 4);
						task.wait(0.2);
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(1, 50, 0);
					end
				else
					TorchTween = toTarget(CFrame.new(-22737.6426, 5169.98535, 2234.63379, -1.1920929e-7, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-7));
				end
			elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then
				Questtween = toTarget(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.Position, game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame);
				if ((game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
					if Questtween then
						Questtween:Stop();
					end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame;
				end
			elseif ((game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]")) and not game:GetService("Workspace").Map:FindFirstChild("HellDimension")) then
				if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
					for v901, v902 in pairs(game.Workspace.Enemies:GetChildren()) do
						if (StartKaiTun and (v902.Name == "Soul Reaper [Lv. 2100] [Raid Boss]") and v902:FindFirstChild("HumanoidRootPart") and v902:FindFirstChild("Humanoid") and (v902.Humanoid.Health > 0)) then
							repeat
								task.wait();
								if ((v902.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
									Farmtween = toTarget(v902.HumanoidRootPart.Position, v902.HumanoidRootPart.CFrame);
								elseif ((v902.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
									if Farmtween then
										Farmtween:Stop();
									end
									EquipWeapon();
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v902.HumanoidRootPart.CFrame * CFrame.new(3, 1, 0);
								end
							until not StartKaiTun or (game:GetService("Workspace").Map:FindFirstChild("HellDimension") and (tostring(game:GetService("Workspace").Map:FindFirstChild("HellDimension"):FindFirstChild("ActivePlayers").Value.Value) == game.Players.LocalPlayer.Name)) 
							task.wait(5);
						end
					end
					task.wait(5);
				else
					Questtween = toTarget(CFrame.new(-9521, 316, 6684).Position, CFrame.new(-9521, 316, 6684));
					if ((CFrame.new(-9521, 316, 6684).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300) then
						if Questtween then
							Questtween:Stop();
						end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9521, 316, 6684);
					end
				end
			else
				Com("F_", "Bones", "Buy", 1, 1);
			end
		elseif ((v587.Good == -2) and (v587.Finished == false) and (v587.Evil == -4)) then
			if CheckNotNotifyHazeESP() then
				for v810, v811 in pairs(game:GetService("CollectionService"):GetTagged("ActiveRig")) do
					if (v811:FindFirstChild("HazeESP") and StartKaiTun) then
						if (v811:FindFirstChild("Humanoid") and v811:FindFirstChild("HumanoidRootPart")) then
							repeat
								task.wait();
								if ((v811.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
									Farmtween = toTarget(v811.HumanoidRootPart.CFrame * CFrame.new(1, 20, 0));
									Usefastattack = false;
								elseif ((v811.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
									if Farmtween then
										Farmtween:Stop();
									end
									PosMon = v811.HumanoidRootPart.CFrame;
									StartMagnetHaze = true;
									EquipWeapon();
									Usefastattack = true;
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v811.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
								end
							until not StartKaiTun or (v811.Humanoid.Health <= 0) or not v811.Parent 
							Usefastattack = false;
							StartMagnetHaze = false;
						end
					end
				end
			else
				StartMagnetHaze = false;
				local v803 = {};
				Usefastattack = false;
				if (game:GetService("Lighting").LightingLayers.Haze.Intensity.Value == 0) then
					task.wait(0.2);
					Com("F_", "CDKQuest", "StartTrial", "Evil");
					if (game:GetService("Lighting").LightingLayers.Haze.Intensity.Value == 0) then
						task.wait(0.2);
						Com("F_", "CDKQuest", "StartTrial", "Evil");
						if (game:GetService("Lighting").LightingLayers.Haze.Intensity.Value == 0) then
							v54:NormalTeleport();
						end
					end
				end
				for v812, v813 in pairs(game:GetService("Workspace")['_WorldOrigin']:FindFirstChild("EnemySpawns"):GetChildren()) do
					if (StartKaiTun and not CheckNotNotifyHazeESP() and not table.find(v803, v813.Name)) then
						repeat
							task.wait();
							Usefastattack = false;
							Totartween = toTarget(v813.CFrame * CFrame.new(1, 30, 0));
						until ((v813.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250) or not StartKaiTun or CheckNotNotifyHazeESP() 
						v14 = v14 + 1;
						if Totartween then
							Totartween:Stop();
						end
						table.insert(v803, v813.Name);
						if CheckNotNotifyHazeESP() then
							break;
						end
						print(v14);
					end
				end
				if (v14 >= 100) then
					v54:NormalTeleport();
				end
			end
		elseif ((v587.Good == -2) and (v587.Finished == false) and (v587.Evil == -3)) then
			if game.Workspace.Enemies:FindFirstChild("Mythological Pirate [Lv. 1850]") then
				DieMobTween = toTarget(CFrame.new(-13452.5224609375, 469.584228515625, -6870.68603515625));
				if ((CFrame.new(-13452.5224609375, 469.584228515625, -6870.68603515625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250) then
					if DieMobTween then
						DieMobTween:Stop();
					end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13452.5224609375, 469.584228515625, -6870.68603515625);
				end
				for v836, v837 in pairs(game.Workspace.Enemies:GetChildren()) do
					if (StartKaiTun and (v837.Name == "Mythological Pirate [Lv. 1850]") and v837:FindFirstChild("Humanoid") and v837:FindFirstChild("HumanoidRootPart") and (v837.Humanoid.Health > 0)) then
						if InMyNetWork(v837.HumanoidRootPart) then
							v837.HumanoidRootPart.CFrame = CFrame.new(-13449.36328125, 469.58416748046875, -6865.7822265625);
							v837.HumanoidRootPart.CanCollide = false;
						end
					end
				end
			else
				DieMobTween = toTarget(CFrame.new(-13452.5224609375, 469.584228515625, -6870.68603515625));
				if ((CFrame.new(-13452.5224609375, 469.584228515625, -6870.68603515625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250) then
					if DieMobTween then
						DieMobTween:Stop();
					end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13452.5224609375, 469.584228515625, -6870.68603515625);
				end
			end
		elseif ((v587.Good == -5) and (v587.Finished == false) and (v587.Evil == -2)) then
			if (game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") and game:GetService("Workspace").Map.HeavenlyDimension:FindFirstChild("Exit") and (game:GetService("Workspace").Map.HeavenlyDimension:FindFirstChild("Exit").Color ~= Color3.fromRGB(0, 0, 0))) then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HeavenlyDimension:FindFirstChild("Exit").CFrame;
			elseif (game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") and (tostring(game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension"):FindFirstChild("ActivePlayers").Value.Value) == game.Players.LocalPlayer.Name)) then
				if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Heavenly Dimension").Position).Magnitude <= 500) then
					if TorchTween then
						TorchTween:Stop();
					end
					if CheckMobDistanceWorkspace(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Heavenly Dimension").Position, 500) then
						for v952, v953 in pairs(game.Workspace.Enemies:GetChildren()) do
							if (StartKaiTun and v953:FindFirstChild("Humanoid") and v953:FindFirstChild("HumanoidRootPart") and (v953.Humanoid.Health > 0)) then
								repeat
									task.wait();
									if ((v953.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
										Farmtween = toTarget(v953.HumanoidRootPart.CFrame * CFrame.new(1, 20, 0));
										Usefastattack = false;
									elseif ((v953.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
										if Farmtween then
											Farmtween:Stop();
										end
										spawn(function()
											NoDupeMob = 0.1;
											for v1046, v1047 in pairs(game.Workspace.Enemies:GetChildren()) do
												if (InMyNetWork(v953.HumanoidRootPart) and (v1047.Name == v953.Name) and v953:FindFirstChild("Humanoid") and v953:FindFirstChild("HumanoidRootPart")) then
													v1047.HumanoidRootPart.CFrame = v953.HumanoidRootPart.CFrame * CFrame.new(NoDupeMob, 0, 0);
													v1047.HumanoidRootPart.CanCollide = false;
													v1047.HumanoidRootPart.Size = Vector3.new(55, 55, 55);
													NoDupeMob = NoDupeMob + 0.2;
												end
											end
										end);
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v953.HumanoidRootPart.CFrame * CFrame.new(1, 30, 1);
										EquipWeapon();
										Usefastattack = true;
									end
								until not StartKaiTun or (game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0) or (v953.Humanoid.Health == 0) or not v953.Parent 
								Usefastattack = false;
							end
						end
					elseif (game:GetService("Workspace").Map.HeavenlyDimension.Torch1:FindFirstChild("ProximityPrompt").Enabled == true) then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame;
						task.wait(0.5);
						fireproximityprompt(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.ProximityPrompt, 4);
						task.wait(0.2);
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(1, 50, 0);
					elseif (game:GetService("Workspace").Map.HeavenlyDimension.Torch2:FindFirstChild("ProximityPrompt").Enabled == true) then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame;
						task.wait(0.5);
						fireproximityprompt(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.ProximityPrompt, 4);
						task.wait(0.2);
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(1, 50, 0);
					elseif (game:GetService("Workspace").Map.HeavenlyDimension.Torch3:FindFirstChild("ProximityPrompt").Enabled == true) then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame;
						task.wait(0.5);
						fireproximityprompt(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.ProximityPrompt, 4);
						task.wait(0.2);
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(1, 50, 0);
					end
				else
					TorchTween = toTarget(CFrame.new(-22709.6426, 5298.98584, 3886.63745, -1.1920929e-7, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-7));
				end
			elseif (game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") or game.Workspace.Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]")) then
				Com("F_", "CDKQuest", "Progress");
				if game.Workspace.Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
					for v954, v955 in pairs(game.Workspace.Enemies:GetChildren()) do
						if (StartKaiTun and (v955.Name == "Cake Queen [Lv. 2175] [Boss]") and v955:FindFirstChild("Humanoid") and v955:FindFirstChild("HumanoidRootPart") and (v955.Humanoid.Health > 0)) then
							repeat
								task.wait();
								Farmtween = toTarget(v955.HumanoidRootPart.Position, v955.HumanoidRootPart.CFrame);
								if ((v955.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
									if Farmtween then
										Farmtween:Stop();
									end
									EquipWeapon();
									Usefastattack = true;
									toAroundTarget(v955.HumanoidRootPart.CFrame);
								end
							until not StartKaiTun or (v955.Humanoid.Health <= 0) or not v955.Parent or (game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") and (tostring(game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension"):FindFirstChild("ActivePlayers").Value.Value) == game.Players.LocalPlayer.Name)) 
							Usefastattack = false;
							task.wait(5);
						end
					end
				else
					BuddySwordsTween = toTarget(CFrame.new(-821, 66, -10965).Position, CFrame.new(-821, 66, -10965));
					if ((CFrame.new(-821, 66, -10965).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250) then
						if BuddySwordsTween then
							BuddySwordsTween:Stop();
						end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-821, 66, -10965);
					end
				end
			else
				BuddySwordsTween = toTarget(CFrame.new(-821, 66, -10965).Position, CFrame.new(-821, 66, -10965));
				if ((CFrame.new(-821, 66, -10965).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250) then
					if BuddySwordsTween then
						BuddySwordsTween:Stop();
					end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-821, 66, -10965);
				end
				task.wait(1);
			end
		elseif ((v587.Good == -4) and (v587.Finished == false) and (v587.Evil == -2)) then
			if CheckMobDistanceCollection(Vector3.new(-5545.8134765625, 313.7655944824219, -2978.4912109375), 1000) then
				for v905, v906 in pairs(game:GetService("CollectionService"):GetTagged("ActiveRig")) do
					if (StartKaiTun and not tostring(v906.Name):match("%[Boss]$") and tostring(v906.Name):find("%[Lv.") and v906:FindFirstChild("HumanoidRootPart")) then
						if ((v906.HumanoidRootPart.Position - Vector3.new(-5545.8134765625, 313.7655944824219, -2978.4912109375)).Magnitude <= 1000) then
							repeat
								task.wait();
								if ((v906.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
									Farmtween = toTarget(v906.HumanoidRootPart.Position, v906.HumanoidRootPart.CFrame);
									Usefastattack = false;
								elseif ((v906.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
									if Farmtween then
										Farmtween:Stop();
									end
									Usefastattack = true;
									PosCursedDualKatana = v906.HumanoidRootPart.CFrame;
									EquipWeapon();
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v906.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
								end
							until not StartKaiTun or not v906.Parent or (v906.Humanoid.Health <= 0) 
							Usefastattack = false;
						end
					end
				end
			elseif (StartKaiTun and (v3 == false)) then
			else
				Usefastattack = false;
				Questtween = toTarget(CFrame.new(-5544.12109375, 379.99822998046875, -2962.108642578125).Position, CFrame.new(-5544.12109375, 379.99822998046875, -2962.108642578125));
				if ((CFrame.new(-9506.14648, 172.130661, 6101.79053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
					if Questtween then
						Questtween:Stop();
					end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5544.12109375, 379.99822998046875, -2962.108642578125);
				end
				task.wait(1);
			end
		elseif ((v587.Good == -3) and (v587.Finished == false) and (v587.Evil == -2)) then
			CDKBoat = toTarget(CFrame.new(-6124.43115234375, 16.420757293701172, -2249.501953125));
			CDKBoat:Wait();
			Com("F_", "CDKQuest", "BoatQuest", game:GetService("Workspace").NPCs:FindFirstChild("BF Boat Dealer"));
			task.wait(0.1);
			CDKBoat = toTarget(CFrame.new(3234.458740234375, 9.432062149047852, 1597.3251953125));
			CDKBoat:Wait();
			Com("F_", "CDKQuest", "BoatQuest", game:GetService("Workspace").NPCs:FindFirstChild("BF Boat Dealer"));
			task.wait(0.1);
			CDKBoat = toTarget(CFrame.new(-9549.9443359375, 21.104869842529297, 4684.04931640625));
			CDKBoat:Wait();
			Com("F_", "CDKQuest", "BoatQuest", game:GetService("Workspace").NPCs:FindFirstChild("BF Boat Dealer"));
			task.wait(0.1);
		elseif (v587.Good < 4) then
			Com("F_", "CDKQuest", "StartTrial", "Good");
		elseif (v587.Evil < 4) then
			Com("F_", "CDKQuest", "StartTrial", "Evil");
		end
	elseif CheckMobDistanceCollection(Vector3.new(-5545.8134765625, 313.7655944824219, -2978.4912109375), 1000) then
		for v676, v677 in pairs(game:GetService("CollectionService"):GetTagged("ActiveRig")) do
			if (StartKaiTun and not tostring(v677.Name):match("%[Boss]$") and tostring(v677.Name):find("%[Lv.") and v677:FindFirstChild("HumanoidRootPart")) then
				if ((v677.HumanoidRootPart.Position - Vector3.new(-5545.8134765625, 313.7655944824219, -2978.4912109375)).Magnitude <= 1000) then
					repeat
						task.wait();
						if ((v677.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(v677.HumanoidRootPart.Position, v677.HumanoidRootPart.CFrame);
							Usefastattack = false;
						elseif ((v677.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							Usefastattack = true;
							PosCursedDualKatana = v677.HumanoidRootPart.CFrame;
							EquipWeapon();
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v677.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
							MagnetPirateCas = true;
						end
					until not StartKaiTun or not v677.Parent or (v677.Humanoid.Health <= 0) 
					Usefastattack = false;
					MagnetPirateCas = false;
				end
			end
		end
	elseif (AutoRainbowHaki and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and (tostring(Com("F_", "HornedMan")) ~= "1") and CheckMobRainBowHaki()) then
		ShowDoingStatus("Do Rainbow haki");
		Com("F_", "HornedMan", "Bet");
		if string.find(v255.Text, "Stone") then
			if game.Workspace.Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
				for v791, v792 in pairs(game.Workspace.Enemies:GetChildren()) do
					if (StartKaiTun and (v792.Name == "Stone [Lv. 1550] [Boss]") and v792:FindFirstChild("Humanoid") and v792:FindFirstChild("HumanoidRootPart") and (v792.Humanoid.Health > 0)) then
						repeat
							task.wait();
							if ((v792.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 300) then
								Farmtween = toTarget(v792.HumanoidRootPart.Position, v792.HumanoidRootPart.CFrame);
							elseif ((v792.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300) then
								if Farmtween then
									Farmtween:Stop();
								end
								EquipWeapon();
								Usefastattack = true;
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v792.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
							end
						until not StartKaiTun or not v792.Parent or (v792.Humanoid.Health <= 0) or (v256.Visible == false) 
						Usefastattack = false;
					end
				end
			elseif ((CFrame.new(-1134, 40, 6877).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 250) then
				HakiRainbowTween = toTarget(CFrame.new(-1134, 40, 6877).Position, CFrame.new(-1134, 40, 6877));
			elseif ((CFrame.new(-1134, 40, 6877).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250) then
				if HakiRainbowTween then
					HakiRainbowTween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1134, 40, 6877);
			end
		elseif string.find(v255.Text, "Island Empress") then
			if game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
				for v814, v815 in pairs(game.Workspace.Enemies:GetChildren()) do
					if (StartKaiTun and (v815.Name == "Island Empress [Lv. 1675] [Boss]") and v815:FindFirstChild("Humanoid") and v815:FindFirstChild("HumanoidRootPart") and (v815.Humanoid.Health > 0)) then
						repeat
							task.wait();
							if ((v815.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 300) then
								Farmtween = toTarget(v815.HumanoidRootPart.Position, v815.HumanoidRootPart.CFrame);
							elseif ((v815.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300) then
								if Farmtween then
									Farmtween:Stop();
								end
								EquipWeapon();
								Usefastattack = true;
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v815.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
							end
						until not StartKaiTun or not v815.Parent or (v815.Humanoid.Health <= 0) or (v256.Visible == false) 
						Usefastattack = false;
					end
				end
			elseif ((CFrame.new(5614, 603, 339).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 250) then
				HakiRainbowTween = toTarget(CFrame.new(5614, 603, 339).Position, CFrame.new(5614, 603, 339));
			elseif ((CFrame.new(5614, 603, 339).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250) then
				if HakiRainbowTween then
					HakiRainbowTween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5614, 603, 339);
			end
		elseif string.find(v255.Text, "Kilo Admiral") then
			if game.Workspace.Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
				for v838, v839 in pairs(game.Workspace.Enemies:GetChildren()) do
					if (StartKaiTun and (v839.Name == "Kilo Admiral [Lv. 1750] [Boss]") and v839:FindFirstChild("Humanoid") and v839:FindFirstChild("HumanoidRootPart") and (v839.Humanoid.Health > 0)) then
						repeat
							task.wait();
							if ((v839.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 300) then
								Farmtween = toTarget(v839.HumanoidRootPart.Position, v839.HumanoidRootPart.CFrame);
							elseif ((v839.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300) then
								if Farmtween then
									Farmtween:Stop();
								end
								EquipWeapon();
								Usefastattack = true;
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v839.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
							end
						until not StartKaiTun or not v839.Parent or (v839.Humanoid.Health <= 0) or (v256.Visible == false) 
						Usefastattack = false;
					end
				end
			elseif ((CFrame.new(2879, 433, -7090).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 250) then
				HakiRainbowTween = toTarget(CFrame.new(2879, 433, -7090).Position, CFrame.new(2879, 433, -7090));
			elseif ((CFrame.new(2879, 433, -7090).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250) then
				if HakiRainbowTween then
					HakiRainbowTween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2879, 433, -7090);
			end
		elseif string.find(v255.Text, "Captain Elephant") then
			if game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
				for v867, v868 in pairs(game.Workspace.Enemies:GetChildren()) do
					if (StartKaiTun and (v868.Name == "Captain Elephant [Lv. 1875] [Boss]") and v868:FindFirstChild("Humanoid") and v868:FindFirstChild("HumanoidRootPart") and (v868.Humanoid.Health > 0)) then
						repeat
							task.wait();
							if ((v868.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 300) then
								Farmtween = toTarget(v868.HumanoidRootPart.Position, v868.HumanoidRootPart.CFrame);
							elseif ((v868.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300) then
								if Farmtween then
									Farmtween:Stop();
								end
								EquipWeapon();
								Usefastattack = true;
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v868.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
							end
						until not StartKaiTun or not v868.Parent or (v868.Humanoid.Health <= 0) or (v256.Visible == false) 
						Usefastattack = false;
					end
				end
			elseif ((CFrame.new(-13348, 406, -8574).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 250) then
				HakiRainbowTween = toTarget(CFrame.new(-13348, 406, -8574).Position, CFrame.new(-13348, 406, -8574));
			elseif ((CFrame.new(-13348, 406, -8574).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250) then
				if HakiRainbowTween then
					HakiRainbowTween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13348, 406, -8574);
			end
		elseif string.find(v255.Text, "Beautiful Pirate") then
			if game.Workspace.Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
				for v907, v908 in pairs(game.Workspace.Enemies:GetChildren()) do
					if (StartKaiTun and (v908.Name == "Beautiful Pirate [Lv. 1950] [Boss]") and v908:FindFirstChild("Humanoid") and v908:FindFirstChild("HumanoidRootPart") and (v908.Humanoid.Health > 0)) then
						repeat
							task.wait();
							if ((v908.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 300) then
								Farmtween = toTarget(v908.HumanoidRootPart.Position, v908.HumanoidRootPart.CFrame);
							elseif ((v908.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300) then
								if Farmtween then
									Farmtween:Stop();
								end
								EquipWeapon();
								Usefastattack = true;
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v908.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
							end
						until not StartKaiTun or not v908.Parent or (v908.Humanoid.Health <= 0) or (v256.Visible == false) 
						Usefastattack = false;
					end
				end
			elseif ((CFrame.new(5206, 23, -80).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 250) then
				HakiRainbowTween = toTarget(CFrame.new(5206, 23, -80).Position, CFrame.new(5206, 23, -80));
			elseif ((CFrame.new(5206, 23, -80).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250) then
				if HakiRainbowTween then
					HakiRainbowTween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5206, 23, -80);
			end
		end
	elseif (AutoHallowScythe and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and (game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]"))) then
		ShowDoingStatus("Kill Soul Reaper");
		if game.Workspace.Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
			for v793, v794 in pairs(game.Workspace.Enemies:GetChildren()) do
				if (StartKaiTun and (v794.Name == "Soul Reaper [Lv. 2100] [Raid Boss]") and v794:FindFirstChild("HumanoidRootPart") and v794:FindFirstChild("Humanoid") and (v794.Humanoid.Health > 0)) then
					repeat
						task.wait();
						if ((v794.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(v794.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10));
						elseif ((v794.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							EquipWeapon();
							Usefastattack = true;
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								Com("F_", "Buso");
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v794.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
						end
					until not StartKaiTun or not v794.Parent or (v794.Humanoid.Health <= 0) 
					Usefastattack = false;
					pcall(RefreshStatus);
				end
			end
		elseif game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
			local v804 = CFrame.new(-9515.62109, 315.925537, 6691.12012);
			if ((v804.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Questtween = toTarget(v804);
			elseif ((v804.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Questtween then
					Questtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v804;
			end
			Com("F_", "SetSpawnPoint");
		end
	elseif ((AutoDoughKing and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and game.Workspace:FindFirstChild("Enemies"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]")) or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]")) then
		ShowDoingStatus("Kill Dough King");
		if game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
			for v816, v817 in pairs(game.Workspace.Enemies:GetChildren()) do
				if (StartKaiTun and (v817.Name == "Dough King [Lv. 2300] [Raid Boss]") and v817:FindFirstChild("HumanoidRootPart") and v817:FindFirstChild("Humanoid") and (v817.Humanoid.Health > 0)) then
					repeat
						task.wait();
						if ((v817.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 300) then
							Farmtween = toTarget(v817.HumanoidRootPart.Position, v817.HumanoidRootPart.CFrame);
						elseif ((v817.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300) then
							if Farmtween then
								Farmtween:Stop();
							end
							EquipWeapon();
							v817.HumanoidRootPart.Size = Vector3.new(55, 55, 55);
							Usefastattack = true;
							toAroundTarget(v817.HumanoidRootPart.CFrame);
						end
					until not StartKaiTun or not v817.Parent or (v817.Humanoid.Health <= 0) or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") 
					Usefastattack = false;
				end
			end
		elseif (game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0) then
			Usefastattack = false;
			Questtween = toTarget(CFrame.new(-2151.82153, 149.315704, -12404.9053).Position, CFrame.new(-2151.82153, 149.315704, -12404.9053));
			if ((CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300) then
				if Questtween then
					Questtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053);
				task.wait(2);
			end
		end
	elseif (AutoBuddySword and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and string.find(BuddySwS:Update().Text, XMark) and (game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]"))) then
		ShowDoingStatus("Kill Cake Queen");
		if game.Workspace.Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
			for v840, v841 in pairs(game.Workspace.Enemies:GetChildren()) do
				if (StartKaiTun and (v841.Name == "Cake Queen [Lv. 2175] [Boss]") and v841:FindFirstChild("HumanoidRootPart") and v841:FindFirstChild("Humanoid") and (v841.Humanoid.Health > 0)) then
					repeat
						task.wait();
						if ((v841.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(v841.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10));
						elseif ((v841.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							EquipWeapon();
							Usefastattack = true;
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								Com("F_", "Buso");
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v841.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
						end
					until not StartKaiTun or not v841.Parent or (v841.Humanoid.Health <= 0) 
					Usefastattack = false;
					pcall(RefreshStatus);
				end
			end
		elseif game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
			local v858 = CFrame.new(-821, 66, -10965);
			if ((v858.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Questtween = toTarget(v858);
			elseif ((v858.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Questtween then
					Questtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v858;
			end
			Com("F_", "SetSpawnPoint");
		end
	elseif (AutoSpikeyTrident and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and string.find(SPTS:Update().Text, XMark) and (havemob("Cake Prince [Lv. 2300] [Raid Boss]"))) then
		ShowDoingStatus("Kill Cake Prince");
		if game.Workspace.Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
			for v869, v870 in pairs(game.Workspace.Enemies:GetChildren()) do
				if (StartKaiTun and (v870.Name == "Cake Prince [Lv. 2300] [Raid Boss]") and v870:FindFirstChild("HumanoidRootPart") and v870:FindFirstChild("Humanoid") and (v870.Humanoid.Health > 0)) then
					repeat
						task.wait();
						if ((v870.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(v870.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10));
						elseif ((v870.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							EquipWeapon();
							Usefastattack = true;
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								Com("F_", "Buso");
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v870.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
						end
					until not StartKaiTun or not v870.Parent or (v870.Humanoid.Health <= 0) 
					Usefastattack = false;
					pcall(RefreshStatus);
				end
			end
		elseif game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
			if (game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0) then
				Usefastattack = false;
				Questtween = toTarget(CFrame.new(-2151.82153, 149.315704, -12404.9053).Position, CFrame.new(-2151.82153, 149.315704, -12404.9053));
				if ((CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300) then
					if Questtween then
						Questtween:Stop();
					end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053);
					task.wait(0.1);
				end
			end
		end
	elseif (AutoTushita and (v257 >= 2000) and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and string.find(TushitaS:Update().Text, XMark) and ((CheckHakiColor("Winter Sky") and CheckHakiColor("Pure Red") and CheckHakiColor("Snow White") and inmyself("God's Chalice")) or inmyself("Holy Torch") or (not game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate") and havemob("Longma [Lv. 2000] [Boss]")) or havemob("rip_indra True Form [Lv. 5000] [Raid Boss]") or (CheckButtonColorOpen() and inmyself("God's Chalice")))) then
		ShowDoingStatus("Do Tushita");
		if ((havemob("Longma [Lv. 2000] [Boss]")) and not game:GetService("Workspace").Map.Turtle:FindFirstChild("TushitaGate")) then
			if game.Workspace.Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
				if RipTween then
					RipTween:Stop();
				end
				for v921, v922 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (StartKaiTun and (v922.Name == "Longma [Lv. 2000] [Boss]") and v922:FindFirstChild("HumanoidRootPart") and v922:FindFirstChild("Humanoid") and (v922.Humanoid.Health > 0)) then
						repeat
							task.wait();
							if (v922:FindFirstChild("HumanoidRootPart") and v922:FindFirstChild("Humanoid") and ((v922.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150)) then
								Farmtween = toTarget(v922.HumanoidRootPart.Position, v922.HumanoidRootPart.CFrame);
							elseif (v922:FindFirstChild("HumanoidRootPart") and v922:FindFirstChild("Humanoid") and ((v922.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150)) then
								EquipWeapon();
								if Farmtween then
									Farmtween:Stop();
								end
								Usefastattack = true;
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v922.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
							end
						until not StartKaiTun or not v922.Parent or (v922.Humanoid.Health <= 0) 
						Usefastattack = false;
						pcall(RefreshStatus);
					end
				end
			elseif game.ReplicatedStorage:FindFirstChild("Longma [Lv. 2000] [Boss]") then
				local v945 = CFrame.new(-10248.3936, 353.79129, -9306.34473);
				if ((v945.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
					Questtween = toTarget(v945);
				elseif ((v945.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
					if Questtween then
						Questtween:Stop();
					end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v945;
				end
				Usefastattack = false;
			end
		elseif inmyself("Holy Torch") then
			task.wait(0.25);
			EquipWeapon("Holy Torch");
			task.wait(0.2);
			for v923 = 1, 5 do
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches["Torch" .. tostring(v923)].CFrame;
				task.wait(0.2);
			end
		elseif (inmyself("God's Chalice") and CheckButtonColorOpen()) then
			EquipWeapon("God's Chalice");
			ChaliceTween = toTarget(CFrame.new(-5560.27295, 313.915466, -2663.89795));
			ChaliceTween:Wait();
			task.wait(0.5);
			ChaliceTween = toTarget(CFrame.new(5148.03613, 162.352493, 910.548218));
			ChaliceTween:Wait();
			task.wait(0.3);
		elseif ((inmyself("God's Chalice") and not CheckButtonColorOpen()) or (CheckHakiColor("Winter Sky") and CheckHakiColor("Pure Red") and CheckHakiColor("Snow White"))) then
			task.wait(0.25);
			Com("F_", "activateColor", "Winter Sky");
			task.wait(0.25);
			ChaliceTween = toTarget(CFrame.new(-5420.16602, 1084.9657, -2666.8208, 0.390717864, 0, 0.92051065, 0, 1, 0, -0.92051065, 0, 0.390717864));
			ChaliceTween:Wait();
			task.wait(0.25);
			Com("F_", "activateColor", "Pure Red");
			task.wait(0.25);
			ChaliceTween = toTarget(CFrame.new(-5414.41357, 309.865753, -2212.45776, 0.374604106, "-0", -0.92718488, 0, 1, "-0", 0.92718488, 0, 0.374604106));
			ChaliceTween:Wait();
			task.wait(0.25);
			Com("F_", "activateColor", "Snow White");
			task.wait(0.25);
			ChaliceTween = toTarget(CFrame.new(-4971.47559, 331.565765, -3720.02954, -0.92051065, 0, 0.390717506, 0, 1, 0, -0.390717506, 0, -0.92051065));
			ChaliceTween:Wait();
		end
	elseif ((AutoEliteHunter or AutoTushita or (game.Players.LocalPlayer.Data.DevilFruit.Value == "Dough-Dough") or AutoCDK) and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and (game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]"))) then
		ShowDoingStatus("Kill Elite");
		if (game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
			if (string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre")) then
				for v956, v957 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
					if (string.find(v957.Name, "Diablo") or string.find(v957.Name, "Urban") or string.find(v957.Name, "Deandre")) then
						TushitaTween = toTarget(v957.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
						if ((v957.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250) then
							if TushitaTween then
								TushitaTween:Stop();
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v957.HumanoidRootPart.CFrame;
						end
					end
				end
				for v958, v959 in pairs(game.Workspace.Enemies:GetChildren()) do
					if (StartKaiTun and (string.find(v959.Name, "Diablo") or string.find(v959.Name, "Urban") or string.find(v959.Name, "Deandre")) and v959:FindFirstChild("Humanoid") and v959:FindFirstChild("HumanoidRootPart") and (v959.Humanoid.Health > 0)) then
						repeat
							task.wait();
							if ((v959.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 300) then
								Farmtween = toTarget(v959.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
							elseif ((v959.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300) then
								if Farmtween then
									Farmtween:Stop();
								end
								EquipWeapon();
								Usefastattack = true;
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v959.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
							end
						until not StartKaiTun or not v959.Parent or (v959.Humanoid.Health <= 0) 
						Usefastattack = false;
					end
				end
			else
				Com("F_", "EliteHunter");
			end
		else
			Com("F_", "EliteHunter");
		end
	elseif ((game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and (v257 < 2000) and (inmyself("God's Chalice") or inmyself("Sweet Chalice")) and (GetMaterial("Mirror Fractal") < 1)) then
		if inmyself("Sweet Chalice") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true);
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner");
			if (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]")) then
				for v973, v974 in pairs(game.Workspace.Enemies:GetChildren()) do
					if (StartKaiTun and ((v974.Name == "Cookie Crafter [Lv. 2200]") or (v974.Name == "Cake Guard [Lv. 2225]") or (v974.Name == "Baking Staff [Lv. 2250]") or (v974.Name == "Head Baker [Lv. 2275]")) and v974:FindFirstChild("HumanoidRootPart") and v974:FindFirstChild("Humanoid") and (v974.Humanoid.Health > 0)) then
						repeat
							task.wait();
							if ((v974.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 300) then
								Farmtween = toTarget(v974.HumanoidRootPart.Position, v974.HumanoidRootPart.CFrame);
							elseif ((v974.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300) then
								if Farmtween then
									Farmtween:Stop();
								end
								Usefastattack = true;
								PosMon = v974.HumanoidRootPart.CFrame;
								EquipWeapon(SelectToolWeapon);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v974.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
								MagnetFarmCakePrince = true;
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true);
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner");
							end
						until not StartKaiTun or not v974.Parent or (v974.Humanoid.Health <= 0) 
						Usefastattack = false;
						MagnetFarmCakePrince = false;
					end
				end
			else
				MagnetFarmCakePrince = false;
				Usefastattack = false;
				Questtween = toTarget(CFrame.new(-2077, 252, -12373).Position, CFrame.new(-2077, 252, -12373));
				if ((CFrame.new(-2077, 252, -12373).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300) then
					if Questtween then
						Questtween:Stop();
					end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373);
				end
			end
		elseif (inmyself("God's Chalice") and (GetMaterial("Conjured Cocoa") >= 10)) then
			game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SweetChaliceNpc");
			task.wait(0.2);
		elseif (game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel [Lv. 2375]") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief [Lv. 2350]") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler [Lv. 2325]") or game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior [Lv. 2300]")) then
			for v1000, v1001 in pairs(game.Workspace.Enemies:GetChildren()) do
				if (StartKaiTun and ((v1001.Name == "Candy Rebel [Lv. 2375]") or (v1001.Name == "Sweet Thief [Lv. 2350]") or (v1001.Name == "Chocolate Bar Battler [Lv. 2325]") or (v1001.Name == "Cocoa Warrior [Lv. 2300]")) and v1001:FindFirstChild("HumanoidRootPart") and v1001:FindFirstChild("Humanoid") and (v1001.Humanoid.Health > 0)) then
					repeat
						task.wait();
						if ((v1001.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(v1001.HumanoidRootPart.Position, v1001.HumanoidRootPart.CFrame);
							Usefastattack = false;
						elseif ((v1001.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							Usefastattack = true;
							PosMon = v1001.HumanoidRootPart.CFrame;
							EquipWeapon(SelectToolWeapon);
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1001.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0);
							MagnetFarmCoco = true;
						end
					until not StartKaiTun or not v1001.Parent or (v1001.Humanoid.Health <= 0) 
					Usefastattack = false;
					MagnetFarmCoco = false;
				end
			end
		else
			MagnetFarmCoco = false;
			Usefastattack = false;
			Questtween = toTarget(CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625));
			if ((CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Questtween then
					Questtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625);
			end
		end
	elseif (AutoRipIndra and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and (game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or ((inmyself("God's Chalice")) and (CheckButtonColorOpen() or (CheckHakiColor("Winter Sky") and CheckHakiColor("Pure Red") and CheckHakiColor("Snow White")))))) then
		ShowDoingStatus("Kill rip_indra");
		if game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
			for v975, v976 in pairs(game.Workspace.Enemies:GetChildren()) do
				if (StartKaiTun and (v976.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]") and v976:FindFirstChild("HumanoidRootPart") and v976:FindFirstChild("Humanoid") and (v976.Humanoid.Health > 0)) then
					repeat
						task.wait();
						if ((v976.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(v976.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10));
						elseif ((v976.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							EquipWeapon();
							Usefastattack = true;
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								Com("F_", "Buso");
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v976.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
						end
					until not StartKaiTun or not v976.Parent or (v976.Humanoid.Health <= 0) 
					Usefastattack = false;
					pcall(RefreshStatus);
				end
			end
		elseif game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
			local v992 = CFrame.new(-5359, 424, -2735);
			if ((v992.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Questtween = toTarget(v992);
			elseif ((v992.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Questtween then
					Questtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v992;
			end
			Com("F_", "SetSpawnPoint");
		elseif (inmyself("God's Chalice") and CheckButtonColorOpen()) then
			EquipWeapon("God's Chalice");
			ChaliceTween = toTarget(CFrame.new(-5560.27295, 313.915466, -2663.89795));
			ChaliceTween:Wait();
			task.wait(0.5);
			EquipWeapon("God's Chalice");
			task.wait(0.2);
		elseif (inmyself("God's Chalice") and (not CheckButtonColorOpen() or (CheckHakiColor("Winter Sky") and CheckHakiColor("Pure Red") and CheckHakiColor("Snow White")))) then
			task.wait(0.25);
			Com("F_", "activateColor", "Winter Sky");
			task.wait(0.25);
			ChaliceTween = toTarget(CFrame.new(-5420.16602, 1084.9657, -2666.8208, 0.390717864, 0, 0.92051065, 0, 1, 0, -0.92051065, 0, 0.390717864));
			ChaliceTween:Wait();
			task.wait(0.25);
			Com("F_", "activateColor", "Pure Red");
			task.wait(0.25);
			ChaliceTween = toTarget(CFrame.new(-5414.41357, 309.865753, -2212.45776, 0.374604106, "-0", -0.92718488, 0, 1, "-0", 0.92718488, 0, 0.374604106));
			ChaliceTween:Wait();
			task.wait(0.25);
			Com("F_", "activateColor", "Snow White");
			task.wait(0.25);
			ChaliceTween = toTarget(CFrame.new(-4971.47559, 331.565765, -3720.02954, -0.92051065, 0, 0.390717506, 0, 1, 0, -0.390717506, 0, -0.92051065));
			ChaliceTween:Wait();
		end
	elseif ((AutoYama or AutoCDK) and (Com("F_", "EliteHunter", "Progress") >= 30) and string.find(YamaS:Update().Text, XMark)) then
		ShowDoingStatus("Do Yama");
		fireclickdetector(game.Workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector);
		pcall(RefreshStatus);
	elseif (AutoCanvander and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and string.find(CanvanderS:Update().Text, XMark) and (game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]"))) then
		ShowDoingStatus("Kill Beautiful Pirate");
		if game.Workspace.Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
			for v1017, v1018 in pairs(game.Workspace.Enemies:GetChildren()) do
				if (StartKaiTun and (v1018.Name == "Beautiful Pirate [Lv. 1950] [Boss]") and v1018:FindFirstChild("HumanoidRootPart") and v1018:FindFirstChild("Humanoid") and (v1018.Humanoid.Health > 0)) then
					repeat
						task.wait();
						if ((v1018.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(v1018.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10));
						elseif ((v1018.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							EquipWeapon();
							Usefastattack = true;
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								Com("F_", "Buso");
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1018.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10);
						end
					until not StartKaiTun or not v1018.Parent or (v1018.Humanoid.Health <= 0) 
					Usefastattack = false;
					pcall(RefreshStatus);
				end
			end
		elseif game.ReplicatedStorage:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
			local v1034 = CFrame.new(5182, 23, -20);
			Questtween = toTarget(v1034);
			Com("F_", "SetSpawnPoint");
		end
	elseif ((v257 >= 2300) and AutoSoulGuitar and string.find(SoulGuitarS:Update().Text, XMark) and (((Com("F_", "GuitarPuzzleProgress", "Check") ~= nil) and (Com("F_", "GuitarPuzzleProgress", "Check").Pipes == false)) or ((Com("F_", "GuitarPuzzleProgress", "Check") == nil) and (game:GetService("Lighting"):GetAttribute("MoonPhase") == 5) and CheckNight()))) then
		ShowDoingStatus("Do Soul Guitar");
		CheckGuitar = Com("F_", "GuitarPuzzleProgress", "Check");
		if (CheckGuitar == nil) then
			GuitarTween = toTarget(CFrame.new(-8654.7158203125, 141.83416748046875, 6169.04150390625));
			GuitarTween:Wait();
			Com("F_", "gravestoneEvent", 2, true);
		elseif (CheckGuitar.Swamp == false) then
			if (game:GetService("Workspace").Map["Haunted Castle"]:FindFirstChild("SwampWater").Color == Color3.fromRGB(117, 0, 0)) then
				if game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") then
					for v1098, v1099 in pairs(game.Workspace.Enemies:GetChildren()) do
						if (StartKaiTun and (v1099.Name == "Living Zombie [Lv. 2000]") and v1099:FindFirstChild("HumanoidRootPart") and v1099:FindFirstChild("Humanoid") and (v1099.Humanoid.Health > 0)) then
							repeat
								task.wait();
								if ((v1099.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
									Farmtween = toTarget(v1099.HumanoidRootPart.Position, v1099.HumanoidRootPart.CFrame);
									MagnetFarmSoulGuitar = true;
								elseif ((v1099.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
									MagnetFarmSoulGuitar = true;
									if Farmtween then
										Farmtween:Stop();
									end
									EquipWeapon();
									v1099.HumanoidRootPart.CFrame = CFrame.new(-10139.9404296875, 138.6524658203125, 5963.72216796875);
									v1099.HumanoidRootPart.Size = Vector3.new(55, 55, 55);
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10139.9404296875, 168.6524658203125, 5983.72216796875);
									task.wait(0.2);
									Usefastattack = true;
								end
							until not StartKaiTun or not v1099.Parent or (v1099.Humanoid.Health <= 0) or not havemob("Living Zombie [Lv. 2000]") 
							Usefastattack = false;
							MagnetFarmSoulGuitar = false;
						end
					end
				else
					Usefastattack = false;
					MagnetFarmSoulGuitar = false;
					Questtween = toTarget(CFrame.new(-10139.9404296875, 148.6524658203125, 5963.72216796875));
					if ((CFrame.new(-10139.9404296875, 148.6524658203125, 5963.72216796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300) then
						if Questtween then
							Questtween:Stop();
						end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10139.9404296875, 148.6524658203125, 5963.72216796875);
						task.wait(1);
					end
					task.wait(3);
				end
			end
		elseif (CheckGuitar.Gravestones == false) then
			Com("F_", "GuitarPuzzleProgress", "Gravestones");
		elseif (CheckGuitar.Ghost == false) then
			Com("F_", "GuitarPuzzleProgress", "Ghost");
		elseif (CheckGuitar.Trophies == false) then
			Com("F_", "GuitarPuzzleProgress", "Trophies");
		elseif (CheckGuitar.Pipes == false) then
			Com("F_", "GuitarPuzzleProgress", "Pipes");
		else
		end
		task.wait(1);
		MagnetFarmSoulGuitar = false;
	elseif (RaidsDoughNow and (game.Players.LocalPlayer.Data.DevilFruit.Value == "Dough-Dough") and (Com("F_", "CakeScientist", "Check") == true) and not CheckAwaken() and (HaveFruitToSea3(alliesfruit) or ((v258['HaveFruitInMySelf'] == true) and (v258.Price >= 1000000)) or inmyself("Special Microchip") or CheckIsland() or (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true)) and not havemob("rip_indra True Form [Lv. 5000] [Raid Boss]") and not StopRaidsPls and (v257 >= 1100)) then
		ShowDoingStatus("Doing Raids Dough");
		if tween then
			tween:Cancel();
		end
		if (inmyself("Special Microchip") or CheckIsland()) then
			if (inmyself("Special Microchip") and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and (CheckIsland() == false)) then
				if v50 then
					fireclickdetector(v29.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
				elseif v51 then
					fireclickdetector(v29.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
				end
				task.wait(17);
			elseif (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true) then
				repeat
					task.wait();
					if (game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1")) then
						GoIsland = false;
						NextIsland();
						if (GoIsland == false) then
							task.wait(0.1);
						elseif ((ToIslandCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(ToIslandCFrame);
						elseif ((ToIslandCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ToIslandCFrame;
						end
					end
					for v1110, v1111 in pairs(game.Workspace.Enemies:GetChildren()) do
						if (StartKaiTun and v1111:FindFirstChild("Humanoid") and v1111:FindFirstChild("HumanoidRootPart") and ((v1111.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500)) then
							repeat
								task.wait();
								if not v1111:FindFirstChild("Humanoid") then
									return;
								end
								v1111.Humanoid.Health = 0;
							until not StartKaiTun or (v1111.Humanoid.Health <= 0) or not v1111.Parent 
						end
					end
					Com("F_", "Awakener", "Check");
					Com("F_", "Awakener", "Awaken");
				until (StartKaiTun == false) or not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") or (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) 
				task.wait(5);
				for v1100 = 1, 5 do
					Com("F_", "Awakener", "Check");
					Com("F_", "Awakener", "Awaken");
					task.wait(0.5);
				end
			end
		else
			GoIsland = false;
			local v1051 = math.huge;
			local v1052 = "";
			if ((v258['HaveFruitInMySelf'] == true) and (v258.Price >= 1000000) and (game.Players.LocalPlayer:WaitForChild("Data"):WaitForChild("Fragments").Value < 5000) and (v258['HaveFruitInStore'] == false)) then
				StoreMyFruit();
			elseif (game.Players.LocalPlayer:WaitForChild("Data"):WaitForChild("Fragments").Value >= 4000) then
				for v1101, v1102 in pairs(Com("F_", "getInventoryFruits")) do
					if not v1102.Price then
						break;
					end
					if ((v1102.Price >= 1000000) and not table.find(alliesfruit, v1102.Name)) then
						if (v1102.Price < v1051) then
							v1051 = v1102.Price;
							v1052 = v1102.Name;
						end
					end
				end
				if (v1052 ~= "") then
					Com("F_", "LoadFruit", v1052);
				end
				Com("F_", "RaidsNpc", "Select", "Dough");
			else
				for v1103, v1104 in pairs(Com("F_", "getInventoryFruits")) do
					if not v1104.Price then
						break;
					end
					if (v1104.Price < RateFruitRaids) then
						if (v1104.Price < v1051) then
							v1051 = v1104.Price;
							v1052 = v1104.Name;
						end
					end
				end
				if (v1052 ~= "") then
					Com("F_", "LoadFruit", v1052);
				end
				Com("F_", "RaidsNpc", "Select", "Flame");
			end
			Com("F_", "Awakener", "Check");
			Com("F_", "Awakener", "Awaken");
		end
	elseif (not havemob("rip_indra True Form [Lv. 5000] [Raid Boss]") and (((v258['HaveFruitInMySelf'] == true) and (v258['HaveFruitInStore'] == true)) or (RaidsNow and CheckRateFruit(RateFruitRaids)) or inmyself("Special Microchip") or CheckIsland() or (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true)) and (v257 >= 1100) and not StopRaidsPls) then
		if ((game.Players.LocalPlayer:WaitForChild("Data"):WaitForChild("Fragments").Value > (LimitRaidsFrag or 100000)) and (v258['HaveFruitInMySelf'] == true)) then
			if (game.Players.LocalPlayer.Data.DevilFruit.Value ~= "Dough-Dough") then
				game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15);
				return;
			end
		end
		ShowDoingStatus("Doing Raids");
		if tween then
			tween:Cancel();
		end
		if (inmyself("Special Microchip") or CheckIsland()) then
			if (inmyself("Special Microchip") and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) and (CheckIsland() == false)) then
				if v50 then
					fireclickdetector(v29.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
				elseif v51 then
					fireclickdetector(v29.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
				end
				task.wait(17);
			elseif (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true) then
				repeat
					task.wait();
					if (game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1")) then
						GoIsland = false;
						NextIsland();
						if (GoIsland == false) then
							task.wait(0.1);
						elseif ((ToIslandCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(ToIslandCFrame);
						elseif ((ToIslandCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ToIslandCFrame;
						end
					end
					for v1123, v1124 in pairs(game.Workspace.Enemies:GetChildren()) do
						if (StartKaiTun and v1124:FindFirstChild("Humanoid") and v1124:FindFirstChild("HumanoidRootPart") and ((v1124.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500)) then
							repeat
								task.wait();
								if not v1124:FindFirstChild("Humanoid") then
									return;
								end
								v1124.Humanoid.Health = 0;
							until not StartKaiTun or (v1124.Humanoid.Health <= 0) or not v1124.Parent 
						end
					end
					Com("F_", "Awakener", "Check");
					Com("F_", "Awakener", "Awaken");
				until (StartKaiTun == false) or not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") or (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) 
				task.wait(5);
				for v1115 = 1, 5 do
					Com("F_", "Awakener", "Check");
					Com("F_", "Awakener", "Awaken");
					task.wait(0.5);
				end
			end
		else
			GoIsland = false;
			if ((game.Players.LocalPlayer.Data.DevilFruit.Value == "Dough-Dough") and not CheckAwaken() and not RaidsNow) then
				if ((Com("F_", "CakeScientist", "Check") == true) and (v258['HaveFruitInMySelf'] == false) and (game.Players.LocalPlayer:WaitForChild("Data"):WaitForChild("Fragments").Value >= 1000)) then
					Com("F_", "RaidsNpc", "Select", "Dough");
				elseif ((Com("F_", "CakeScientist", "Check") == true) and (v258['HaveFruitInMySelf'] == true) and (v258.Price >= 1000000)) then
					Com("F_", "RaidsNpc", "Select", "Dough");
				else
					Com("F_", "RaidsNpc", "Select", GetNameRaids());
				end
				return;
			end
			if RaidsNow then
				local v1084 = math.huge;
				local v1085 = "";
				for v1105, v1106 in pairs(Com("F_", "getInventoryFruits")) do
					if not v1106.Price then
						break;
					end
					if (v1106.Price < RateFruitRaids) then
						if (v1106.Price < v1084) then
							v1084 = v1106.Price;
							v1085 = v1106.Name;
						end
					end
				end
				if (v1085 ~= "") then
					Com("F_", "LoadFruit", v1085);
				end
			end
			Com("F_", "RaidsNpc", "Select", GetNameRaids(v258));
			Com("F_", "Awakener", "Check");
			Com("F_", "Awakener", "Awaken");
		end
	elseif (function()
		for v1072, v1073 in pairs(game:GetService("Workspace"):GetChildren()) do
			if (v1073:IsA("Tool") and string.find(v1073.Name, "Fruit")) then
				return true;
			end
		end
		return false;
	end)() then
		for v1079, v1080 in pairs(game:GetService("Workspace"):GetChildren()) do
			if (v1080:IsA("Tool") and string.find(v1080.Name, "Fruit") and StartKaiTun) then
				if FruitTarget then
					FruitTarget:Stop();
				end
				repeat
					task.wait(0.1);
					FruitTarget = toTarget(v1080.Handle.CFrame);
				until ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1080.Handle.Position).Magnitude <= 8) or not StartKaiTun or not v1080.Parent 
				task.wait(0.5);
				StoreMyFruit();
			end
		end
	elseif (v257 >= v40) then
		ShowDoingStatus("Auto Farm Mastery");
		if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]")) then
			for v1116, v1117 in pairs(game.Workspace.Enemies:GetChildren()) do
				if (StartKaiTun and ((v1117.Name == "Reborn Skeleton [Lv. 1975]") or (v1117.Name == "Living Zombie [Lv. 2000]") or (v1117.Name == "Demonic Soul [Lv. 2025]") or (v1117.Name == "Posessed Mummy [Lv. 2050]")) and v1117:FindFirstChild("HumanoidRootPart") and v1117:FindFirstChild("Humanoid") and (v1117.Humanoid.Health > 0)) then
					repeat
						task.wait();
						if ((v1117.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
							Farmtween = toTarget(v1117.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
							Usefastattack = false;
						elseif ((v1117.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
							if Farmtween then
								Farmtween:Stop();
							end
							PosMon = v1117.HumanoidRootPart.CFrame;
							StartMagnetFarmLevelMax = true;
							if (v38 == "Blox Fruit") then
								HealthMin = (v1117.Humanoid.MaxHealth * 30) / 100;
								if ((v1117.Humanoid.Health <= HealthMin) and v1117:FindFirstChild("HumanoidRootPart") and v1117:FindFirstChild("Humanoid") and (v1117.Humanoid.Health > 0)) then
									Usefastattack = false;
									EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value);
									toAroundTarget(v1117.HumanoidRootPart.CFrame);
									if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
										PositionSkillMasteryDevilFruit = v1117.HumanoidRootPart.Position;
										UseSkillMasteryDevilFruit = true;
										if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
											MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Data);
											DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value;
										elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
											MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Data);
											DevilFruitMastery = game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value;
										end
										if (game.Players.LocalPlayer.Character:FindFirstChild("IceSword") or game.Players.LocalPlayer.Character:FindFirstChild("LightSword")) then
											v30:CaptureController();
											v30:ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame);
										end
										if (getgenv().Configs.Mastery.SettingsSkill and (type(getgenv().Configs.Mastery.SettingsSkill) == "table") and (#getgenv().Configs.Mastery.SettingsSkill > 0)) then
											for v1165, v1166 in pairs(getgenv().Configs.Mastery.SettingsSkill) do
												if (v1166:FindFirstChild("HumanoidRootPart") and v1166:FindFirstChild("Humanoid") and (v1166.Humanoid.Health > 0) and (DevilFruitMastery >= MasteryDevilFruit.Lvl[string.upper(v1165)])) then
													game:service("VirtualInputManager"):SendKeyEvent(true, string.upper(v1165), false, game);
													task.wait(v1166);
													game:service("VirtualInputManager"):SendKeyEvent(false, string.upper(v1165), false, game);
												end
												task.wait(0.1);
											end
										elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
											if (v1117:FindFirstChild("HumanoidRootPart") and v1117:FindFirstChild("Humanoid") and (v1117.Humanoid.Health > 0) and (DevilFruitMastery >= MasteryDevilFruit.Lvl.Z)) then
												game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
												task.wait(0.1);
												game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
											end
											if (v1117:FindFirstChild("HumanoidRootPart") and v1117:FindFirstChild("Humanoid") and (v1117.Humanoid.Health > 0) and (DevilFruitMastery >= MasteryDevilFruit.Lvl.C)) then
												game:service("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
												task.wait(3);
												game:service("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
											end
										elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
											if (v1117:FindFirstChild("HumanoidRootPart") and v1117:FindFirstChild("Humanoid") and (v1117.Humanoid.Health > 0) and (game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686)) and (DevilFruitMastery >= MasteryDevilFruit.Lvl.Z)) then
											else
												game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
												task.wait(0.1);
												game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
											end
											if (SkillX and v1117:FindFirstChild("HumanoidRootPart") and v1117:FindFirstChild("Humanoid") and (v1117.Humanoid.Health > 0) and (DevilFruitMastery >= MasteryDevilFruit.Lvl.X)) then
												game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
												task.wait(0.1);
												game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
											end
											if (SkillC and v1117:FindFirstChild("HumanoidRootPart") and v1117:FindFirstChild("Humanoid") and (v1117.Humanoid.Health > 0) and (DevilFruitMastery >= MasteryDevilFruit.Lvl.C)) then
												game:service("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
												task.wait(0.1);
												game:service("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
											end
										elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough-Dough") then
											game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v1117.HumanoidRootPart.Position;
											if (v1117:FindFirstChild("HumanoidRootPart") and v1117:FindFirstChild("Humanoid") and (v1117.Humanoid.Health > 0) and (DevilFruitMastery >= MasteryDevilFruit.Lvl.Z)) then
												game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
												task.wait(0.1);
												game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
											end
											if (v1117:FindFirstChild("HumanoidRootPart") and v1117:FindFirstChild("Humanoid") and (v1117.Humanoid.Health > 0) and (DevilFruitMastery >= MasteryDevilFruit.Lvl.X)) then
												game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
												task.wait(0.1);
												game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
											end
											if (v1117:FindFirstChild("HumanoidRootPart") and v1117:FindFirstChild("Humanoid") and (v1117.Humanoid.Health > 0) and (DevilFruitMastery >= MasteryDevilFruit.Lvl.V)) then
												game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
												task.wait(5);
												game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
											end
										elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control-Control") then
											if (game:GetService("Lighting"):FindFirstChild("OpeGlobe") and (game:GetService("Lighting"):FindFirstChild("OpeGlobe").TintColor == Color3.fromRGB(164, 189, 255))) then
												if (v1117:FindFirstChild("HumanoidRootPart") and v1117:FindFirstChild("Humanoid") and (v1117.Humanoid.Health > 0)) then
													game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
													task.wait(0.5);
													game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
												end
												if (v1117:FindFirstChild("HumanoidRootPart") and v1117:FindFirstChild("Humanoid") and (v1117.Humanoid.Health > 0) and (DevilFruitMastery >= MasteryDevilFruit.Lvl.C)) then
													game:service("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
													task.wait(0.1);
													game:service("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
												end
												if (v1117:FindFirstChild("HumanoidRootPart") and v1117:FindFirstChild("Humanoid") and (v1117.Humanoid.Health > 0) and (DevilFruitMastery >= MasteryDevilFruit.Lvl.V)) then
													game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
													task.wait(0.1);
													game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
												end
											else
												game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
												task.wait(2);
												game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
											end
										elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
											game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v1117.HumanoidRootPart.Position;
											if (v1117:FindFirstChild("HumanoidRootPart") and v1117:FindFirstChild("Humanoid") and (v1117.Humanoid.Health > 0) and (DevilFruitMastery >= MasteryDevilFruit.Lvl.Z)) then
												game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
												task.wait(0.1);
												game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
											end
											if (v1117:FindFirstChild("HumanoidRootPart") and v1117:FindFirstChild("Humanoid") and (v1117.Humanoid.Health > 0) and (DevilFruitMastery >= MasteryDevilFruit.Lvl.X)) then
												game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
												task.wait(0.1);
												game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
											end
											if (v1117:FindFirstChild("HumanoidRootPart") and v1117:FindFirstChild("Humanoid") and (v1117.Humanoid.Health > 0) and (DevilFruitMastery >= MasteryDevilFruit.Lvl.C)) then
												game:service("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
												task.wait(0.1);
												game:service("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
											end
											if (v1117:FindFirstChild("HumanoidRootPart") and v1117:FindFirstChild("Humanoid") and (v1117.Humanoid.Health > 0) and (DevilFruitMastery >= MasteryDevilFruit.Lvl.V)) then
												game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
												task.wait(0.1);
												game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
											end
										end
									end
								else
									UseSkillMasteryDevilFruit = false;
									EquipWeapon();
									Usefastattack = true;
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1117.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0);
								end
							else
								EquipWeapon();
								Usefastattack = true;
								toAroundTarget(v1117.HumanoidRootPart.CFrame);
							end
						end
					until not StartKaiTun or not v1117.Parent or (v1117.Humanoid.Health <= 0) 
					Usefastattack = false;
					StartMagnetFarmLevelMax = false;
				end
			end
		else
			StartMagnetFarmLevelMax = false;
			Usefastattack = false;
			if ((CFrame.new(-9506, 172, 6101).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Modstween = toTarget(CFrame.new(-9506, 172, 6101));
			elseif ((CFrame.new(-9506, 172, 6101).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Modstween then
					Modstween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9506, 172, 6101);
			end
		end
	else
		ShowDoingStatus("Auto Farm");
		if not string.find(v255.Text, NameCheckQuest) then
			Com("F_", "AbandonQuest");
		end
		if (v256.Visible == false) then
			Usefastattack = false;
			StartMagnetFarmLevel = false;
			if ((CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
				Questtween = toTarget(CFrameQuest);
			elseif ((CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
				if Questtween then
					Questtween:Stop();
				end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest;
				task.wait(0.95);
				Com("F_", "StartQuest", NameQuest, LevelQuest);
				Com("F_", "SetSpawnPoint");
			end
		elseif (v256.Visible == true) then
			if game:GetService("Workspace").Enemies:FindFirstChild(Monster) then
				for v1147, v1148 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if (StartKaiTun and (v1148.Name == Monster) and v1148:FindFirstChild("HumanoidRootPart") and v1148:FindFirstChild("Humanoid") and (v1148.Humanoid.Health > 0)) then
						if string.find(v255.Text, NameCheckQuest) then
							repeat
								task.wait();
								if (v1148:FindFirstChild("HumanoidRootPart") and v1148:FindFirstChild("Humanoid")) then
									if ((v1148.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
										FarmtoTarget = toTarget(v1148.HumanoidRootPart.Position, v1148.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1));
									elseif ((v1148.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
										if FarmtoTarget then
											FarmtoTarget:Stop();
										end
										EquipWeapon();
										Usefastattack = true;
										StartMagnetFarmLevel = true;
										PosMon = v1148.HumanoidRootPart.CFrame;
										toAroundTarget(v1148.HumanoidRootPart.CFrame);
									end
								end
							until not game:GetService("Workspace").Enemies:FindFirstChild(Monster) or not StartKaiTun or not string.find(v255.Text, NameCheckQuest) or (v1148.Humanoid.Health <= 0) or not v1148.Parent or (v256.Visible == false) 
							Usefastattack = false;
							StartMagnetFarmLevel = false;
						else
							Com("F_", "AbandonQuest");
						end
					end
				end
			else
				StartMagnetFarmLevel = false;
				Usefastattack = false;
				if ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150) then
					Modstween = toTarget(CFrameMon);
				elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
					if Modstween then
						Modstween:Stop();
					end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
					task.wait(0.314285714286);
				end
			end
		end
	end
end
local v90 = {"Godhuman","Superhuman","SharkmanKarate","DragonTalon","ElectricClaw","DeathStep"};
task.spawn(LPH_NO_VIRTUALIZE(function()
	for v383, v384 in pairs(v90) do
		if (tonumber(Com("F_", "Buy" .. v384, true)) == 1) then
			table.insert(v39, tostring(v384));
			if (v384 == "Godhuman") then
				v20 = true;
				v21 = true;
				v22 = true;
				v23 = true;
				v24 = true;
				break;
			elseif (v384 == "SharkmanKarate") then
				v17 = true;
			elseif (v384 == "DragonTalon") then
				v19 = true;
			elseif (v384 == "ElectricClaw") then
				v18 = true;
			elseif (v384 == "DeathStep") then
				v16 = true;
			end
		end
		task.wait();
	end
end));
task.spawn(LPH_NO_VIRTUALIZE(function()
	for v385, v386 in pairs(v39) do
		Com("F_", "Buy" .. v386);
		task.wait(0.01);
		if (v386 == "Godhuman") then
			if inmyself("Godhuman") then
				local v556 = CheckMasteryWeapon("Godhuman", 500);
				if ((v556 == "true") or (v556 == "UpTo")) then
					GodhumanDone = true;
				end
			end
		elseif (v386 == "Superhuman") then
			if inmyself("Superhuman") then
				local v619 = CheckMasteryWeapon("Superhuman", 400);
				if ((v619 == "true") or (v619 == "UpTo")) then
					v22 = true;
					v21 = true;
				end
			end
		elseif (v386 == "SharkmanKarate") then
			if inmyself("Sharkman Karate") then
				local v678 = CheckMasteryWeapon("Sharkman Karate", 400);
				if ((v678 == "true") or (v678 == "UpTo")) then
					v21 = true;
				end
			end
		elseif (v386 == "DragonTalon") then
			if inmyself("Dragon Talon") then
				local v721 = CheckMasteryWeapon("Dragon Talon", 400);
				if ((v721 == "true") or (v721 == "UpTo")) then
					v24 = true;
				end
			end
		elseif (v386 == "ElectricClaw") then
			if inmyself("Electric Claw") then
				local v757 = CheckMasteryWeapon("Electric Claw", 400);
				if ((v757 == "true") or (v757 == "UpTo")) then
					v23 = true;
				end
			end
		elseif (v386 == "DeathStep") then
			if inmyself("Death Step") then
				local v795 = CheckMasteryWeapon("Death Step", 400);
				if ((v795 == "true") or (v795 == "UpTo")) then
					v20 = true;
				end
			end
		end
	end
end));
task.spawn(LPH_JIT_MAX(function()
	while task.wait() do
		if StartKaiTun then
			xpcall(function()
				DieWait();
				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
					Com("F_", "Buso");
				end
				local v488 = 0.1;
				if ((GodhumanDone or not AutoGodhuman) and (v20 or not AutoDeathStep) and (v21 or not AutoSharkmanKarate) and (v22 or not AutoSuperhuman) and (v23 or not AutoElectricClaw) and (v24 or not AutoDargonTalon)) then
					local v588 = {};
					local v589 = Com("F_", "getInventory");
					for v620, v621 in pairs(v589) do
						if (type(v621) == "table") then
							if (v621.Type == "Sword") then
								if ((v621.Name == "Yama") or (v621.Name == "Tushita")) then
									if (v621.Mastery < 350) then
										table.insert(v588, {Name=v621.Name,MaxMastery=351});
									end
								end
							end
						end
					end
					for v622, v623 in pairs(SwordFarmRarity) do
						for v651, v652 in pairs(v589) do
							if (type(v652) == "table") then
								if (v652.Type == "Sword") then
									if ((v652.Name ~= "Yama") and (v652.Name ~= "Tushita")) then
										if (v652.Mastery < v652.MasteryRequirements['X']) then
											if (v652.Rarity == v58(v623)) then
												local v829 = v652.MasteryRequirements['X'];
												table.insert(v588, {Name=v652.Name,MaxMastery=(v829 or 400)});
											end
										end
									end
								end
							end
						end
					end
					if ((RaidsDoughNow == true) and CheckAwaken()) then
						RaidsDoughNow = false;
					end
					if (AutoFarmMasteryDevilFruit and not MasteryDevilFruitDone) then
						local v653 = inmyself(tostring(game:GetService("Players")['LocalPlayer']:WaitForChild("Data").DevilFruit.Value));
						if v653 then
							if (v653:WaitForChild("Level").Value < (tonumber(require(v653:WaitForChild("Data")).Lvl.V) or tonumber(require(v653:WaitForChild("Data")).Cap) or 350)) then
								v38 = "Blox Fruit";
							else
								MasteryDevilFruitDone = true;
							end
						end
					elseif (AutoFarmMasterySword and (#v588 > 0) and (DoingS:Update().Text ~= "Doing Status : Do CDK")) then
						while (#v588 > 0) and (DoingS:Update().Text ~= "Doing Status : Do CDK") and AutoFarmMasterySword do
							task.wait();
							for v733, v734 in pairs(v588) do
								if ((DoingS:Update().Text ~= "Doing Status : Do CDK") and AutoFarmMasterySword) then
									v38 = "Sword";
									while (DoingS:Update().Text ~= "Doing Status : Do CDK") and AutoFarmMasterySword do
										task.wait();
										local v796 = v734.Name;
										local v797 = v734.MaxMastery;
										if not inmyself(v796) then
											task.wait();
											Com("F_", "StoreItem", tostring(GetFightingStyle("Sword")), inmyself(GetFightingStyle("Sword")));
											task.wait(0.5);
											Com("F_", "LoadItem", tostring(v796));
										elseif inmyself(v796) then
											local v842, v843 = pcall(function()
												return CheckMasteryWeapon(v796, v797);
											end);
											if not v842 then
												return;
											end
											if ((v843 == "true") or (v843 == "UpTo")) then
												print("DONE " .. v734.Name);
												break;
											end
										end
										task.wait(3);
									end
								end
							end
						end
					elseif (string.find(CDKS:Update().Text, XMark) and AutoCDK) then
						if string.find(TushitaS:Update().Text, XMark) then
						elseif string.find(YamaS:Update().Text, XMark) then
						elseif (string.find(TushitaS:Update().Text, CheckMark) and string.find(YamaS:Update().Text, CheckMark)) then
						end
					elseif (CheckAwaken() == false) then
						if (game.Players.LocalPlayer.Data.DevilFruit.Value == "Dough-Dough") then
							RaidsDoughNow = true;
						else
							RaidsNow = true;
						end
					else
						v38 = "Melee";
					end
					if not inmyself("Godhuman") then
						Com("F_", "BuyGodhuman");
					end
					task.wait(0.5);
				elseif (not GodhumanDone and v20 and v21 and v22 and v23 and v24 and AutoGodhuman) then
					v38 = "Melee";
					if inmyself("Godhuman") then
						local v692 = CheckMasteryWeapon("Godhuman", 500);
						if ((v692 == "true") or (v692 == "UpTo")) then
							GodhumanDone = true;
						end
					elseif not inmyself("Godhuman") then
						if (Com("F_", "BuyGodhuman", true) == 1) then
							Com("F_", "BuyGodhuman");
						elseif (GetMaterial("Fish Tail") >= 20) then
							if (GetMaterial("Magma Ore") >= 20) then
								if (GetMaterial("Dragon Scale") >= 10) then
									if (GetMaterial("Mystic Droplet") >= 10) then
										StartGodhumanMat = false;
										if not v51 then
											Com("F_", "TravelZou");
										elseif v51 then
											local v946 = Com("F_", "BuyGodhuman");
											if (v946 == 1) then
												task.wait();
												v488 = 0;
												RaidsNow = false;
											elseif (game.Players.LocalPlayer:WaitForChild("Data"):WaitForChild("Fragments").Value < 5000) then
												RaidsNow = true;
											end
										end
									elseif not v50 then
										Com("F_", "TravelDressrosa");
									else
										StartGodhumanMat = true;
										FarmThisMaterial = "Mystic Droplet";
									end
								elseif not v51 then
									Com("F_", "TravelZou");
								else
									StartGodhumanMat = true;
									FarmThisMaterial = "Dragon Scale";
								end
							elseif not v49 then
								Com("F_", "TravelMain");
							else
								StartGodhumanMat = true;
								FarmThisMaterial = "Magma Ore";
							end
						elseif not v49 then
							Com("F_", "TravelMain");
						else
							StartGodhumanMat = true;
							FarmThisMaterial = "Fish Tail";
						end
					end
				elseif ((v16 or (not AutoDeathStep and not AutoGodhuman)) and (v17 or (not AutoSharkmanKarate and not AutoGodhuman)) and (v18 or (not AutoElectricClaw and not AutoGodhuman)) and (v19 or (not AutoDargonTalon and not AutoGodhuman))) then
					v38 = "Melee";
					if (not v20 and (AutoDeathStep or AutoGodhuman)) then
						if inmyself("Death Step") then
							local v774 = CheckMasteryWeapon("Death Step", 400);
							if ((v774 == "true") or (v774 == "UpTo")) then
								v20 = true;
							end
						elseif not inmyself("Death Step") then
							local v805 = Com("F_", "BuyDeathStep");
							if (v805 == 1) then
								v488 = 0;
								RaidsNow = false;
							elseif (game.Players.LocalPlayer:WaitForChild("Data"):WaitForChild("Fragments").Value < 5000) then
								RaidsNow = true;
							end
						end
					elseif (not v21 and (AutoSharkmanKarate or AutoGodhuman)) then
						if inmyself("Sharkman Karate") then
							local v806 = CheckMasteryWeapon("Sharkman Karate", 400);
							if ((v806 == "true") or (v806 == "UpTo")) then
								v21 = true;
							end
						elseif not inmyself("Sharkman Karate") then
							local v830 = Com("F_", "BuySharkmanKarate");
							if (v830 == 1) then
								v488 = 0;
								RaidsNow = false;
							elseif (game.Players.LocalPlayer:WaitForChild("Data"):WaitForChild("Fragments").Value < 5000) then
								RaidsNow = true;
							end
						end
					elseif (not v22 and (AutoSuperhuman or AutoGodhuman)) then
						if inmyself("Superhuman") then
							local v831 = CheckMasteryWeapon("Superhuman", 400);
							if ((v831 == "true") or (v831 == "UpTo")) then
								v22 = true;
							end
						elseif not inmyself("Superhuman") then
							local v859 = Com("F_", "BuySuperhuman");
							if (v859 == 1) then
								v488 = 0;
								RaidsNow = false;
							end
						end
					elseif (not v23 and (AutoElectricClaw or AutoGodhuman)) then
						if inmyself("Electric Claw") then
							local v860 = CheckMasteryWeapon("Electric Claw", 400);
							if ((v860 == "true") or (v860 == "UpTo")) then
								v23 = true;
							end
						elseif not inmyself("Electric Claw") then
							if ((Com("F_", "BuyElectricClaw", true) == 4) and v51) then
								if (Com("F_", "BuyElectricClaw", "Start") == nil) then
									if tween then
										tween:Cancel();
									end
									game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481);
								end
							else
								local v919 = Com("F_", "BuyElectricClaw");
								if (v919 == 1) then
									v488 = 0;
									RaidsNow = false;
								elseif (game.Players.LocalPlayer:WaitForChild("Data"):WaitForChild("Fragments").Value < 5000) then
									RaidsNow = true;
								end
							end
						end
					elseif (not v24 and (AutoDargonTalon or AutoGodhuman)) then
						if inmyself("Dragon Talon") then
							local v881 = CheckMasteryWeapon("Dragon Talon", 400);
							if ((v881 == "true") or (v881 == "UpTo")) then
								v24 = true;
							end
						elseif (Com("F_", "BuyDragonTalon", true) == 3) then
							if v51 then
								Com("F_", "Bones", "Buy", 1, 1);
							end
						elseif not inmyself("Dragon Talon") then
							local v948 = Com("F_", "BuyDragonTalon");
							if (v948 == 1) then
								v488 = 0;
								RaidsNow = false;
							elseif (game.Players.LocalPlayer:WaitForChild("Data"):WaitForChild("Fragments").Value < 5000) then
								RaidsNow = true;
							end
						end
					end
				elseif (not v16 or not v17 or not v18 or not v19) then
					if (not v16 and (AutoDeathStep or AutoSuperhuman or AutoGodhuman)) then
						if not inmyself("Black Leg") then
							local v807 = Com("F_", "BuyBlackLeg");
							if (v807 == 1) then
								task.wait();
								v488 = 0;
							end
						elseif inmyself("Black Leg") then
							local v832 = CheckMasteryWeapon("Black Leg", 400);
							if ((v832 == "true") or (v832 == "UpTo")) then
								v16 = true;
							end
						end
					elseif (not v17 and (AutoSharkmanKarate or AutoSuperhuman or AutoGodhuman)) then
						if not inmyself("Fishman Karate") then
							local v833 = Com("F_", "BuyFishmanKarate");
							if (v833 == 1) then
								task.wait();
								v488 = 0;
							end
						elseif inmyself("Fishman Karate") then
							local v861 = CheckMasteryWeapon("Fishman Karate", 400);
							if ((v861 == "true") or (v861 == "UpTo")) then
								v17 = true;
							end
						end
					elseif (not v18 and (AutoElectricClaw or AutoSuperhuman or AutoGodhuman)) then
						if not inmyself("Electro") then
							local v862 = Com("F_", "BuyElectro");
							if (v862 == 1) then
								task.wait();
								v488 = 0;
							end
						elseif inmyself("Electro") then
							local v882 = CheckMasteryWeapon("Electro", 400);
							if ((v882 == "true") or (v882 == "UpTo")) then
								v18 = true;
							end
						end
					elseif (not v19 and (AutoDargonTalon or AutoSuperhuman or AutoGodhuman)) then
						if ((game.Players.LocalPlayer:WaitForChild("Data"):WaitForChild("Fragments").Value >= 1500) or (tonumber(Com("F_", "BlackbeardReward", "DragonClaw", "1")) == 1)) then
							RaidsNow = false;
							if not inmyself("Dragon Claw") then
								local v920 = Com("F_", "BlackbeardReward", "DragonClaw", "2");
								if (v920 == 1) then
									task.wait();
									v488 = 0;
								end
							elseif inmyself("Dragon Claw") then
								local v949 = CheckMasteryWeapon("Dragon Claw", 400);
								if ((v949 == "true") or (v949 == "UpTo")) then
									v19 = true;
								end
							end
						else
							RaidsNow = true;
						end
					end
				end
				if (v488 > 0) then
					task.wait(v488);
				end
			end, function(...)
				print("ERROR : " .. (...));
			end);
		end
	end
end));
do
	local v259 = 0;
	while task.wait(1) do
		if GodhumanDone then
			break;
		end
		if _G.Emulator then
			if (v259 >= 15) then
				break;
			end
		elseif (v259 >= 7) then
			break;
		end
		v259 = v259 + 1;
	end
end
LPH_JIT(function()
	spawn(function()
		game:GetService("Players")['LocalPlayer'].PlayerGui:FindFirstChild("Notifications").Enabled = false;
		game:GetService("Players")['LocalPlayer'].PlayerGui:FindFirstChild("Notifications").ChildAdded:connect(function(v412)
			task.wait(0.05);
			if StartKaiTun then
				if string.lower(v412.Text):find(string.lower("!&gt;")) then
					v41 = not v41;
				end
			end
		end);
	end);
	spawn(function()
		while task.wait() do
			if StartKaiTun then
				xpcall(function()
					DieWait();
					CheckQuest();
					task.wait();
					if (v41 == true) then
						if LevelFarm then
							if (tonumber(LevelFarm - 1) ~= 0) then
								CheckOldQuest(tonumber(LevelFarm - 1));
							end
						end
					end
					task.wait(0.01);
					CheckQuestBoss(NameQuest);
					task.wait(0.01);
					if ((Bosses ~= "") and (havemob(Bosses).Humanoid.Health > 0)) then
						Monster = Bosses;
						LevelQuest = LevelQuestBoss;
						NameCheckQuest = NameCheckQuestBoss;
						CFrameMon = CFrameBoss;
					elseif v41 then
						local v679, v680 = CheckGoodMob(CFrameQuest, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position);
						if ((v679 and ((v680 - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude > 3000)) or ((v679 == false) and ((game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position - CFrameQuest.Position).Magnitude > 3000))) then
							local v722, v723 = CheckGoodMob(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame, CFrameQuest.Position);
							if ((v722 and ((v723 - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude > 3000)) or ((v722 == false) and ((game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position - CFrameQuest.Position).Magnitude > 3000))) then
								v41 = false;
								task.wait();
								CheckQuest();
							end
						end
					end
					local v557 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title;
					local v558 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest;
					local v559 = game.Players.LocalPlayer.Data.Level.Value;
					local v560 = CheckAllMyDF();
					if StartGodhumanMat then
						ShowDoingStatus("Do Godhuman");
						CheckMaterial(FarmThisMaterial);
						if CustomFindFirstChild(MaterialMob) then
							for v693, v694 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if (StartGodhumanMat and table.find(MaterialMob, v694.Name) and v694:FindFirstChild("HumanoidRootPart") and v694:FindFirstChild("Humanoid") and (v694.Humanoid.Health > 0)) then
									repeat
										task.wait();
										FarmtoTarget = toTarget(v694.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1));
										if (v694:FindFirstChild("HumanoidRootPart") and v694:FindFirstChild("Humanoid") and ((v694.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100)) then
											if FarmtoTarget then
												FarmtoTarget:Stop();
											end
											Usefastattack = true;
											EquipWeapon();
											spawn(function()
												for v818, v819 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
													if (v819.Name == v694.Name) then
														spawn(function()
															if InMyNetWork(v819.HumanoidRootPart) then
																v819.HumanoidRootPart.CFrame = v694.HumanoidRootPart.CFrame;
																v819.Humanoid.JumpPower = 0;
																v819.Humanoid.WalkSpeed = 0;
																v819.HumanoidRootPart.CanCollide = false;
																v819.Humanoid:ChangeState(14);
																v819.Humanoid:ChangeState(11);
																v819.HumanoidRootPart.Size = Vector3.new(55, 55, 55);
															else
																v819.HumanoidRootPart.CFrame = v694.HumanoidRootPart.CFrame;
																v819.Humanoid.JumpPower = 0;
																v819.Humanoid.WalkSpeed = 0;
																v819.HumanoidRootPart.CanCollide = false;
																v819.Humanoid:ChangeState(14);
																v819.Humanoid:ChangeState(11);
																v819.HumanoidRootPart.Size = Vector3.new(55, 55, 55);
															end
														end);
													end
												end
											end);
											if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150)) then
												game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
												game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v694.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1);
										end
									until not CustomFindFirstChild(MaterialMob) or not StartGodhumanMat or (v694.Humanoid.Health <= 0) or not v694.Parent 
									Usefastattack = false;
								end
							end
						else
							Usefastattack = false;
							for v695, v696 in pairs(CFrameMonM) do
								if (StartGodhumanMat and StartKaiTun and not CustomFindFirstChild(MaterialMob)) then
									while StartGodhumanMat and StartKaiTun and not CustomFindFirstChild(MaterialMob) do
										task.wait();
										Modstween = toTarget(v696);
										if ((v696.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150) then
											if Modstween then
												Modstween:Stop();
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v696;
											break;
										end
										task.wait(0.2);
									end
								end
								task.wait(0.1);
							end
						end
					elseif v49 then
						AutoKaiTunOldWorld(v557, v558, v559, v560);
					elseif ((v559 >= 1000) and (((v560['HaveFruitInMySelf'] == true) and (v560['HaveFruitInStore'] == true) and (v560.Price >= 1000000)) or ((v560.Price >= 1000000) and (v560.Price <= 2500000))) and (Com("F_", "GetUnlockables").FlamingoAccess == nil)) then
						ShowDoingStatus("Open Flamingo Room");
						for v735 = 1, 3 do
							Com("F_", "TalkTrevor", tostring(v735));
						end
						task.wait(0.1);
					elseif v50 then
						AutoKaiTunNewWorld(v557, v558, v559, v560);
					elseif v51 then
						AutoKaiTunThreeWorld(v557, v558, v559, v560);
					end
				end, function(...)
					print("ERROR : " .. (...));
				end);
			end
		end
	end);
end)();
LPH_JIT_MAX(function()
	spawn(function()
		while task.wait(1) do
			if StartKaiTun then
				xpcall(function()
					local v561 = game.Players.LocalPlayer.Data.Level.Value;
					local v562 = CheckAllMyDF();
					if (game.Players.LocalPlayer.Data.Points.Value > 0) then
						local v624 = game:GetService("Players").LocalPlayer.Data.Stats.Melee.Level.Value;
						local v625 = game:GetService("Players").LocalPlayer.Data.Stats.Defense.Level.Value;
						local v626 = game:GetService("Players").LocalPlayer.Data.Stats.Sword.Level.Value;
						local v627 = game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"].Level.Value;
						if _G["This Function For You ;c"] then
							if (v624 < v40) then
								Com("F_", "AddPoint", "Melee", v40 - v624);
							elseif (v625 < v40) then
								Com("F_", "AddPoint", "Defense", v40 - v625);
							else
								Com("F_", "AddPoint", "Demon Fruit", v40);
							end
						elseif (v624 < v40) then
							Com("F_", "AddPoint", "Melee", v40 - v624);
						elseif (v625 < v40) then
							Com("F_", "AddPoint", "Defense", v40 - v625);
						elseif (v627 < (v40 / 2)) then
							Com("F_", "AddPoint", "Demon Fruit", (v40 / 2) - v627);
						else
							Com("F_", "AddPoint", "Sword", v40);
						end
					end
					if ((v37 == false) and (game.Players.LocalPlayer.Data.Level.Value >= SelectRedeemCodeLevel)) then
						function UseCode(v654)
							game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v654);
						end
						UseCode("Enyo_is_Pro");
						UseCode("Magicbus");
						UseCode("JCWK");
						UseCode("Starcodeheo");
						UseCode("Bluxxy");
						UseCode("fudd10_v2");
						UseCode("3BVISITS");
						UseCode("FUDD10");
						UseCode("BIGNEWS");
						UseCode("Sub2OfficialNoobie");
						UseCode("SUB2GAMERROBOT_EXP1");
						UseCode("StrawHatMaine");
						UseCode("SUB2NOOBMASTER123");
						UseCode("Sub2Daigrock");
						UseCode("Axiore");
						UseCode("TantaiGaming");
						UseCode("STRAWHATMAINE");
						UseCode("kittgaming");
						UseCode("Enyu_is_Pro");
						UseCode("Sub2Fer999");
						UseCode("THEGREATACE");
						UseCode("GAMERROBOT_YT");
						UseCode("SECRET_ADMIN");
						task.wait(1);
						if (v35 == 2) then
							print("REDEEM DONE");
							v37 = true;
						end
						v35 = v35 + 1;
					end
					BuyAllHaki();
					if (v51 and (v561 >= 2200)) then
						if game:GetService("Workspace").Map.Turtle.Cursed:FindFirstChild("Breakable") then
							Com("F_", "CDKQuest", "OpenDoor");
							Com("F_", "CDKQuest", "OpenDoor", true);
						end
					end
					if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
						Com("F_", "Buso");
					end
					if v31:HasTag(game.Players.LocalPlayer.Character, "Ken") then
						if (game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui") and game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")) then
						else
							task.wait(1);
							game:service("VirtualUser"):CaptureController();
							game:service("VirtualUser"):SetKeyDown("0x65");
							task.wait(2);
							game:service("VirtualUser"):SetKeyUp("0x65");
						end
					end
					if game:GetService("Workspace").NPCs:FindFirstChild("Mysterious Entity") then
						Com("F_", "Awakener", "Check");
						Com("F_", "Awakener", "Awaken");
					end
					if not v49 then
						if ((game.Players.LocalPlayer.Data.DevilFruit.Value == "Dough-Dough") and not HaveDevilFruitSea3 and not CheckAwaken()) then
							if ((Com("F_", "CakeScientist", "Check") == true) and (v562['HaveFruitInMySelf'] == false) and (game.Players.LocalPlayer:WaitForChild("Data"):WaitForChild("Fragments").Value >= 1000)) then
								Com("F_", "RaidsNpc", "Select", "Dough");
							elseif ((Com("F_", "CakeScientist", "Check") == true) and (v562['HaveFruitInMySelf'] == true) and (v562.Price >= 1000000)) then
								Com("F_", "RaidsNpc", "Select", "Dough");
							else
								Com("F_", "RaidsNpc", "Select", GetNameRaids());
							end
						elseif (not HaveDevilFruitSea3 and (game.Players.LocalPlayer:WaitForChild("Data"):WaitForChild("Fragments").Value <= (LimitRaidsFrag or 100000))) then
							Com("F_", "RaidsNpc", "Select", GetNameRaids());
						end
					end
					if (not v49 and not v36 and (game:GetService("Players").localPlayer.Data.Fragments.Value >= 1500)) then
						cod_kbc = Com("F_", "BlackbeardReward", "Slingshot", "2");
						if (tostring(cod_kbc) == "2") then
							v36 = true;
						end
					end
					if (not v49 and string.find(ShisuiS:Update().Text, XMark) and string.find(SaddiS:Update().Text, XMark) and string.find(WandoS:Update().Text, XMark)) then
						for v655 = 1, 3 do
							Com("F_", "LegendarySwordDealer", tostring(v655));
						end
					end
					if (not v49 and not (CheckHakiColor("Winter Sky") and CheckHakiColor("Pure Red") and CheckHakiColor("Snow White"))) then
						if tablefound({"Winter Sky","Pure Red","Snow White"}, Com("F_", "ColorsDealer", "1")) then
							for v697 = 1, 3 do
								Com("F_", "ColorsDealer", tostring(v697));
							end
						end
					end
					if (v50 and string.find(ShisuiS:Update().Text, CheckMark) and string.find(SaddiS:Update().Text, CheckMark) and string.find(WandoS:Update().Text, CheckMark)) then
						Com("F_", "MysteriousMan", "2");
					end
					if ((Com("F_", "GuitarPuzzleProgress", "Check") ~= nil) and (Com("F_", "GuitarPuzzleProgress", "Check").Pipes == true) and string.find(SoulGuitarS:Update().Text, XMark) and v51) then
						Com("F_", "soulGuitarBuy");
					end
					if (not HaveDevilFruitSea3 and not RaidsNow) then
						spawn(function()
							if (v7 == false) then
								v7 = true;
								Com("F_", "Cousin", "Buy");
								task.wait(0.1);
								StoreMyFruit();
								task.wait(90);
								v7 = false;
							end
						end);
					end
					if (AutoFastMode and not UseFastModeAuto) then
						pcall(FastModeF);
						UseFastModeAuto = true;
						task.wait(1);
					end
					if (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true) then
						task.wait(0.5);
						if (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true) then
							task.wait(0.2);
							if not CheckIsland() then
								game:GetService("Players").LocalPlayer.Character:WaitForChild("UpperTorso"):Destroy();
							end
						end
					end
					if v51 then
						if inmyself("God's Chalice") then
							if not CheckButtonColorOpen() then
								if not v44 then
									v44 = true;
									spawn(function()
										game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("i have cup can anyone do haki quest for me", "All");
										task.wait(4);
										game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("i'll spawn rip indra", "All");
										task.wait(35);
										v44 = false;
									end);
								end
							end
						end
					end
					if v51 then
						local v628 = tonumber(({Com("F_", "Bones", "Check")})[3] or 0);
						if (v628 > 0) then
							for v698 = 1, v628 do
								Com("F_", "Bones", "Buy", 1, 1);
								task.wait(0.1);
							end
						end
					end
					if (((tostring(code_mib) == "2") and (tostring(code_biz) == "2") and (tostring(code_GjoM) == "2")) or not v50) then
					else
						AllEcto = Com("F_", "Ectoplasm", "Check") or 0;
						if (tonumber(AllEcto) >= 100) then
							local v681 = {[1]="Ectoplasm",[2]="Buy",[3]=3};
							code_mib = Com("F_", unpack(v681));
						end
						if ((tostring(code_mib) == "2") and (tonumber(AllEcto) >= 25)) then
							local v682 = {[1]="Ectoplasm",[2]="Buy",[3]=1};
							code_biz = Com("F_", unpack(v682));
						end
						if ((tostring(code_biz) == "2") and (tonumber(AllEcto) >= 50)) then
							local v683 = {[1]="Ectoplasm",[2]="Buy",[3]=2};
							code_GjoM = Com("F_", unpack(v683));
						end
					end
				end, function(...)
					print("ERROR EE : " .. (...));
				end);
			end
		end
	end);
end)();
game.CoreGui.DescendantAdded:Connect(function()
	task.wait(2);
	pcall(function()
		if (game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt") and (game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt").TitleFrame.ErrorTitle.Text == "Disconnected")) then
			while task.wait() do
				if not JustOne then
					appendfile("BF_Kick_Log.txt", "\n" .. tostring(os.date()) .. " : " .. game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt").MessageArea.ErrorFrame.ErrorMessage.Text:split("\n")[1]);
					JustOne = true;
				end
				v54:Rejoin();
				task.wait(5);
			end
		end
	end);
end);
LPH_NO_VIRTUALIZE(function()
	spawn(function()
		while task.wait() do
			if (StartKaiTun and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false)) then
				local v489 = 0;
				local v490 = 0;
				local v491 = Usefastattack;
				repeat
					task.wait(0.5);
					v489 = v489 + 0.5;
					if (v489 >= 900) then
						game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15);
						v489 = 600;
						v490 = v490 + 1;
					end
					if (v490 >= 5) then
						v54:Rejoin();
					end
				until not StartKaiTun or (Usefastattack == not v491) or (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true) 
			end
		end
	end);
	spawn(function()
		while task.wait() do
			pcall(function()
				v15 = false;
				for v492, v493 in pairs(game.Workspace.Characters:GetChildren()) do
					if (((game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position - v493.HumanoidRootPart.Position).Magnitude < 750) and (v493.Name ~= game.Players.LocalPlayer.Name)) then
						v15 = true;
						break;
					end
				end
			end);
		end
	end);
	spawn(function()
		while task.wait() do
			if (StartKaiTun and CheckCanTeleport() and (v15 == true)) then
				local v494 = 0;
				repeat
					task.wait(0.5);
					v494 = v494 + 0.5;
					if (v494 >= 500) then
						if ((string.find(TushitaS:Update().Text, CheckMark) and v51) or not v51) then
							v54:TeleportFast();
						else
							v54:NormalTeleport();
						end
					end
				until not StartKaiTun or (v15 == false) or not CheckCanTeleport() 
			end
		end
	end);
	spawn(function()
		while task.wait() do
			if (StartKaiTun and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false)) then
				local v495 = 0;
				local v496 = 0;
				local v497 = CheckCanTeleport();
				repeat
					task.wait(0.5);
					v495 = v495 + 0.5;
					if (v495 >= 1200) then
						game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15);
						v495 = 800;
						v496 = v496 + 1;
					end
					if (v496 >= 2) then
						v54:NormalTeleport();
					end
				until not StartKaiTun or (CheckCanTeleport() == not v497) or (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true) 
			end
		end
	end);
	spawn(function()
		while task.wait() do
			if (StartKaiTun and (DoingS:Update().Text == "Doing Status : Auto Farm")) then
				local v498 = 0;
				local v499 = 0;
				local v500 = v41;
				repeat
					task.wait(0.5);
					v498 = v498 + 0.5;
					if (v498 >= 600) then
						game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15);
						v42 = true;
						v41 = false;
						v9 = false;
						task.delay(0.1, function()
							v42 = false;
						end);
						v498 = 400;
						v499 = v499 + 1;
					end
					if (v499 >= 5) then
						v54:Rejoin();
					end
				until not StartKaiTun or (v41 == not v500) 
			end
		end
	end);
	spawn(function()
		while task.wait() do
			if StartKaiTun then
				local v501 = 0;
				local v502 = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position;
				repeat
					task.wait(0.5);
					v501 = v501 + 0.5;
					if (v501 >= 600) then
						game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15);
						v501 = 300;
					end
				until not StartKaiTun or ((v502 - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude > 8) 
			end
		end
	end);
end)();
LPH_JIT_MAX(function()
	task.spawn(function()
		while task.wait() do
			pcall(function()
				if (StartMagnetHaze or MagnetPirateCas or MagnetFarmCakePrince or MagnetFarmCoco or StartMagnetFarmLevel or StartMagnetSwan or StartMagnetSnowLurker or MagnetFarmSoulGuitar or StartMagnetFarmLevelMax or StartMagnetEctoplasm or StartMagnetFarmLevelSkip) then
					for v590, v591 in pairs(game.Workspace.Enemies:GetChildren()) do
						if (not string.find(v591.Name, "Boss") and ((v591.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 255)) then
							if v591.HumanoidRootPart then
								v591.HumanoidRootPart.CFrame = PosMon;
								v591.Humanoid.JumpPower = 0;
								v591.Humanoid.WalkSpeed = 0;
								v591.HumanoidRootPart.Size = Vector3.new(80, 80, 80);
								v591.HumanoidRootPart.Transparency = 1;
								v591.HumanoidRootPart.CanCollide = false;
								v591.Head.CanCollide = false;
								if v591.Humanoid:FindFirstChild("Animator") then
									v591.Humanoid.Animator:Destroy();
								end
								v591.Humanoid:ChangeState(4);
							end
						end
					end
				end
			end);
		end
	end);
end)();
spawn(function()
	while task.wait() do
		if StartKaiTun then
			if SpamSkillSea then
				local v563 = {};
				for v592, v593 in pairs({"Melee","Sword","DevilFruit","Gun"}) do
					if (v593 == "DevilFruit") then
						v593 = "Blox Fruit";
					end
					for v629, v630 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v630:IsA("Tool") then
							if (v630.ToolTip == v593) then
								table.insert(v563, v630.Name);
							end
						end
					end
					for v631, v632 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v632:IsA("Tool") then
							if (v632.ToolTip == v593) then
								table.insert(v563, v632.Name);
							end
						end
					end
				end
				for v594, v595 in pairs(v563) do
					repeat
						task.wait();
						EquipWeapon(v595);
					until game.Players.LocalPlayer.Character:FindFirstChild(v595) 
					task.wait();
					local v596 = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Data") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChildOfClass("ModuleScript"));
					for v633, v634 in pairs({"Z","X","C"}) do
						pcall(function()
							if (v596['Lvl'][v634] <= game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Level").Value) then
								if ((v634 ~= nil) and v634 and (#v634 == 1)) then
									game:service("VirtualInputManager"):SendKeyEvent(true, tostring(v634), false, game);
									task.wait(0.1);
									game:service("VirtualInputManager"):SendKeyEvent(false, tostring(v634), false, game);
									task.wait();
								end
							end
						end);
					end
					task.wait(0.1);
				end
			end
		else
			break;
		end
	end
end);
LoadingScriptSuccess = true;