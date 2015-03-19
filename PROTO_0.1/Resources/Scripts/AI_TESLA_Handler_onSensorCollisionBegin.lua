--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollisionBegin
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_TESLA.onSensorCollisionBegin ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
	if(nTargetSensorID == 66)
    then 
        local hUser = application.getCurrentUser ( )
        user.sendEvent ( hUser, "AI_ENNEMY_MANAGER", "onTeslaActive",this.getObject ( ), this.nBoundsCount ( ), hTargetObject )
        this.nBoundsCount ( this.nBoundsCount ( )-1)
        object.sendEvent ( hTargetObject, "AI_ENEMY", "onDamageManager",this.nTeslaDmg() ) 
        
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
