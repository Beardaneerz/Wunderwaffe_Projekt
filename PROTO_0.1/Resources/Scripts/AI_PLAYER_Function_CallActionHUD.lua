--------------------------------------------------------------------------------
--  Function......... : CallActionHUD
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.CallActionHUD ( )
--------------------------------------------------------------------------------
	
    local hUser = application.getCurrentUser ( )

    hud.callAction ( hUser,"MAIN.FADE_IN" )
    
                if ( this.nActualWeapon ( ) == 0)
                then
                        hud.callAction ( hUser,"MAIN.SWITCH_0",50,80 )
                        hud.callAction ( hUser,"MAIN.SWITCH_1",25,50 )
                        hud.callAction ( hUser,"MAIN.SWITCH_2",50,15 )
                        hud.callAction ( hUser,"MAIN.SWITCH_3",75,50 )
                        
                        hud.callAction ( hUser,"MAIN.OPACITY_0",40 )
                        hud.callAction ( hUser,"MAIN.OPACITY_1",30 )
                        hud.callAction ( hUser,"MAIN.OPACITY_2",30 )
                        hud.callAction ( hUser,"MAIN.OPACITY_3",30 )
                        
                elseif ( this.nActualWeapon ( ) == 1 )
                then
                        hud.callAction ( hUser,"MAIN.SWITCH_0",25,50 )
                        hud.callAction ( hUser,"MAIN.SWITCH_1",50,15 )
                        hud.callAction ( hUser,"MAIN.SWITCH_2",75,50 )
                        hud.callAction ( hUser,"MAIN.SWITCH_3",50,80 )
                        
                        hud.callAction ( hUser,"MAIN.OPACITY_0",30 )
                        hud.callAction ( hUser,"MAIN.OPACITY_1",30 )
                        hud.callAction ( hUser,"MAIN.OPACITY_2",30 )
                        hud.callAction ( hUser,"MAIN.OPACITY_3",40 )
                        
                elseif ( this.nActualWeapon ( ) == 2 )
                then
                        hud.callAction ( hUser,"MAIN.SWITCH_0",50,15 )
                        hud.callAction ( hUser,"MAIN.SWITCH_1",75,50 )
                        hud.callAction ( hUser,"MAIN.SWITCH_2",50,80 )
                        hud.callAction ( hUser,"MAIN.SWITCH_3",25,50 )
                        
                        hud.callAction ( hUser,"MAIN.OPACITY_0",30 )
                        hud.callAction ( hUser,"MAIN.OPACITY_1",30 )
                        hud.callAction ( hUser,"MAIN.OPACITY_2",40 )
                        hud.callAction ( hUser,"MAIN.OPACITY_3",30 )
                        
                elseif ( this.nActualWeapon ( ) == 3 )
                then
                        hud.callAction ( hUser,"MAIN.SWITCH_0",75,50 )
                        hud.callAction ( hUser,"MAIN.SWITCH_1",50,80 )
                        hud.callAction ( hUser,"MAIN.SWITCH_2",25,50 )
                        hud.callAction ( hUser,"MAIN.SWITCH_3",50,15 )
                        
                        hud.callAction ( hUser,"MAIN.OPACITY_0",30 )
                        hud.callAction ( hUser,"MAIN.OPACITY_1",40 )
                        hud.callAction ( hUser,"MAIN.OPACITY_2",30 )
                        hud.callAction ( hUser,"MAIN.OPACITY_3",30 )
                end
        
        this.nTimerChange ( 0 )
        this.bChange ( true )
    
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
