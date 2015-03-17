--------------------------------------------------------------------------------
--  Function......... : Weapon_3
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.Weapon_3 ( )
--------------------------------------------------------------------------------
	
	
    local hScene = application.getCurrentUserScene ( )
    
    local hTesla = scene.createRuntimeObject ( hScene, "OBJ_TESLA" ) 
    
    local pX,pY,pZ = object.getTranslation ( this.getObject ( ),object.kGlobalSpace)
    
    object.setTranslation ( hTesla,pX,pY,pZ,object.kGlobalSpace )
    object.sendEvent ( hTesla,"AI_TESLA","onMyInit", this.getObject ( ),this.nTeslaSpeed ( )) 
    
    
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
