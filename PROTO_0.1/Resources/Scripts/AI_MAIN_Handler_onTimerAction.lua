--------------------------------------------------------------------------------
--  Handler.......... : onTimerAction
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_MAIN.onTimerAction (  )
--------------------------------------------------------------------------------
	
	this.nTick ( this.nTick ( ) + 1 )
    
    if ( this.nTick ( ) > 2 )
    then
        this.nTick ( 0 )
        log.message ( "TEST" )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
