---@param e NPCEventCombat
function event_combat(e)
	eq.signal(201450, 8);
end

---@param e NPCEventDeathComplete
function event_death_complete(e)
	eq.signal(201450, 8);
end
