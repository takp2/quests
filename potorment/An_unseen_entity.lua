---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop", 2000000);
end

---@param e NPCEventTimer
function event_timer(e)
	eq.depop();
end

---@param e NPCEventCombat
function event_combat(e)
	if ( e.joined ) then
		e.self:CastSpell(1133, e.other:GetID()); -- Dimensional Return
	end
end
