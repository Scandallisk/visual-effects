--ADDED BY SCAN
--DESCRIPTION:
--This script can be attached to any equipment item or object in the game to give it a visual effect.

--INSTRUCTIONS:
--Inspect the object, and attach the script file name to the object to permenantly give it a special effect.
--Simply removing the script from the object will cause the effect to evaporate after the loop timer expires.

function StartGroundCircleGreen2()		
	this:PlayEffect("GroundCircleGreen2")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(.1), "GroundcircleGreenEffectLoop")
end

RegisterEventHandler(EventType.Timer, "GroundcircleGreenEffectLoop",
function()

	this:StopEffect("GroundCircleGreen2")
	this:PlayEffect("GroundCircleGreen2")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(5), "GroundcircleGreenEffectLoop")

end)

StartGroundCircleGreen2()