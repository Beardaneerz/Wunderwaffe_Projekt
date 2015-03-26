--------------------------------------------------------------------------------
--  Handler.......... : onShoot
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_PLAYER.onShoot ( nType  )
--------------------------------------------------------------------------------
	
    if(nType == 1)
    then
        if(this.nBulletCounter ( ) <= 5 )
        then
            object.postEvent ( this.getObject ( ),this.nCadence(),"AI_PLAYER","onShoot",nType )
            this.nBulletCounter ( this.nBulletCounter ( )+1)
            this.Weapon_1 ( )
        
        else 
            --sound.stop ( this.getObject ( ),1 )
            
            this.nBulletCounter ( 0 )
        end
    end
    
    
    
    if(nType == 2)
    then
        if(this.bShoot ( ))
        then 
            this.Weapon_2 ( )
        else
            
        end
    end
    
    
    if(nType == 3)
    then
            if(this.bShoot ( ))
        then 
            this.Weapon_3 ( )
        else
            
        end
    end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
--