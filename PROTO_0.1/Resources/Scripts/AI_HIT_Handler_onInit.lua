--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_HIT.onInit (  )
--------------------------------------------------------------------------------
	
    local hObject = nil
    
	for i = 0, 3
    do
        hObject = object.getChildAt ( this.getObject ( ),i )
        object.postEvent ( this.getObject ( ),i/0.24,"AI_HIT","onVisible",hObject,true )
        object.postEvent ( this.getObject ( ),i*0.24+0.24,"AI_HIT","onVisible",hObject,false )
    end
    
    object.postEvent ( this.getObject ( ),3*0.24,"AI_HIT","onDelete" )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
