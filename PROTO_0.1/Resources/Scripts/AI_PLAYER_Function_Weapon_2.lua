--------------------------------------------------------------------------------
--  Function......... : Weapon_2
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.Weapon_2 ( )
--------------------------------------------------------------------------------
	
    local hScene = application.getCurrentUserScene ( )
    
    local hLaser = scene.createRuntimeObject ( hScene, "OBJ_LASER" ) 
    
    this.hStockLaser ( hLaser)  
    
    local pX,pY,pZ = object.getTranslation ( this.getObject ( ),object.kGlobalSpace)
    
    object.setTranslation ( hLaser,pX+2,pY,pZ,object.kGlobalSpace )
    object.sendEvent ( hLaser,"AI_LASER","onMyInit", this.getObject ( ))
    
    shape.setMeshMaterial ( object.getChildAt ( this.getObject ( ),4 ),"MAT_LASER_1" )
    object.setTranslation ( object.getChildAt ( this.getObject ( ),4 ),3.50,0.100,0,object.kParentSpace )
    object.setScale ( object.getChildAt ( this.getObject ( ),4 ),4.750,4,4 )
    this.nAnimation ( 0.45 )

    if ( not sound.isPlaying ( this.getObject ( ),1 ))
    then
      --  sound.play (this.getObject ( ),1,1,true,100)
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
