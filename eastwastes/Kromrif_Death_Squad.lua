---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop",300000);
end

---@param e NPCEventTimer
function event_timer(e)
	if(e.timer == "depop") then
		eq.stop_timer("depop");
		eq.depop();
	end
end

---@param e NPCEventDeathComplete
function event_death_complete(e)
	eq.stop_timer("depop");
end
