-- Part of quest for Bracer of the Reverent

---@param e NPCEventDeathComplete
function event_death_complete(e)
	eq.unique_spawn(13042, 0, 0, -1560, 1450, 50, 125.5); --spawn Regis_the_Reverent
end

-- Quest by mystic414