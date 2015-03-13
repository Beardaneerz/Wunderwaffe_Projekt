--------------------------------------------------------------------------------
--  Function......... : CheckMove
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.CheckMove ( nXx, nYy )
--------------------------------------------------------------------------------
	
	local notUsed, notUsed2, targetZ = camera.projectPoint ( this.hCam ( ), object.getTranslation ( this.getObject ( ), object.kGlobalSpace ) )

    --Find xMax and yMin
    local x, y, z = camera.unprojectPoint ( this.hCam ( ), 1, 1, targetZ )
    local xMax = x 
    local yMin = y 

    --Find xMin and yMax
    x, y, z = camera.unprojectPoint ( this.hCam ( ), -1, -1, targetZ )
    local xMin = x 
    local yMax = y 
    
    if ( nXx < xMax and nXx > xMin and nYy > yMax and nYy < yMin )
    then
        return true
    else
      
        return false
    end

--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
