--------------------------------------------------------------------------------
--  Function......... : Weapon_1
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.Weapon_1 ( )
--------------------------------------------------------------------------------
	
    
    local hScene = application.getCurrentUserScene ( )
    
    local hBullet = scene.createRuntimeObject ( hScene, "OBJ_BULLET" )
    
    local pX,pY,pZ = object.getTranslation ( this.getObject ( ),object.kGlobalSpace)
    
    object.setTranslation ( hBullet,pX,pY,pZ,object.kGlobalSpace )
    object.sendEvent ( hBullet,"AI_BULLET","onMyInit",this.nBulletSpeed(),this.hCam ( ))
    
    if ( not sound.isPlaying ( this.getObject ( ),1 ))
    then
        sound.play (this.getObject ( ),1,1,false,100)
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
