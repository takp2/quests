---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop", 9900000);
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

	if ( not eq.get_entity_list():IsMobSpawnedByNpcTypeID(200261) ) then -- #Vindor_Mawnil

		local hp = eq.get_entity_list():GetNPCByNPCTypeID(200245) -- #High_Priest_Ultor_Szanvon

		if ( hp and hp.valid ) then
			hp:SetBodyType(3, false);    -- make targetable (undead type)
			hp:SetSpecialAbility(24, 0); -- Will Not Aggro off
			hp:SetSpecialAbility(35, 0); -- No Harm from Players off
			eq.set_timer("depop", 11700000, hp);
		end
	end
end
