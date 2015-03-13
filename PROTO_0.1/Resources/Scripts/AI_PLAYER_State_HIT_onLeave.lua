--------------------------------------------------------------------------------
--  State............ : HIT
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.HIT_onLeave ( )
--------------------------------------------------------------------------------
	
    local hUser = application.getCurrentUser ( )
    
    this.nTimer ( 0 )
    
    sfx.stopParticleEmitterAt ( object.getChildAt ( this.getObject ( ),1 ),0 )
    sound.stop ( this.getObject ( ),0 )
	object.setVisible ( object.getChildAt(this.getObject ( ),0),true )
    
    -- TRANSFORM POSITION OF AVATAR
    local nX,nY,nZ = object.getTranslation ( this.hCam( ),object.kGlobalSpace )
    local nXx,nYy,nZz = object.getTranslation ( this.getObject ( ),object.kGlobalSpace )
    object.translateTo ( this.getObject ( ),nX-100,nYy,nZz,object.kGlobalSpace,0.1 )
    
    user.sendEvent ( hUser,"AI_INPUT","onChangeState",0 )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
