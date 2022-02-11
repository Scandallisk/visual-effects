--ADDED BY SCAN
--DESCRIPTION:
--This script can be attached to any equipment item or object in the game to give it a visual effect.

--INSTRUCTIONS:
--Inspect the object, and attach the script file name to the object to permenantly give it a special effect.
--Simply removing the script from the object will cause the effect to evaporate after the loop timer expires.

function StartCastEarth2()		
	this:PlayEffect("CastEarth2",2)
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(.1), "EarthEffectLoop")
end

RegisterEventHandler(EventType.Timer, "EarthEffectLoop",
function()

	this:StopEffect("CastEarth2")
	this:PlayEffect("CastEarth2",121)
	this:ScheduleTimerDelay(TimeSpan.FromMinutes(1), "EarthEffectLoop")

end)

StartCastEarth2()