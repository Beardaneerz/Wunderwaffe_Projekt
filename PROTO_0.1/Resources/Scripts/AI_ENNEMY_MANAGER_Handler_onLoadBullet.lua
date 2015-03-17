--------------------------------------------------------------------------------
--  Handler.......... : onLoadBullet
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENNEMY_MANAGER.onLoadBullet ( hObject, nAngle )
--------------------------------------------------------------------------------
	
    local nCount =  table.getSize ( this.tBullet ( ))
    local hTarget = nil
    local hSendObject = nil
    
    for i = 0, nCount-1
    do

        hTarget = table.getAt ( this.tBullet( ),i )

        if (object.getAIState ( hTarget,"AI_ENEMYBULLET" ) == "IDLE")
        then
            hSendObject = hTarget
        end
    end

    object.sendEvent ( hObject ,"AI_ENEMY","onCreateBullet",hSendObject, nAngle )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
