-- Gra`Vloren NPCID: 124091
---@param e NPCEventCombat
function event_combat(e)
	if (e.joined) then
		-- grab the entity list
		local entity_list = eq.get_entity_list();
		-- also aggro #Lady_Mirenilla (124077) and Wel`Wnas (124092) if they are up
		local npc_table = {124077,124092};
		for k,v in pairs(npc_table) do
			local npc = entity_list:GetMobByNpcTypeID(v);
			if (npc.valid) then
				npc:AddToHateList(e.other,1);
			end
		end
	end
end