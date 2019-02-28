-- Title: display shapes
-- Name: Alice R
-- Course: ICS2O/3C
-- This program displays three shapes on the ipad of different colours and boarders.

-- create my local variables
local areaText
local textSize = 50 
local myTriangle
local verticesOfTriangle = {-50,50, 0,-50, 50,50}
local triangleX = 1 / 4 * display.contentWidth
local triangleY = 3 / 8 * display.contentHeight

myTriangle = display.newPolygon(triangleX, triangleY, verticesOfTriangle)

myTriangle:setFillColor(0/255, 255/255, 255/255)

myTriangle:setStrokeColor(0/255, 255/255, 255/255)

-- write the name of shape on the screen.
areaText = display.newText("triangle", 0,0, Arial, textSize)

-- anchor the text and set its (x,y) position.
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 155
areaText.y = 100
areaText = display.contentHeight/2

------------------------------------------------------------------------

-- create my local variables
local areaText
local textSize = 50
local myOct 
local verticesOfOct = {-20,35, 20,35, 35,20, 35,-20, 20,-35, -20,-35, -35,-20, -35,20}
local octogonX = 2 / 4 * display.contentWidth
local octogonY = 5 / 8 * display.contentHeight

myOct = display.newPolygon(octogonX, octogonY, verticesOfOct)
 
myOct:setFillColor(255/255, 255/255, 0/255)
 
myOct:setStrokeColor(255/255, 255/255, 0/255)

-- write the name of the shape
areaText = display.newText("octogon", 0,0, Arial,textSize)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 25
areaText.y = 50
areaText = display.contentHeight/2

