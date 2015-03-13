--------------------------------------------------------------------------------
--  Handler.......... : onJoypadStickMove
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_INPUT.onJoypadStickMove ( nJoypad, nStick, nAxisX, nAxisY )
--------------------------------------------------------------------------------

    if (this.hPlayer ( )~=nil)
    then
        if (nStick == 0)
        then
            
            if (nAxisX>0.15 or nAxisX<-0.15)
            then
            table.setAt ( this.tAxisInput ( ),0,nAxisX )
            else
            table.setAt ( this.tAxisInput ( ),0,0 )
            end
            
            if (nAxisY>0.15 or nAxisY<-0.15)
            then
            table.setAt ( this.tAxisInput ( ),1,nAxisY )
            else
            table.setAt ( this.tAxisInput ( ),1,0 )
            end
        
        end
	end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
