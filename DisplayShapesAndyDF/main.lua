-- Title: DisplayShapes
-- Name: Andy Du-frigstad
-- Course: ICS2O/3C
-- This program displays 4 shapes on the ipad of diffreent colours with borders. underneath each shape is the name of it.

--create my local variables.
local pentagon
local textSize = 40
local verticesPentagon = {30,55, 110,21, 312,145, 249,224, 125,172,}
local Hexagon 
local triangle
local hexagon
local verticesHexagon = {30,55, 110,21, 312,145, 249,224, 125,172, 100,264,}
local verticesTriangle = {43,152, 110,1, 122,145,}
local verticesCheckmark =  {134,200, 56,66, 142,150, 244,100, 360,39,}
local textPolygon1
local textPolygon2
local textPolygon3
local textPolygon4


--set the background colour of my screen
display.setDefault("background", 153/255, 0/255, 0/255)

--to remove status bar
display.setStatusBar(display.HiddenStatusBar)

--draw the pentagon
pentagon = display.newPolygon( 10, 10, verticesPentagon)

--set the width of the border.
pentagon.strokeWidth = 10

--set the colour of the pentagon.
pentagon:setFillColor(255/255, 255/255, 0/255)

-- set the colour of the border
pentagon:setStrokeColor(200/255, 200/255, 0/255)

--anchor my pentagon and set it's (x,y) position
pentagon.anchorX = 0
pentagon.anchorY = 0
pentagon.x = 50
pentagon.y = 50

--------------------------------------------------------------------------

triangle = display.newPolygon( 10, 10, verticesTriangle)

--set the width of the border.
triangle.strokeWidth = 10

--set the colour of the pentagon.
triangle:setFillColor(206/255, 206/255, 0/255)

-- set the colour of the border
triangle:setStrokeColor(100/255, 100/255, 0/255)

--anchor my pentagon and set it's (x,y) position
triangle.anchorX = 0
triangle.anchorY = 0
triangle.x = 450
triangle.y = 100
triangle.xScale = 2

------------------------------------------------------------------------------
Hexagon = display.newPolygon( 10, 10, verticesHexagon)
 
 --set the width of the border.
Hexagon.strokeWidth = 10

 --set the colour of the pentagon.
Hexagon:setFillColor(120/255, 120/255, 0/255)
 
 -- set the colour of the border
Hexagon:setStrokeColor(60/255, 60/255, 0/255)
 
 --anchor my pentagon and set it's (x,y) position
Hexagon.anchorX = 0
Hexagon.anchorY = 0
Hexagon.x = 50
Hexagon.y = 475
Hexagon.xScale = 1.5

------------------------------------------------------------------------------

checkmark = display.newPolygon( 10, 10, verticesCheckmark)
 
 --set the width of the border.
checkmark.strokeWidth = 10

 --set the colour of the hexagon.
checkmark:setFillColor(200/255, 150/255, 100/255)
 
 -- set the colour of the border
checkmark:setStrokeColor(250/255, 250/255, 55/255)

 --anchor my hexagon and set it's (x,y) position
checkmark.anchorX = 0
checkmark.anchorY = 0
checkmark.x = 750
checkmark.y = 75
checkmark.xScale = 0.5

-------------------------------------------------------------------------------
--The names for the shapes
textPolygon1 = display.newText("quadrilateral" , 800, 330, nil, 45)
textPolygon2 =  display.newText("Hexagon" , 700, 600, nil, 45)
textPolygon3 = display.newText("Triangle" , 500, 330, nil, 45)
textPolygon4 = display.newText("pentagon" , 200, 330, nil, 45)

--changing the colour of the text.
textPolygon1:setTextColor(210/255, 150/255, 200/255)
textPolygon2:setTextColor(210/255, 150/255, 200/255)
textPolygon3:setTextColor(210/255, 150/255, 200/255)
textPolygon4:setTextColor(210/255, 150/255, 200/255)