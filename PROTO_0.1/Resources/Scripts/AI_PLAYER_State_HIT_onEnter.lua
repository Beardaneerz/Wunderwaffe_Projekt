--------------------------------------------------------------------------------
--  State............ : HIT
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.HIT_onEnter ( )
--------------------------------------------------------------------------------
	
    local hUser = application.getCurrentUser ( )
    
    sfx.startParticleEmitterAt ( object.getChildAt ( this.getObject ( ),1 ),0 )
    
    object.setVisible (object.getChildAt ( this.getObject ( ),0 ),false )
    object.setVisible (object.getChildAt ( this.getObject ( ),2 ),true )
    
    -- CHANGE COINS AND STOP INPUT
    
    user.sendEvent ( hUser,"AI_MAIN","onLostCoins" )
    user.sendEvent ( hUser,"AI_INPUT","onChangeState",1 )
    
    sound.play (this.getObject ( ),0,1,true,1)
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
