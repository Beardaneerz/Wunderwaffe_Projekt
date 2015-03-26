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
    
    shape.setMeshMaterial ( object.getChildAt ( this.getObject ( ),4 ),"MAT_BEAM" )
    object.setTranslation ( object.getChildAt ( this.getObject ( ),4 ),3,0.100,0,object.kParentSpace )
    object.setScale ( object.getChildAt ( this.getObject ( ),4 ),4.750,4,4 )
    this.nAnimation ( 0.18 )
    
    
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
