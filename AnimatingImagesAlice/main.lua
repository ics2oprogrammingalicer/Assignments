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
local Hotairballoon = display.newImageRect("Images/hotairballoon.png", 100, 100)
local airplane = display.newImageRect("Images/plane.png", 250, 300)

-- set image to be transparent
bird.alpha = 1

-- set initial x and y position of bird
bird.x = 0
bird.y = display.contentHeight/2

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

---------------------------------------------------------------------------
-- global variables 
balloonSpeed = 5

 -- set image to be transparent
Hotairballoon.alpha = 1

 -- set initial x and y position
 Hotairballoon.x = 0
 Hotairballoon.y = display.contentHeight/1

 -- function: moveHotairballon
 -- input: this function accepts an event listener
 -- output: none
 -- discription: this function adds the scroll speed to the x value of the ship
 local function MoveHotairballon(event)
 	-- add the scrolol speed to the x value of the ship
 	Hotairballoon.x = Hotairballoon.x + scrollSpeed
 	-- change the transparencey of the ship every time it moves so that it fades out
 	Hotairballoon.alpha = Hotairballoon.alpha + 0.01
end

-- moveship will be called over and over again
Runtime:addEventListener("enterFrame", MoveHotairballon)

-- global variables
scrollspeed = 5

---------------------------------------------------------------------------
-- global variables 
planeSpeed = 3

 -- set image to be transparent
airplane.alpha = 1

 -- set initial x and y position
 airplane.x = 0
 airplane.y = display.contentHeight/1

 -- function: moveHotairballon
 -- input: this function accepts an event listener
 -- output: none
 -- discription: this function adds the scroll speed to the x value of the ship
 local function MoveAirplane(event)
 	-- add the scrolol speed to the x value of the ship
 	airplane.x = airplane.x + scrollSpeed
 	-- change the transparencey of the ship every time it moves so that it fades out
 	airplane.alpha = airplane.alpha + 0.01
end

-- moveship will be called over and over again
Runtime:addEventListener("enterFrame", MoveAirplane)

-- global variables
scrollspeed = 5