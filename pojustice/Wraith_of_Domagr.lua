---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop", 200000);
end

---@param e NPCEventTimer
function event_timer(e)
	eq.depop();
end

---@param e NPCEventCombat
function event_combat(e)
	if ( e.joined ) then
		eq.pause_timer("depop");
	else
		eq.resume_timer("depop");
	end
end
