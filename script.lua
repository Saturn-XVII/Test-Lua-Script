-- Script Made By: Urbigmumz

local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

local LocalPlayersOnlineFriends = LocalPlayer.GetFriendsOnline(LocalPlayer, 50)

local GUI = Instance.new("ScreenGui")
local GUIMainFrame = Instance.new("Frame")

local isCustomGravity = false
local CustomGravityValue = workspace.Gravity
local OriginalGravity = workspace.Gravity

GUI.Name = "GUI"
GUI.Enabled = true
--GUI.Parent = game.CoreGui
GUI.Parent = LocalPlayer:WaitForChild("PlayerGui")
GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

GUIMainFrame.Name = "MainGuiFrame"
GUIMainFrame.Parent = GUI
GUIMainFrame.BackgroundColor3 = Color3.fromRGB(30, 130, 210)
GUIMainFrame.BorderColor3 = Color3.fromRGB(10, 20, 40)
GUIMainFrame.BorderSizePixel = 1
GUIMainFrame.Position = UDim2.new(0.306954443, 0, 0.255627006, 0)
GUIMainFrame.Size = UDim2.new(0, 366, 0, 269)

if isCustomGravity then
	workspace.Gravity = CustomGravityValue
else
	workspace.Gravity = OriginalGravity
end

UIS.InputBegan:Connect(function(input, GPE)
	if input.KeyCode == Enum.KeyCode.Y and not GUI.Enabled then
		GUI.Enabled = true
	elseif input.KeyCode == Enum.KeyCode.Y and GUI.Enabled then
		GUI.Enabled = false
	end
end)

-- Urbigmumz was here 
