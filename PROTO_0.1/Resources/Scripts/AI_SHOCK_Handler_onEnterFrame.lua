--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_SHOCK.onEnterFrame (  )
--------------------------------------------------------------------------------
	
	this.Follow ( )
    if(this.bActive()) 
    then 
        if(this.nScale ( ) >2 )
        then 
            this.nWayFactor ( this.nWayFactor ( )*-1)
            
        elseif (this.nScale ( ) <0.1)
        then 
            this.nWayFactor ( 0)
            this.bActive ( false)
            this.nIncrement ( 0.01)
        end
        
        this.nScale ( this.nScale ( )+this.nIncrement ( )*this.nWayFactor())
        this.ActiveShield ( )
    end
    
    log.warning ( this.bActive ( ) )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
