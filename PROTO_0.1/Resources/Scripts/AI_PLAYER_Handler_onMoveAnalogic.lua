--------------------------------------------------------------------------------
--  Handler.......... : onMoveAnalogic
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.onMoveAnalogic ( nAxisX, nAxisY )
--------------------------------------------------------------------------------
    
    local nX,nY,nZ = 0,0,0
    
    nX = nAxisX * this.nSpeed ( )
    nY = nAxisY * this.nSpeed ( )
    
    if (nAxisY > 0)
    then 
        table.setAt ( this.tRotate ( ),0,true )
        
    elseif ( nAxisY < 0)
    then
        table.setAt ( this.tRotate ( ),1,true )
    else
        table.setAt ( this.tRotate ( ),0,false )
        table.setAt ( this.tRotate ( ),1,false )
    end
    
    dynamics.addForce ( this.getObject ( ),nX,nY,0,object.kGlobalSpace )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
