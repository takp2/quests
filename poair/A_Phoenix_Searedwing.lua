---@param e NPCEventDeathComplete
function event_death_complete(e)
	for i = 2, 4 do
		eq.spawn2(215431, 0, 0, e.self:GetX(), e.self:GetY(), e.self:GetZ(), 0); -- A_Phoenix_Scorchlet
	end
end
