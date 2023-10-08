-- Script Made By: Urbigmumz
-- This is supposed to be in a LocalScript (or is it regular script?)

script.Parent = game.ReplicatedStorage

local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

local LocalPlayersOnlineFriends = LocalPlayer.GetFriendsOnline(LocalPlayer, 50)

local GUI = Instance.new("ScreenGUI", game.StarterGui)
local GUIMainFrame = Instance.new("Frame", GUI)

local isCustomGravity = false
local CustomGravityValue = workspace.Gravity
local OriginalGravity = workspace.Gravity

GUI.Enabled = true
GUI.Parent = game.CoreGui

GUIMainFrame.Name = "MainGuiFrame"
GUIMainFrame.Size = UDim2.new(0.5, 200, 0.5, 200)
GUIMainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GUIMainFrame.Position = UDim2.new(0.5, 200, 0.5, 200)
GUIMainFrame.Visible = true

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
