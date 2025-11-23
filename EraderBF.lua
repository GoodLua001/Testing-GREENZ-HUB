local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title = "Zero X Hub [Premium] ",
    SubTitle = "by Saries",
    TabWidth = 155,
    Size = UDim2.fromOffset(485, 370),
    Acrylic = false,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.End
})
local Tabs = {
    Shop = Window:AddTab({ Title = "Shop", Icon = ""}),
    Setting = Window:AddTab({ Title = "Settings", Icon = ""}),
    Main = Window:AddTab({ Title = "General", Icon = ""}),
}
do
if game.PlaceId == 2753915549 or game.PlaceId == 85211729168715 then
        World1 = true
    elseif game.PlaceId == 4442272183 or game.PlaceId == 79091703265657 then
        World2 = true
    elseif game.PlaceId == 7449423635 or game.PlaceId == 100117331123089 then
        World3 = true
    else 
       game:GetService("Players").LocalPlayer:Kick("This Game Is Not Support [ Zero X Hub ]") 
end
MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
	function CheckQuest()     
    if World1 then
        if MyLevel >= 1 and MyLevel <= 9 then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
        elseif MyLevel >= 10 and MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
        elseif MyLevel >= 15 and MyLevel <= 29 then
            Mon = "Gorilla"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
        elseif MyLevel >= 30 and MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif MyLevel >= 40 and MyLevel <= 59 then
            Mon = "Brute"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
        elseif MyLevel >= 60 and MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
        elseif MyLevel >= 75 and MyLevel <= 89 then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
        elseif MyLevel >= 90 and MyLevel <= 99 then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
        elseif MyLevel >= 100 and MyLevel <= 119 then
            Mon = "Snowman"
            LevelQuest = 2
            NameQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
        elseif MyLevel >= 120 and MyLevel <= 149 then
            Mon = "Chief Petty Officer"
            LevelQuest = 1
            NameQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
        elseif MyLevel >= 150 and MyLevel <= 174 then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
        elseif MyLevel >= 175 and MyLevel <= 189 then
            Mon = "Dark Master"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
        elseif MyLevel >= 190 and MyLevel <= 209 then
            Mon = "Prisoner"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
        elseif MyLevel >= 210 and MyLevel <= 249 then
            Mon = "Dangerous Prisoner"
            LevelQuest = 2
            NameQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
        elseif MyLevel >= 250 and MyLevel <= 274 then
            Mon = "Toga Warrior"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
        elseif MyLevel >= 275 and MyLevel <= 299 then
            Mon = "Gladiator"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
        elseif MyLevel >= 300 and MyLevel <= 324 then
            Mon = "Military Soldier"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
        elseif MyLevel >= 325 and MyLevel <= 374 then
            Mon = "Military Spy"
            LevelQuest = 2
            NameQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
        elseif MyLevel >= 375 and MyLevel <= 399 then
            Mon = "Fishman Warrior"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel >= 400 and MyLevel <= 449 then
            Mon = "Fishman Commando"
            LevelQuest = 2
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel >= 450 and MyLevel <= 474 then
            Mon = "God's Guard"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif MyLevel >= 475 and MyLevel <= 524 then
            Mon = "Shanda"
            LevelQuest = 2
            NameQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
            CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif MyLevel >= 525 and MyLevel <= 549 then
            Mon = "Royal Squad"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
        elseif MyLevel >= 550 and MyLevel <= 624 then
            Mon = "Royal Soldier"
            LevelQuest = 2
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
        elseif MyLevel >= 625 and MyLevel <= 649 then
            Mon = "Galley Pirate"
            LevelQuest = 1
            NameQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
        elseif MyLevel >= 650 then
            Mon = "Galley Captain"
            LevelQuest = 2
            NameQuest = "FountainQuest"
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
        end
    elseif World2 then
        if MyLevel >= 700 and MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
        elseif MyLevel >= 725 and MyLevel <= 774 then
            Mon = "Mercenary"
            LevelQuest = 2
            NameQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
        elseif MyLevel >= 775 and MyLevel <= 799 then
            Mon = "Swan Pirate"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
        elseif MyLevel >= 800 and MyLevel <= 874 then
            Mon = "Factory Staff"
            NameQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
        elseif MyLevel >= 875 and MyLevel <= 899 then
            Mon = "Marine Lieutenant"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
        elseif MyLevel >= 900 and MyLevel <= 949 then
            Mon = "Marine Captain"
            LevelQuest = 2
            NameQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
        elseif MyLevel >= 950 and MyLevel <= 974 then
            Mon = "Zombie"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
        elseif MyLevel >= 975 and MyLevel <= 999 then
            Mon = "Vampire"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
        elseif MyLevel >= 1000 and MyLevel <= 1049 then
            Mon = "Snow Trooper"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
        elseif MyLevel >= 1050 and MyLevel <= 1099 then
            Mon = "Winter Warrior"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
        elseif MyLevel >= 1100 and MyLevel <= 1124 then
            Mon = "Lab Subordinate"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
        elseif MyLevel >= 1125 and MyLevel <= 1174 then
            Mon = "Horned Warrior"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
        elseif MyLevel >= 1175 and MyLevel <= 1199 then
            Mon = "Magma Ninja"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
        elseif MyLevel >= 1200 and MyLevel <= 1249 then
            Mon = "Lava Pirate"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
        elseif MyLevel >= 1250 and MyLevel <= 1274 then
            Mon = "Ship Deckhand"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
            CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel >= 1275 and MyLevel <= 1299 then
            Mon = "Ship Engineer"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
            CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end             
        elseif MyLevel >= 1300 and MyLevel <= 1324 then
            Mon = "Ship Steward"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
            CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel >= 1325 and MyLevel <= 1349 then
            Mon = "Ship Officer"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel >= 1350 and MyLevel <= 1374 then
            Mon = "Arctic Warrior"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
            end
        elseif MyLevel >= 1375 and MyLevel <= 1424 then
            Mon = "Snow Lurker"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
        elseif MyLevel >= 1425 and MyLevel <= 1449 then
            Mon = "Sea Soldier"
            LevelQuest = 1
            NameQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
        elseif MyLevel >= 1450 then
            Mon = "Water Fighter"
            LevelQuest = 2
            NameQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3054, 240, -10146)
            CFrameMon = CFrame.new(-3291, 252, -10501)
        end
    elseif World3 then
        if MyLevel >= 1500 and MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        elseif MyLevel >= 1525 and MyLevel <= 1574 then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
        elseif MyLevel >= 1575 and MyLevel <= 1599 then
            Mon = "Dragon Crew Warrior"
            LevelQuest = 1
            NameQuest = "DragonCrewQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
            CFrameMon = CFrame.new(6920.71435546875, 56.15597152709961, -942.5044555664062)
        elseif MyLevel >= 1600 and MyLevel <= 1624 then 
            Mon = "Dragon Crew Archer"
            NameQuest = "DragonCrewQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
            CFrameMon = CFrame.new(6817.91259765625, 484.804443359375, 513.4141235351562)
        elseif MyLevel >= 1625 and MyLevel <= 1649 then
            Mon = "Hydra Enforcer"
            NameQuest = "VenomCrewQuest"
            LevelQuest = 1
            NameMon = "Hydra Enforcer"
            CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
            CFrameMon = CFrame.new(4584.69287109375, 1002.6435546875, 705.7958984375)
        elseif MyLevel >= 1650 and MyLevel <= 1699 then 
            Mon = "Venomous Assailant"
            NameQuest = "VenomCrewQuest"
            LevelQuest = 2
            NameMon = "Venomous Assailant"
            CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
            CFrameMon = CFrame.new(4638.78564453125, 1078.94091796875, 881.8002319335938)        
        elseif MyLevel >= 1700 and MyLevel <= 1724 then
            Mon = "Marine Commodore"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
        elseif MyLevel >= 1725 and MyLevel <= 1774 then
            Mon = "Marine Rear Admiral"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
        elseif MyLevel >= 1775 and MyLevel <= 1799 then
            Mon = "Fishman Raider"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
        elseif MyLevel >= 1800 and MyLevel <= 1824 then
            Mon = "Fishman Captain"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
        elseif MyLevel >= 1825 and MyLevel <= 1849 then
            Mon = "Forest Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
        elseif MyLevel >= 1850 and MyLevel <= 1899 then
            Mon = "Mythological Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
            CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
        elseif MyLevel >= 1900 and MyLevel <= 1924 then
            Mon = "Jungle Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
        elseif MyLevel >= 1925 and MyLevel <= 1974 then
            Mon = "Musketeer Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
        elseif MyLevel >= 1975 and MyLevel <= 1999 then
            Mon = "Reborn Skeleton"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
        elseif MyLevel >= 2000 and MyLevel <= 2024 then
            Mon = "Living Zombie"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
        elseif MyLevel >= 2025 and MyLevel <= 2049 then
            Mon = "Demonic Soul"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
        elseif MyLevel >= 2050 and MyLevel <= 2074 then
            Mon = "Posessed Mummy"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
        elseif MyLevel >= 2075 and MyLevel <= 2099 then
            Mon = "Peanut Scout"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
        elseif MyLevel >= 2100 and MyLevel <= 2124 then
            Mon = "Peanut President"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
        elseif MyLevel >= 2125 and MyLevel <= 2149 then
            Mon = "Ice Cream Chef"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
        elseif MyLevel >= 2150 and MyLevel <= 2199 then
            Mon = "Ice Cream Commander"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
        elseif MyLevel >= 2200 and MyLevel <= 2224 then
            Mon = "Cookie Crafter"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
        elseif MyLevel >= 2225 and MyLevel <= 2249 then
            Mon = "Cake Guard"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
        elseif MyLevel >= 2250 and MyLevel <= 2274 then
            Mon = "Baking Staff"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
        elseif MyLevel >= 2275 and MyLevel <= 2299 then
            Mon = "Head Baker"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
        elseif MyLevel >= 2300 and MyLevel <= 2324 then
            Mon = "Cocoa Warrior"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
        elseif MyLevel >= 2325 and MyLevel <= 2349 then
            Mon = "Chocolate Bar Battler"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
        elseif MyLevel >= 2350 and MyLevel <= 2374 then
            Mon = "Sweet Thief"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
        elseif MyLevel >= 2375 and MyLevel <= 2399 then
            Mon = "Candy Rebel"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
        elseif MyLevel >= 2400 and MyLevel <= 2424 then
            Mon = "Candy Pirate"
            LevelQuest = 1
            NameQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
        elseif MyLevel >= 2425 and MyLevel <= 2449 then
            Mon = "Snow Demon"
            LevelQuest = 2
            NameQuest = "CandyQuest1"
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)            
        elseif MyLevel >= 2450 and MyLevel <= 2474 then
            Mon = "Isle Outlaw"
            LevelQuest = 1
            NameQuest = "TikiQuest1"
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
        elseif MyLevel >= 2475 and MyLevel <= 2524 then
            Mon = "Island Boy"
            LevelQuest = 2
            NameQuest = "TikiQuest1"
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)            
        elseif MyLevel >= 2525 and MyLevel <= 2550 then
            Mon = "Isle Champion"
            LevelQuest = 2
            NameQuest = "TikiQuest2"
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16641.6796875, 235.7825469970703, 1031.282958984375)
        elseif MyLevel >= 2550 and MyLevel <= 2574 then
            Mon = "Serpent Hunter"
            LevelQuest = 1
            NameQuest = "TikiQuest3"
            NameMon = "Serpent Hunter"
            CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
            CFrameMon = CFrame.new(-16521.0625, 106.09285, 1488.78467, 0.469467044, 0, 0.882950008, 0, 1, 0, -0.882950008, 0, 0.469467044)
        elseif MyLevel >= 2575 and MyLevel <= 2599 then
            Mon = "Skull Slayer"
            LevelQuest = 2
            NameQuest = "TikiQuest3"
            NameMon = "Skull Slayer"
            CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
            CFrameMon = CFrame.new(-16855.043, 122.457253, 1478.15308, -0.999392271, 0, -0.0348687991, 0, 1, 0, 0.0348687991, 0, -0.999392271)
        elseif MyLevel >= 2600 and MyLevel <= 2624 then
            Mon = "Reef Bandit"
            LevelQuest = 1
            NameQuest = "SubmergedQuest1"
            NameMon = "Reef Bandit"            
            CFrameMon = CFrame.new(10943.0811, -2083.03516, 9177.33691, -0.998713255, -0.0461204648, 0.021090759, -0.0451571345, 0.998007238, 0.0440727882, -0.0230813865, 0.0430636741, -0.998805642)            
            CFrameQuest = CFrame.new(10780.107421875, -2087.721435546875, 9261.865234375)                
        elseif MyLevel >= 2625 and MyLevel <= 2649 then
            Mon = "Coral Pirate"
            LevelQuest = 2
            NameQuest = "SubmergedQuest1"
            NameMon = "Coral Pirate"    
            CFrameQuest = CFrame.new(10780.107421875, -2087.721435546875, 9261.865234375)        
            CFrameMon = CFrame.new(10713.4473, -2093.04517, 9307.14844, 0.325602472, 7.02769976e-05, 0.945506752, -7.02769976e-05, 1, -5.01261711e-05, -0.945506752, -5.01261711e-05, 0.325602472)                
        elseif MyLevel >= 2650 and MyLevel <= 2674 then
            Mon = "Sea Chanter"
            LevelQuest = 1
            NameQuest = "SubmergedQuest2"
            NameMon = "Sea Chanter"     
            CFrameQuest = CFrame.new(10883.587890625, -2086.197021484375, 10032.1962890625)       
            CFrameMon = CFrame.new(10647.6064453125, -2077.625732421875, 10079.962890625)                
        elseif MyLevel >= 2675 and MyLevel <= 2699 then
            Mon = "High Disciple"
            LevelQuest = 1
            NameQuest = "SubmergedQuest3"
            NameMon = "High Disciple"      
            CFrameQuest = CFrame.new(9635.8701171875, -1992.4481201171875, 9614.3935546875)  
            CFrameMon = CFrame.new(9843.578125, -1993.4559326171875, 9696.48046875)       
        elseif MyLevel >= 2700 then
            Mon = "Grand Devotee"
            LevelQuest = 2
            NameQuest = "SubmergedQuest3"
            NameMon = "Grand Devotee"      
            CFrameQuest = CFrame.new(9635.8701171875, -1992.4481201171875, 9614.3935546875)  
            CFrameMon = CFrame.new(9591.0546875, -1993.4742431640625, 9808.705078125)             
        end
    end
