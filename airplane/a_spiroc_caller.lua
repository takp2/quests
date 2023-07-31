local arrive = false;

---@param e NPCEventDeathComplete
function event_death_complete(e)
	eq.signal(71009, 2); -- a_spiroc_vanquisher
end

---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("walker", 1000);
	arrive = true;
end

---@param e NPCEventSignal
function event_signal(e)
	if ( e.signal == 1 ) then
		eq.set_timer("walker", 1000);
	end
end

---@param e NPCEventTimer
function event_timer(e)
	if ( not arrive or e.self:IsEngaged() or e.self:Charmed() ) then
		return;
	end

	if ( not eq.get_entity_list():IsMobSpawnedByNpcTypeID(71014) ) then -- a_spiroc_walker
		eq.update_spawn_timer(364309, 1000);
	end
	eq.stop_timer(e.timer);
end

---@param e NPCEventCombat
function event_combat(e)
	if ( e.joined ) then
		arrive = false;
	end
end

function event_waypoint_arrive(e)
	arrive = true;
end
