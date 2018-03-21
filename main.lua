-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- created on: kangmin
-- greated by: Mar 22
-----------------------------------------------------------------------------------------

local pizzasize = display.newText( " large or best:", 500, 200, systemFont, 125)
pizzasize:setFillColor( 1, 0.5, 0)

local topping = display.newText( " add topping:", 500, 800, systemFont, 125)
topping:setFillColor( 1, 0.5, 0)

local costTextField = display.newText( "cost", 500, 1300, systemFont, 125)
costTextField.id = "cost TextField"

local sizeTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 550, 280, 220)
sizeTextField.id = "size TextField"

local toppingTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 50, 280, 220)
toppingTextField.id = "topping TextField"

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png",  500, 257 )
calculateButton.x = ( display.contentCenterX - 500)
calculateButton.y = (display.contentCenterY - 250)
calculateButton.id = "calculate Button"

local function calculateButtonFuction( event )
    
	local clear2 = display.newRect(display.contentCenterX + 500, display.contentCenterY + 400, 400, 100 )
    clear2:setFillColor( 0, 0, 0)
    
    local clear1 = display.newRect(display.contentCenterX + 500, display.contentCenterY + 400, 400, 100 )
    clear1:setFillColor( 0, 0, 0)
	
	local pizzaSize = tosize(sizeTextField.text)

	local Topping = totopping(toppingTextField.text)

	if pizzaSize == large then
	
	    local largeText = display.newText( "$6.00", display.contentCenterX + 500, display.contentCenterY + 400, native.systemFont, 85)

    elseif pizzaSize == best then

	    local bestText = display.newText( "$10.00", display.contentCenterX + 500, display.contentCenterY + 400, native.systemFont, 85)
    end

	if Topping == 1 then

	    local oneTopping = display.newText( "$1.00", display.contentCenterX + 300, display.contentCenterY + 400, native.systemFont, 85)
    
	elseif Topping == 2 then

	    local twoTopping = display.newText( "$1.75", display.contentCenterX + 300, display.contentCenterY + 400, native.systemFont, 85)

    elseif Topping == 3 then

	    local threeTopping = display.newText( "$2.50", display.contentCenterX + 300, display.contentCenterY + 400, native.systemFont, 85)

    elseif Topping == 4 then

	    local fourTopping = display.newText( "$3.35", display.contentCenterX + 300, display.contentCenterY + 400, native.systemFont, 85)
    end
end

calculateButton:addEventListener( "touch", calculateButtonFuction)
