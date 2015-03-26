--------------------------------------------------------------------------------
--  State............ : ToTarget
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_TESLA.ToTarget_onLoop ( )
--------------------------------------------------------------------------------
	
    
    object.translateTo ( this.getObject ( ),table.getAt ( this.tCoordTarget ( ),0 ),table.getAt ( this.tCoordTarget ( ),1 ),table.getAt ( this.tCoordTarget ( ),2 ), object.kGlobalSpace, 0.2 )
    
       if(this.nBoundsCount ( ) == 0)
       then 
       local hUser = application.getCurrentUser ( )
         user.sendEvent ( hUser, "AI_ENNEMY_MANAGER", "onResetTeslaTable" )
       end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
