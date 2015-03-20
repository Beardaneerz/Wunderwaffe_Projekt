--------------------------------------------------------------------------------
--  Handler.......... : onJoypadButtonUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_INPUT.onJoypadButtonUp ( nJoypad, nButton )
--------------------------------------------------------------------------------

    local hUser = application.getCurrentUser ( )

    if ( this.hPlayer ( ) )
    then
    --------------------------------------------------------------------------------
    -- MOVE
    --------------------------------------------------------------------------------

        if ( nButton == 7 ) -- UP
        then
            table.setAt ( this.tInput ( ),0,false )
        end
        
        if ( nButton == 10) -- RIGHT
        then
            table.setAt ( this.tInput ( ),1,false )
        end
        
        if ( nButton == 8) -- DOWN
        then
            table.setAt ( this.tInput ( ),2,false )
        end
        
        if ( nButton == 9) -- LEFT
        then
            table.setAt ( this.tInput ( ),3,false )
        end
        
    --------------------------------------------------------------------------------
    -- ACTION
    --------------------------------------------------------------------------------
        
        if ( nButton == 0 )
        then
            this.bFire ( false )
            object.sendEvent ( this.hPlayer ( ),"AI_PLAYER","onManageShoot",false )
        end

        if ( nButton == 1 ) -- FOR ARCADE
        then
            log.warning ( "CHANGE_ARME" )
            object.sendEvent ( this.hPlayer ( ),"AI_PLAYER","onChangeWeapon" )
        end
        
        if ( nButton == 2 )
        then
            log.warning ( "BOMBE" )
              object.sendEvent ( this.hPlayer ( ),"AI_PLAYER","onLaunchBomb" )
                end
        
    --------------------------------------------------------------------------------
    -- CHANGE WEAPON FOR XBOX 360
    -------------------------------------------------------------------------------- 
        
        if (nButton == 12)
        then
            log.warning ( "ADD COINS" )
            
            local sState = user.getAIState ( hUser,"AI_MAIN" )
            
            if ( sState == "IDLE" or sState == "PLAY" )
            then
                user.sendEvent ( hUser,"AI_MAIN","onAddCoins" )
            else
                user.sendEvent ( hUser,"AI_MAIN","onContinue" )
            end
        end
    else
        if (nButton == 12)
        then
            log.warning ( "START GAME" )
            user.sendEvent ( hUser,"AI_MAIN","onMyInit" )
        end
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
