--------------------------------------------------------------------------------
--  Function......... : GetEnemys
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_TESLA.GetEnemys ( )
--------------------------------------------------------------------------------
	
	local hScene = application.getCurrentUserScene ( )
    
	-- GET & SET PLAYER OBJECT 
    this.hPlayer( scene.getTaggedObject ( hScene,"PLAYER" ))
    this.hCam (scene.getTaggedObject ( hScene,"CAM" ))
    
    
    -- CREATE COLLIDER FOR Y-AXIS
    local notUsed, notUsed2, targetZ = camera.projectPoint ( this.hCam(), object.getTranslation ( this.hPlayer ( ), object.kGlobalSpace ) )

    --Find xMax and yMin
    local x, y, z = camera.unprojectPoint ( this.hCam(), 1, 1, targetZ )
    local xMax = x 
    local yMin = y 

    --Find xMin and yMax
    x, y, z = camera.unprojectPoint ( this.hCam(), -1, -1, targetZ )
    local xMin = x 
    local yMax = y 
    
    local bX,bY,notUsed3 = object.getTranslation ( this.getObject ( ),object.kGlobalSpace )
    

	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
