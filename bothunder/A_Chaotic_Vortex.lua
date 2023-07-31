---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop", 3300000);
end

---@param e NPCEventTimer
function event_timer(e)
	if ( e.timer == "depop" ) then
		eq.depop();
	end
end
