---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("poke",4200000);
end

---@param e NPCEventTimer
function event_timer(e)
	e.self:Say("Do not poke, shoot, or enchant the animals.");
end