--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.onEnterFrame (  )
--------------------------------------------------------------------------------
	
    --INIT ROTATION EVERY FRAME
    object.setRotation ( this.getObject ( ),0,0,0,object.kGlobalSpace )
    
    if (this.hCam ( ))
    then
        local hScene = application.getCurrentUserScene ( )
        
        --CHECK IF AVATAR IS OUT OF SCREEN
        
        -- SET POSITION OF THE CAM
        local nX,nY,nZ = object.getTranslation ( this.getObject ( ),object.kGlobalSpace )
        local nXx,nYy,nZz = object.getTranslation ( this.hCam ( ),object.kGlobalSpace )
        
        -- CREATE COLLIDER FOR Y-AXIS
        local notUsed, notUsed2, targetZ = camera.projectPoint ( this.hCam ( ), object.getTranslation ( this.getObject ( ), object.kGlobalSpace ) )

        -- FIND xMax AND yMin
        local x, y, z = camera.unprojectPoint ( this.hCam ( ), 1, 1, targetZ )
        local xMax = x - 0.5
        local yMin = y - 0.5

        -- FIND xMin AND yMax
        x, y, z = camera.unprojectPoint ( this.hCam ( ), -1, -1, targetZ )
        local xMin = x + 0.5
        local yMax = y + 0.5
        
        
        -- CHECK FOR COLLISION WITH SCREEN
        if ( nX<xMin )
        then
            object.translateTo ( this.getObject ( ),xMin+0.5,nY,nZ,object.kGlobalSpace,0.2 )
        elseif ( nX>xMax )
        then
            object.translateTo ( this.getObject ( ),xMax-0.5,nY,nZ,object.kGlobalSpace,0.2  )
        end
        
        if ( nY>yMin )
        then
            object.translateTo ( this.getObject ( ),nX,nY-1,nZ,object.kGlobalSpace,0.2  )
        elseif ( nY<yMax )
        then
            object.translateTo ( this.getObject ( ),nX,nY+1,nZ,object.kGlobalSpace,0.2  )
        end
    end

	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
