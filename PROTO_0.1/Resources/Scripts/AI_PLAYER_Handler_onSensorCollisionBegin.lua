--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollisionBegin
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.onSensorCollisionBegin ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	
	if ( nSensorID == 1 and nTargetSensorID == 66 or nSensorID == 1 and nTargetSensorID == 100)
    then
    
        this.HIT (  )
    
    end
    
    if ( nSensorID == 1 and nTargetSensorID == 13 )
    then
    
        sfx.startParticleEmitterAt ( this.getObject ( ),1 )
    
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
