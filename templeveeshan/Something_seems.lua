-- The_sound_of NPCID: 124130
---@param e NPCEventSpawn
function event_spawn(e)
	local ex = e.self:GetX();
	local ey = e.self:GetY();
	local ez = e.self:GetZ();
	eq.set_proximity(ex - 30, ex + 30, ey - 30, ey + 30, ez - 30, ez + 30);
end

---@param e NPCEventEnter
function event_enter(e)
	e.self:Emote("to be moving in the water.");
	eq.depop_with_timer();
end
