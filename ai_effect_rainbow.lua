--ADDED BY SCAN
--DESCRIPTION:
--This script can be attached to any equipment item or object in the game to give it a visual effect.

--INSTRUCTIONS:
--Inspect the object, and attach the script file name to the object to permenantly give it a special effect.
--Simply removing the script from the object will cause the effect to evaporate after the loop timer expires.

function StartCastFire2()		
	this:PlayEffect("CastFire2")
	this:PlayEffect("CastWater2")
	this:PlayEffect("CastEarth2")
    this:PlayEffect("CastVoid2")
    this:PlayEffect("MagicPrimeHandRedEffect")
    this:PlayEffect("MagicPrimeHandYellowEffect")
    this:PlayEffect("MagicPrimeHandGreenEffect")
    this:PlayEffect("MagicPrimeHandBlueEffect")
    this:PlayEffect("MagicPrimeHandPurpleEffect")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(.1), "RainbowEffectLoop")
end

RegisterEventHandler(EventType.Timer, "RainbowEffectLoop",
function()

	this:StopEffect("CastFire2")
	this:StopEffect("CastWater2")
	this:StopEffect("CastEarth2")
    this:StopEffect("CastVoid2")
    this:StopEffect("MagicPrimeHandRedEffect")
    this:StopEffect("MagicPrimeHandYellowEffect")
    this:StopEffect("MagicPrimeHandGreenEffect")
    this:StopEffect("MagicPrimeHandBlueEffect")
    this:StopEffect("MagicPrimeHandPurpleEffect")
	this:PlayEffect("CastFire2")
	this:PlayEffect("CastWater2")
	this:PlayEffect("CastEarth2")
    this:PlayEffect("CastVoid2")
    this:PlayEffect("MagicPrimeHandRedEffect")
    this:PlayEffect("MagicPrimeHandYellowEffect")
    this:PlayEffect("MagicPrimeHandGreenEffect")
    this:PlayEffect("MagicPrimeHandBlueEffect")
    this:PlayEffect("MagicPrimeHandPurpleEffect")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(60), "RainbowEffectLoop")

end)

StartCastFire2()