--ADDED BY SCAN
--DESCRIPTION:
--This script can be attached to any equipment item or object in the game to give it a visual effect.

--INSTRUCTIONS:
--Inspect the object, and attach the script file name to the object to permenantly give it a special effect.
--Simply removing the script from the object will cause the effect to evaporate after the loop timer expires.

function StartWarriorCorpseBloodlusted()
				
		this:PlayEffect("WarriorCorpseBloodlusted",5)
		this:ScheduleTimerDelay(TimeSpan.FromSeconds(.1), "BloodlustLoop")
end

RegisterEventHandler(EventType.Timer, "BloodlustLoop",
	function()
	
		this:StopEffect("WarriorCorpseBloodlusted")	
		this:PlayEffect("WarriorCorpseBloodlusted",25)
		this:ScheduleTimerDelay(TimeSpan.FromSeconds(10), "BloodlustLoop")
	
    end)
    
    StartWarriorCorpseBloodlusted()