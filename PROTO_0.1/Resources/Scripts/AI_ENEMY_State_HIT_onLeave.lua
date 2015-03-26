--------------------------------------------------------------------------------
--  State............ : HIT
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENEMY.HIT_onLeave ( )
--------------------------------------------------------------------------------
	
    local hUser = application.getCurrentUser ( )
    
    if ( this.nPV ( ) <= 0)
    then
        user.sendEvent ( hUser,"AI_SCORE","onAddScore",this.nScore ( ) )
            
        object.setTranslation ( this.getObject ( ),2000,2000,-2000,object.kGlobalSpace )
        
        sfx.stopParticleEmitterAt ( object.getChildAt ( this.getObject ( ),1 ),0 )
        
        object.setVisible (object.getChildAt ( this.getObject ( ),0 ),true )
        object.setVisible (object.getChildAt ( this.getObject ( ),1 ),false )
	end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
