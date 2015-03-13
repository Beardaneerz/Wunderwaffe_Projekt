--------------------------------------------------------------------------------
--  Handler.......... : onDash
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.onDash ( nSens )
--------------------------------------------------------------------------------
	
	this.INVINCIBLE ( )
    
    if ( nSens == 1)
    then
        dynamics.addLinearImpulse ( this.getObject ( ),1*this.nSpeed ( )/15,0,0,object.kGlobalSpace )
    elseif ( nSens == 3 )
    then
        dynamics.addLinearImpulse ( this.getObject ( ),-1*this.nSpeed ( )/15,0,0,object.kGlobalSpace )
    elseif (nSens == 2 )
    then
        dynamics.addLinearImpulse ( this.getObject ( ),0,1*this.nSpeed ( )/15,0,object.kGlobalSpace )
    else
        dynamics.addLinearImpulse ( this.getObject ( ),0,-1*this.nSpeed ( )/15,0,object.kGlobalSpace )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
