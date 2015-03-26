--------------------------------------------------------------------------------
--  Handler.......... : onBomb
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENNEMY_MANAGER.onBomb (  )
--------------------------------------------------------------------------------
	
    local hObject = nil
    
	for i = 0, 14
    do
        hObject = table.getAt ( this.tEnnemy ( ),i )
        object.setTranslation ( hObject,2000,2000,-2000,object.kGlobalSpace )
        
        table.setAt ( this.tEnnemyBool ( ),i, false )
    end
    
	for i = 0, 250
    do
        hObject = table.getAt ( this.tBullet ( ),i )
        object.setTranslation ( hObject,2000,2000,-2000,object.kGlobalSpace )
        
        table.setAt ( this.tBulletBool ( ),i, false )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
