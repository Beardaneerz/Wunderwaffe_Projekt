--------------------------------------------------------------------------------
--  Handler.......... : onMyInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_INPUT.onMyInit (  )
--------------------------------------------------------------------------------
	
    local hScene = application.getCurrentUserScene ( )
    
	input.scanDevices ( )
    
    -- INITIALIZE HUD FOR JOYPAD
    hud.newTemplateInstance ( this.getUser ( ),"HUD_INPUT","INPUT" )
    
    -- INITIALIZE INPUT FOR MULTIPLE DRIVERS
    this.InitInput ( )
    
    -- FOR NON-AXIS JOYPAD
    if ( this.nKindInput ( ) == 0 or 1 or 6 )
    then
        this.InitMove ( )
    end
    
	-- GET & SET PLAYER OBJECT (for send event)
    this.hPlayer( scene.getTaggedObject (hScene,"PLAYER" ))
    
    -- TURN ON THE INPUT 
	this.ON ( )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
