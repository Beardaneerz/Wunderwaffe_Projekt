--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollisionBegin
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENEMY.onSensorCollisionBegin ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
	if(nTargetSensorID == 67)
    then 
        this.HIT ( )

    elseif(nTargetSensorID == 68)
    then
        this.HITBYLASER ( )
        log.message ( "touched by laser" )
    end
    
    if ( nTargetSensorID == 12 )
    then
        this.bTrajectory ( false )
        this.nTrajectory ( this.nTrajectory ( ) + 1 )
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
