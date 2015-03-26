--------------------------------------------------------------------------------
--  Handler.......... : onTeslaActive
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENNEMY_MANAGER.onTeslaActive ( hBullet, nCount, hEnemy )
--------------------------------------------------------------------------------
	local nDistance = 20
    local nTempDistance = 0
    local nEnemyIndex = 0
    
    for i=0,this.nEnemys ( )
    do
        if( (table.getAt ( this.tEnnemyBool ( ), i ) == true) and (nCount > 0) and (table.getAt ( this.tTeslaBool ( ), i ) ==false))
        then 
        
            nTempDistance = object.getDistanceToObject ( hEnemy,table.getAt ( this.tEnnemy ( ),i ) )
            
            if(nTempDistance < this.nMaxTeslaDist() and nTempDistance > 0.5 )
            then 
                if(nTempDistance < nDistance ) 
                then 
                    nEnemyIndex = i 
                    nDistance = nTempDistance 
                end
            end
           
        end
        
    end
    
   local hTarget = table.getAt ( this.tEnnemy ( ),nEnemyIndex )
   table.setAt ( this.tTeslaBool ( ),nEnemyIndex,true )
   
   object.sendEvent ( hBullet, "AI_TESLA", "onReceiveTarget", hTarget )
   
	
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
