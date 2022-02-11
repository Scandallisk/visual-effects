--ADDED BY SCAN
--DESCRIPTION:
--This script can be attached to any equipment item or object in the game to give it a visual effect.

--INSTRUCTIONS:
--Inspect the object, and attach the script file name to the object to permenantly give it a special effect.
--Simply removing the script from the object will cause the effect to evaporate after the loop timer expires.

function StartBardDistortionMagenta()		
	this:PlayEffect("BardDistortionMagenta")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(.1), "BardDistortionLoop")
end

RegisterEventHandler(EventType.Timer, "BardDistortionLoop",
function()

	this:StopEffect("BardDistortionMagenta")
	this:PlayEffect("BardDistortionMagenta")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(30), "BardDistortionLoop")

end)

StartBardDistortionMagenta()