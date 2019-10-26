local permission = require "plugin.permission"

timer.performWithDelay( 5000, function ( e )
	
	permission.requestPermission("photo",function ( ev)
		native.showAlert( "test", ev.status, {"Ok"})
	end)
end )


print(permission.hasPermission("photo"))
