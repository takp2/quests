---@param e NPCEventSpawn
function event_spawn(e)
	local ex = e.self:GetX();
	local ey = e.self:GetY();
	local ez = e.self:GetZ();
	eq.set_proximity(ex - 30, ex + 30, ey - 30, ey + 30, ez - 35, ez + 35);
end

---@param e NPCEventEnter
function event_enter(e)
	e.self:CastSpell(2985,e.other:GetID()); -- Spell: Wormspore Stick
end
