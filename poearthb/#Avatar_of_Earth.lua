local PLANAR_PROJECTION_TYPE = 222041; -- Essence_of_Earth

---@param e NPCEventDeathComplete
function event_death_complete(e)
	eq.spawn2(PLANAR_PROJECTION_TYPE, 0, 0, e.self:GetX(), e.self:GetY(), e.self:GetZ(), 0);
	eq.signal(PLANAR_PROJECTION_TYPE, e.killer:GetID()); -- e.killer for death_complete is somebody with kill rights, not death blow
	eq.csr_notice(string.format("PoEarthB Avatar of Earth slain by %s's raid <%s>", e.killer:GetName(), e.killer:CastToClient():GetGuildName()));
end

---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop", 2100000);
end

---@param e NPCEventCombat
function event_combat(e)
	if ( e.joined ) then
		eq.pause_timer("depop");
	else
		eq.resume_timer("depop");
	end
end

---@param e NPCEventTimer
function event_timer(e)
	if ( e.timer == "depop" ) then
		eq.debug("Avatar of Earth depop");
		eq.csr_notice("PoEarthB Avatar of Earth despawned");
		eq.depop();
	end
end
