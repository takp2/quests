---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop",3600000);
end

---@param e NPCEventTimer
function event_timer(e)
	if(e.timer == "depop") then
		eq.stop_timer("depop");
		eq.depop();
	end
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
