---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("set",5000);
end

---@param e NPCEventTimer
function event_timer(e)
	eq.signal(56105,2); -- NPC: Cargo_Clockwork
	eq.stop_timer("set");
end
		