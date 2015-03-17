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
    
    for i = 0, nCount-1
    do

        hTarget = table.getAt ( this.tEnnemy ( ),i )
        
        if ( object.getAIState ( hTarget,object.getAIModelNameAt ( hTarget,0 ) ) == "IDLE" )
        then
            hSendObject = hTarget
        end
    end

    object.sendEvent ( hObject ,"AI_SPAWN","onReceiveSpawn",hSendObject )
    object.sendEvent ( hSendObject,"AI_ENEMY","onChangeState" )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
