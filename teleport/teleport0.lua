-- Зөвхөн bumbaa723 аккаунт дээр ажиллах хамгаалалт
local player = game.Players.LocalPlayer
if player.Name ~= "bumbaa723" then 
    warn("Хандах эрхгүй тоглогч!")
    return 
end

-- Хуучин Tool байвал устгах (давхардахаас сэргийлнэ)
local existingTool = player.Backpack:FindFirstChild("UniversalTeleport")
if existingTool then existingTool:Destroy() end

-- Шинэ Tool үүсгэх
local tool = Instance.new("Tool")
tool.Name = "UniversalTeleport"
tool.RequiresHandle = false
tool.Parent = player.Backpack

local mouse = player:GetMouse()

-- Шилжих функц
local function onActivated()
    local targetPos = mouse.Hit.p
    local character = player.Character
    
    if character and character:FindFirstChild("HumanoidRootPart") then
        -- CFrame ашиглан байршлыг өөрчлөх
        character.HumanoidRootPart.CFrame = CFrame.new(targetPos + Vector3.new(0, 3, 0))
        print("bumbaa723 амжилттай шилжлээ!")
    end
end

tool.Activated:Connect(onActivated)
print("Teleport Tool бэлэн боллоо, bumbaa723!")
