--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function AI_DEBUG.onEnterFrame (  )
--------------------------------------------------------------------------------
	
local dt=application.getLastFrameTime()
this.nTime(this.nTime()+dt)
local nFps=math.floor(1/dt)


if(this.nTime()>0.2)
then
this.nTime(0)
hud.setLabelText(hud.getComponent(this.getUser(),"DEBUG.DEBUG"),"FPS : "..nFps)
end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
