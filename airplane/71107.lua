---@param e NPCEventDeathComplete
function event_death_complete(e)
	eq.spawn2(71101,0,0,e.self:GetX(),e.self:GetY(),e.self:GetZ(),e.self:GetHeading()); --Bzzzt
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
