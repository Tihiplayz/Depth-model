local HardCore = {
Title = "FIRST PAIN", -- Made by MuhammadGames and Volta
Desc = "Join a Match of HardCore For the First Time enjoy the suffering.",
Reason = "You executed the HardCore script.",
Image = "rbxassetid://73434806082733",
id = 1,
}

local DepthW = {
Title = "Finally Free",
Desc = "Ambush Copycat Detected",
Reason = "Survive Depth",
Image = "rbxassetid://11278229112",
id = 2,
}

local DepthDeath = {
Title = "The Entity Is Still Freezing",
Desc = "It's So Cold",
Reason = "Die to Depth",
Image = "rbxassetid://11278229112",
id = 3,
}

local TraumaW = {
Title = "Traumatized",
Desc = "That Was Traumatic",
Reason = "Encounter Trauma",
Image = "rbxassetid://124051267404456",
id = 4,
}

local A200W = {
Title = "Lost Entity",
Desc = "Isnt This Entity From The Rooms?",
Reason = "Encounter The Rare Entity Called A-200",
Image = "rbxassetid://123303744222601",
id = 5,
}

local VHSSansW ={
Title = "Beyond Corruption",
Desc = "He Looks Corrupted, Doesn't He?",
Reason = "Encounter VHS Sans",
Image = "rbxassetid://140419398341037",
id = 6,
}
print("Checkpoint 1: Variables loaded")

-- ───

-- ───

-- ───

-- loadstring(game:HttpGet("https://raw.githubusercontent.com/MuhXd/DoorSuff/main/Whitelist/NewKeySystem.lua"))()

caa = 0
tween = game:GetService("TweenService")
local TestMultplayer = false
if game:GetService("ReplicatedStorage"):FindFirstChild("Extacuted") then
warn("You have Already Loaded")

return false
end
local Test = Instance.new("Part")
Test.Name = "Extacuted"
Test.Parent = game:GetService("ReplicatedStorage")
Test = 1

print("Checkpoint 2: Initialization reached")

loadstring(game:HttpGet("https://raw.githubusercontent.com/Junbbinopro/Sprint-stamina-v3/refs/heads/main/Sprint"))()

local SelfModules = {
Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))(),
}

-- ───

-- ───

loadstring(game:HttpGet("https://raw.githubusercontent.com/firerygames055/Doors-hard-mode-Fixed/refs/heads/main/Old%20seek%20credits%20to%20StovenChaos"))()

local function getGitSoundId(GithubSoundPath: string, AssetName: string): Sound
local Url = GithubSoundPath

if not isfile(AssetName..".mp3") then
 writefile(AssetName..".mp3", game:HttpGet(Url))
 end

local Sound = Instance.new("Sound")
 Sound.SoundId = getcustomasset(AssetName..".mp3", true)
 return Sound

end

local CustomMusic = getGitSoundId("https://github.com/nervehammer1/throwawaystuff/raw/refs/heads/main/NightmareAmbient.mp3", "NightmareModeAmbient")
CustomMusic.Parent = game.Workspace
CustomMusic.Looped = true
CustomMusic.Volume = 2
CustomMusic:Play()

task.spawn(function()
task.wait()
if game:GetService("Lighting"):FindFirstChild("Atmosphere") then
game.Lighting.Atmosphere:Destroy()
end
game.Lighting.FogColor = Color3.new(0.133333, 0.149020, 0.239216)
game.Lighting.FogEnd = 100
game.Lighting.FogStart = 0
end)

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Floor 2 theme recreate by localplayer loaded",true)
task.spawn(function()
local rooms = workspace:WaitForChild("CurrentRooms")

local function inspectRoom(room)
task.wait(1)

for _, obj in ipairs(room:GetDescendants()) do
if obj:IsA("TextLabel") or obj:IsA("TextButton") then
if string.match(obj.Text, "^0*%d+$") then
print("hi")
end
end
end
end

for _, room in ipairs(rooms:GetChildren()) do
inspectRoom(room)
end

rooms.ChildAdded:Connect(inspectRoom)
end)
-- Change physical door numbers from 0001 to 0101
task.spawn(function()
local rooms = workspace:WaitForChild("CurrentRooms")
local processed = {}

local function changeDoorNumber(room)
task.wait(1.5)

for _, obj in ipairs(room:GetDescendants()) do
if (obj:IsA("TextLabel") or obj:IsA("TextButton"))
and obj.Text:match("^%d%d%d%d$") then

local sign = obj:FindFirstAncestor("Sign")
if sign and not processed[obj] then
local number = tonumber(obj.Text)

if number then
obj.Text = string.format("%04d", number + 100)
processed[obj] = true
end
end
end
end
end

for _, room in ipairs(rooms:GetChildren()) do
changeDoorNumber(room)
end

rooms.ChildAdded:Connect(changeDoorNumber)
end)
task.spawn(function()
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local latestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom

while task.wait(0.25) do
local mainUI = playerGui:FindFirstChild("MainUI")

if mainUI then
local stats = mainUI:FindFirstChild("Statistics")

if stats then
local reached = stats:FindFirstChild("RoomReached")

if reached and reached:IsA("TextLabel") then
reached.Text = "Reached Door " .. (latestRoom.Value + 100)
end
end
end
end
end)

