---@param e NPCEventCombat
function event_combat(e)
	if ( e.joined ) then
		e.self:Emote("rocks and bits of earth blow at you as you enter the chamber.");
		eq.depop_with_timer();
	end
end
