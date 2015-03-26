--------------------------------------------------------------------------------
--  State............ : HIT
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENEMY.HIT_onEnter ( )
--------------------------------------------------------------------------------
	
	
    local hUser = application.getCurrentUser ( )
    local hScene = application.getCurrentUserScene ( )
    
    if ( this.nPV ( ) <= 0 )
    then
        sfx.startParticleEmitterAt ( object.getChildAt ( this.getObject ( ),1 ),0 )
        
        object.setVisible (object.getChildAt ( this.getObject ( ),0 ),false )
        object.setVisible (object.getChildAt ( this.getObject ( ),1 ),true )
    end
    
    local hObject = scene.createRuntimeObject ( hScene,"OBJ_HIT" )
    object.setParent ( hObject,this.getObject ( ),true )
    
    object.setTranslation ( hObject,0,0,0,object.kParentSpace )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
