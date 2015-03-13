--------------------------------------------------------------------------------
--  Function......... : FrameBuffer
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_INPUT.FrameBuffer ( nX, nY )
--------------------------------------------------------------------------------
	
    if (this.nFrameBufferIndex ( )> this.nSizeBuffer ( ))then this.nFrameBufferIndex ( 0 ) end 
    
    table.setAt ( this.tFrameBufferX ( ),this.nFrameBufferIndex ( ),nX )
    table.setAt ( this.tFrameBufferY ( ),this.nFrameBufferIndex ( ),nY )
    
	this.nFrameBufferIndex ( this.nFrameBufferIndex ( ) + 1)
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
