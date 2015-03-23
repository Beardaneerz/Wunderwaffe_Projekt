--------------------------------------------------------------------------------
--  State............ : INVINCIBLE
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.INVINCIBLE_onLoop ( )
--------------------------------------------------------------------------------
    
    -- TIMER
    local dt=application.getLastFrameTime()
    this.nTimer(this.nTimer()+dt)
    
--     local nTemp = this.nTimer ( )
--     -- FEEDBACK INVINCIBLE
--     if ( math.mod ( this.nTimer ( ), 0.25 ) == 0 )
--     then
--         if (this.bSens ( ))
--         then
--             this.bSens ( false )
--             shape.setMeshOpacity ( object.getChildAt ( this.getObject ( ),0 ),1 )
--         else
--             this.bSens ( true )
--             shape.setMeshOpacity ( object.getChildAt ( this.getObject ( ),0 ),0 )
--         end
--     end

    if(this.nTimer()>=1)
    then
        this.ON()
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
