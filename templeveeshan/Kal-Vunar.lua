-- Aaryonar guard drake

---@param e NPCEventCombat
function event_combat(e)

	if (e.joined) then
		eq.set_timer("help", 300000);
		HelpMe(e);
	else
		eq.stop_timer("help");
	end
end

---@param e NPCEventTimer
function event_timer(e)
	if(e.timer == "help") then
		HelpMe(e);
	end
end

function HelpMe(e)
	local aaryonar = eq.get_entity_list():GetMobByNpcTypeID(124010);

	if (aaryonar.valid) then
		aaryonar:CastToNPC():MoveTo(e.self:GetX(), e.self:GetY(), e.self:GetZ(), 0, false);
	end
end
