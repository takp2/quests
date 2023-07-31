---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop", 1800000);
end

---@param e NPCEventTimer
function event_timer(e)
	if ( e.timer == "depop" ) then
		eq.depop();
	end
end

---@param e NPCEventCombat
function event_combat(e)
	if ( e.joined ) then
		eq.pause_timer("depop");
	else
		eq.resume_timer("depop");
	end
end
