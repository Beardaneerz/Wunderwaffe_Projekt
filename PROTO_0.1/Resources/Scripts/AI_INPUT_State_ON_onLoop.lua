--------------------------------------------------------------------------------
--  State............ : ON
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_INPUT.ON_onLoop ( )
--------------------------------------------------------------------------------

    local kType = this.KindInput()
    
    if (kType == 0)
    then
        this.OFF ()
    end
    
    if ( this.bFire ( ))
    then
        object.sendEvent ( this.hPlayer ( ),"AI_PLAYER","onFire",true )
        this.bFire ( false)
    end
    
    -- FOR NON-AXIS JOYPAD
    if ( this.nKindInput ( ) == 1 or 6 )
    then
        for i=0, 3
        do
            if (table.getAt ( this.tInput ( ),i )) then object.sendEvent ( this.hPlayer ( ),"AI_PLAYER","onMove",i ) end
        end
	end
    
    if ( this.nKindInput ( ) == 6 )
    then
        object.sendEvent ( this.hPlayer ( ),"AI_PLAYER","onMoveAnalogic",table.getAt ( this.tAxisInput ( ),0 ),table.getAt ( this.tAxisInput ( ),1 ) )
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
