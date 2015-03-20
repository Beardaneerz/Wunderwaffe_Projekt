--------------------------------------------------------------------------------
--  Handler.......... : onReceiveSpawn
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_SPAWN.onReceiveSpawn ( hTemp )
--------------------------------------------------------------------------------
	if( hTemp ~= nil)
    then
        this.hEnnemy ( hTemp )
    
        local nX,nY,nZ = object.getTranslation ( this.getObject ( ),object.kGlobalSpace )
        object.setTranslation ( this.hEnnemy ( ),nX,nY,nZ,object.kGlobalSpace )
    
        object.sendEvent ( this.hEnnemy ( ),"AI_ENEMY","onMyInit",this.getObject ( ),10,1,5,1,15,100 )
    
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
