--------------------------------------------------------------------------------
--  Handler.......... : onMyInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_SHOCK.onMyInit ( hParent )
--------------------------------------------------------------------------------
	
this.hPlane ( hParent)

sensor.setActiveAt ( this.getObject ( ),0,false  )

object.setScale (  object.getChildAt ( this.getObject ( ),0 ),0.1,0.1,0.1 )

	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
