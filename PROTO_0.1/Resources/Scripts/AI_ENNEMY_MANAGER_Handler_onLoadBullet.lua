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
    
    local nIndex = 0
    
    for i = 0, nCount-1
    do

        hTarget = table.getAt ( this.tBullet( ),i )

        if ( not table.getAt ( this.tBulletBool ( ),i ))
        then
            hSendObject = hTarget
            nIndex = i
        end
    end
    
    table.setAt ( this.tBulletBool ( ),nIndex,true )

    object.sendEvent ( hObject ,"AI_ENEMY","onCreateBullet",hSendObject, nAngle )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
