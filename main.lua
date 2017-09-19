-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local tapCount = 0

local background = display.newImageRect( "background.png", 360, 570 )
background.x = display.contentCenterX
background.y = display.contentCenterY

local platform = display.newImageRect( "platform.png", 300, 50 )
platform.x = display.contentCenterX
platform.y = display.contentHeight-25

local balloon = display.newImageRect( "balloon.png", 112, 112 )
balloon.x = display.contentCenterX
balloon.y = display.contentCenterY
ballon.alpha = 0.8

local physics = require( "physics" )
physics.start()
 
physics.addBody( platform, "static" )
physics.addBody( balloon, "dynamic", { radius=50, bounce=0.3 } )
     balloon:applyLinearImpulse( 0, -0.75, balloon.x, balloon.y )
local function pushBalloon()

end

balloon:addEventListener( "tap", pushBalloon)