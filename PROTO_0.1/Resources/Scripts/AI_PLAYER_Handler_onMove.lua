--------------------------------------------------------------------------------
--  Handler.......... : onMove
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.onMove ( nAxis )
--------------------------------------------------------------------------------

    --log.message ( nAxis )

    local nX,nY,nZ = object.getTranslation ( this.getObject ( ),object.kGlobalSpace )
    
	if ( nAxis == 0 ) then dynamics.addForce ( this.getObject ( ),0,this.nSpeed ( ),0,object.kGlobalSpace ) end
    
    if ( nAxis == 1 ) then dynamics.addForce ( this.getObject ( ),this.nSpeed ( ),0,0,object.kGlobalSpace ) end
    
    if ( nAxis == 2 ) then dynamics.addForce ( this.getObject ( ),0,-this.nSpeed ( ),0,object.kGlobalSpace ) end

	if ( nAxis == 3 ) then dynamics.addForce ( this.getObject ( ),-this.nSpeed ( ),0,0,object.kGlobalSpace ) end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
