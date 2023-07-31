---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop",3600000);
end

---@param e NPCEventTimer
function event_timer(e)
	if(e.timer == "depop") then
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

---@param e NPCEventDeathComplete
function event_death_complete(e)
   eq.unique_spawn(172014,0,0,-1425,576,317,64); -- spawn Valdanov Zevfeer
end