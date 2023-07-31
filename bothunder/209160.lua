-- a_storm_cloud (this is the trap; capital letter one is a portal add in Agnarr room)

local casting = {};

---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop", 5000);
end

---@param e NPCEventTimer
function event_timer(e)
	casting[e.self:GetID()] = nil;
	eq.depop();
end

---@param e NPCEventSignal
function event_signal(e)
	if ( casting[e.self:GetID()] ) then
		return;
	end
	e.self:CastSpell(e.signal, e.self:GetID());
	casting[e.self:GetID()] = true;
end
