--------------------------------------------------------------------------------
--  State............ : CONTINUE
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_MAIN.CONTINUE_onLoop ( )
--------------------------------------------------------------------------------
    
    local hUser = application.getCurrentUser ( )
	local dt = application.getLastFrameTime ( )
    
    this.nTimer ( this.nTimer ( ) - dt )

    local nHUDTimer = math.floor ( this.nTimer ( ) )
    
    if ( nHUDTimer>=0 )
    then
        hud.setLabelText ( hud.getComponent ( hUser,"MAIN.TIMER" ),""..nHUDTimer )
    end
    
    if ( this.nTimer ( ) <= 0 )
    then
        this.IDLE ( )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
