---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop",5400000);
end

---@param e NPCEventCombat
function event_combat(e)
 	if(e.joined) then
		if(not eq.is_paused_timer("depop")) then
			eq.pause_timer("depop");
		end
	else
		eq.resume_timer("depop");
	end
end

---@param e NPCEventTimer
function event_timer(e)
	eq.depop();
end