-- Initiate Krostain

---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("talk",320000);
end

---@param e NPCEventTimer
function event_timer(e)
	e.self:Say("Sir, you said Royt face. Guard Royt is just on the other side of this wall!");
end
