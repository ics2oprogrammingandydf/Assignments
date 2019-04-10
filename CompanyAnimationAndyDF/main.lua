-- Title: CompanyAnimation 
-- Name Andy Du-frigstad
-- Course: ICS2O/3C
-- this program animates our clients Logo

-- Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local Variables
local IntroSound = audio.loadSound( "Sounds/bensound-dubstep.mp3" )
local IntroSoundChannel

local CompanyImage = display.newImage( "Images/IMG_4635 (2).png" )
CompanyImage:scale (0.2, 0.2)

-- setting the background
display.setDefault ("background", 1, 0, 0)

-- making the Image move to the center of the screen.
transition.to(CompanyImage, {rotation = CompanyImage.rotation - 360, time = 1000, onComplete = spinImage})
transition.to(CompanyImage, {x = 512, y = 384, time = 4000})

IntroSoundChannel = audio.play(IntroSound)