repeat wait() until game:IsLoaded()

function TP(pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

function Click()
    game:GetService'VirtualUser':Button1Down(Vector2.new(0.9,0.9))
    game:GetService'VirtualUser':Button1Up(Vector2.new(0.9,0.9))
end

function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        getgenv().tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait()
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end


_G.ColorESP = Color3.new(0,255,255)

function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdateBfEsp() 
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(function()
            if DevilFruitESP then
                if string.find(v.Name, "Fruit") then   
                    if not v.Handle:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v.Handle)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = _G.ColorESP
                        name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                    else
                        v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
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

function isnil(thing)
    return (thing == nil)
end
local function round(n)
    return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdateDBEsp() 
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        pcall(function()
            if DragonBallESP then
                if string.find(v.Name, "DB1") or string.find(v.Name, "DB2") or string.find(v.Name, "DB3") or string.find(v.Name, "DB4") or string.find(v.Name, "DB5") or string.find(v.Name, "DB6") or string.find(v.Name, "DB7") then   
                    if not v.Handle:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v.Handle)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v.Handle
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = _G.ColorESP
                        name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                    else
                        v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
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

function UnEquipWeapon(ToolSess)
    if game.Players.LocalPlayer.Character:FindFirstChild(ToolSess) then
        getgenv().toolun = game.Players.LocalPlayer.Character:FindFirstChild(ToolSess)
        wait()
        game.Players.LocalPlayer.Character.Humanoid:UnequipTools(toolun)
    end
end

_G.Color = Color3.fromRGB(11, 230, 113)
_G.Logo = 15094837583
wait(0.1)

local Weaponlist = {}
function Update()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        table.insert(Weaponlist,v.Name)
    end   
end

Update()


function CheckQuest()
    local Level = game:GetService("Players").LocalPlayer.Data.Levels.Value
    if Level == 1 or Level <= 49 then
        QuestN = "Lv1Quest"
        Num = 1
    elseif Level == 50 or Level <= 99 then
        Nume = 1
        QuestN = "Lv50Quest"
        Num = 2
    elseif Level == 100 or Level <= 149 then
        Num2 = 2
        QuestN = "Lv100Quest"
        Num = 3
    elseif Level == 150 or Level <= 199 then
        Nume = 3
        QuestN = "Lv150Quest"
        Num = 4
    elseif Level == 200 or Level <= 249 then
        Nume = 4
        QuestN = "Lv200Quest"
        Num = 5
    elseif Level == 250 or Level <= 299 then
        Nume = 5
        QuestN = "Lv250Quest"
        Num = 6
    elseif Level == 300 or Level <= 349 then
        Nume = 6
        QuestN = "Lv300Quest"
        Num = 7
    elseif Level == 350 or Level <= 399 then
        Nume = 7
        QuestN = "Lv350Quest"
        Num = 8
    elseif Level == 400 or Level <= 499 then
        Nume = 8
        QuestN = "Lv400Quest"
        Num = 9
    elseif Level == 500 or Level <= 549 then
        Nume = 9
        QuestN = "Lv500Quest"
        Num = 10
    elseif Level == 550 or Level <= 599 then
        Nume = 10
        QuestN = "Lv550Quest"
        Num = 11
    elseif Level == 600 or Level <= 649 then
        Nume = 11
        QuestN = "Lv600Quest"
        Num = 12
    elseif Level == 650 or Level <= 699 then
        Nume = 12
        QuestN = "Lv650Quest"
        Num = 13
    elseif Level == 700 or Level <= 749 then
        Nume = 13
        QuestN = "Lv700Quest"
        Num = 14
    elseif Level == 750 or Level <= 799 then
        Nume = 14
        QuestN = "Lv750Quest"
        Num = 15
    elseif Level == 800 or Level <= 849 then
        Nume = 15
        QuestN = "Lv800Quest"
        Num = 16
    elseif Level == 850 or Level <= 899 then
        Nume = 16
        QuestN = "Lv850Quest"
        Num = 17
    elseif Level == 900 or Level <= 999 then
        Nume = 17
        QuestN = "Lv900Quest"
        Num = 18
    elseif Level == 1000 or Level <= 1049 then
        Nume = 18
        QuestN = "Lv1000Quest"
        Num = 19
    elseif Level == 1050 or Level <= 1099 then
        Nume = 19
        QuestN = "Lv1050Quest"
        Num = 20
    elseif Level == 1100 or Level <= 1299 then
        Nume = 20
        QuestN = "Lv1100Quest"
        Num = 21
    elseif Level == 1300 or Level <= 1399 then
        Nume = 21
        QuestN = "Lv1300Quest"
        Num = 22
    elseif Level == 1400 or Level <= 1449 then
        Nume = 22
        QuestN = "Lv1400Quest"
        Num = 23
    elseif Level == 1450 or Level <= 1499 then
        Nume = 23
        QuestN = "Lv1450Quest"
        Num = 24
    elseif Level == 1500 or Level <= 1549 then
        Nume = 24
        QuestN = "Lv1500Quest"
        Num = 25
    elseif Level == 1550 or Level <= 1599 then
        Nume = 25
        QuestN = "Lv1550Quest"
        Num = 26
    elseif Level == 1600 or Level <= 1649 then
        Nume = 26
        QuestN = "Lv1600Quest"
        Num = 27
    elseif Level == 1650 or Level <= 1699 then
        Nume = 27
        QuestN = "Lv1650Quest"
        Num = 28
    elseif Level == 1700 or Level <= 1749 then
        Nume = 28
        QuestN = "Lv1700Quest"
        Num = 29
    elseif Level == 1750 or Level <= 1799 then
        Nume = 29
        QuestN = "Lv1750Quest"
        Num = 30
    elseif Level == 1800 or Level <= 1849 then
        Nume = 30
        QuestN = "Lv1800Quest"
        Num = 31
    elseif Level == 1850 or Level <= 1899 then
        Nume = 31
        QuestN = "Lv1850Quest"
        Num = 32
    elseif Level == 1900 or Level <= 1949 then
        Nume = 32
        QuestN = "Lv1900Quest"
        Num = 33
    elseif Level == 1950 or Level <= 1999 then
        Nume = 33
        QuestN = "Lv1950Quest"
        Num = 34
    end
end
CheckQuest()

local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/Toilaai4141/Ui/main/Fluent.txt"))()


local Window = Fluent:CreateWindow({
    Title = "ArDrak Hub | ".. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.. " (First Sea)",
    SubTitle = "| V6",
    TabWidth = 95,
    Size = UDim2.fromOffset(480, 380),
    Acrylic = false,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.F15
})


--   Dark   Light  Aqua Amethyst
local Tabs = {
    infoTab = Window:AddTab({ Title = "info hub", Icon = "rbxassetid://17515562390" }),
}

Tabs.infoTab:AddButton({
        Title = "Discord",
        Description = "Very important button",
        Callback = function()
        setclipboard(https://discord.com/invite/p9D6TtzR)
        end
    })
    
Tabs.infoTab:AddButton({
        Title = "Youtuber",
        Description = "Very important button",
        Callback = function()
        setclipboard(https://www.youtube.com/@hungty4141)
        end
    })
    
Tabs.infoTab:AddParagraph({
        Title = "Cuc cung myheart",
        Content = "cutephomaiquehotvit"
    })

--   Dark   Light  Aqua Amethyst
local Tabs = {
    MainTab = Window:AddTab({ Title = "General", Icon = "rbxassetid://17515562390" }),
}

Tabs.MainTab:AddButton({
        Title = "Teleport Raid",
        Description = "teleport to raid server",
        Callback = function()
        local TeleportService = game:GetService('TeleportService')
				GameId = 13373351184
				TeleportService:Teleport(GameId, game.Players.LocalPlayer)
         end
    })
    
    Tabs.MainTab:AddButton({
        Title = "Teleport raid [ tamer 5/5 ]",
        Description = "Very important button",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2299.685791015625, 1035.02490234375, -2715.144775390625)
       end
    })

local Toggle = Tabs.MainTab:AddToggle("Toggle", {Title = "Auto Fram Raids", Default = false })

    Toggle:OnChanged(function(value)
        AutoFarmRaid = value
    end)

local Toggle = Tabs.MainTab:AddToggle("Toggle", {Title = "Kill Aura Raids", Default = false })

    Toggle:OnChanged(function(value)
        KillauraRaid = value
    end)
    
local Toggle = Tabs.MainTab:AddToggle("Toggle", {Title = "Fast Attacks Raid", Default = false })

    Toggle:OnChanged(function(value)
        CBLRaid = value
    end)
    
Tabs.MainTab:AddParagraph({
        Title = "Lever Farm",
        Content = "lonmamay"
    })
   
   local Toggle = Tabs.MainTab:AddToggle("Toggle", {Title = "Auto Fram Raids", Default = false })

    Toggle:OnChanged(function(value)
        Farm = value
    end)
    
 local Dropdown = Tabs.MainTab:AddDropdown("Dropdown", {
        Title = "Dropdown",
        Values = {"Fast"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("Fast")

    Dropdown:OnChanged(function(Value)
        Weapon = Value
    end)
    
--   Dark   Light  Aqua Amethyst
local Tabs = {
    ArTab = Window:AddTab({ Title = "Star", Icon = "rbxassetid://17515562390" }),
}

local Toggle = Tabs.ArTab:AddToggle("Toggle", {Title = "Auto Melee", Default = false })

    Toggle:OnChanged(function(value)
        Melee = value
    end)
    
local Toggle = Tabs.ArTab:AddToggle("Toggle", {Title = "Auto Sword", Default = false })

    Toggle:OnChanged(function(value)
        Sword = value
    end)
    
local Toggle = Tabs.ArTab:AddToggle("Toggle", {Title = "Auto Defense", Default = false })

    Toggle:OnChanged(function(value)
        Defense = value
    end)
    
local Toggle = Tabs.ArTab:AddToggle("Toggle", {Title = "Auto Fruit", Default = false })

    Toggle:OnChanged(function(value)
        DevilFruit = value
    end)
    
--   Dark   Light  Aqua Amethyst
local Tabs = {
    MiscTab = Window:AddTab({ Title = "Fruit", Icon = "rbxassetid://17515562390" }),
}

--   Dark   Light  Aqua Amethyst
local Tabs = {
    LonTab = Window:AddTab({ Title = "items", Icon = "rbxassetid://17515562390" }),
}

Tabs.LonTab:AddButton({
        Title = "Tp To Sword spam",
        Description = "Very important button",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-896.626831, 75.8225098, -3601.07373, -0.327141702, 0, 0.944975376, 0, 1.00000012, -0, -0.944975257, 0, -0.327141732)
        end
    })
    
Tabs.LonTab:AddButton({
        Title = "Tp To Sword spam",
        Description = "Very important button",
        Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(150.250183, 477.125305, 1698.29272, 0.950112522, 0, 0.311907351, -0, 1, -0, -0.311907351, 0, 0.950112522)
        end
    })

--   Dark   Light  Aqua Amethyst
local Tabs = {
    DMTab = Window:AddTab({ Title = "misc", Icon = "rbxassetid://17515562390" }),
}

local Slider = Tabs.DMTab:AddSlider("Slider", {
        Title = "Speed",
        Description = "speed to game",
        Default = 17,
        Min = 0,
        Max = 300,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    })
    
    local Slider = Tabs.DMTab:AddSlider("Slider", {
        Title = "Jumppower",
        Description = "jumppower to game",
        Default = 50,
        Min = 0,
        Max = 300,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end
    })
   
    function fixQuest()
    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("QuestTake") then
        for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
            if v.Name == "QuestTake" then
                v.Decline.Size = UDim2.new(0, 10000, 0, 10000)
                v.Decline.Position = UDim2.new(-2, 0, -5, 0)
                v.Decline.BackgroundTransparency = 1
            end
        end   
        wait(.5)
        Click()
    end
end
spawn(function()
    while wait() do
        if Farm then
            pcall(function()
                CheckQuest()
                if game:GetService("Players").LocalPlayer.Quest.Num.Value == 0 then
                    CheckQuest()
                    Fast = false
                    for _,v in pairs(game.workspace.QuestFolder:GetChildren()) do
                        if v.Name == QuestN then			
                            TP(v.ClickPart.CFrame * CFrame.new(0,0,3))
                            wait(0.1)
                            Fast = false
                            fireclickdetector(v.ClickPart.ClickDetector)					
                        end
                    end
                    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("QuestTake") then
                        local Event = game:GetService("Players").LocalPlayer.PlayerGui.QuestTake.Accept.RemoteEvent
                        Event:FireServer()
                    end 
                elseif game:GetService("Players").LocalPlayer.Quest.Num.Value == Num then
                    CheckQuest()
                    spawn(function()
                        fixQuest()
                    end)
                    for i,x in pairs(game:GetService("Workspace").Npc:GetChildren()) do
                        if x:FindFirstChild("Data") then
                            if Num ~= 1 and x.Data.Num.Value ~= 1 and Dupe then
                                if x.Data.Num.Value == Num then
                                    if x:FindFirstChild("Humanoid") and x:FindFirstChild("Humanoid").Health ~= 0 and x:FindFirstChild("HumanoidRootPart") then
                                        repeat game:GetService("RunService").Heartbeat:wait()
                                            EquipWeapon(Weapon)
                                            if Method == "Normal"then
                                                Click()
                                            elseif Method == "Fast" then
                                                Fast = true
                                            else
                                                Click()   
                                            end
                                            TP(x.HumanoidRootPart.CFrame * CFrame.new(0,7,DistanceMob))
                                        until x:FindFirstChild("Humanoid").Health <= 0 or not Farm or not x.Parent or game:GetService("Players").LocalPlayer.Quest.Num.Value == 0
                                    end
                                else
                                    if x.Data.Num.Value == Nume then
                                        if x:FindFirstChild("Humanoid") and x:FindFirstChild("Humanoid").Health ~= 0 and x:FindFirstChild("HumanoidRootPart") then
                                            repeat game:GetService("RunService").Heartbeat:wait()
                                                EquipWeapon(Weapon)
                                                if Method == "Normal"then
                                                    Click()
                                                elseif Method == "Fast" then
                                                    Fast = true
                                                else
                                                    Click()   
                                                end
                                                TP(x.HumanoidRootPart.CFrame * CFrame.new(0,7,DistanceMob))
                                            until x:FindFirstChild("Humanoid").Health <= 0 or not Farm or not x.Parent or game:GetService("Players").LocalPlayer.Quest.Num.Value == 0
                                        end
                                    end
                                end
                            else
                                if x.Data.Num.Value == Num then
                                    if x:FindFirstChild("Humanoid") and x:FindFirstChild("Humanoid").Health ~= 0 and x:FindFirstChild("HumanoidRootPart") then
                                        repeat game:GetService("RunService").Heartbeat:wait()
                                            EquipWeapon(Weapon)
                                            if Method == "Normal"then
                                                Click()
                                            elseif Method == "Fast" then
                                                Fast = true
                                            else
                                                Click()   
                                            end
                                            TP(x.HumanoidRootPart.CFrame * CFrame.new(0,7,DistanceMob))
                                        until x:FindFirstChild("Humanoid").Health <= 0 or not Farm or not x.Parent or game:GetService("Players").LocalPlayer.Quest.Num.Value == 0
                                    end
                                end
                            end
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Quest.Num.Value ~= Num and game:GetService("Players").LocalPlayer.Quest.Num.Value ~= 0 then
                    UnEquipWeapon(Weapon)
                    CheckQuest()
                    Fast = false

                    spawn(function()
                        fixQuest()
                    end)

                    if game:GetService("Players").LocalPlayer.Quest.Num.Value ~= Num then
                        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("QuestBar") then
                            local Event = game:GetService("Players").LocalPlayer.PlayerGui.QuestBar.Background.Cancle.RemoteEvent
                            Event:FireServer()
                        end
                    end
                    wait()
                    for _,v in pairs(game.workspace.QuestFolder:GetChildren()) do
                        if v.Name == QuestN then			
                            TP(v.ClickPart.CFrame * CFrame.new(0,0,3))
                            Fast = false
                            wait(0.1)
                        end
                    end
                end
            end)
        else
            Fast = false
        end
    end
end)

spawn(function()
    while wait() do
        if AutoFarmRaid then
            for i,v in pairs(game.Workspace.SpawnEnemy:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
                    pcall(function()
                        repeat wait()
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            v.HumanoidRootPart.CanCollide = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, DistanceMob, 9)
                            EquipWeapon(Weapon)
                            if Method == "Normal"then
                                Click()
                            elseif Method == "Fast" then
                                Fast = true
                            elseif Method == "Super Fast" then
                                SuperFast = true
                            else
                                Click()
                            end
                        until not AutoFarmRaid or not v.Parent or v.Humanoid.Health <= 1
                    end)
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if Melee then
            pcall(function()
                local args = {
                    [1] = "Melee"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("StatSystem"):WaitForChild("Points"):FireServer(unpack(args))
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Defense then
            pcall(function()
                local args = {
                   [1] = "MaxHealth"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("StatSystem"):WaitForChild("Points"):FireServer(unpack(args))
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if Sword then
            pcall(function()
                local args = {
                    [1] = "Sword"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("StatSystem"):WaitForChild("Points"):FireServer(unpack(args))
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if DevilFruit then
            pcall(function()
                local args = {
                    [1] = "DevilFruit"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("StatSystem"):WaitForChild("Points"):FireServer(unpack(args))
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if KillauraRaid then
            for i,v in pairs(game.Workspace.SpawnEnemy:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
                    pcall(function()
                        repeat wait()
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(50,50,150)
                            v.HumanoidRootPart.Transparency = 1000
                        until not KillauraRaid or not v.Parent or v.Humanoid.Health <= 1
                    end)
                end
            end
        end
    end
end)

spawn(function()
    while wait(0.0) do
        if CBLRaid or Fast then
            pcall(function()
                local args = {
                    [1] = 2,
                    [2] = game:GetService("Players").LocalPlayer
                }
                if game:GetService("Players").LocalPlayer.Character[Vtool]:FindFirstChild("HackerSo1TheGioi") then
                    game:GetService("Players").LocalPlayer.Character[Vtool].HackerSo1TheGioi.RemoteEvent:FireServer(unpack(args))
                elseif game:GetService("Players").LocalPlayer.Character[Vtool]:FindFirstChild("Attack") then
                    game:GetService("Players").LocalPlayer.Character[Vtool].Attack.RemoteEvent:FireServer(unpack(args))
                end
            end) 
        end
    end
end)

game.Players.LocalPlayer.Character.ChildAdded:Connect(function(tools)
    if tools:IsA("Tool") then
        if tools:FindFirstChild("HackerSo1TheGioi") or tools:FindFirstChild("Attack") or tools:FindFirstChild("HackerDepTreai") then 
            Vtool = tools.Name
        end
    end
end)
