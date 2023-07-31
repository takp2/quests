---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop",2700000);
end

---@param e NPCEventTimer
function event_timer(e)
	eq.depop();
end
