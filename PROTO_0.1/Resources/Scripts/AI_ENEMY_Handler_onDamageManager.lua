--------------------------------------------------------------------------------
--  Handler.......... : onDamageManager
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENEMY.onDamageManager ( nDmg )
--------------------------------------------------------------------------------
	

    
        this.nPV ( this.nPV ( ) - nDmg )
        this.HIT ( )

--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
