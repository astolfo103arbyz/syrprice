local SCARE_IMAGE = "rbxassetid: //10149736922"
local SCARE_SOUND = "rbxassetid: //160442087"
local SCARE_DURATION = 5

local gui = Instance.new("ScreenGui")
gui.Name = "PistaGui"
gui.ResetOnSpawn = false
gui.Parent = ("PlayerGui")

local image = Instance.new("ImageLabel")
image.Name = "ScarletImage"
image.Size = UDim2.new(1, 0, 1, 0)
image.Position = UDim2.new(0, 0, 0, 0)
image.BackgroundColor3 = Color3.new(0, 0, 0)
image.ImageTransparency = 1
image.Image = SCARE_IMAGE
image.Parent = gui

local sound = Instance.new("Sound")
sound.SoundId = SCARE_SOUND
sound.Volume = 2
sound.Parent = gui

local function activateScare()
     image.ImageTransparency = 0
     sound:Play()
     
     wait(SCARE_DURATION)
     
     image.ImageTransparency = 1
     sound:Stop()
  end
  
  local function setupTriggers()
    delay(15, activateScare)
  end
  
  setupTriggers()
  
  return "Scare script loaded succesfully!"