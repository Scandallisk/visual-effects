--ADDED BY SCAN
--DESCRIPTION:
--This script can be attached to any equipment item or object in the game to give it a visual effect.

--INSTRUCTIONS:
--Inspect the object, and attach the script file name to the object to permenantly give it a special effect.
--Simply removing the script from the object will cause the effect to evaporate after the loop timer expires.

function StartTelegraphShapeEffect()		
	this:PlayEffect("TelegraphShapeEffect")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(.1), "WhiteHighlightCircleEffectLoop")
end

RegisterEventHandler(EventType.Timer, "WhiteHighlightCircleEffectLoop",
function()

	this:StopEffect("TelegraphShapeEffect")
	this:PlayEffect("TelegraphShapeEffect")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(30), "WhiteHighlightCircleEffectLoop")

end)

StartTelegraphShapeEffect()