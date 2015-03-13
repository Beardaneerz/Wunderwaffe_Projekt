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
    
    if ( table.getAt ( this.tAxisInput ( ),0 ) > 0.9 and this.nFrameBufferIndex ( ) == 0 or table.getAt ( this.tAxisInput ( ),1 ) > 0.9 and this.nFrameBufferIndex ( ) == 0 or 
    table.getAt ( this.tAxisInput ( ),0 ) < -0.9 and this.nFrameBufferIndex ( ) == 0 or table.getAt ( this.tAxisInput ( ),1 ) < -0.9 and this.nFrameBufferIndex ( ) == 0 )
    then
            
        this.FrameBuffer ( table.getAt ( this.tAxisInput ( ),0 ), table.getAt ( this.tAxisInput ( ),1 ) )
                
    elseif (this.nFrameBufferIndex ( ) < this.nSizeBuffer ( ) and this.nFrameBufferIndex ( )~=0)
    then
            
        this.FrameBuffer ( table.getAt ( this.tAxisInput ( ),0 ), table.getAt ( this.tAxisInput ( ),1 ) )
        this.CheckDash (  )
            
    else
            
        this.nFrameBufferIndex ( 0 )
        
        for i=0, this.nSizeBuffer ( )
        do
            table.setAt ( this.tFrameBufferX ( ),i,0 )
            table.setAt ( this.tFrameBufferY ( ),i,0 )
        end
                
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
