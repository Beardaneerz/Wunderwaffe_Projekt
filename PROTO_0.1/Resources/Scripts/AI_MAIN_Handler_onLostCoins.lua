--------------------------------------------------------------------------------
--  Handler.......... : onLostCoins
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_MAIN.onLostCoins (  )
--------------------------------------------------------------------------------
	
    local hUser = application.getCurrentUser ( )
    
    this.nLife ( this.nLife ( ) - 1 )
     
    if ( this.nLife ( ) <= 0 )
    then
        this.nCoins ( this.nCoins ( ) - 1)
        hud.setLabelText ( hud.getComponent ( hUser,"MAIN.COINS" ),""..this.nCoins ( ) )
        
        if ( this.nCoins ( ) <= 0 )
        then
            hud.callAction ( hUser,"MAIN.GAME_OVER_ON" )
        else
            this.nLife ( 3 )
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
