local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title="GreenZ Hub",
    SubTitle=" | Freemium |", 
    TabWidth=160, 
    Theme="Dark",
    Acrylic=false,
    Size=UDim2.fromOffset(500, 320), 
    MinimizeKey=Enum.KeyCode.End
})
local Tabs = {
Tong=Window:AddTab({ Title="Tab Information" }),
Setting=Window:AddTab({ Title="Tab Settings" }),
Main=Window:AddTab({ Title="Tab Farmming" }),
}
local Options = Fluent.Options
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
function Gay(P)
repeat wait(_G.Fast_Delay)
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=P
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=P
    until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=2000
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
function BTP(p)
    local player = game.Players.LocalPlayer
    local humanoidRootPart = player.Character.HumanoidRootPart
    local humanoid = player.Character.Humanoid
    local playerGui = player.PlayerGui.Main
    local targetPosition = p.Position
    local lastPosition = humanoidRootPart.Position
    repeat
        humanoid.Health = 0
        humanoidRootPart.CFrame = p
        playerGui.Quest.Visible = false
        if (humanoidRootPart.Position - lastPosition).Magnitude > 1 then
            lastPosition = humanoidRootPart.Position
            humanoidRootPart.CFrame = p
        end
        task.wait(0.5)
    until (p.Position - humanoidRootPart.Position).Magnitude <= 2000
end
function BTPZ(v209)
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local rootPart = player.Character.HumanoidRootPart
        rootPart.CFrame = v209
    end
end
local lastTweenTime = 0
local tweenCooldown = 0.5
function fastpos(Pos)
    local currentTime = tick()
    if currentTime - lastTweenTime >= tweenCooldown then
        local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 1000        
        local tween = game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
            { CFrame = Pos }
        )
        tween:Play()
        lastTweenTime = currentTime
    end
end
function EquipTool(ToolSe)
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait()
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
        end
    end
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end
_G.FastAttackGay="Super Fast Attack"
spawn(function()
    while wait() do
        if _G.FastAttackGay then
            pcall(function()
                if _G.FastAttackGay=="Super Fast Attack" then
                    _G.Fast_Delay=0.000000001 
                end
            end)
        end
    end
end)
Tabs.Tong:AddParagraph({
    Title="Developer: LuaAnarchist",
    Content=""
})
local executorName
if identifyexecutor then
    executorName=identifyexecutor()
elseif getexecutorname then
    executorName=getexecutorname()
end
if executorName then
    Tabs.Tong:AddParagraph({
        Title="Client To Execute Script",
        Content=executorName
    })
end
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
                        end
                    end
                end
            end
        end)
    end
end)
local BringMob = Tabs.Setting:AddToggle("BringMob", {
    Title = "Bring Mob",
    Description = "",
    Default = true
})

BringMob:OnChanged(function(Value)
    _G.BringMob = Value
end)

local function TweenObject(object, targetCFrame, speed)
    speed = speed or 350
    local distance = (targetCFrame.Position - object.Position).Magnitude
    local info = TweenInfo.new(distance / speed, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(object, info, {CFrame = targetCFrame})
    tween:Play()
end

local function GetMobPosition(enemyName)
    local pos, count = nil, 0
    for _, enemy in ipairs(Workspace.Enemies:GetChildren()) do
        if enemy.Name == enemyName and enemy:FindFirstChild("HumanoidRootPart") then
            pos = pos and (pos + enemy.HumanoidRootPart.Position) or enemy.HumanoidRootPart.Position
            count = count + 1
        end
    end
    return count > 0 and pos / count or nil
end

task.spawn(function()
    while task.wait() do
        if _G.BringMob then
            local enemies = Workspace.Enemies:GetChildren()
            if #enemies > 0 then
                local totalPos = {}
                for _, enemy in ipairs(enemies) do
                    if not totalPos[enemy.Name] then
                        local avgPos = GetMobPosition(enemy.Name)
                        if avgPos then
                            totalPos[enemy.Name] = avgPos
                        end
                    end
                end
                for _, enemy in ipairs(enemies) do
                    if enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 and enemy:FindFirstChild("HumanoidRootPart") then
                        if (enemy.HumanoidRootPart.Position - HRP.Position).Magnitude <= 350 then
                            local avgPos = totalPos[enemy.Name]
                            if avgPos then
                                local targetCFrame = CFrame.new(avgPos)
                                local offsetMag = (enemy.HumanoidRootPart.Position - targetCFrame.Position).Magnitude
                                if offsetMag > 3 and offsetMag <= 280 then
                                    TweenObject(enemy.HumanoidRootPart, targetCFrame, 300)
                                    enemy.HumanoidRootPart.CanCollide = false
                                    enemy.Humanoid.WalkSpeed = 0
                                    enemy.Humanoid.JumpPower = 0
                                    enemy.Humanoid:ChangeState(14)
                                    pcall(function() sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge) end)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end)
