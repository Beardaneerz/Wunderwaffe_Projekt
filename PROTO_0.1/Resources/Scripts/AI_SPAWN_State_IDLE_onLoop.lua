--------------------------------------------------------------------------------
--  State............ : IDLE
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_SPAWN.IDLE_onLoop ( )
--------------------------------------------------------------------------------

    if(this.hCam())
    then
        local hScene = application.getCurrentUserScene()

        local nX,nY,nZ = object.getTranslation(this.getObject(),object.kGlobalSpace)
        local nXx,nYy,nZz = object.getTranslation(this.hCam(),object.kGlobalSpace)


        local notUsed,notUsed2,targetZ = camera.projectPoint(this.hCam(),object.getTranslation(this.getObject(),object.kGlobalSpace))


        local x,y,z=camera.unprojectPoint(this.hCam(),1,1,targetZ)
        local xMax = x 
        local yMin = y 


        x,y,z=camera.unprojectPoint(this.hCam(),-1,-1,targetZ)
        local xMin = x 
        local yMax = y 

        if( nX>xMin and nX<xMax )
        then

            this.SPAWN ( )
            
        end
	end 
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
