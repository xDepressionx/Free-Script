_G.AutoObservation_Rejoin = true

if not game:IsLoaded() then
    repeat
        wait()
    until game:IsLoaded()
end

for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
    v.Function()
end

wait(1)

function TP(P1,P2,speed)
	defaultspeed = 200 or speed
	Distance = (P1 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 500 then
        Speed = 400
	elseif Distance < 1000 then
		Speed = 350
	elseif Distance >= 1000 then
		Speed = defaultspeed
	end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P2}
    ):Play()
end

local placeId = game.PlaceId
if placeId == 2753915549 then
    First_Sea = true
elseif placeId == 4442272183 then
    Second_Sea = true
elseif placeId == 7449423635 then
	Third_Sea = true
end

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.AutoObservation_Rejoin then
                if not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)
                    wait(.3)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"E",false,game)
                end
            end
        end
    end)
end)

spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoObservation_Rejoin then
				if First_Sea then
					if game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
						if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat wait(.1)
								TP(game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.Position,game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,0,-5))
							until _G.AutoObservation_Rejoin == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
						else
							repeat wait(.1)
								TP(game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.Position,game.Workspace.Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,25,10))
							until _G.AutoObservation_Rejoin == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						TP(Vector3.new(5533.29785, 88.1079102, 4852.3916),CFrame.new(5533.29785, 88.1079102, 4852.3916))
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
					end
				elseif Second_Sea then
					if game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") then
						if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat wait(.1)
								TP(game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]").HumanoidRootPart.Position,game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]").HumanoidRootPart.CFrame * CFrame.new(0,0,-5))
							until _G.AutoObservation_Rejoin == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
						else
							repeat wait(.1)
								TP(game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]").HumanoidRootPart.Position,game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]").HumanoidRootPart.CFrame * CFrame.new(0,25,10))
							until _G.AutoObservation_Rejoin == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						TP(Vector3.new(5567.3129882813, 262.92590332031, -6780.9545898438),CFrame.new(5567.3129882813, 262.92590332031, -6780.9545898438))
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
					end
				elseif Third_Sea then
					if game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]") then
						if game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							repeat wait(.1)
								TP(game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.Position,game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame * CFrame.new(0,0,-5))
							until _G.AutoObservation_Rejoin == false or not game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
							game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
						else
							repeat wait(.1)
								TP(game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.Position,game.Workspace.Enemies:FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame * CFrame.new(0,25,10))
							until _G.AutoObservation_Rejoin == false or game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
						end
					else
						TP(Vector3.new(2445.59204, 273.184479, -7087.646),CFrame.new(2445.59204, 273.184479, -7087.646))
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
					end
				end
			end
		end)
	end
end)

game:GetService("RunService").Heartbeat:Connect(function()
    if _G.AutoObservation_Rejoin then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
end)
