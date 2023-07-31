
---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("pick_up", 2000);
end

---@param e NPCEventTimer
function event_timer(e)
	if ( e.timer == "pick_up" ) then		
		while ( e.self:CheckGround() ) do
			e.self:Emote("picks up something from the ground.");
		end
	end	
end