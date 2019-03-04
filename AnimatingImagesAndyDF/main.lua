-- Title: AnimatingImages
-- Name:Andy Du-frigstad
-- Course: ICS20/3C
-- This Program Animates Images.

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--setting the background Image
local backgroundImage = display.newImageRect("Images/RuneScapeFossilIsland.jpg", 2048, 1536)

--making my Images
local RunescapeKnight = display.newImageRect("Images/RunescapeKnight.png", 200, 300)
local Goblin = display.newImageRect("Images/Goblin.png", 200, 200)
local Fire = display.newImageRect("Images/fire.png", 200, 200)
local physics = require("physics")
--------------------------------------------------------------------------
physics.start(true)
local leftWall = display.newRect(0,0,1, display.contentHeight )
local rightWall = display.newRect (display.contentWidth, 0, 1, display.contentHeight)
local topWall = display.newRect (0, 0, display.contentWidth, 1)

physics.addBody (leftWall, "static", { bounce = 0.1} )
physics.addBody (rightWall, "static", { bounce = 0.1} )
physics.addBody (topWall, "static", { bounce = 0.1} )
--------------------------------------------------------------------------
--set the X and Y of the Goblin
Goblin.x = 700
Goblin.y = display.contentHeight/4

--making the Image pyhsical
physics.addBody (Goblin, "kinematic", {bounce = 0.1} )

---------------------------------------------------------------------------
--set the x and y of the Runescape Knight
RunescapeKnight.x = 300
RunescapeKnight.y = display.contentHeight/2

--changing the way the Runescape Knight faces
RunescapeKnight:scale (-1, 1)

--making the Image physical
physics.addBody (RunescapeKnight, "kinematic", {bounce = 0.1} )
---------------------------------------------------------------------------

--Adding the sounds
local EpicSound = audio.loadSound( "Sounds/bensound-epic.mp3" )
local EpicSoundChannel

--playing the sound
EpicSoundChannel = audio.play(EpicSound)

---------------------------------------------------------------------------
--setting the scroll speed of the Goblin
local scrollSpeed = -3

--moving the images
local function MoveGoblin(event)
	--the scroll speed
	Goblin.x = Goblin.x + scrollSpeed
end

--moveGoblin will be called over and over again
Runtime:addEventListener("enterFrame", MoveGoblin)

----------------------------------------------------------------------------
--setting the scroll speed of the knight
local scrollSpeed = 3

--moving the images
local function moveRunescapeKnight(event)
	--the scroll speed
	RunescapeKnight.x = RunescapeKnight.x + scrollSpeed
end

--moveGoblin will be called over and over again
Runtime:addEventListener("enterFrame", moveRunescapeKnight)