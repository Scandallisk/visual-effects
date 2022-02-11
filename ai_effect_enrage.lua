--ADDED BY SCAN
--DESCRIPTION:
--This script can be attached to any equipment item or object in the game to give it a visual effect.

--INSTRUCTIONS:
--Inspect the object, and attach the script file name to the object to permenantly give it a special effect.
--Simply removing the script from the object will cause the effect to evaporate after the loop timer expires.

function StartWarriorEnrage()		
	this:PlayEffect("WarriorEnrage")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(.1), "EnrageEffectLoop")
end

RegisterEventHandler(EventType.Timer, "EnrageEffectLoop",
function()

	this:StopEffect("WarriorEnrage")
	this:PlayEffect("WarriorEnrage")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(30), "EnrageEffectLoop")

end)

StartWarriorEnrage()