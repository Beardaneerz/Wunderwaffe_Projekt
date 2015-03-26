--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : Arnaud//Johann
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_MAIN.onInit (  )
--------------------------------------------------------------------------------
    
    local hUser = application.getCurrentUser ( )
    
    -- INIT MENU FOR FIRST PLAYING FOR THIS VERSION NO MENU = BEST PRODUCTIVITY
    if ( this.bDebug ( ) )
    then
        user.sendEvent ( hUser,"AI_MAIN","onMyInit" )
    else
        hud.newTemplateInstance ( hUser,"HUD_MENU","MENU" )
	end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
