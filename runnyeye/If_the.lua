---@param e NPCEventSpawn
function event_spawn(e)
	local xloc = e.self:GetX();
	local yloc = e.self:GetY();
	local zloc = e.self:GetZ();
	eq.set_proximity(xloc - 25, xloc + 25, yloc - 25, yloc + 25, zloc - 3, zloc + 6);
end

---@param e NPCEventEnter
function event_enter(e)
	e.self:Emote("people of Rivervale hate the goblins so much, why do they not simply root this place out?  Probably because they are not that foolish.  'One with the Wall' indeed!");
	eq.depop_with_timer();
end
