--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_INPUT.onKeyboardKeyUp ( kKeyCode )
--------------------------------------------------------------------------------
	
    local hUser = application.getCurrentUser ( )

    if ( this.hPlayer ( ) )
    then
--------------------------------------------------------------------------------
-- MOVE
--------------------------------------------------------------------------------

        if ( kKeyCode == 25 ) -- UP
        then
            table.setAt ( this.tInput ( ),0,false )
        end
        
        if ( kKeyCode == 3) -- RIGHT
        then
            table.setAt ( this.tInput ( ),1,false )
        end
        
        if ( kKeyCode == 18) -- DOWN
        then
            table.setAt ( this.tInput ( ),2,false )
        end
        
        if ( kKeyCode == 16) -- LEFT
        then
            table.setAt ( this.tInput ( ),3,false )
        end
    
--------------------------------------------------------------------------------
-- ACTION
--------------------------------------------------------------------------------
    
        if ( kKeyCode == 7 )
        then
            this.bFire ( false )
            object.sendEvent ( this.hPlayer ( ),"AI_PLAYER","onManageShoot",false )
        end

        if ( kKeyCode == 9 ) -- FOR ARCADE
        then
            log.warning ( "CHANGE_ARME" )
            object.sendEvent ( this.hPlayer ( ),"AI_PLAYER","onChangeWeapon" )
        end
        
        if ( kKeyCode == 10 )
        then
            log.warning ( "BOMBE" )
            object.sendEvent ( this.hPlayer ( ),"AI_PLAYER","onLaunchBomb" )
        end
	
 
--------------------------------------------------------------------------------
-- CHANGE WEAPON FOR XBOX 360
-------------------------------------------------------------------------------- 
    
        if (kKeyCode == 66)
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
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
