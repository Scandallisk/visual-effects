--ADDED BY SCAN
--DESCRIPTION:
--This script can be attached to any equipment item or object in the game to give it a visual effect.

--INSTRUCTIONS:
--Inspect the object, and attach the script file name to the object to permenantly give it a special effect.
--Simply removing the script from the object will cause the effect to evaporate after the loop timer expires.

function StartTurbulentWindEffect()
				
	this:PlayEffect("TurbulentWindEffect",2)
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(.1), "WindEffectLoop")
end

RegisterEventHandler(EventType.Timer, "WindEffectLoop",
function()

	this:StopEffect("TurbulentWindEffect")
	this:PlayEffect("TurbulentWindEffect",121)		
	this:ScheduleTimerDelay(TimeSpan.FromMinutes(1), "WindEffectLoop")

end)

StartTurbulentWindEffect()
