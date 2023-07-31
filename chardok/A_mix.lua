function event_spawn(e)
	local xloc = e.self:GetX();
	local yloc = e.self:GetY();
	local zloc = e.self:GetZ();
	eq.set_proximity(xloc - 25, xloc + 25, yloc - 25, yloc + 25, zloc - 3, zloc + 6);
end

function event_enter(e)
	e.self:Emote("sulfur and dust hangs heavily in the air.");
	eq.depop_with_timer();
end
