--------------------------------------------------------------------------------
--  Function......... : InitMove
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_INPUT.InitMove ( )
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------	
    -- INITIALIZE INPUT TO FALSE FOR ANY DIRECTION FOR NON-ANALOGIC JOYPAD
    -- INDEX 0 = UP
    -- INDEX 1 = RIGHT
    -- INDEX 2 = DOWN
    -- INDEX 3 = LEFT
--------------------------------------------------------------------------------
    
	for i=0, 3
    do
        table.add ( this.tInput ( ),false )
    end
    
--------------------------------------------------------------------------------	
    -- INITIALIZE INPUT TO FALSE FOR ANY DIRECTION FOR ANALOGIC JOYPAD
    -- INDEX 0 = RIGHT/LEFT
    -- INDEX 1 = UP/DOWN
--------------------------------------------------------------------------------
    
    for i=0,1
    do
        table.add ( this.tAxisInput ( ),0 )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
