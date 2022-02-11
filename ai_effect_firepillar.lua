--ADDED BY SCAN
--DESCRIPTION:
--This script can be attached to any equipment item or object in the game to give it a visual effect.

--INSTRUCTIONS:
--Inspect the object, and attach the script file name to the object to permenantly give it a special effect.
--Simply removing the script from the object will cause the effect to evaporate after the loop timer expires.

function StartFirePillarEffect()		
	this:PlayEffect("FirePillarEffect")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(.1), "FirePillarLoop")
end

RegisterEventHandler(EventType.Timer, "FirePillarLoop",
function()

	this:StopEffect("FirePillarEffect")
	this:PlayEffect("FirePillarEffect")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(30), "FirePillarLoop")

end)

StartFirePillarEffect()