--------------------------------------------------------------------------------
--  Handler.......... : onPatternManager
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENEMY.onPatternManager (  )
--------------------------------------------------------------------------------
	
	if(this.nPatternType ( ) == 1)
    then
        object.postEvent ( this.getObject ( ),this.nCadence ( ),"AI_ENEMY","onPatternManager" )
        this.Pattern1 ( )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
