--ADDED BY SCAN
--DESCRIPTION:
--This script can be attached to any equipment item or object in the game to give it a visual effect.

--INSTRUCTIONS:
--Inspect the object, and attach the script file name to the object to permenantly give it a special effect.
--Simply removing the script from the object will cause the effect to evaporate after the loop timer expires.

function StartBloodyEffect()
				
	this:PlayEffect("BloodDropsEffect",5)
	this:PlayEffect("BodyExplosion",5)
	this:ScheduleTimerDelay(TimeSpan.FromMinutes(.1), "BloodExplosionLoop")
end

RegisterEventHandler(EventType.Timer, "BloodExplosionLoop",
function()

	this:PlayEffect("BloodDropsEffect",5)
	this:PlayEffect("BodyExplosion",5)
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(30), "BloodExplosionLoop")

end)

StartBloodyEffect()