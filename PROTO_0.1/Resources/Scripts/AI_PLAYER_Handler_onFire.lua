--------------------------------------------------------------------------------
--  Handler.......... : onFire
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.onFire ( bOn )
--------------------------------------------------------------------------------
	
    this.bShoot ( true)
    
    if (bOn)
    then
        this.FIRE ( )
        
        if (this.nActualWeapon ( ) == 0 )
        then

            bOn = false 
            object.sendEvent ( this.getObject ( ),"AI_PLAYER","onShoot",1 )

            
        elseif (this.nActualWeapon ( ) == 1)
        then
        

            bOn = false 
            object.sendEvent ( this.getObject ( ),"AI_PLAYER","onShoot",2)

            
        elseif (this.nActualWeapon ( ) == 2)
        then
        
            bOn = false 
            object.sendEvent ( this.getObject ( ),"AI_PLAYER","onShoot",3)
            
            
        else
        
            this.Weapon_4 ( )
              bOn = false 
            
        end
    else
        this.ON ( )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
