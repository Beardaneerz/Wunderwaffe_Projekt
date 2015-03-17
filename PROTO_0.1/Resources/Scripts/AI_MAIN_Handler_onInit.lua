--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : Arnaud//Johann
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_MAIN.onInit (  )
--------------------------------------------------------------------------------
    
    local hUser = application.getCurrentUser ( )
    
    -- LOAD LVL_PROTOTYPE TO TEST MODULE OF THE GAME
    user.setScene ( hUser,"LVL_PROTOTYPE" )
    local hScene = application.getCurrentUserScene ( )
    
    --INIT MAIN HUD 
    hud.newTemplateInstance ( this.getUser ( ),"HUD_MAIN","MAIN" )
    hud.setComponentOpacity ( hud.getComponent ( hUser,"MAIN.Container_2" ),0 )
    
    -- GET THE MAIN CAMERA OF THE GAME
    this.hCam ( scene.getTaggedObject ( hScene,"CAM" ))
    user.setActiveCamera ( hUser,this.hCam ( ) )
    
    -- INIT INPUTS CONTROLLER
    user.sendEvent ( this.getUser ( ),"AI_INPUT","onMyInit" )
    
    -- MUSIC MANAGER
    music.play ( hScene,2,5 )
    music.setVolume ( hScene,0.4,0 )
    
    --Init Life for demo
    hud.setLabelText ( hud.getComponent ( hUser,"MAIN.COINS" ),""..this.nCoins ( ) )
    
    -- INIT GAME
    this.PLAY ( )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
