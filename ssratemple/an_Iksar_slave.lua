function event_waypoint_arrive(e)
	if(e.wp == 4) then
		e.self:SetAppearance(1);
	end
end

---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Salutations " .. e.other:GetCleanName() .. ", nice to meet you.");
	end
end