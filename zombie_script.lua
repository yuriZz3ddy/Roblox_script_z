--Made by AdvanceFalling Team--
--Owner; YellowGreg--
--Open Source--

local CoreGui = game:GetService("StarterGui") -- Variable of StarterGui
CoreGui:SetCore("SendNotification", {
    Title = "Zombie Attack",
    Text = "Lets Kill Some Zombie",
    Duration = 8, 
})

game:GetService("StarterGui"):SetCore("SendNotification",{ 	
Title = "Made By:",  	
Text = "AdvancedFalling Team",
	Icon = "rbxthumb://type=Asset&id=9863339777&w=150&h=150",
	Duration = 5
})

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("AdvanceTech | Zombie Attack | V1")


local Tab = Window:NewTab("Main")
local a = Tab:NewSection("Main Or Combat")
local Weapons = Window:NewTab("Mod Gun")
local b = Weapons:NewSection("Guns are More OverPower")
local Visual = Window:NewTab("Visual")
local c = Visual:NewSection("See Things That nobody else can")
local Player = Window:NewTab("Players")
local d = Player:NewSection("Make Yourself Overpower")
local Credit = Window:NewTab("Credits")
local f = Credit:NewSection("Credit: AdvancedFalling Team")
local f = Credit:NewSection("YellowGreg, Wspboy12,  MMSVon")


c:NewButton("Zombie Esp", "see zombie", function()
local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
local TextLabel = Instance.new('TextLabel',BillboardGui)

BillboardGui.Name = "esp"
BillboardGui.AlwaysOnTop = true -- if its on top or not
BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
BillboardGui.StudsOffset = Vector3.new(0,0,0)

TextLabel.BackgroundTransparency = 1 -- transparency
TextLabel.Size = UDim2.new(3, 5, 3, 5) -- size
TextLabel.TextColor3 = Color3.new(1, 0, 0) -- color
TextLabel.TextScaled = false -- if the text is scaled or not
game:GetService("RunService").RenderStepped:Connect(function()
	for i,v in pairs(game.Workspace.enemies:GetDescendants()) do
		if v.Parent.Name == "HumanoidRootPart" and v.Parent:FindFirstChild("esp")==nil  then
			TextLabel.Text = v.Parent.Parent.Name
			BillboardGui:Clone().Parent = v.Parent
		end
	end
end)
end)


b:NewButton("Equip All Guns", "Idk what to put here", function()
for _,Thing in pairs(game.ReplicatedStorage.Guns:GetChildren()) do
if Thing:IsA("Tool") then
Thing.Parent = game.Players.LocalPlayer.Backpack
end
end
end)

b:NewButton("Equip All Knife", "idk", function()
for _,Thing in pairs(game.ReplicatedStorage.Knives:GetChildren()) do
if Thing:IsA("Tool") then
Thing.Parent = game.Players.LocalPlayer.Backpack
end
end
end)

b:NewButton("Btools", "It kinda a weapon but does not hurt", function()
loadstring(game:HttpGet("https://pastebin.com/raw/T0qaXjAR", true))()
end)

d:NewButton("Infinite Jump", "Jump Without Getting Stopped in Mid Air", function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)

d:NewButton("Gravity", "Yea float like in the moon", function()
game.Workspace.Gravity = 3
end)

a:NewButton("Kill Platforms", "idk ok", function()
plr = game:service'Players'.LocalPlayer
char = plr.Character
root = char.HumanoidRootPart
iszombie = false
 
platform = Instance.new('Part', workspace)
platform.Size = Vector3.new(100,0,100)
platform.Anchored = true
platform.Position = Vector3.new(555,555,555)
root.CFrame = platform.CFrame * CFrame.new(0,4,0)
 
if workspace:FindFirstChild(plr.Name) then
   iszombie = false
   warn'You are not a zombie!'
else
   iszombie = true
   warn'You are a zombie!'
end
 
wait(.5)
 
if not iszombie then
   for _, a in pairs(workspace.enemies:children()) do
       for _, b in pairs(a:children()) do
           if b:IsA'Part' then
               b.Anchored = true
               b.CFrame = root.CFrame * CFrame.new(2,0,2)
           end
       end
   end
elseif iszombie then
   for _, a in pairs(game:service'Players':GetPlayers()) do
       if a.Character then
           for _, b in pairs(a.Character:children()) do
               if b:IsA'Part' and a.Name ~= plr.Name then
                   b.Anchored = true
                   b.CFrame =  root.CFrame * CFrame.new(2,0,2)
               end
           end
       end
   end
end
end)

a:NewButton("GodMode","The local Player Will Be Invincible",function()
loadstring(game:HttpGet("https://pastebin.com/raw/bwXZ8kpa"))()
end)

