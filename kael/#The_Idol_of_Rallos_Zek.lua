-- On death, spawns the Avatar of War

---@param e NPCEventDeathComplete
function event_death_complete(e)
	eq.set_global("Avatar","1",7,"F");
	eq.delete_global("Idol");
	eq.unique_spawn(113244,0,0,1292,1058,-95,259); -- NPC: The_Avatar_of_War
end
