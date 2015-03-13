--------------------------------------------------------------------------------
--  Handler.......... : onManageShoot
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.onManageShoot ( bValue )
--------------------------------------------------------------------------------
	
	this.bShoot ( bValue)
    sound.stop ( this.getObject ( ),1 )
    
    
    if(this.nActualWeapon ( )==1)
    then
        object.sendEvent ( this.hStockLaser(),"AI_LASER","onStop" )
    end
    
    if(this.nActualWeapon ( )==3)
    then
        object.sendEvent ( this.hShield ( ),"AI_SHOCK","onStop" )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
