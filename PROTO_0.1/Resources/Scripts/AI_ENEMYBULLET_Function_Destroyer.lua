--------------------------------------------------------------------------------
--  Function......... : Destroyer
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENEMYBULLET.Destroyer ( )
--------------------------------------------------------------------------------
	 
    local hScene = application.getCurrentUserScene ( )
    
	-- GET & SET PLAYER OBJECT 
    this.hParent( scene.getTaggedObject ( hScene,"PLAYER" ))
    this.hCam( scene.getTaggedObject ( hScene,"CAM" )) 
     
    
    -- CREATE COLLIDER FOR Y-AXIS
    local notUsed, notUsed2, targetZ = camera.projectPoint ( this.hCam(), object.getTranslation ( this.hParent ( ), object.kGlobalSpace ) )

    --Find xMax and yMin
    local x, y, z = camera.unprojectPoint ( this.hCam(), 1, 1, targetZ ) 
    local xMax = x 
    local yMin = y 

    --Find xMin and yMax
    x, y, z = camera.unprojectPoint ( this.hCam(), -1, -1, targetZ ) 
    local xMin = x 
    local yMax = y 
    
    local bX,bY,notUsed3 = object.getTranslation ( this.getObject ( ),object.kGlobalSpace )
    
    if(bX > xMax or bX < xMin or bY < yMax or bY > yMin )
    then 
        this.IDLE ( )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