local FastAttackTask
local function FastAttackLoop()
    while getgenv().FastAttack do
        if type(AttackNoCoolDown) == "function" then
            AttackNoCoolDown()
        end
        task.wait(0.1)
    end
end
local FastAttack = Tabs.Setting:AddToggle("FastAttack", {
        Title="Fast Attack",
        Description="",
        Default=true })
    FastAttack:OnChanged(function(Value)
        getgenv().FastAttack = Value
    if Value and not FastAttackTask then
        FastAttackTask = task.spawn(FastAttackLoop)
    end
    if not Value and FastAttackTask then
        FastAttackTask = nil
    end
end)
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
Tabs.Setting:AddButton({
    Title = "Smooth Fps",
    Description = "",
    Callback = function()
        wait(5)
        local function boostFPS()
            local lighting = game:GetService("Lighting")
            local workspace = game:GetService("Workspace")
            local terrain = workspace.Terrain

            terrain.WaterWaveSize = 0
            terrain.WaterWaveSpeed = 0
            terrain.WaterReflectance = 0
            terrain.WaterTransparency = 0
            lighting.GlobalShadows = false
            lighting.FogEnd = 1e6
            lighting.Brightness = 0

            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                settings().Rendering.GraphicsMode = Enum.GraphicsMode.NoGraphics
            end)

            for _, v in pairs(lighting:GetDescendants()) do
                if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
                    v.Enabled = false
                end
            end

            for _, v in pairs(workspace:GetDescendants()) do
                if v:IsA("BasePart") or v:IsA("MeshPart") then
                    v.Material = Enum.Material.Plastic
                    v.Reflectance = 0
                    v.CastShadow = false
                elseif v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                    v.Enabled = false
                end
            end
        end

        boostFPS()
    end
})
local Level = Tabs.Main:AddSection("Level Farm")
     local ToggleLevel = Tabs.Main:AddToggle("ToggleLevel", {
        Title="Auto Farm Level",
        Description="",
        Default=false })
    ToggleLevel:OnChanged(function(Value)
        _G.AutoLevel=Value
        if Value==false then
            wait()
            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
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
          topos(CFrameQ)
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
          topos(v.HumanoidRootPart.CFrame*Pos)
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
            topos(v.HumanoidRootPart.CFrame*Pos)
          end
          end
          end
          end
          end)
        end
        end
        end)           
local Bone = Tabs.Main:AddSection("Farm Bone")
local ToggleBone = Tabs.Main:AddToggle("ToggleBone", {
    Title="Auto Farm Bone",
    Description="", 
    Default=false })
