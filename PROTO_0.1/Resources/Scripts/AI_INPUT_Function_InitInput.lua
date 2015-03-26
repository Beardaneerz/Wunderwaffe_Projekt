--------------------------------------------------------------------------------
--  Function......... : InitInput
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_INPUT.InitInput ( )
--------------------------------------------------------------------------------
    
	local kType = input.getJoypadType ( this.getUser ( ), 0 )
    
    if ( kType == input.kJoypadTypeStandard )
    then
        log.message ( "STANDARD" )
        
    elseif ( kType == input.kJoypadTypeXbox360 )
    then
        log.message ( "XBOX_360" )
    else
        hud.callAction ( this.getUser ( ),"INPUT.SHOW_WARNING" )
    end
    
    this.nKindInput ( kType )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
