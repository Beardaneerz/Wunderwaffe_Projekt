--------------------------------------------------------------------------------
--  Handler.......... : onSensorCollisionBegin
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_BULLET.onSensorCollisionBegin ( nSensorID, hTargetObject, nTargetSensorID )
--------------------------------------------------------------------------------
	  local hScene = application.getCurrentUserScene ( )
      if( nTargetSensorID == 66 )
      then
        scene.destroyRuntimeObject ( hScene, this.getObject ( ) )
      end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