end
function UnEquipWeapon(Weapon)
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            _G.NotAutoEquip = true
            wait(.5)
            game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
            wait(.1)
            _G.NotAutoEquip = false
        end
    end
    
function EquipWeapon(w) 
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if game.Players.LocalPlayer.Backpack:FindFirstChild(w) or v.ToolTip == w then 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)) 
			end
		end
	end)
end
function TP1(pos, notinstant)
    if not pos then return end
    local lastPauseTime = tick()
    local localFkwarp = false
    local Pos = typeof(pos) == "CFrame" and pos or CFrame.new(pos.X, pos.Y, pos.Z)
    if not game.Players.LocalPlayer or not game.Players.LocalPlayer.Character then
        repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character
    end
    repeat wait() until IsPlayerAlive()
    local character = game.Players.LocalPlayer.Character
    local humanoid = character and character:FindFirstChild("Humanoid")
    local rootPart = character and character:FindFirstChild("HumanoidRootPart")
    if not character or not humanoid or not rootPart then return end
    if humanoid.Sit then
        repeat
            wait()
            pcall(function()
                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
            end)
        until not humanoid.Sit or not character.Parent
        pcall(function()
            VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
        end)
    end
    local success, distance = pcall(function()
        return q1(Pos.Position, rootPart.Position)
    end)
    if not success then
        warn("Lỗi tính khoảng cách:", distance)
        distance = (Pos.Position - rootPart.Position).Magnitude
    end
    Distance = distance
    local request_place
    local ok, err = pcall(function()
        request_place = CheckNearestRequestIsland2(Pos, shouldtp(not notinstant))
    end)
    if not ok then
        warn("Lỗi CheckNearestRequestIsland2:", err)
    end
    if request_place then
    warn(request_place)
        local ok2, err2 = pcall(function()
            if Request_Places2 and Request_Places2[request_place] and shouldtp(not notinstant) then
                local plrData = game.Players.LocalPlayer.Data and game.Players.LocalPlayer.Data:FindFirstChild("LastSpawnPoint")
                if plrData and type(plrData.Value) == "string" and (plrData.Value ~= request_place or GetDistance(Request_Places2[request_place], rootPart.Position) >= 1500) then
                    if tween then
                        pcall(function() tween:Cancel() end)
                    end
                    if IsPlayerAlive() then
                        pcall(function() setlastspawn(request_place) end)
                    end
                end
            elseif Request_Places and Request_Places[request_place] and checkcanentrance() and not localFkwarp then
                pcall(function() rqentrance(request_place) end)
                local success2, newDistance = pcall(function()
                    return q1(Pos)
                end)
                if success2 then
                    Distance = newDistance
                end
                localFkwarp = true
            end
        end)
        if not ok2 then
            warn("Lỗi xử lý request_place:", err2)
        end
    end
    local ok3, err3 = pcall(function()
        if Pos.Position.Y > 0 and math.abs(rootPart.Position.Y - Pos.Position.Y) > 50 then
            rootPart.CFrame = CFrame.new(rootPart.Position.X, Pos.Position.Y, rootPart.Position.Z)
            wait(0.5)
        end
    end)
    if not ok3 then
        warn("Lỗi chỉnh cao độ:", err3)
    end
    local Time
    if Distance <= 50 then
        Time = 0
    elseif Distance <= 200 then
        Time = 0.25
    else
        Time = Distance / 350
    end
    if tween then
        pcall(function() tween:Cancel() end)
    end
    local ok4, err4 = pcall(function()
        tween = game:GetService("TweenService"):Create(rootPart, TweenInfo.new(Time, Enum.EasingStyle.Linear), { CFrame = Pos })
        tween:Play()
    end)
    if not ok4 then
        warn("Lỗi tạo tween:", err4)
    end
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
local lp = game.Players.LocalPlayer
local RunService = game:GetService("RunService")
local bringConnection = nil
local globalTarget = Instance.new("Part")
globalTarget.Name = "GlobalBringTarget"
globalTarget.Size = Vector3.new(1,1,1)
globalTarget.Anchored = true
globalTarget.Transparency = 1
globalTarget.CanCollide = false
globalTarget.Parent = workspace
local isBring = {mobName = nil, targetPos = nil}
local stabilizedMobMonsters = {}
local activePos = nil

