--------------------------------------------------------------------------------
--  Handler.......... : onCreateAssets
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENNEMY_MANAGER.onCreateAssets (  )
--------------------------------------------------------------------------------
	
    log.message ( "test" )
	local hScene = application.getCurrentUserScene ( )
    local hObject = nil
    
    for i = 0, this.nEnemys ( )/this.nDelay ( )
    do
        hObject = scene.createRuntimeObject ( hScene, "OBJ_ENNEMY" )
        object.setTranslation ( hObject,2000,2000,-2000,object.kGlobalSpace )
        object.sendEvent ( hObject,"AI_ENEMY","onSetID",i )
        
        table.add ( this.tEnnemyBool ( ), false )
        table.add ( this.tEnnemy ( ), hObject )
        table.add ( this.tTeslaBool ( ),false )
	end
    
    for i = 0, this.nFire ( )/this.nDelay ( )
    do
        hObject = scene.createRuntimeObject ( hScene, "OBJ_E_BULLET" )
        object.setTranslation ( hObject,2000,2000,-2000,object.kGlobalSpace )
        
        object.sendEvent ( hObject,"AI_ENEMYBULLET","onSetID",i )
        
        table.add ( this.tBulletBool ( ), false )
        table.add ( this.tBullet ( ), hObject )
	end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
