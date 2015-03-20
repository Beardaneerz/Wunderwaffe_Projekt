--------------------------------------------------------------------------------
--  Handler.......... : onMyInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENNEMY_MANAGER.onMyInit (  )
--------------------------------------------------------------------------------
	
    local hUser = application.getCurrentUser ( )
    local hScene = application.getCurrentUserScene ( )
    local hObject = nil
    
    for i=0, this.nDelay ( )
    do
        user.postEvent ( hUser,0.2*(i/10),"AI_ENNEMY_MANAGER","onCreateAssets" )
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
