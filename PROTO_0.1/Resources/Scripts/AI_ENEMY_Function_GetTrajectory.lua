--------------------------------------------------------------------------------
--  Function......... : GetTrajectory
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENEMY.GetTrajectory ( )
--------------------------------------------------------------------------------
	
    local nX,nY,nZ = object.getTranslation ( table.getAt ( this.tTrajectory ( ),this.nTrajectory ( ) ),object.kGlobalSpace )
    local nXx,nYy,nZz = object.getTranslation ( this.getObject ( ),object.kGlobalSpace )
    
    local vX,vY,vZ =  math.vectorNormalize (  nX-nXx, nY-nYy, 0 )
    this.nTraX ( vX )
    this.nTraY ( vY)
    
    this.bTrajectory ( true )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
