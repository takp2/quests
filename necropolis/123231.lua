---@param e NPCEventDeathComplete
function event_death_complete(e)
	eq.spawn2(123027,0,0,e.self:GetX(),e.self:GetY(),e.self:GetZ(),e.self:GetHeading());
end
