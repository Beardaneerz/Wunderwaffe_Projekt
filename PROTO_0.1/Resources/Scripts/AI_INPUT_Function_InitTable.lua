--------------------------------------------------------------------------------
--  Function......... : InitTable
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_INPUT.InitTable ( )
--------------------------------------------------------------------------------
	
    -- FUNCTION INIT THE FRAMEBUFFER TABLE
	for i = 0, this.nSizeBuffer ( )
    do
        table.add ( this.tFrameBufferX ( ),0)
        table.add ( this.tFrameBufferY ( ),0)
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