function convert(Room)
task.wait(1.5)
if Room:IsA("Model") then
if tonumber(Room.Name) ~= nil then
for _, v in pairs(Room:GetDescendants()) do

-- Convert wooden door parts
if v:IsA("BasePart") then
if v.Material == Enum.Material.Wood or
v.Material == Enum.Material.WoodPlanks then

v.Color = Color3.fromRGB(60, 60, 60)
v.Material = Enum.Material.Limestone
end
end

-- Darken the main door
if v.Name == "Door" and v:IsA("MeshPart") then
v.Color = Color3.fromRGB(70, 70, 70)
v.Material = Enum.Material.Slate
end
end
end
end
end

game.Workspace.CurrentRooms.ChildAdded:connect(convert)

convert(game.Workspace.CurrentRooms:GetChildren()[1])
convert(game.Workspace.CurrentRooms:GetChildren()[2])

-- Guiding Light Candle
task.spawn(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Junbbinopro/Guiding-light-candle/refs/heads/main/Candle"))()
end)

local CustomAchievementsURL =
"https://raw.githubusercontent.com/RegularVynixu/DOORS-Custom-Achievements/main/init.luau"

local CustomAchievements = loadstring(game:HttpGet(CustomAchievementsURL))()

function AchievementsGet(Achievement)
task.wait(0)

local success, err = pcall(function()
-- Load a fresh copy when granting
local FreshAchievements = loadstring(
game:HttpGet(CustomAchievementsURL)
)()

FreshAchievements:Grant({
Identifier = "HardCore_" .. tostring(Achievement.id),
Title = Achievement.Title,
Desc = Achievement.Desc,
Reason = Achievement.Reason,
Image = Achievement.Image
}, {
CheckOwned = true,
Remember = true
})
end)

if not success then
warn("Achievement error:", err)
end
end

CustomAchievements:Revoke("HardCore_1")

print("Checkpoint 4A: Achievement setup reached")

AchievementsGet(HardCore)

CustomAchievements:Revoke("HardCore_2")
CustomAchievements:Revoke("HardCore_3")
CustomAchievements:Revoke("HardCore_4")
CustomAchievements:Revoke("HardCore_5")
CustomAchievements:Revoke("HardCore_6")
print("Checkpoint 4B: Achievement setup reached")

--[[

-- ───

Start of real Code!
DON'T SHOW ABOVE!
............. . .
. . . . .
. . . . .
. . . . .
. . . . .
. . . . .
. . . . .
. . . .........
--]]

if game:GetService("ReplicatedStorage"):FindFirstChild("Guis") then

else
Visable = Instance.new("Folder")
Visable.Name = "Guis"
Visable.Parent = game.ReplicatedStorage

end
function Gui(Name,Amount1,TextSent)
if game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Statistics.Frame:FindFirstChild("!"..Name.."!") then
game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Statistics.Frame["!"..Name.."!"]:Destroy()
end

Visable = Instance.new("BoolValue")
Visable.Value = true
Visable.Name = Name
Visable.Parent = game.ReplicatedStorage.Guis