function BringMob(mobName, targetPos, range, skipDeath, bringAll)
    range = range or 300
    if bringConnection then bringConnection:Disconnect() end
    isBring.mobName = mobName
    isBring.targetPos = targetPos
    activePos = targetPos
    bringConnection = RunService.Heartbeat:Connect(function()
        if isBring.mobName ~= mobName then
            bringConnection:Disconnect()
        end
        local hrpPlr = lp.Character and lp.Character:FindFirstChild("HumanoidRootPart")
        if not hrpPlr then return end
        pcall(function() sethiddenproperty(lp, "SimulationRadius", math.huge) end)
        local alive = 0
        for _, mob in ipairs(workspace.Enemies:GetChildren()) do
            if mob:FindFirstChild("Humanoid") and mob:FindFirstChild("HumanoidRootPart") and mob.Humanoid.Health > 0 then
                if bringAll or mob.Name == mobName then
                    alive += 1
                end
            end
        end
        if alive == 0 then
            stabilizedMobMonsters = {}
            activePos = nil
            isBring.mobName = nil
            isBring.targetPos = nil
            bringConnection:Disconnect() 
        end
        for _, mob in ipairs(workspace.Enemies:GetChildren()) do
            if mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                if bringAll or mob.Name == mobName then
                    local hrp, hum = mob.HumanoidRootPart, mob.Humanoid
                    if (hrpPlr.Position - hrp.Position).Magnitude > range then
                        stabilizedMobMonsters[mob] = nil
                        continue
                    end
                    hrp.CanCollide = false
                    for _, v in ipairs(mob:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false
                        end
                    end
                    hum.JumpPower, hum.WalkSpeed, hum.AutoRotate = 0, 0, false
                    local att0 = hrp:FindFirstChild("AP_Att0") or Instance.new("Attachment", hrp)
                    att0.Name = "AP_Att0"
                    local att1 = globalTarget:FindFirstChild("AP_Att1") or Instance.new("Attachment", globalTarget)
                    att1.Name = "AP_Att1"
                    local ap = hrp:FindFirstChild("AlignPos_AP") or Instance.new("AlignPosition")
                    ap.Name = "AlignPos_AP"
                    ap.Attachment0 = att0
                    ap.Attachment1 = att1
                    ap.Responsiveness = 200
                    ap.MaxForce = math.huge
                    ap.MaxVelocity = math.huge
                    ap.Parent = hrp
                    local ao = hrp:FindFirstChild("AlignOri_AP") or Instance.new("AlignOrientation")
                    ao.Name = "AlignOri_AP"
                    ao.Attachment0 = att0
                    ao.Attachment1 = att1
                    ao.Responsiveness = 200
                    ao.MaxTorque = math.huge
                    ao.MaxAngularVelocity = math.huge
                    ao.Parent = hrp
                    hrp.AssemblyLinearVelocity = Vector3.new(0,0,0)
                    hrp.AssemblyAngularVelocity = Vector3.new(0,0,0)
                    if not stabilizedMobMonsters[mob] then
                        stabilizedMobMonsters[mob] = {
                            BasePos = activePos,
                            RockSpeedX = math.random(1,3),
                            RockSpeedZ = math.random(1,3),
                            FloatPhase = math.random() * math.pi * 2
                        }
                    end
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
        end
    end)
end

RunService.RenderStepped:Connect(function()
    local hrpPlr = lp.Character and lp.Character:FindFirstChild("HumanoidRootPart")
    if not hrpPlr then return end
    for monster, data in pairs(stabilizedMobMonsters) do
        if monster and monster.Parent and monster:FindFirstChild("HumanoidRootPart") and monster:FindFirstChild("Humanoid") and monster.Humanoid.Health > 0 then
            if (hrpPlr.Position - monster.HumanoidRootPart.Position).Magnitude > 300 then
                stabilizedMobMonsters[monster] = nil
            else
                local t = tick()
                local x = math.sin(t * data.RockSpeedX + data.FloatPhase) * 0.5
                local z = math.cos(t * data.RockSpeedZ + data.FloatPhase) * 0.5
                globalTarget.Position = Vector3.new(isBring.targetPos.X + x, isBring.targetPos.Y, isBring.targetPos.Z + z)
            end
        else
            stabilizedMobMonsters[monster] = nil
        end
    end
end
function CheckBoss(names)
    local targets = typeof(names) == "table" and names or {names}
    for _, targetName in ipairs(targets) do
        for _, v in pairs(game.ReplicatedStorage:GetChildren()) do
            if v:IsA("Model") and v.Name == targetName then
                local h = v:FindFirstChild("Humanoid")
                if h and h.Health > 0 then
                    return v
                end
            end
        end
        for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if v:IsA("Model") and v.Name == targetName then
                local h = v:FindFirstChild("Humanoid")
                if h and h.Health > 0 and h.Parent then
                    return v
                end
            end
        end
    end
    return nil
end

function KillBoss(mobs)
    local targets = typeof(mobs) == "table" and mobs or {mobs}
    for _, bossName in ipairs(targets) do
        local B = CheckBoss(bossName)
        if B then
            local IsBoss = B:GetAttribute("IsBoss") or B.Humanoid.DisplayName:find("Boss") or B.Name == "Core" or table.find(Elites, B.Name)
            repeat
                task.wait(0.1)
                if not B or not B:FindFirstChild("HumanoidRootPart") or not B:FindFirstChildOfClass("Humanoid") then
                    B = CheckBoss(bossName)
                else
                    AutoHaki()
                    EquipWeapon(_G.SelectWeapon)
                    TP1(B.HumanoidRootPart.CFrame * CFrame.new(10, 20, 10))
                end
            until not B or not B:FindFirstChildOfClass("Humanoid") or B:FindFirstChildOfClass("Humanoid").Health <= 0
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
local v1 = Tabs.Shop:AddSection("Soon!")
local v2 = Tabs.Setting:AddSection("Settings")
local v3 = Tabs.Setting:AddDropdown("v3", {
    Title = "Select Weapon",
    Values = {"Melee", "Sword", "Blox Fruits"},
    Multi = false,
    Default = 1,
    Callback = function(Value)
        _G.SelectWeapon = Value
    end
})
task.spawn(function()
	while wait() do
		pcall(function()
			if _G.SelectWeapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Gun" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Gun" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Blox Fruits" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			end
		end)
	end
end)
local v4 = Tabs.Setting:AddToggle("v4", {
    Title = "Teleport To Y 200 If Low Health",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.Y200 = Value
    end
})
spawn(function()
    while task.wait() do
        if _G.Y200 then
            if humanoid and humanoid.Health < 4000 then
                TP1(CFrame.new(0, 200, 0))
            end
        end
    end
end)
local v5 = Tabs.Setting:AddToggle("v5", {
    Title = "Auto Turn On V3",
    Description = "",
    Default = false,
    Callback= function(Value)
        _G.TurnOnV3 = Value
    end
})
local v6 = Tabs.Setting:AddToggle("v6", {
    Title = "Auto Turn On V4",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.TurnOnV4 = Value
    end
})
spawn(function()
	while wait(0.2) do
		if _G.TurnOnV4 then
			if tonumber(((game:GetService("Players")).LocalPlayer.Character:WaitForChild("RaceEnergy")).Value) == 1 then
				if (game:GetService("Players")).LocalPlayer.Character.RaceTransformed.Value == false then
					(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Y", false, game);
					wait(0.1);
					(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Y", false, game);
				end;
			end;
		end;
	end;
end);
spawn(function()
	pcall(function()
		while wait(1) do
			if _G.TurnOnV3 then
				(game:GetService("ReplicatedStorage")).Remotes.CommE:FireServer("ActivateAbility");
			end;
		end;
	end);
end);
local v9 = Tabs.Main:AddSection("Simple Farm")
local v7 = Tabs.Main:AddDropdown("v7", {
    Title = "Select Mode Farm",
    Values = {"Level", "Bones", "Cake", "Tyrant of the Skies"},
    Multi = false,
    Default = getgenv().Settings["Mode"] or "Level",
    Callback = function(selected)
        getgenv().SetValue("Mode", selected)
    end
})
local v8 = Tabs.Main:AddToggle("v8", { 
    Title = "Start Farm",
    Description = "",
    Default = getgenv().Settings["Start Farm"] or false,
    Callback = function(state)
        getgenv().SetValue("Start Farm", state)
        if Value == true then
            getgenv().NoClip = true
        elseif Value == false then
            getgenv().NoClip = false
        end
    end
})
spawn(function()
    while task.wait() do
        if getgenv().Settings["Start Farm"] and getgenv().Settings["Mode"] == "Level" then
            pcall(function()
                local QuestTitle = LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                HRP = hrp
                if not HRP then return end
                if MyLevel <= 2599 then                    
                    if not string.find(QuestTitle, NameMon) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    
                    if not PlayerGui.Main.Quest.Visible then
                        CheckQuest()                            
                       TP1(CFrameQuest)
                        if (HRP.Position - CFrameQuest.Position).Magnitude <= 2 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                            wait(1)
                            TP1(CFrameMon)
                        end
                    else
                        CheckQuest()
                        if game.Workspace.Enemies:FindFirstChild(Mon) then
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v.Name == Mon then
                                    if string.find(PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()
                                            BringMob(v.Name, v.HumanoidRootPart.Position, 300, 5, true)

                                            TP1(v.HumanoidRootPart.CFrame * Pos)   
                                        until not getgenv().Settings["Mode"] == "Level" or v.Humanoid.Health <= 0 or not v.Parent or not PlayerGui.Main.Quest.Visible
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        else
                            TP1(CFrameMon)
                            UnEquipWeapon(_G.SelectWeapon)
                        end
                    end
                elseif MyLevel >= 2600 then
                    if player:GetAttribute("CurrentLocation") == "Submerged Island" or player:GetAttribute("CurrentLocation") == "Sealed Cavern" then
                        if not string.find(QuestTitle, NameMon) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                    
                        if not PlayerGui.Main.Quest.Visible then
                            CheckQuest()                            
                            TP1(CFrameQuest)
                            if (HRP.Position - CFrameQuest.Position).Magnitude <= 2 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                                wait(1)
                                TP1(CFrameMon)
                            end
                        else
                            CheckQuest()
                            if game.Workspace.Enemies:FindFirstChild(Mon) then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v.Name == Mon then
                                        if string.find(PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            repeat task.wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()
                                                BringMob(v.Name, v.HumanoidRootPart.Position, 300, 5, true)
                                                TP1(v.HumanoidRootPart.CFrame * Pos)   
                                            until not getgenv().Settings["Mode"] == "Level" or v.Humanoid.Health <= 0 or not v.Parent or not PlayerGui.Main.Quest.Visible
                                        else
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            else
                                TP1(CFrameMon)
                                UnEquipWeapon(_G.SelectWeapon)
                           end
                        end
                    elseif not player:GetAttribute("CurrentLocation") == "Submerged Island" and not player:GetAttribute("CurrentLocation") == "Sealed Cavern" then
                        if World3 then
                            submarineCF = CFrame.new(-16269.4121, 24.7584076, 1371.70752, -0.999348342, -0.00479344372, 0.0357791297, -0.00262145093, 0.998164296, 0.0605080314, -0.036003489, 0.0603748076, -0.997526407)
                            topos(submarineCF)
                            if (HRP.Position - submarineCF.Position).Magnitude <= 5 then
                                local args = { "TravelToSubmergedIsland" }
                                game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/SubmarineWorkerSpeak"):InvokeServer(unpack(args))
                            end
                        end
                    end
                end
                task.wait(2)
            end)
        end
    end
end) 
spawn(function()
    while task.wait() do
        if getgenv().Settings["Mode"] == "Bones" and getgenv().Settings["Start Farm"] then
            pcall(function()
                local mobNames = {"Reborn Skeleton", "Living Zombie", "Demonic Soul", "Posessed Mummy"}
                for _, mobName in pairs(mobNames) do
                    local mob = CheckBoss(mobName)
                    if mob and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                        repeat
                            task.wait()
                            KillBoss(mobName)
                            BringMob(mobName, mob.HumanoidRootPart.Position, 300, 5, true)
                        until not mob or not mob:FindFirstChildOfClass("Humanoid") or mob.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)
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

spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg, false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if getgenv().Aimbot and aimpos then
                        if typeof(args[2]) == "Vector3" then
                            args[2] = aimpos
                        elseif typeof(args[2]) == "CFrame" then
                            args[2] = CFrame.new(aimpos)
                        end
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)
