--------------------------------------------------------------------------------
--  State............ : DEAD
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_SPAWN.DEAD_onEnter ( )
--------------------------------------------------------------------------------
    
    object.sendEvent ( this.hEnnemy ( ),"AI_ENEMY","onTakeDamage" ) 
    this.hEnnemy ( nil )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
