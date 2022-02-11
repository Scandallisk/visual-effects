--ADDED BY SCAN
--DESCRIPTION:
--This script can be attached to any equipment item or object in the game to give it a visual effect.

--INSTRUCTIONS:
--Inspect the object, and attach the script file name to the object to permenantly give it a special effect.
--Simply removing the script from the object will cause the effect to evaporate after the loop timer expires.

function StartFireHeadEffect()
				
		this:PlayEffect("FireHeadEffect",1)
		this:ScheduleTimerDelay(TimeSpan.FromSeconds(.1), "FireheadLoop")
end

RegisterEventHandler(EventType.Timer, "FireheadLoop",
	function()
	
		this:StopEffect("FireHeadEffect")	
		this:PlayEffect("FireHeadEffect",61)
		this:ScheduleTimerDelay(TimeSpan.FromSeconds(60), "FireheadLoop")
	
    end)
    
    StartFireHeadEffect()