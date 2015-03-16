--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_CAM.onInit (  )
--------------------------------------------------------------------------------
	
    local hScene = application.getCurrentUserScene ( )
    
	-- GET & SET PLAYER OBJECT
    this.hPlayer( scene.getTaggedObject ( hScene,"PLAYER" ))
    
    -- SET POSITION OF THE CAM
    local nX,nY,nZ = object.getTranslation ( this.hPlayer ( ),object.kGlobalSpace )
    local nXx,nYy,nZz = object.getTranslation ( this.getObject ( ),object.kGlobalSpace )
    
    object.setTranslation ( this.getObject ( ),nXx,nY,this.nDepth ( ),object.kGlobalSpace)
    
    this.ANIM ( )

--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
