--ADDED BY SCAN
--DESCRIPTION:
--This script can be attached to any equipment item or object in the game to give it a visual effect.

--INSTRUCTIONS:
--Inspect the object, and attach the script file name to the object to permenantly give it a special effect.
--Simply removing the script from the object will cause the effect to evaporate after the loop timer expires.

function StartLightningCloudEffect()		
	this:PlayEffect("LightningCloudEffect")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(.1), "LightningBoltEffectLoop")
end

RegisterEventHandler(EventType.Timer, "LightningBoltEffectLoop",
function()

	this:StopEffect("LightningCloudEffect")
	this:PlayEffect("LightningCloudEffect")
	--this:PlayObjectSound("event:/magic/air/magic_air_lightning_impact")
	--this:PlayEffect("LightningCloudEffect")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(10), "LightningBoltEffectLoop")

end)

StartLightningCloudEffect()