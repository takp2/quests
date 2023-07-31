---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("stop",5000);
end

---@param e NPCEventTimer
function event_timer(e)
	eq.signal(1095,2); -- NPC: Bassanio_Weekin
	eq.signal(1120,2); -- NPC: Gahna_Salbeen
	eq.signal(1115,2); -- NPC: Barthal
	eq.signal(1078,2); -- NPC: Moran_Smith
	eq.signal(1094,2); -- NPC: Solani_Dayadil
	eq.stop_timer("stop");
end