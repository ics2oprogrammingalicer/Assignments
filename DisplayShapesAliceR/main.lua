-- Title: display shapes
-- Name: Alice R
-- Course: ICS2O/3C
-- This program displays three shapes on the ipad of different colours and boarders.

-- create my local variables
local areaText
local textSize = 50 
local myTriangle
local baseOfTriangle = 250
local heightOfTriangle = 500
local areaOfTriangle
local verticesOfTriangle = {-100,100, 0,-100, 100,100}
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
areaText.y = 50