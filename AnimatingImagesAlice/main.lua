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
local bird = display.newImageRect("Images/bird.png", 120, 120)
local hotairballoon = display.newImageRect("Images/hotairballon.png", 100, 100)
local airplane = display.newImageRect("Images/plane.png", 50, 50)

-- set image to be transparent
bird.alpha = 3

-- set initial x and y position of bird
bird.x = 0
bird.y = display.contentHeight/3

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
balloonSpeed = 2

 -- set image to be transparent
hotairballoon.alpha = 1

 -- set initial x and y position
 hotairballoon.x = 1000
 hotairballoon.y = display.contentHeight/5

 -- function: moveHotairballon
 -- input: this function accepts an event listener
 -- output: none
 -- discription: this function adds the scroll speed to the x value of the ship
 local function MoveHotairballon(event)
 	-- add the scrolol speed to the x value of the ship
 	hotairballoon.x = hotairballoon.x - scrollSpeed
 	-- change the transparencey of the ship every time it moves so that it fades out
 	hotairballoon.alpha = hotairballoon.alpha - 0.01
end

-- moveship will be called over and over again
Runtime:addEventListener("enterFrame", MoveHotairballon)

-- global variables
scrollspeed = 5

---------------------------------------------------------------------------
-- global variables 
planeSpeed = 6

 -- set image to be transparent
airplane.alpha = 1

 -- set initial x and y position
 airplane.x = 0
 airplane.y = display.contentHeight/6

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
