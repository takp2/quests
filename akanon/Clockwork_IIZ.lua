---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("disturb",3100000);
end

---@param e NPCEventTimer
function event_timer(e)
	e.self:Say("Please do not disturb the animals.");
end