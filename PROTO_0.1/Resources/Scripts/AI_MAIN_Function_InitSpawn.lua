--------------------------------------------------------------------------------
--  Function......... : InitSpawn
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_MAIN.InitSpawn ( )
--------------------------------------------------------------------------------
	
    local hScene = application.getCurrentUserScene ( )
	local nCount = scene.getObjectCount ( hScene )
    
    local hObject = nil
    
    for i = 0, nCount-1
    do
        hObject = scene.getObjectAt ( hScene,i )
        
        if ( object.getAIModelNameAt ( hObject,0 ) == "AI_SPAWN" )
        then
            scene.setObjectTag ( hScene,hObject,"SPAWN_"..i )
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
