-- Use invis men to indicate kills so Ginto can spawn if zone crashes between Chiefan kills
local INVIS_MAN_ID = 369488;

function event_spawn(e)
	eq.set_timer("check", 1000);
end

function event_timer(e)
	eq.stop_timer(e.timer);
	if ( eq.get_entity_list():IsMobSpawnedByNpcTypeID(222010) ) then -- A_Rock_Studded_Champion
		eq.depop_with_timer();
		return;
	end
end

function event_death_complete(e)
	eq.get_entity_list():GetSpawnByID(INVIS_MAN_ID):GetNPC():Depop(true);
	eq.signal(222034, 1);
end