game.Players.LocalPlayer.PlayerGui.MainUI.Statistics.LocksOpened.Visible = true
LocksOpened = game.Players.LocalPlayer.PlayerGui.MainUI.Statistics.LocksOpened:Clone()
game.Players.LocalPlayer.PlayerGui.MainUI.Statistics.LocksOpened.Visible = false
LocksOpened.Parent = game.Players.LocalPlayer.PlayerGui.MainUI.Statistics.Frame

LocksOpened.Visible = game.ReplicatedStorage.Guis:FindFirstChild(Name).Value

local Grad = game.Players.LocalPlayer.PlayerGui.MainUI.Statistics.Frame["Leftover Gold"].UICorner:Clone()
Grad.Parent = LocksOpened
Grad = game.Players.LocalPlayer.PlayerGui.MainUI.Statistics.Frame["Leftover Gold"].UIGradient:Clone()
Grad.Parent = LocksOpened
Grad = game.Players.LocalPlayer.PlayerGui.MainUI.Statistics.Frame["Leftover Gold"].Amount:Clone()
Grad.Parent = LocksOpened
Grad.Text = Amount1
Grad.Position = Grad.Position - UDim2.new(0.035,0,0,0)
Grad = game.Players.LocalPlayer.PlayerGui.MainUI.Statistics.Frame["Leftover Gold"].Icon:Clone()
Grad.Parent = LocksOpened
Grad.Position = Grad.Position - UDim2.new(0.035,0,0,0)

LocksOpened.CloseButton.Position = LocksOpened.CloseButton.Position - UDim2.new(0.021,0,0,0)
LocksOpened.CloseButton.ImageColor3 = Color3.new(0.0313725, 0.854902, 1)
LocksOpened.TextColor3 = Color3.new(0.0313725, 0.854902, 1)
LocksOpened.TextScaled = false
LocksOpened.Name = "!"..Name.."!"
LocksOpened.TextSize = game.Players.LocalPlayer.PlayerGui.MainUI.Statistics.Frame["Leftover Gold"].TextSize + 16
LocksOpened.Size = LocksOpened.Parent["Leftover Gold"].Size
LocksOpened.BackgroundColor3 = Color3.new(0.0196078, 0.552941, 0.647059)
LocksOpened.BackgroundTransparency = 0.5

LocksOpened.Text = TextSent

game.ReplicatedStorage.Guis:FindFirstChild(Name).changed:connect(function()

LocksOpened.Visible = game.ReplicatedStorage.Guis:FindFirstChild(Name).Value
end)
end
print("Checkpoint 5: GUI section reached")

print("Test1")
local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/Tihiplayz/Depth-model/main/Spawnersourcebydripcapybarafixed_261120_025554.lua"))()
print("Spawner Loaded!")
local Main_Game = require(
game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game
)
local SoundService = game:GetService("SoundService")
local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom

local DoorOneMusic = Instance.new("Sound")
DoorOneMusic.Name = "DoorOneMusic"
DoorOneMusic.SoundId = "rbxassetid://7132953277"
DoorOneMusic.PlaybackSpeed = 0.8
DoorOneMusic.Volume = 0.5
DoorOneMusic.Looped = false
DoorOneMusic.Parent = SoundService

local musicPlayed = false

local function PlayDoorOneMusic()
if musicPlayed then return end
musicPlayed = true
DoorOneMusic:Play()
end

if LatestRoom.Value >= 1 then
PlayDoorOneMusic()
else
LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()
if LatestRoom.Value == 1 then
PlayDoorOneMusic()
end
end)
end
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

local PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create GUI
local TitleGui = Instance.new("ScreenGui")
TitleGui.Name = "HardModeTitle"
TitleGui.IgnoreGuiInset = true
TitleGui.ResetOnSpawn = false
TitleGui.Parent = PlayerGui

-- Create image
local TitleImage = Instance.new("ImageLabel")
TitleImage.Name = "TitleImage"
TitleImage.BackgroundTransparency = 1
TitleImage.AnchorPoint = Vector2.new(0.5, 0.5)
TitleImage.Position = UDim2.new(0.5, 0, 0.18, 0)
TitleImage.Size = UDim2.new(0.425, 0, 0.2, 0)
TitleImage.Image = "rbxassetid://111033498475574"
TitleImage.ImageTransparency = 1
TitleImage.ScaleType = Enum.ScaleType.Fit
TitleImage.Parent = TitleGui

local function ShowHardModeTitle()
TitleImage.ImageTransparency = 1