a:NewButton("Silent Aim", "Not Trying To be Suspicious lol", function()
local oPlBfNRNfyJz = game.Players.LocalPlayer;local ZtYjkXDgMlxc = "Head";local dAociCiEvJMB = function()local QInaUnazu = math.huge;local J8IhabzuN = nil;for iUIhaztYUbnZ,uUhsabzyuG in next, game.Workspace:GetDescendants() do if uUhsabzyuG:FindFirstChild(ZtYjkXDgMlxc) and oPlBfNRNfyJz.Character:FindFirstChild(ZtYjkXDgMlxc) and not uUhsabzyuG:FindFirstChild('Guns') and uUhsabzyuG.Parent.Name ~= "deadenemies" then local IIhzabUtd = (uUhsabzyuG:FindFirstChild(ZtYjkXDgMlxc).Position-oPlBfNRNfyJz.Character.Head.Position).magnitude;if IIhzabUtd < QInaUnazu then QInaUnazu = IIhzabUtd;J8IhabzuN = uUhsabzyuG;end;end;end;return J8IhabzuN;end;local GtsZsUbJOuJk = oPlBfNRNfyJz:GetMouse();local tZcInsImQQfX = getrawmetatable(game);local sCtxkbklLnmy = tZcInsImQQfX.__index;setreadonly(tZcInsImQQfX,false);tZcInsImQQfX.__index = newcclosure(function(hFcjBtZBXthW,tGNxqMIMabVS)if hFcjBtZBXthW == GtsZsUbJOuJk and tostring(tGNxqMIMabVS) == "Hit" then return dAociCiEvJMB():FindFirstChild(ZtYjkXDgMlxc).CFrame;end;return sCtxkbklLnmy(hFcjBtZBXthW,tGNxqMIMabVS)end)setreadonly(tZcInsImQQfX,true)
end)

a:NewButton("Extended Hitbox", "Big Hitbox in blue", function()
_G.HeadSize = 16
local enemies = workspace.enemies
while wait() do
  for _,v in next, enemies:GetChildren() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
       v.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
     v.HumanoidRootPart.Material = "Neon"
       v.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
       v.HumanoidRootPart.Transparency = 0.7
       v.HumanoidRootPart.CanCollide = false
end)
end
  end
end
end)

a:NewButton("AutoFarm","It Will Instantly start killing zombies",function()
local groundDistance = 8
local Player = game:GetService("Players").LocalPlayer
local function getNearest()
local nearest, dist = nil, 99999
for _,v in pairs(game.Workspace.BossFolder:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
for _,v in pairs(game.Workspace.enemies:GetChildren()) do
if(v:FindFirstChild("Head")~=nil)then
local m =(Player.Character.Head.Position-v.Head.Position).magnitude
if(m<dist)then
dist = m
nearest = v
end
end
end
return nearest
end
_G.farm2 = true
Player.Chatted:Connect(function(m)
if(m==";autofarm false")then
_G.farm2 = false
elseif(m==";autofarm true")then
_G.farm2 = true
end
end)
_G.globalTarget = nil
game:GetService("RunService").RenderStepped:Connect(function()
if(_G.farm2==true)then
local target = getNearest()
if(target~=nil)then
game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, target.Head.Position)
Player.Character.HumanoidRootPart.CFrame = (target.HumanoidRootPart.CFrame * CFrame.new(0, groundDistance, 9))
_G.globalTarget = target
end
end
end)
spawn(function()
while wait() do
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
game.Players.LocalPlayer.Character.Torso.Velocity = Vector3.new(0,0,0)
end
end)
while wait() do
if(_G.farm2==true and _G.globalTarget~=nil and _G.globalTarget:FindFirstChild("Head") and Player.Character:FindFirstChildOfClass("Tool"))then
local target = _G.globalTarget
game.ReplicatedStorage.Gun:FireServer({["Normal"] = Vector3.new(0, 0, 0), ["Direction"] = target.Head.Position, ["Name"] = Player.Character:FindFirstChildOfClass("Tool").Name, ["Hit"] = target.Head, ["Origin"] = target.Head.Position, ["Pos"] = target.Head.Position,})
wait()
end
end
end)

d:NewTextBox("Walkspeed","Changes the walkspeed", function(e)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=e 
end)

d:NewTextBox("Jumppower","Changes the jumppower", function(e)
game.Players.LocalPlayer.Character.Humanoid.JumpPower=e 
end)

f:NewKeybind("Toggle", "Open", Enum.KeyCode.LeftControl, function()
    Library:ToggleUI()
end)

f:NewButton("Copy Discord link", "Discord", function()
setclipboard("https://discord.gg/MzeSqBBpCh")
end)

--Propertie--
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local Frame2 = Instance.new("Frame")
local TextButton2 = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0,255,0)
Frame.Position = UDim2.new(0, 0, 0.40, 0)
Frame.Size = UDim2.new(0, 90, 0, 30)
Frame.Active = true
Frame.Draggable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0,255,0)
TextButton.Size = UDim2.new(0, 90, 0, 30)
TextButton.Font = Enum.Font.GothamBold
TextButton.Text = "OPEN"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 22.000
TextButton.MouseButton1Click:connect(function()
Frame.Visible = false
Frame2.Visible = true    
local vim = game:service("VirtualInputManager")
vim:SendKeyEvent(true, "LeftControl", false, game)
end)

Frame2.Parent = ScreenGui
Frame2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Frame2.Position = UDim2.new(0, 0, 0.40, 0)
Frame2.Size = UDim2.new(0, 90, 0, 30)
Frame2.Active = true
Frame2.Draggable = true

TextButton2.Parent = Frame2
TextButton2.BackgroundColor3 = Color3.fromRGB(255,0,0)
TextButton2.Size = UDim2.new(0, 90, 0, 30)
TextButton2.Font = Enum.Font.GothamBold
TextButton2.Text = "CLOSE"
TextButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton2.TextSize = 22.000
TextButton2.MouseButton1Click:connect(function()
    Frame2.Visible = false
    Frame.Visible = true
local vim = game:service("VirtualInputManager")
vim:SendKeyEvent(true, "LeftControl", false, game)
end)





Frame.Parent.Active = true
Frame.Parent.Draggable = true


---end--
