--------------------------------------------------------------------------------
--  Function......... : InitShield
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.InitShield ( )
--------------------------------------------------------------------------------

    local hScene = application.getCurrentUserScene ( )
    
    this.hShield ( scene.createRuntimeObject ( hScene, "OBJ_SHOCKWAVE" ) )  
    
    local pX,pY,pZ = object.getTranslation ( this.getObject ( ),object.kGlobalSpace)
    
    object.setTranslation (this.hShield( ),pX,pY,pZ,object.kGlobalSpace )
    
    object.sendEvent (  this.hShield ( ) ,"AI_SHOCK","onMyInit",this.getObject ( ) )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
