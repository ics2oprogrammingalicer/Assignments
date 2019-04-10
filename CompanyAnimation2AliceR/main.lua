-- Title: CompanyAnimation
-- Name: Alice R
-- Course: ICS2O/3C
-- This program
---------------------------------------------------------------------------------
-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- set background colour
display.setDefault("background", 0/255, 68/255, 204/255)
---------------------------------------------------------------------------------
-- SOUNDS
---------------------------------------------------------------------------------
local SwooshSound = audio.loadSound("Sounds/SwooshingSound.mp3")
local SwooshSoundChannel

SwooshSoundChannel = audio.play(SwooshSound)
timer.performWithDelay(2000, HideCorrect)
---------------------------------------------------------------------------------
-- GLOBAL AND LOCAL VARIABLES
---------------------------------------------------------------------------------
-- set the scroll speed
scrollSpeed = 3

-- company logo with width and height
local leftSide = display.newImageRect("Images/logoLeftSide.png", 300, 400)
local rightSide = display.newImageRect("Images/logoRightSide.png", 300, 400)
local logo = display.newImageRect("Images/CompanyLogoAliceR.png", 300, 400)

-- make logo invisible
logo.isVisible = false
---------------------------------------------------------------------------------
-- POSITIONS AND TRANSITIONS
---------------------------------------------------------------------------------
-- initial x and y position of left side
leftSide.x = 0
leftSide.y = 400

-- make the left side collide with the right side.
transition.to(leftSide, {x=350, y=400, time=1000})

-- initial x and y position for the right side
rightSide.x = 1050
rightSide.y = 400

-- make the right side collide with the left side
transition.to(rightSide, {x=650, y=400, time=1000})