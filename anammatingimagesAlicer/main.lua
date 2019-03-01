-- Title: animating Images
-- Name: Alice R
-- Course: ICS2O
-- This program moves three images across the screen in different ways.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed = 3

--background image with width and height
local backgroundImage = display.newImageRect("Images/sunsetbackground.jpg", 2048, 1536)

-- charecter images with width and height
local bird = display.newImageRect("Images/bird.png", 200, 200)
local hotairballoon = display.newImageRect("Images/hotairballoon.png", 100, 100)
local airplane = display.newImageRect("Images/plane.png")

-- set image to be transparent
bird.alpha = 1

-- set initial x and y position of bird
bird.x = 0
bird.y = display.contentHeight/

-- Function: moveBird
-- imput: this function accepts an event listener
-- output: none
-- discription: this function adds the scroll speed to the x-value of the ship
local function MoveBird(event)
    -- add the scroll speed to the x-value of the ship
    bird.x = bird.x + scrollSpeed
    -- change the transparencey of the ship every time it moves so that it fades out
    bird.alpha = bird.alpha + 0.01
end

-- MoveShip will be called over and over again 
Runtime:addEventListener("enterFrame", MoveBird)
