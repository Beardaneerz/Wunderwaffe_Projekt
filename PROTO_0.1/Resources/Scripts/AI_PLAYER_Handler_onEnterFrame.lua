--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.onEnterFrame (  )
--------------------------------------------------------------------------------
	
    local hUser = application.getCurrentUser ( )
    
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
    
    if (hud.getComponent ( hUser,"MAIN.Container_Weapon" ))
    then
        local hComponent = hud.getComponent ( hUser,"MAIN.Container_Weapon" )
     
        --The scene 3D coordinates of the object
        local sceneX, sceneY, sceneZ = object.getTranslation ( this.getObject ( ), object.kGlobalSpace )
         
        --Screen coordinates (-1,1)
        local hudX, hudY = camera.projectPoint ( this.hCam ( ), sceneX, sceneY, sceneZ )
         
        --Convert to HUD coordinates (0,100)
        hudX = hudX * 50 + 50
        hudY = hudY * 50 + 51
         
        --Place the component
        hud.setComponentPosition ( hComponent, hudX, hudY )
    end
    
    if ( this.bChange ( ))
    then
        local dt = application.getLastFrameTime ( )
        
        this.nTimerChange ( this.nTimerChange ( ) + dt )
        
        if ( this.nTimerChange ( )>0.5)
        then
            this.nTimerChange ( 0 )
            this.bChange ( false )
            hud.callAction ( hUser,"MAIN.FADE_OUT" )
        end
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
