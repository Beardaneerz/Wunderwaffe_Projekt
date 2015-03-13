--------------------------------------------------------------------------------
--  State............ : ANIM
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_CAM.ANIM_onLoop ( )
--------------------------------------------------------------------------------
	
    local dt = application.getAverageFrameTime ( )
    
	local nX,nY,nZ = object.getTranslation ( this.hPlayer ( ),object.kGlobalSpace )
    local nXx,nYy,nZz = object.getTranslation ( this.getObject ( ),object.kGlobalSpace )
    
    local nY2 = 0
    
    if ( nY <5 and nY >-5 )
    then
    
        nY2 = nY
    
    else
    
        nY2 = nYy
        
    end
    
    object.setTranslation ( this.getObject ( ),nXx + dt/this.nScrollingX ( ),nYy,this.nDepth ( ),object.kGlobalSpace )
    nX,nY,nZ = object.getTranslation ( this.getObject ( ),object.kGlobalSpace )
    object.translateTo ( this.getObject ( ),nX,nY2,this.nDepth ( ),object.kGlobalSpace,0.03 )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
