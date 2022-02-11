--ADDED BY SCAN
--DESCRIPTION:
--This script can be attached to any equipment item or object in the game to give it a visual effect.

--INSTRUCTIONS:
--Inspect the object, and attach the script file name to the object to permenantly give it a special effect.
--Simply removing the script from the object will cause the effect to evaporate after the loop timer expires.

function StartMagicPrimeTrailGreenEffect()		
	this:PlayEffect("MagicPrimeTrailGreenEffect",2)
	this:PlayEffect("MagicPrimeTrailRedEffect",2)
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(1), "RedGreenWarlockLoop")
end

RegisterEventHandler(EventType.Timer, "RedGreenWarlockLoop",
function()

	this:PlayEffect("MagicPrimeTrailRedEffect",30)
	this:PlayEffect("MagicPrimeTrailGreenEffect",30)
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(5), "RedGreenWarlockLoop")

end)

StartMagicPrimeTrailGreenEffect()