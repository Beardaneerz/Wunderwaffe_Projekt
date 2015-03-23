--------------------------------------------------------------------------------
--  Handler.......... : onMyInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_MAIN.onMyInit (  )
--------------------------------------------------------------------------------
	
    local hUser = application.getCurrentUser ( )
    
    -- LOAD LVL_PROTOTYPE TO TEST MODULE OF THE GAME
    user.setScene ( hUser,"LVL_PROTOTYPE" )
    
    -- CHANGE SPAWN LEVEL TAG
    this.InitSpawn ( )
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
    
    -- INIT LIFE DEMO
    hud.setLabelText ( hud.getComponent ( hUser,"MAIN.COINS" ),""..this.nCoins ( ) )
    
    -- INIT GAME
    user.sendEvent ( hUser,"AI_INPUT","onMyInit" )
    user.sendEvent ( hUser,"AI_ENNEMY_MANAGER","onMyInit" )
    user.sendEvent ( hUser,"AI_SCORE","onMyInit" )
    
    -- DESTROY MENU HUD
    hud.callAction ( hUser,"MENU.DESTROY" )
    hud.setLabelText ( hud.getComponent ( hUser,"MAIN.SCORE" ),"0" )
    
    -- LAUCH GAME
    this.PLAY ( )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
