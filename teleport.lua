local tool = script.Parent
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

-- Шилжих функцийг тодорхойлох
local function onActivated()
	-- Хулганы зааж байгаа байршлыг авах
	local targetPosition = mouse.Hit.p
	
	-- Тоглогчийн дүрийг (Character) олж авах
	local character = player.Character
	if character and character:FindFirstChild("HumanoidRootPart") then
		
		-- Шилжүүлэхдээ тоглогчийг газрын гадаргаас жаахан дээр (3 нэгж) аваачна
		-- Ингэснээр газар доогуур орохоос сэргийлнэ
		character.HumanoidRootPart.CFrame = CFrame.new(targetPosition + Vector3.new(0, 3, 0))
		
		print("Амжилттай шилжлээ!")
	end
end

-- Tool-ийг барьж байгаад хулганаар дарах үед функцийг ажиллуулна
tool.Activated:Connect(onActivated)
