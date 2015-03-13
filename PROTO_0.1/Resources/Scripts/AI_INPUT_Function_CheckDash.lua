--------------------------------------------------------------------------------
--  Function......... : CheckDash
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_INPUT.CheckDash ( )
--------------------------------------------------------------------------------
	
    local nCountX = 0
    local nCountXx = 0
    local nCountY = 0
    local nCountYy = 0
    
    local bSwitchX = false
    local bSwitchXx = false
    local bSwitchY = false
    local bSwitchYy = false
    
	for i=0,this.nSizeBuffer ( )
    do
        if ( not bSwitchX )
        then
            if (table.getAt ( this.tFrameBufferX ( ),i) > 0.9)
            then 
                
                nCountX = nCountX +1
                bSwitchX = true
                
            end
        else
            if (table.getAt ( this.tFrameBufferX ( ),i) < 0.1 and table.getAt ( this.tFrameBufferX ( ),i) > -0.1 )
            then
                nCountX = nCountX +1 
                bSwitchX = false
            end
        end
    end
    
    for i=0,this.nSizeBuffer ( )
    do
        if ( not bSwitchXx )
        then
            if (table.getAt ( this.tFrameBufferX ( ),i) < -0.9)
            then 
                
                nCountXx = nCountXx +1
                bSwitchXx = true
                
            end
        else
            if (table.getAt ( this.tFrameBufferX ( ),i) < 0.1 and table.getAt ( this.tFrameBufferX ( ),i) > -0.1 )
            then
                nCountXx = nCountXx +1 
                bSwitchXx = false
            end
        end
    end
    
    for i=0,this.nSizeBuffer ( )
    do
        if ( not bSwitchY )
        then
            if (table.getAt ( this.tFrameBufferY ( ),i) > 0.9 )
            then 
                
                nCountY = nCountY +1
                bSwitchY = true
                
            end
        else
            if (table.getAt ( this.tFrameBufferY ( ),i) < 0.1 and table.getAt ( this.tFrameBufferY ( ),i) > -0.1 )
            then
                nCountY = nCountY +1 
                bSwitchY = false
            end
        end
    end
    
    for i=0,this.nSizeBuffer ( )
    do
        if ( not bSwitchYy )
        then
            if (table.getAt ( this.tFrameBufferY ( ),i) < -0.9 )
            then 
                
                nCountYy = nCountYy +1
                bSwitchYy = true
                
            end
        else
            if (table.getAt ( this.tFrameBufferY ( ),i) < 0.1 and table.getAt ( this.tFrameBufferY ( ),i) > -0.1)
            then
                nCountYy = nCountYy +1 
                bSwitchYy = false
            end
        end
    end
    

	if (nCountX >3) then log.message ("DASHX") end
    if (nCountY >3) then log.message ("DASHY") end
    if (nCountXx >3) then log.message ("DASHXx") end
    if (nCountYy >3) then log.message ("DASHYy") end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
