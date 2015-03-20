--------------------------------------------------------------------------------
--  Handler.......... : onLostCoins
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_MAIN.onLostCoins (  )
--------------------------------------------------------------------------------
	
    local hUser = application.getCurrentUser ( )
    
    -- LOOSE LIFE
    this.nLife ( this.nLife ( ) - 1 )
     
    -- CHECK DEATH
    if ( this.nLife ( ) <= 0 )
    then
        this.nCoins ( this.nCoins ( ) - 1)
        hud.setLabelText ( hud.getComponent ( hUser,"MAIN.COINS" ),""..this.nCoins ( ) )
        
        if ( this.nCoins ( ) <= 0 )
        then
            hud.callAction ( hUser,"MAIN.GAME_OVER_ON" )
        else
            this.CONTINUE ( )
            hud.callAction ( hUser,"MAIN.CONTINUE_ON" )
            
            user.sendEvent (hUser,"AI_SCORE","onResetScore")
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
