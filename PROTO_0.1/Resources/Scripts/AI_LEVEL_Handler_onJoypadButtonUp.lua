--------------------------------------------------------------------------------
--  Handler.......... : onJoypadButtonUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_LEVEL.onJoypadButtonUp ( nJoypad, nButton )
--------------------------------------------------------------------------------
	
    if (this.bMap ( ))
    then
        local hUser = application.getCurrentUser ( )
        
        local nTemp = this.nActualLvl ( )
        
        if ( nButton == 7 )
        then
            this.nActualLvl ( this.nActualLvl ( ) + 1 )
        end
        
        if ( nButton == 8 )
        then
            this.nActualLvl ( this.nActualLvl ( ) - 1 )
        end
        
        if ( nButton == 9 )
        then
            this.nActualLvl ( this.nActualLvl ( ) + 1 )
        end
        
        if ( nButton == 10 )
        then
            this.nActualLvl ( this.nActualLvl ( ) - 1 )
        end
        
        if ( this.nActualLvl ( ) >= 4 )
        then
            this.nActualLvl ( 1 )
        elseif (this.nActualLvl ( )<= 0 )
        then
            this.nActualLvl ( 4 )
        end
        
        hud.callAction ( hUser,"MAP.SHRINK_"..nTemp )
        hud.callAction ( hUser,"MAP.SCALE_"..this.nActualLvl ( ) )
        
        if ( nButton == 0 and this.nActualLvl ( ) == 2 )
        then
            hud.callAction ( hUser,"MAP.FADE" )
            user.sendEvent ( hUser,"AI_MAIN","onMyInit" )
            this.bMap ( false )
        end
	end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
