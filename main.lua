-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by Amin Zeina 
-- Created on Apr 2018
--
-- Using repeat until loops to match my age to age guessed 
-----------------------------------------------------------------------------------------

display.setStatusBar(display.HiddenStatusBar)

local age = 17
local ageEntered
local instructions = display.newText( 'Guess my age:', 550, 200, native.systemFont, 128 )
instructions.id = "instructions"

local ageTextField = native.newTextField( 1550, 200, 750, 128 )
ageTextField.id = "enter day of the week"

local enterButton = display.newImageRect( './assets/sprites/clickButton.png', 650, 300 )
enterButton.x = display.contentCenterX
enterButton.y = 500
enterButton.id = "Enter Button"

local function onEnterClicked( event )
	
	repeat
	    ageEntered = tonumber(ageTextField.text)

	    if ageEntered == age then
	    	local rightText = display.newText( 'You got it right!', display.contentCenterX, 900, native.systemFont, 128 )

	    elseif ageEntered > age then
	    	local highText = display.newText( 'You are too high. Try again.', display.contentCenterX, 900, native.systemFont, 128 )
	    
	    else
	    	local lowText = display.newText( 'You are too low. Try again.', display.contentCenterX, 900, native.systemFont, 128 )
	    end
	  until ageEntered == age
end
enterButton:addEventListener( 'touch', onEnterClicked)