---@param e NPCEventSpawn
function event_spawn(e)
	e.self:AI_SetRoambox(1000,4670,466,900,-817,5000);
	eq.set_timer("depop",2700000);
end

---@param e NPCEventTimer
function event_timer(e)
	eq.depop();
end