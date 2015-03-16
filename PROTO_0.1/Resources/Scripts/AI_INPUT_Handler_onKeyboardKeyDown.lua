--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_INPUT.onKeyboardKeyDown ( kKeyCode )
--------------------------------------------------------------------------------
	
    --log.message ( kKeyCode )
    
    if ( kKeyCode == 25) -- UP
    then
        table.setAt ( this.tInput ( ),0,true )
    end
    
    if ( kKeyCode == 3) -- RIGHT
    then
        table.setAt ( this.tInput ( ),1,true )
    end
    
    if ( kKeyCode == 18) -- DOWN
    then
        table.setAt ( this.tInput ( ),2,true )
    end
    
    if ( kKeyCode == 16) -- LEFT
    then
        table.setAt ( this.tInput ( ),3,true )
    end
 
 --------------------------------------------------------------------------------
-- ACTION
--------------------------------------------------------------------------------

    if ( kKeyCode == 7 )
    then
        log.message ( "TIR" )
        this.bFire ( true )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
