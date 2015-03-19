--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.onEnterFrame (  )
--------------------------------------------------------------------------------
	
    if ( table.getAt ( this.tRotate ( ),0 ))
    then
        object.rotateTo ( this.getObject ( ),-90,0,0,object.kGlobalSpace,0.01)
        table.setAt ( this.tRotate ( ),0,false )
 
    elseif  ( table.getAt ( this.tRotate ( ),1 ))
    then
        object.rotateTo ( this.getObject ( ),90,0,0,object.kGlobalSpace,0.01 )
        table.setAt ( this.tRotate ( ),1,false )
    else
        object.rotateTo ( this.getObject ( ),0,0,0,object.kGlobalSpace,0.3 )

    end

    if(this.hCam())
    then
        local hScene=application.getCurrentUserScene()

        local nX,nY,nZ=object.getTranslation(this.getObject(),object.kGlobalSpace)
        local nXx,nYy,nZz=object.getTranslation(this.hCam(),object.kGlobalSpace)


        local notUsed,notUsed2,targetZ=camera.projectPoint(this.hCam(),object.getTranslation(this.getObject(),object.kGlobalSpace))


        local x,y,z=camera.unprojectPoint(this.hCam(),1,1,targetZ)
        local xMax=x - 0.5
        local yMin=y - 0.5


        x,y,z=camera.unprojectPoint(this.hCam(),-1,-1,targetZ)
        local xMin=x+0.5
        local yMax=y+0.5



        if(nX<xMin)
        then
            object.translateTo(this.getObject(),xMin+0.5,nY,nZ,object.kGlobalSpace,0.2)
        elseif(nX>xMax)
        then
            object.translateTo(this.getObject(),xMax-0.5,nY,nZ,object.kGlobalSpace,0.2)
        end

        if(nY>yMin)
        then
            object.translateTo(this.getObject(),nX,nY-1,nZ,object.kGlobalSpace,0.2)
        elseif(nY<yMax)
        then
            object.translateTo(this.getObject(),nX,nY+1,nZ,object.kGlobalSpace,0.2)
        end
	end 
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
