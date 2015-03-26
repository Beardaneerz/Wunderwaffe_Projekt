--------------------------------------------------------------------------------
--  Handler.......... : onCreateBullet
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENEMY.onCreateBullet ( hBullet, nI )
--------------------------------------------------------------------------------
	
    local hUser = application.getCurrentUser ( )
    local hScene = application.getCurrentUserScene ( )
    
    local nX,nY,nZ = object.getTranslation ( this.getObject ( ),object.kGlobalSpace )  
    local nAngle = 360/this.nBulletsCount ( )
    
    if (hBullet)
    then
        object.setTranslation ( hBullet,nX,nY,nZ,object.kGlobalSpace )
        object.sendEvent ( hBullet,"AI_ENEMYBULLET", "onMyInit", this.nSpeed ( ),this.getObject ( )  )
        object.setRotation ( hBullet,0,0,nAngle*nI,object.kLocalSpace  )
	end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
