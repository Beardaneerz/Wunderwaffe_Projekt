--------------------------------------------------------------------------------
--  Function......... : Bombs
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.Bombs ( )
--------------------------------------------------------------------------------
	
	if(this.nBombCount ( )>0)
    then
        local hScene = application.getCurrentUserScene ( )
        local pX,pY , pZ = object.getTranslation ( this.getObject ( ),object.kGlobalSpace )
        local hBomb = scene.createRuntimeObject ( hScene,"OBJ_BOMB" )
        object.setTranslation ( hBomb,pX,pY,pZ,object.kGlobalSpace )
        this.nBombCount ( this.nBombCount ( )-1)
        
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
