local KNIGHT_SPAWNID = 369225;
local MAGUS_SPAWNID = 369226;

---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop", 11700000);
	eq.get_entity_list():GetSpawnByID(KNIGHT_SPAWNID):Enable();
	eq.get_entity_list():GetSpawnByID(MAGUS_SPAWNID):Enable();
end

---@param e NPCEventTimer
function event_timer(e)
	eq.depop();
end

---@param e NPCEventCombat
function event_combat(e)
	if ( e.joined ) then
		eq.pause_timer("depop");
	else
		eq.resume_timer("depop");
	end
end

---@param e NPCEventDeathComplete
function event_death_complete(e)
	eq.zone_emote(0, "A raspy voice is heard as the High Priest begins to speak, 'You have come far to seek your demise. Raex! Vindor! My generals to me. Slay these infidels in the name of our lord the Plaguebringer.'");

	eq.get_entity_list():GetSpawnByID(KNIGHT_SPAWNID):Disable(false);
	eq.get_entity_list():GetSpawnByID(MAGUS_SPAWNID):Disable(false);

	eq.unique_spawn(200245, 0, 0, 306, 318, -64, 128); -- #High_Priest_Ultor_Szanvon
	eq.unique_spawn(200261, 24, 0, 200, 294, -59, 0); -- #Vindor_Mawnil
	eq.unique_spawn(200258, 25, 0, 496, 241, -74, 0); -- #Raex_Pwodill
end
