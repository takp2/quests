---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop",1800000);
	e.self:AI_SetRoambox(300,-400,-2300,-2205,-3310);
end

---@param e NPCEventTimer
function event_timer(e)
	eq.depop();
end
