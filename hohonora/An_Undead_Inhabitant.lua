function event_death_complete(e)
	local x, y, z, h = e.self:GetX(), e.self:GetY(), e.self:GetZ(), e.self:GetHeading();
	eq.spawn2(211081, 0, 0, x, y, z, h); -- A_Undead_Miniature 
	eq.spawn2(211081, 0, 0, x, y, z, h); -- A_Undead_Miniature 
end
