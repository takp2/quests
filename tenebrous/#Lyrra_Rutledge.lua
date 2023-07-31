---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("sit",1000);
end

---@param e NPCEventTimer
function event_timer(e)
	e.self:SetAppearance(1);
	eq.stop_timer("sit");
end
