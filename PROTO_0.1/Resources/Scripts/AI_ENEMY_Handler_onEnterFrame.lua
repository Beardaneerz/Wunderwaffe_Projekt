--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENEMY.onEnterFrame (  )
--------------------------------------------------------------------------------
	
    local dt = application.getLastFrameTime ( )
    -- GET TRANSLATION OF THE SPAWN
    if ( table.getAt ( this.tTrajectory ( ),this.nTrajectory ( ) )~=nil)
    then
        if ( not this.bTrajectory ( ))
        then    
            this.GetTrajectory ( )
        end
        
        object.translate ( this.getObject ( ),(this.nTraX ( )*dt)*2,(this.nTraY ( )*dt)*2,0,object.kGlobalSpace )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