-- Fade in
local FadeIn = TweenService:Create(
TitleImage,
TweenInfo.new(1.2),
{ImageTransparency = 0}
)

FadeIn:Play()
FadeIn.Completed:Wait()

-- Stay visible
task.wait(4)

-- Fade out
local FadeOut = TweenService:Create(
TitleImage,
TweenInfo.new(1.5),
{ImageTransparency = 1}
)

FadeOut:Play()
FadeOut.Completed:Wait()
end

-- Trigger when Door 1 opens
if LatestRoom.Value >= 1 then
task.spawn(ShowHardModeTitle)
else
LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()
if LatestRoom.Value == 1 then
task.spawn(ShowHardModeTitle)
end
end)
end
local function WaitForSeekToEnd()
while Main_Game.chase == true or workspace:FindFirstChild("SeekMoving") do
task.wait(1)
end
end
local function IsInLibrary()
local room = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
return room == 50 or room == 51
end

local function WaitForSafeRoom()
while IsInLibrary() do
task.wait(1)
end
end

-- Run the created entity
local Message = function(Message,Enable,N)
local msg = Instance.new("Message")
 msg.Parent = game.Workspace
 msg.Text = Message
if Enable ~= true then
task.wait(0.1)
msg:Destroy()
end
end

-- Message("Thank you For Loading MultplayerBeta 1.2")

PlayersIngame = #game:GetService("Players"):GetPlayers() -- Gets All Players
if TestMultplayer == true then
PlayersIngame = 1000 -- TestMultplayer
end

if PlayersIngame > 1 then -- if more then one then waits for link
if game:GetService("ReplicatedStorage").GameData.LatestRoom.Value > 0 then
print("Loaded After door 1! Please wait for everyone to die")
game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = "Load Before Door 1",
Color = Color3.fromRGB(255, 0, 0),
Font = Enum.Font.SourceSansBold,
TextSize = 18,
})

firesignal(game.ReplicatedStorage.Bricks.DeathHint.OnClientEvent, {"You didn't Load it Before Door 1!","Please Wait for the next round"})
game.ReplicatedStorage.GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Not Loading Before Door 1"
game.Players.LocalPlayer.Character.Humanoid.Health = -100
return false
end

game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = "Doors Hard Mode ON! By MuhammadGames (MuhammadGames#0017) and Volta (volta#2161)",
Color = Color3.fromRGB(255, 0, 0),
Font = Enum.Font.SourceSansBold,
TextSize = 18,
})

Gui("HardMode","+1000","Hard Mode (Doesn't add Nobs)")

print("Loaded, Wating to Link to Multplayer") -- waiting to link
c=1

repeat
task.wait()
until game:GetService("ReplicatedStorage").GameData.LatestRoom.Value > 0

-- FIRST PAIN INTRO (Multiplayer + Singleplayer)

print("Linked to Clients")
game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = "Linked To Clients",
Color = Color3.fromRGB(0, 255, 0),
Font = Enum.Font.SourceSansBold,
TextSize = 18,
})

Singleplayer = false -- Runs more Then 1 Player Code
else
print("Loaded in Singleplayer") -- loaded in 1 player
repeat task.wait()

until game:GetService("ReplicatedStorage").GameData.LatestRoom.Value > 0
print("Started")
Singleplayer = true -- Runs One player Code
end
local Main_Game = require(
game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game
)
pcall(function()
 game:GetService("TextChatService").TextChannels.RBXGeneral:DisplaySystemMessage(
'<font color="#00FF00">Linked To Clients!</font>'
)
end)
Main_Game.caption("DOORS HARD MODE ON!")
task.wait(3)

Main_Game.caption("Original By MuhammadGames and Volta")
task.wait(3)

Main_Game.caption("Remaster by Tihiplayz")
task.wait(3)

Main_Game.caption("Sprint By Junbbinopro")
task.wait(3)

local Credits = {
"Have fun! Even tho you wont",
"Welcome to HELL.",
"Prepare yourself.",
"Good luck surviving.",
"I got the captions idea from Hardcore mode!"
}

