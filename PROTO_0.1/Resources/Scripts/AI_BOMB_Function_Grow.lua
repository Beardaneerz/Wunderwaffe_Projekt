--------------------------------------------------------------------------------
--  Function......... : Grow
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_BOMB.Grow ( )
--------------------------------------------------------------------------------
	
	object.setScale ( this.getObject ( ),this.nScale(), this.nScale(),this.nScale())
    this.nScale ( this.nScale ( )+0.4)
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
