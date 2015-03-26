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
    
    object.setTranslation ( hBullet,pX+1,pY,pZ,object.kGlobalSpace )
    object.sendEvent ( hBullet,"AI_BULLET","onMyInit",this.nBulletSpeed(),this.hCam ( ))
    
    -- CHANGE TEXTURE ON 4 CHILD TO SET SHOOT ANIM
    shape.setMeshMaterial ( object.getChildAt ( this.getObject ( ),4 ),"MAT_SHOT" )
    object.setTranslation ( object.getChildAt ( this.getObject ( ),4 ),2.20,0.100,0,object.kParentSpace )
    object.setScale ( object.getChildAt ( this.getObject ( ),4 ),2.750,2,2 )
    this.nAnimation ( 0.3 )
    
    if ( not sound.isPlaying ( this.getObject ( ),1 ))
    then
        sound.play (this.getObject ( ),1,1,false,100)
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