Main_Game.caption(Credits[math.random(#Credits)])
Testa = 10
getgenv().death = false
Be=false
Many=1
JobId = game:GetService("ReplicatedStorage").GameData.GameStarted.Value
Lowest = string.len(game:GetService("ReplicatedStorage").GameData.GameStarted.Value)
Lowest = tonumber(Lowest)
Stop=Lowest
RanWait2=""
local DepthKilledPlayer = false
local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom
function DepthSpawn()
DepthKilledPlayer = false
print("Depth loop started")
while true do task.wait()
local success, err = pcall(function()
Be=true
print("Depth Loop Running")

LatestRoom:GetPropertyChangedSignal("Value"):Wait()
if LatestRoom.Value < 5 then
return
end
if math.random(1, 100) > 20 then
return
end
WaitForSeekToEnd()
WaitForSafeRoom()

-- Create entity
local entityTable = Spawner.createEntity({
CustomName = "Depth", -- Custom name of your entity
Model  = "https://raw.githubusercontent.com/Tihiplayz/Depth-model/main/Depth.rbxm", -- Can be GitHub file or rbxassetid
Speed = 275, -- Percentage, 100 = default Rush speed
DelayTime = 3.5, -- Time before starting cycles (seconds)
HeightOffset = 0,
CanKill = true,
KillRange = 50,
BackwardsMovement = false,
BreakLights = true,
FlickerLights = {
true, -- Enabled/Disabled
1, -- Time (seconds)
},
Cycles = {
Min = 2,
Max = 2,
WaitTime = 1,
},
CamShake = {
true, -- Enabled/Disabled
{7, 40, 0.1, 1}, -- Shake values (don't change if you don't know)
100, -- Shake start distance (from Entity to you)
},
Jumpscare = {
true, -- Enabled/Disabled
{
Image1 = "rbxassetid://11278229112", -- Image1 url
Image2 = "rbxassetid://11278229112", -- Image2 url
Shake = true,
Sound1 = {
5263560566, -- SoundId
{ Volume = 0.5 }, -- Sound properties
},
Sound2 = {
5263560566, -- SoundId
{ Volume = 0.5 }, -- Sound properties
},
Flashing = {
true, -- Enabled/Disabled
Color3.fromRGB(0, 255, 255), -- Color
},
Tease = {
false, -- Enabled/Disabled
Min = 0,
Max = 0,
},
},
},
CustomDialog = {"You died to- Wait hold on. Depth?", "Isnt Depth from super hard mode?", "Anyway, Depth is faster than Ambush.", "Use what You learned from Rush and Ambush!"}, -- Custom death message
})

-----[[ Debug -=- Advanced ]]-----

entityTable.Debug.OnEntitySpawned = function()
print("Entity has spawned:", entityTable)
end

entityTable.Debug.OnEntityDespawned = function()
print("Entity has despawned:", entityTable)
if not DepthKilledPlayer then
AchievementsGet(DepthW)
end
end

entityTable.Debug.OnEntityStartMoving = function()
print("Entity has started moving:", entityTable)
end

entityTable.Debug.OnEntityFinishedRebound = function()
print("Entity has finished rebound:", entityTable)
end

entityTable.Debug.OnEntityEnteredRoom = function(room)
print("Entity:", entityTable, "has entered room:", room)
end

entityTable.Debug.OnLookAtEntity = function()
print("Player has looked at entity:", entityTable)
end

entityTable.Debug.OnDeath = function()
warn("Player has died.")
DepthKilledPlayer = true
AchievementsGet(DepthDeath)

end

-- Run the created entity
print("Depth CanKill:", entityTable.CanKill)
print("Depth KillRange:", entityTable.KillRange)
print("Starting Depth...")
Spawner.runEntity(entityTable)
end)
if not success then
warn("Depth spawning error:", err)
end

end
end

Stop=string.len(JobId)
caa=0
function TraumaSpawn()

while true do task.wait()
local success, err = pcall(function()
LatestRoom:GetPropertyChangedSignal("Value"):Wait()
if LatestRoom.Value < 10 then
return
end
if math.random(1, 1000) > 125 then
return
end
WaitForSeekToEnd()
WaitForSafeRoom()

-- Create entity
local entityTable = Spawner.createEntity({
CustomName = "Trauma", -- Custom name of your entity
Model = "rbxassetid://15421365278", -- Can be GitHub file or rbxassetid
Speed = 600, -- Percentage, 100 = default Rush speed
DelayTime = 7, -- Time before starting cycles (seconds)
HeightOffset = 0,
CanKill = true,
KillRange = 80,
BackwardsMovement = true,
BreakLights = true,
FlickerLights = {
true, -- Enabled/Disabled
6, -- Time (seconds)
},
Cycles = {
Min = 0,
Max = 0,
WaitTime = 2,
},
CamShake = {
true, -- Enabled/Disabled
{10.5, 60, 0.1, 1}, -- Shake values (don't change if you don't know)
100, -- Shake start distance (from Entity to you)
},
Jumpscare = {
true, -- Enabled/Disabled
{
Image1 = "", -- Image1 url
Image2 = "", -- Image2 url
Shake = true,
Sound1 = {
10483790459, -- SoundId
{ Volume = 0.5 }, -- Sound properties
},
Sound2 = {
18459521002, -- SoundId
{ Volume = 0.5 }, -- Sound properties
},
Flashing = {
true, -- Enabled/Disabled
Color3.fromRGB(255, 0, 0), -- Color
},
Tease = {
false, -- Enabled/Disabled
Min = 1,
Max = 3,
},
},
},
CustomDialog = {"You died to Trauma.", "Trauma is like Rush but it comes from the next door.", "If You cannot find a closet, just accept your fate.", "Good luck!"}, -- Custom death message
})

-----[[ Debug -=- Advanced ]]-----
entityTable.Debug.OnEntitySpawned = function()
print("Entity has spawned:", entityTable)
end

entityTable.Debug.OnEntityDespawned = function()
print("Entity has despawned:", entityTable)
AchievementsGet(TraumaW)
end

entityTable.Debug.OnEntityStartMoving = function()
print("Entity has started moving:", entityTable)
end

entityTable.Debug.OnEntityFinishedRebound = function()
print("Entity has finished rebound:", entityTable)
end

entityTable.Debug.OnEntityEnteredRoom = function(room)
print("Entity:", entityTable, "has entered room:", room)
end

entityTable.Debug.OnLookAtEntity = function()
warn("TRAUMA: Player detected!")
end

entityTable.Debug.OnDeath = function()
warn("Player has died.")

end

-- Run the created entity
Spawner.runEntity(entityTable)
end)
if not success then
warn("Spawner error:", err)
end

end
end
function VhsSansSpawn()
while true do
local success, err = pcall(function()
LatestRoom:GetPropertyChangedSignal("Value"):Wait()
if LatestRoom.Value < 25 then
return
end
if math.random(1, 100) > 5 then
return
end
WaitForSeekToEnd()
WaitForSafeRoom()

-- Create entity

-- Create entity
local entityTable = Spawner.createEntity({
CustomName = "VHS Sans", -- Custom name of your entity
Model = "rbxassetid://11508694248", -- Can be GitHub file or rbxassetid
Speed = 21, -- Percentage, 100 = default Rush speed
DelayTime = 5, -- Time before starting cycles (seconds)
HeightOffset = 0,
CanKill = true,
KillRange = 75,
BackwardsMovement = false,
BreakLights = true,
FlickerLights = {
true, -- Enabled/Disabled
1, -- Time (seconds)
},
Cycles = {
Min = 0,
Max = 0,
WaitTime = 2,
},
CamShake = {
true, -- Enabled/Disabled
{10.5, 60, 0.1, 1}, -- Shake values (don't change if you don't know)
100, -- Shake start distance (from Entity to you)
},
Jumpscare = {
false, -- Enabled/Disabled
{
Image1 = "", -- Image1 url
Image2 = "", -- Image2 url
Shake = true,
Sound1 = {
10483790459, -- SoundId
{ Volume = 0.5 }, -- Sound properties
},
Sound2 = {
18459521002, -- SoundId
{ Volume = 0.5 }, -- Sound properties
},
Flashing = {
true, -- Enabled/Disabled
Color3.fromRGB(255, 0, 0), -- Color
},
Tease = {
false, -- Enabled/Disabled
Min = 1,
Max = 3,
},
},
},
CustomDialog = {"You died to VHS Sans.", "VHS Sans arrives really slow.", "You will have time to hide fron him when you hear him", "Good Luck!"}, -- Custom death message
})

-----[[ Debug -=- Advanced ]]-----
entityTable.Debug.OnEntitySpawned = function()
print("Entity has spawned:", entityTable)
end

entityTable.Debug.OnEntityDespawned = function()
print("Entity has despawned:", entityTable)
AchievementsGet(VHSSansW)
end

entityTable.Debug.OnEntityStartMoving = function()
print("Entity has started moving:", entityTable)
end

entityTable.Debug.OnEntityFinishedRebound = function()
print("Entity has finished rebound:", entityTable)
end

entityTable.Debug.OnEntityEnteredRoom = function(room)
print("Entity:", entityTable, "has entered room:", room)
end

entityTable.Debug.OnLookAtEntity = function()
print("Player has looked at entity:", entityTable)
end

entityTable.Debug.OnDeath = function()
warn("Player has died.")
end

-- Run the created entity
Spawner.runEntity(entityTable)
end)
if not success then
warn("Spawner error:", err)
end
end
end
Stop=string.len(JobId)
caa=0
local A200Triggered = false
function A200Spawn()
local success, err = pcall(function()
wait()
WaitForSeekToEnd()
WaitForSafeRoom()

-- Create entity
local entityTable = Spawner.createEntity({
CustomName = "A200", -- Custom name of your entity
Model = "https://raw.githubusercontent.com/Tihiplayz/Depth-model/main/A-200.rbxm", -- Can be GitHub file or rbxassetid
Speed = 700, -- Percentage, 100 = default Rush speed
DelayTime = 5, -- Time before starting cycles (seconds)
HeightOffset = 0,
CanKill = true,
KillRange = 20,
BackwardsMovement = true,
BreakLights = true,
FlickerLights = {
true, -- Enabled/Disabled
5, -- Time (seconds)
},
Cycles = {
Min = 4,
Max = 4,
WaitTime = 3,
},
CamShake = {
true, -- Enabled/Disabled
{10.5, 60, 0.1, 1}, -- Shake values (don't change if you don't know)
100, -- Shake start distance (from Entity to you)
},
Jumpscare = {
true, -- Enabled/Disabled
{
Image1 = "", -- Image1 url
Image2 = "", -- Image2 url
Shake = true,
Sound1 = {
10483790459, -- SoundId
{ Volume = 0.5 }, -- Sound properties
},
Sound2 = {
18459521002, -- SoundId
{ Volume = 0.5 }, -- Sound properties
},
Flashing = {
true, -- Enabled/Disabled
Color3.fromRGB(255, 255, 255), -- Color
},
Tease = {
false, -- Enabled/Disabled
Min = 1,
Max = 3,
},
},
},
CustomDialog = {"You died to A200", "A200 is extremely fast", "Hide when you hear it", "Good luck!"}, -- Custom death message
})

-----[[ Debug -=- Advanced ]]-----
entityTable.Debug.OnEntitySpawned = function()
print("Entity has spawned:", entityTable)
end

entityTable.Debug.OnEntityDespawned = function()
print("A200 has despawned:", entityTable)
AchievementsGet(A200W)
A200Triggered = false
end

entityTable.Debug.OnEntityStartMoving = function()
print("Entity has started moving:", entityTable)
end

entityTable.Debug.OnEntityFinishedRebound = function()
print("Entity has finished rebound:", entityTable)
end

entityTable.Debug.OnEntityEnteredRoom = function(room)
print("Entity:", entityTable, "has entered room:", room)
end

entityTable.Debug.OnLookAtEntity = function()
warn("A200: Player detected!")
end

entityTable.Debug.OnDeath = function()
warn("Player has died.")
end

-- Run the created entity
Spawner.runEntity(entityTable)
end)
if not success then
warn("Spawner error:", err)
A200Triggered = false
end

end

LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()

local CurrentDoor = LatestRoom.Value

if CurrentDoor < 51 then
return
end

if A200Triggered then
return
end

local SpawnChance = 2.5

if CurrentDoor >= 90 then
SpawnChance = 20
end

if math.random(1, 1000) > SpawnChance * 10 then
return
end

A200Triggered = true

print("A-200 selected! Spawn chance:", SpawnChance .. "%")
task.spawn(A200Spawn)

end)
task.spawn(DepthSpawn)
task.spawn(TraumaSpawn)
task.spawn(VhsSansSpawn)

print("All entity spawners started!")