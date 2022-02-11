--ADDED BY SCAN
--DESCRIPTION:
--This script can be attached to any equipment item or object in the game to give it a visual effect.

--INSTRUCTIONS:
--Inspect the object, and attach the script file name to the object to permenantly give it a special effect.
--Simply removing the script from the object will cause the effect to evaporate after the loop timer expires.

function StartHeadFlareEffect()
				
		this:PlayEffect("HeadFlareEffect",5)
		this:ScheduleTimerDelay(TimeSpan.FromSeconds(.1), "BlueHeadFlareEffectLoop")
end

RegisterEventHandler(EventType.Timer, "BlueHeadFlareEffectLoop",
	function()
	
		this:StopEffect("HeadFlareEffect")	
		this:PlayEffect("HeadFlareEffect",5)
		this:ScheduleTimerDelay(TimeSpan.FromSeconds(10), "BlueHeadFlareEffectLoop")
	
    end)
    
    StartHeadFlareEffect()