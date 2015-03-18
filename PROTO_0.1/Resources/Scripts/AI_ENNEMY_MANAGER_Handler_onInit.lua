--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENNEMY_MANAGER.onInit (  )
--------------------------------------------------------------------------------
	
	local hScene = application.getCurrentUserScene ( )
    local hObject = nil
    
    for i = 0, 14
    do
        hObject = scene.createRuntimeObject ( hScene, "OBJ_ENNEMY" )
        object.setTranslation ( hObject,2000,2000,-2000,object.kGlobalSpace )
        
        table.add ( this.tEnnemy ( ), hObject )
	end
    
    for i = 0, 250
    do
        hObject = scene.createRuntimeObject ( hScene, "OBJ_E_BULLET" )
        object.setTranslation ( hObject,2000,2000,-2000,object.kGlobalSpace )
        
        object.sendEvent ( hObject,"AI_ENEMYBULLET","onSetID",i )
        
        table.add ( this.tBulletBool ( ), false )
        table.add ( this.tBullet ( ), hObject )
	end
    
    local nCount = scene.getObjectCount ( hScene )
   
    for i = 0, nCount
    do
        hObject = scene.getObjectAt ( hScene,i )
        
        if (hObject)
        then
            if (  string.contains ( scene.getObjectTag ( hScene,hObject ),"SPAWN" ) )
            then
                table.add ( this.tSpawn ( ), hObject )
            end
        end
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
