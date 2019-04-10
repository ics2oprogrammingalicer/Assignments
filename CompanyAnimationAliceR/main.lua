-- Title: CompanyLogoAnimation
-- Name: Alice R
-- Course: ICS2O/3C
-- This program displays the company logo on the screen by zooming in.
----------------------------------------------------------------------------

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- set background
 display.setDefault("background", 0/255, 68/255, 205/255)
---------------------------------------------------------------------------
--LOCAL AND GLOBAL VARIABLES
---------------------------------------------------------------------------
-- global variables
scrollSpeed = 3

-- set logo
local leftSide = display.newImageRect("Images/companyLogoLeft.png", 1000, 700)
local rightSide = display.newImageRect("Images/companyLogoRight.png", 1000, 700)
local logo = display.newImageRect("Images/CompanyLogoAliceR@2x.png", 1000, 700)

---------------------------------------------------------------------------
-- set logo to be invisible
logo.isvisible = true
leftSide.isVisible = true
rightSide.isVisible = true
