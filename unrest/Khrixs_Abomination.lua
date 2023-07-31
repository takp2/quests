---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop",1200000);
end

---@param e NPCEventTimer
function event_timer(e)
	eq.depop();
end