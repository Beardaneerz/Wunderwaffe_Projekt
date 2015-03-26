--------------------------------------------------------------------------------
--  Function......... : SetParameters
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENEMY.SetParameters ( nBCount, nDelay , nBSpeed, nPattern, nTScore )
--------------------------------------------------------------------------------
	
	this.nBulletsCount ( nBCount )
    this.nCadence ( nDelay )
    this.nSpeed ( nBSpeed )
    this.nPatternType ( nPattern )
    this.nScore ( nTScore )
    this.nPV ( 100 )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
