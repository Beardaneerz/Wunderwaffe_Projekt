--------------------------------------------------------------------------------
--  Handler.......... : onChangeState
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENNEMY_MANAGER.onChangeState ( nID )
--------------------------------------------------------------------------------
	
	table.setAt ( this.tBulletBool ( ),nID,false )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
