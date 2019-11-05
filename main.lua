local permission = require "plugin.permission"
local widget = require("widget")
local bg = display.newRect( display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight )
local title = display.newText( "Permission Plugin", display.contentCenterX, 80, native.systemFontBold, 20 )
title:setFillColor( 0 )
local requestPermission = widget.newButton( {
	onRelease = function ( e )
		permission.requestPermission("photo",function ( ev)
			native.showAlert( "test", ev.status, {"Ok"})
		end)
	end,
	label = "Request Permission",
	x= display.contentCenterX,
	y= display.contentCenterY,
} )
local hasPermission = widget.newButton( {
	onRelease = function ( e )
		native.showAlert( "test", permission.hasPermission("photo"), {"Ok"})
	end,
	label = "Has Permission",
	x= display.contentCenterX,
	y= display.contentCenterY-50,
} )




