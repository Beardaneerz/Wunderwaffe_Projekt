--------------------------------------------------------------------------------
--  Function......... : ActiveShield
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_SHOCK.ActiveShield ( )
--------------------------------------------------------------------------------
	
	    if(this.bActive()) 
    then 
        if(this.nScale ( ) >2 )
        then 
            this.nWayFactor ( -1)
             this.nIncrement ( 0.03)
            
        elseif (this.nScale ( ) <0.1)
        then 
            this.nWayFactor ( 0)
            this.bActive ( false)
           
        end
        
        this.nScale ( this.nScale ( )+this.nIncrement ( )*this.nWayFactor())
        object.setScale ( this.getObject ( ),this.nScale ( ),this.nScale ( ),this.nScale ( ) ) 
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
