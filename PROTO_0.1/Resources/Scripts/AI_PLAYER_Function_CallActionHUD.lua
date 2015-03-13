--------------------------------------------------------------------------------
--  Function......... : CallActionHUD
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.CallActionHUD ( bWay )
--------------------------------------------------------------------------------
	
    local hUser = application.getCurrentUser ( )

    for i=0,3
    do
        if ( i == this.nActualWeapon ( ))
        then
            if ( not hud.isActionRunning ( hUser,"MAIN.SWITCH_"..i ))
            then
                if (bWay)
                then
                    hud.callAction ( hUser,"MAIN.SWITCH_"..i ,18.26)
                    
                    if ( i == 0)
                    then
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_1" ),127 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_2" ),126 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_3" ),125 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_4" ),124 )
                    elseif ( i == 1 )
                    then
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_1" ),124 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_2" ),127 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_3" ),126 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_4" ),125 )
                    elseif ( i == 2 )
                    then
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_1" ),125 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_2" ),124 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_3" ),127 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_4" ),126 )                  
                    elseif ( i == 3 )
                    then
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_1" ),126 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_2" ),125 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_3" ),124 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_4" ),127 )  
                    end
                    
                else
                    hud.callAction ( hUser,"MAIN.SWITCH_"..i+4 ,7.88)
                    
                    if ( i == 0)
                    then
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_1" ),127 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_2" ),126 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_3" ),125 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_4" ),124 )
                    elseif ( i == 1 )
                    then
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_1" ),124 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_2" ),127 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_3" ),126 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_4" ),125 )
                    elseif ( i == 2 )
                    then
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_1" ),125 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_2" ),124 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_3" ),127 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_4" ),126 )                  
                    elseif ( i == 3 )
                    then
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_1" ),126 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_2" ),125 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_3" ),124 )
                            hud.setComponentZOrder ( hud.getComponent ( hUser,"MAIN.FIRE_4" ),127 )  
                    end
                end
            end
        end
    end
    
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
