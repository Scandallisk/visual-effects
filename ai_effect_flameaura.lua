function StartFlameAuraEffect()		
	this:PlayEffect("FlameAuraEffect")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(.1), "FlameauraLoop")
end

RegisterEventHandler(EventType.Timer, "FlameauraLoop",
function()

	this:StopEffect("FlameAuraEffect")
	this:PlayEffect("FlameAuraEffect")
	this:ScheduleTimerDelay(TimeSpan.FromSeconds(30), "FlameauraLoop")

end)

StartFlameAuraEffect()