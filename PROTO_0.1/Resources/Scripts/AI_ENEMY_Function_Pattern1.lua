--------------------------------------------------------------------------------
--  Function......... : Pattern1
--  Author........... : 
--  Description...... : 


-- Tirs circulaires concentriques et reguliers


--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENEMY.Pattern1 ( )
--------------------------------------------------------------------------------
	
    local nAngle = 360/this.nBulletsCount ( )
    
    
	for i=0,this.nBulletsCount ( )
    do
        local hUser = application.getCurrentUser ( )
        local hScene = application.getCurrentUserScene ( )

        local hEBullet = scene.createRuntimeObject (hScene, "OBJ_E_BULLET"  )
        local nPX,nPY,nPZ = object.getTranslation ( this.getObject ( ),object.kGlobalSpace )
        
        object.setTranslation ( hEBullet,nPX,nPY,nPZ,object.kGlobalSpace )

        object.sendEvent ( hEBullet,"AI_ENEMYBULLET", "onMyInit", this.nSpeed ( ),this.getObject ( )  )
        object.setRotation ( hEBullet,0,0,nAngle*i,object.kLocalSpace  )
                
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
