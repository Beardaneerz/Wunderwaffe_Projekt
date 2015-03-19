--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_CAM.onInit (  )
--------------------------------------------------------------------------------


    local hScene=application.getCurrentUserScene()


    this.hPlayer(scene.getTaggedObject(hScene,"PLAYER"))


    local nX,nY,nZ=object.getTranslation(this.hPlayer(),object.kGlobalSpace)
    local nXx,nYy,nZz=object.getTranslation(this.getObject(),object.kGlobalSpace)

    object.setTranslation(this.getObject(),nX,nY,this.nDepth(),object.kGlobalSpace)

    this.ANIM()

--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
