--------------------------------------------------------------------------------
--  Handler.......... : onGetEnnemyAvailable
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENNEMY_MANAGER.onGetEnnemyAvailable ( hObject )
--------------------------------------------------------------------------------
	
    local nCount =  table.getSize ( this.tEnnemy ( ) )
    local hTarget = nil
    local hSendObject = nil
    local nIndex =0
    
    for i = 0, nCount-1
    do

        hTarget = table.getAt ( this.tEnnemy ( ),i )
        
        if ( not table.getAt ( this.tEnnemyBool ( ),i ) )
        then
            hSendObject = hTarget
            nIndex = i
        end
    end

    table.setAt ( this.tEnnemyBool ( ),nIndex,true )
    object.sendEvent ( hObject ,"AI_SPAWN","onReceiveSpawn",hSendObject )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
