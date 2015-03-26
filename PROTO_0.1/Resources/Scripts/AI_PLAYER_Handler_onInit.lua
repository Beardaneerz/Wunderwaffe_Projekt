--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.onInit (  )
--------------------------------------------------------------------------------
	
    local hScene = application.getCurrentUserScene ( )
    
	-- GET & SET PLAYER OBJECT
    this.hCam( scene.getTaggedObject ( hScene,"CAM" ))
    this.InitSound ( )
    
    this.ON ( )
    this.InitShield ( )
    
    object.setVisible ( object.getChildAt ( this.getObject ( ),0 ),false )
    object.setVisible ( object.getChildAt ( this.getObject ( ),4 ),false )
    
    for i = 0, 2
    do
        table.add ( this.tRotate ( ), false )
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
