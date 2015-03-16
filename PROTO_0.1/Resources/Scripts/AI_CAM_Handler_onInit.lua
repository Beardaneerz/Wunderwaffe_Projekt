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
    
    -- CREATE COLLIDER FOR Y-AXIS
    local notUsed, notUsed2, targetZ = camera.projectPoint ( this.getObject ( ), object.getTranslation ( this.hPlayer ( ), object.kGlobalSpace ) )

    --Find xMax and yMin
    local x, y, z = camera.unprojectPoint ( this.getObject ( ), 1, 1, targetZ )
    local xMax = x 
    local yMin = y 

    --Find xMin and yMax
    x, y, z = camera.unprojectPoint ( this.getObject ( ), -1, -1, targetZ )
    local xMin = x 
    local yMax = y 
    
    object.setTranslation ( object.getChildAt ( this.getObject ( ),0 ),xMin,0,0,object.kGlobalSpace )
    object.setTranslation ( object.getChildAt ( this.getObject ( ),2 ),0,yMax,0,object.kGlobalSpace )
    object.setTranslation ( object.getChildAt ( this.getObject ( ),3 ),xMax,0,0,object.kGlobalSpace )
    object.setTranslation ( object.getChildAt ( this.getObject ( ),1 ),0,yMin,0,object.kGlobalSpace )
    
    this.ANIM ( )

--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