ToggleBone:OnChanged(function(Value)
    _G.AutoBone=Value
    if Value==false then
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
Options.ToggleBone:SetValue(false)
local BoneNoQuest = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)
spawn(function()
    while wait() do
        if _G.AutoBone then
            pcall(function()
                topos(BoneNoQuest)
                if (BoneNoQuest.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=3 then
                end
                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") or game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 then
                            if v.Name=="Reborn Skeleton" or v.Name=="Living Zombie" or v.Name=="Demonic Soul" or v.Name=="Posessed Mummy" or game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                                repeat wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    bringmob=true
                                    EquipTool(SelectWeapon)
                                    topos(v.HumanoidRootPart.CFrame*Pos)
                                    v.HumanoidRootPart.Size=Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency=1
                                    v.Humanoid.JumpPower=0
                                    v.Humanoid.WalkSpeed=0
                                    v.HumanoidRootPart.CanCollide=false
                                    FarmPos=v.HumanoidRootPart.CFrame
                                    MonFarm=v.Name
                                until not _G.AutoBone or v.Humanoid.Health<=0 or not v.Parent
                            end
                        end
                    end
                end
            end)
        end
    end
end)
local Cake = Tabs.Main:AddSection("Farm Katakuri")
local Mob_Kill_Cake_Prince = Tabs.Main:AddParagraph({
    Title="Status Cake Prince",
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
                Mob_Kill_Cake_Prince:SetDesc("Cake Prince : ✅️")
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
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
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
                                    topos(v.HumanoidRootPart.CFrame * Pos)  
                                    AttackNoCoolDown()  
                                until _G.Cake == false or not v.Parent or v.Humanoid.Health <= 0
                            end    
                        end    
                    else
                        topos(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
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
                                    topos(v.HumanoidRootPart.CFrame * Pos)  
                                    AttackNoCoolDown()  
                                until _G.Cake == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        bringmob = false
                        topos(CFrame.new(-1579.9111328125, 329.7358703613281, -12310.365234375)) 
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
                                    topos(v.HumanoidRootPart.CFrame * Pos)  
                                    AttackNoCoolDown()  
                                until _G.Cake == false or not v.Parent or v.Humanoid.Health <= 0
                            end    
                        end    
                    else
                        topos(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
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
                                    topos(v.HumanoidRootPart.CFrame * Pos)  
                                    AttackNoCoolDown()  
                                until _G.Cake == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    else
                        bringmob = false
                        topos(CFrame.new(-1579.9111328125, 329.7358703613281, -12310.365234375)) 
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
    end
  end
end)
local Mastery = Tabs.Main:AddSection("Farm Mastery")
local SliderHealt = Tabs.Main:AddSlider("SliderHealt", {
    Title = "Máu Quái",
    Description = "",
    Default = 20,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
        KillPercent = Value
    end
})
SliderHealt:OnChanged(function(Value)
    KillPercent = Value
end)
SliderHealt:SetValue(20)
local DropdownMastery = Tabs.Main:AddDropdown("DropdownMastery", {
    Title = "Select Farm Mastery",
    Description = "",
    Values = {"Level", "Level No Quest", "Near Mob", "Bone", "Cake", "Ectoplasm"},
    Multi = false,
    Default = 1,
})
DropdownMastery:SetValue(TypeMastery)
DropdownMastery:OnChanged(function(Value)
    TypeMastery = Value
end)
local ToggleMasteryFruit = Tabs.Main:AddToggle("ToggleMasteryFruit", {
    Title = "Auto Farm Mastery Fruit",
    Description = "",
    Default = false
})
ToggleMasteryFruit:OnChanged(function(Value)
    AutoFarmMasDevilFruit = Value
end)
Options.ToggleMasteryFruit:SetValue(false)
local ToggleMasteryGun = Tabs.Main:AddToggle("ToggleMasteryGun", {
    Title = "Auto Farm Mastery Gun",
    Description = "",
    Default = false
})
ToggleMasteryGun:OnChanged(function(Value)
    AutoFarmMasGun = Value
end)
spawn(function()
    while task.wait() do
        if _G.UseSkill then
            pcall(function()
                if _G.UseSkill then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                            repeat 
                                game:GetService("RunService").Heartbeat:wait()
                                EquipTool(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = PositionSkillMasteryDevilFruit
                                    local DevilFruitMastery = game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value
                                    if SkillZ and DevilFruitMastery >= 1 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                        wait()
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                    end
                                    if SkillX and DevilFruitMastery >= 1 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                        wait()
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                    end
                                    if SkillC and DevilFruitMastery >= 1 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                        wait()
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                    end
                                    if SkillV and DevilFruitMastery >= 1 then
                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                        wait()
                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                    end
                                    if SkillF and DevilFruitMastery >= 1 then
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
                                        wait()
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
                                    end
                                end
                            until not AutoFarmMasDevilFruit or not _G.UseSkill or v.Humanoid.Health == 0
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasDevilFruit and TypeMastery == 'Near Mob' then
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 5000 then
                            repeat
                                wait(_G.Fast_Delay)                               
                                AutoHaki()
                                bringmob = true
                                EquipTool(SelectWeapon)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                AttackNoCoolDown()
                            until not AutoFarmMasDevilFruit or TypeMastery ~= 'Near Mob' or not v.Parent or v.Humanoid.Health <= 0 or TypeMastery ~= 'Near Mob'
                            bringmob = false
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasDevilFruit and TypeMastery == 'Ectoplasm' then
            pcall(function()
                local EctoMob = CFrame.new(904.4072265625, 181.05767822266, 33341.38671875)
                topos(EctoMob)
            end)
            local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if Distance > 20000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == "Ship Steward" or v.Name == "Ship Engineer" or v.Name == "Ship Deckhand" or v.Name == "Ship Officer" then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkill = true
                            else
                                _G.UseSkill = false
                                AutoHaki()
                                bringmob = true
                                EquipTool(SelectWeapon)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                AttackNoCoolDown()
                            end
                        until not AutoFarmMasDevilFruit or not MasteryType == 'Ectoplasm' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Ectoplasm'
                        bringmob = false
                        _G.UseSkill = false
                    end
                end
            end
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if v.Name == "Ship Steward" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Ship Engineer" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Ship Deckhand" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Ship Officer" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasDevilFruit and TypeMastery == 'Cake' then
            pcall(function()
                local cakepos = CFrame.new(-9508.5673828125, 142.1398468017578, 5737.3603515625)
                topos(cakepos)
            end)
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkill = true
                            else
                                _G.UseSkill = false
                                AutoHaki()
                                bringmob = true
                                EquipTool(SelectWeapon)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                AttackNoCoolDown()
                            end
                        until not AutoFarmMasDevilFruit or not MasteryType == 'Cake' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Cake'
                        bringmob = false
                        _G.UseSkill = false
                    end
                end
            end
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if v.Name == "Cookie Crafter" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Cake Guard" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Baking Staff" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Head Baker" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasDevilFruit and TypeMastery == 'Level No Quest' then
            pcall(function()
                CheckLevel()
                topos(CFrameQ)
            end)
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == Ms then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkill = true
                            else
                                _G.UseSkill = false
                                AutoHaki()
                                bringmob = true
                                EquipTool(SelectWeapon)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                AttackNoCoolDown()
                            end
                        until not AutoFarmMasDevilFruit or not MasteryType == 'Level No Quest' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Level No Quest'
                        bringmob = false
                        _G.UseSkill = false
                    end
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasDevilFruit and TypeMastery == 'Level' then
            pcall(function()
                CheckLevel()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    topos(CFrameQ)
                end
                if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                end
            end)
            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            if v.Name == Ms then
                                repeat wait(_G.Fast_Delay)
                                    if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                        _G.UseSkill = true
                                    else
                                        _G.UseSkill = false
                                        AutoHaki()
                                        bringmob = true
                                        EquipTool(SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        AttackNoCoolDown()
                                    end
                                until not AutoFarmMasDevilFruit or not MasteryType == 'Level' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Level'
                                bringmob = false
                                _G.UseSkill = false
                            end
                        end
                    end
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasDevilFruit and TypeMastery == 'Bone' then
            pcall(function()
                local boneframe = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)
                topos(boneframe)
            end)
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkill = true
                            else
                                _G.UseSkill = false
                                AutoHaki()
                                bringmob = true
                                EquipTool(SelectWeapon)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                AttackNoCoolDown()
                            end
                        until not AutoFarmMasDevilFruit or not MasteryType == 'Bone' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Bone'
                        bringmob = false
                        _G.UseSkill = false
                    end
                end
            end
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if v.Name == "Reborn Skeleton" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Living Zombie" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Demonic Soul" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Posessed Mummy" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                end
            end
        end
    end
end)
spawn(function()
    while task.wait() do
        if _G.UseSkillGun then
            pcall(function()
                if _G.UseSkillGun then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                            repeat game:GetService("RunService").Heartbeat:wait()
                                EquipToolGun()
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                PositionSkillMasteryGun = v.HumanoidRootPart.Position
                                if SkillZ then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                    wait()
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                end
                                if SkillX then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                    wait()
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                end
                                if SkillC then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                    wait()
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                end
                                if SkillV then
                                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                    wait()
                                    game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                end
                                if SkillF then
                                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
                                    wait()
                                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
                                end
                            until not AutoFarmMasGun or not _G.UseSkillGun or v.Humanoid.Health == 0
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasGun and TypeMastery == 'Near Mob' then
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
                            repeat wait(_G.Fast_Delay)
                                if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                    _G.UseSkillGun = true
                                else
                                    _G.UseSkillGun = false
                                    AutoHaki()
                                    bringmob = true
                                    EquipTool(SelectWeapon)
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    AttackNoCoolDown()
                                end
                            until not AutoFarmMasGun or not MasteryType == 'Near Mob' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Near Mob'
                            bringmob = false
                            _G.UseSkillGun = false
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasGun and TypeMastery == 'Ectoplasm' then
            pcall(function()
                local EctoMob = CFrame.new(904.4072265625, 181.05767822266, 33341.38671875)
                topos(EctoMob)
            end)
            local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if Distance > 20000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == "Ship Steward" or v.Name == "Ship Engineer" or v.Name == "Ship Deckhand" or v.Name == "Ship Officer" then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkillGun = true
                            else
                                _G.UseSkillGun = false
                                AutoHaki()
                                bringmob = true
                                EquipTool(SelectWeapon)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                AttackNoCoolDown()
                            end
                        until not AutoFarmMasGun or not MasteryType == 'Ectoplasm' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Ectoplasm'
                        bringmob = false
                        _G.UseSkillGun = false
                    end
                end
            end
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if v.Name == "Ship Steward" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Ship Engineer" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Ship Deckhand" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Ship Officer" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasGun and TypeMastery == 'Cake' then
            pcall(function()
                local cakepos = CFrame.new(-1579.9111328125, 329.7358703613281, -12310.365234375)
                topos(cakepos)
            end)
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkillGun = true
                            else
                                _G.UseSkillGun = false
                                AutoHaki()
                                bringmob = true
                                EquipTool(SelectWeapon)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                AttackNoCoolDown()
                            end
                        until not AutoFarmMasGun or not MasteryType == 'Cake' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Cake'
                        bringmob = false
                        _G.UseSkillGun = false
                    end
                end
            end
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if v.Name == "Cookie Crafter" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Cake Guard" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Baking Staff" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Head Baker" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasGun and TypeMastery == 'Level' then
            pcall(function()
                CheckLevel()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    topos(CFrameQ)
                end
                if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
                end
            end)
            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            if v.Name == Ms then
                                repeat wait(_G.Fast_Delay)
                                    if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                        _G.UseSkillGun = true
                                    else
                                        _G.UseSkillGun = false
                                        AutoHaki()
                                        bringmob = true
                                        EquipTool(SelectWeapon)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        AttackNoCoolDown()
                                    end
                                until not AutoFarmMasGun or not MasteryType == 'Level' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Level'
                                bringmob = false
                                _G.UseSkillGun = false
                            end
                        end
                    end
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasGun and TypeMastery == 'Level No Quest' then
            pcall(function()
                CheckLevel()
                topos(CFrameQ)
            end)
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == Ms then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkillGun = true
                            else
                                _G.UseSkillGun = false
                                AutoHaki()
                                bringmob = true
                                EquipTool(SelectWeapon)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                AttackNoCoolDown()
                            end
                        until not AutoFarmMasGun or not MasteryType == 'Level No Quest' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Level No Quest'
                        bringmob = false
                        _G.UseSkillGun = false
                    end
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if AutoFarmMasGun and TypeMastery == 'Bone' then
            pcall(function()
                local boneframe = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)
                topos(boneframe)
            end)
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                    if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                        repeat wait(_G.Fast_Delay)
                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
                                _G.UseSkillGun = true
                            else
                                _G.UseSkillGun = false
                                AutoHaki()
                                bringmob = true
                                EquipTool(SelectWeapon)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                FarmPos = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                AttackNoCoolDown()
                            end
                        until not AutoFarmMasGun or not MasteryType == 'Bone' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Bone'
                        bringmob = false
                        _G.UseSkillGun = false
                    end
                end
            end
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                if v.Name == "Reborn Skeleton" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Living Zombie" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Demonic Soul" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                elseif v.Name == "Posessed Mummy" then
                    topos(v.HumanoidRootPart.CFrame * Pos)
                end
            end
        end
    end
end)
function EquipToolGun()
    pcall(function()
        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ToolTip == "Gun" and v:IsA('Tool') then
                local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid)
            end
        end
    end)
end
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg, false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = { ... }
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.UseSkillGun then
                        if type(args[2]) == "vector" then
                            args[2] = PositionSkillMasteryGun
                        else
                            args[2] = CFrame.new(PositionSkillMasteryGun)
                        end
                        return old(unpack(args))
                    end
                    if _G.UseSkill then
                        if type(args[2]) == "vector" then
                            args[2] = PositionSkillMasteryDevilFruit
                        else
                            args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
                        end
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)
