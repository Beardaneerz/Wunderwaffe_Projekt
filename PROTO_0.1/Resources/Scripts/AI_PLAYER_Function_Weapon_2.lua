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
    
    object.setTranslation ( hLaser,pX,pY,pZ,object.kGlobalSpace )
    object.sendEvent ( hLaser,"AI_LASER","onMyInit", this.getObject ( ))
    
    if ( not sound.isPlaying ( this.getObject ( ),1 ))
    then
      --  sound.play (this.getObject ( ),1,1,true,100)
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
