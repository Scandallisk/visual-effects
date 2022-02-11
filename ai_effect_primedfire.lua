--ADDED BY SCAN
--DESCRIPTION:
--This script can be attached to any equipment item or object in the game to give it a visual effect.

--INSTRUCTIONS:
--Inspect the object, and attach the script file name to the object to permenantly give it a special effect.
--Simply removing the script from the object will cause the effect to evaporate after the loop timer expires.

function StartPrimedFire()		
	this:PlayEffect("PrimedFire")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(.1), "CirclingFireEffectLoop")
end

RegisterEventHandler(EventType.Timer, "CirclingFireEffectLoop",
function()

	this:StopEffect("PrimedFire")
	this:PlayEffect("PrimedFire")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(60), "CirclingFireEffectLoop")

end)

StartPrimedFire()