-- Lurian NPCID: 124013
---@param e NPCEventCombat
function event_combat(e)
	if (e.joined) then
		-- grab the entity list
		local entity_list = eq.get_entity_list();
		-- also aggro Hsrek (124014) and #Lord_Vyemm (124003) if they are up
		local npc_table = {124014,124003};
		for k,v in pairs(npc_table) do
			local npc = entity_list:GetMobByNpcTypeID(v);
			if (npc.valid) then
				npc:AddToHateList(e.other,1);
			end
		end
	end
end