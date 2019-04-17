-- Title: CompanyAnimation 
-- Name Andy Du-frigstad
-- Course: ICS2O/3C
-- this program animates our clients Logo

-- Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-----------------------------------------------------------------------------------------
-- SOUND
-----------------------------------------------------------------------------------------

local IntroSound = audio.loadSound( "Sounds/bensound-dubstep.mp3" )
local IntroSoundChannel
IntroSoundChannel = audio.play(IntroSound)

-----------------------------------------------------------------------------------------
-- GLOBAL VARIABLES
-----------------------------------------------------------------------------------------

--setting the scroll Speed
scrollSpeed = 50

-----------------------------------------------------------------------------------------
-- LOCAL VARIABLES
-----------------------------------------------------------------------------------------
local CompanyImage

-----------------------------------------------------------------------------------------
-- OBJECT CREATION
-----------------------------------------------------------------------------------------
-- setting the background
display.setDefault ("background", 1, 0, 0)
-- local Variables

CompanyImage = display.newImage( "Images/IMG_4635 (2).png" )
CompanyImage:scale (0.2, 0.2)

-- making the Image move to the center of the screen.
transition.to(CompanyImage, {rotation = CompanyImage.rotation - 360, time = 1000, onComplete = spinImage})
transition.to(CompanyImage, {x = 512, y = 384, time = 4000})

-- making the Logo be transparent
CompanyImage.alpha = 0

-- playing the sound


-----------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------------------------------------------------------


local function MoveLogo(event)
	--add the scroll speed to the x-value of the logo
	CompanyImage.x = CompanyImage.x + scrollSpeed
	--change the transparency of the logo every time it moves so that it fades out
	CompanyImage.alpha = CompanyImage.alpha + 0.01
end

-----------------------------------------------------------------------------------------
-- LISTENERS
-----------------------------------------------------------------------------------------
--moveShip will de called over and over again
Runtime:addEventListener("enterFrame", MoveLogo)