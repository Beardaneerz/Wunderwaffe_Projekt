--------------------------------------------------------------------------------
--  Handler.......... : onLoadBullet
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_ENNEMY_MANAGER.onLoadBullet ( hObject, nAngle )
--------------------------------------------------------------------------------

    local hTarget = table.getAt ( this.tBullet( ),this.nIndexBullet ( ) )
    this.nIndexBullet ( this.nIndexBullet ( ) + 1 )
    
    if ( this.nIndexBullet ( ) > this.nFire ( ) )
    then
        this.nIndexBullet ( 0 )
    end
    
    object.sendEvent ( hObject ,"AI_ENEMY","onCreateBullet",hTarget, nAngle )

--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
