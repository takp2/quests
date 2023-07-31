---@param e NPCEventSignal
function event_signal(e)
	if(e.signal == 1) then
		e.self:Say("Such is the will of Cazic-Thule!");
	end
end

---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("pick_up", 2000);
end

---@param e NPCEventTimer
function event_timer(e)
	if ( e.timer == "pick_up" ) then		
		while ( e.self:CheckGround() ) do
			e.self:Emote("absorbs a discarded item into its corrosive body.");
		end
	end	
end