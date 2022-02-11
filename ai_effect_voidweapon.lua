--ADDED BY SCAN
--DESCRIPTION:
--This script can be attached to any equipment item or object in the game to give it a visual effect.

--INSTRUCTIONS:
--Inspect the object, and attach the script file name to the object to permenantly give it a special effect.
--Simply removing the script from the object will cause the effect to evaporate after the loop timer expires.

function StartCastVoid2()
				
	this:PlayEffect("CastVoid2",2)
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(.1), "SwirlingPurpleCircleEffectLoop")
end

RegisterEventHandler(EventType.Timer, "SwirlingPurpleCircleEffectLoop",
function()

	this:StopEffect("CastVoid2")
	this:PlayEffect("CastVoid2",121)		
	this:ScheduleTimerDelay(TimeSpan.FromMinutes(1), "SwirlingPurpleCircleEffectLoop")

end)

StartCastVoid2()
