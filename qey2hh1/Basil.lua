---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer(1,1200000);
	e.self:SetRunning(true);
end

---@param e NPCEventTimer
function event_timer(e)
	eq.depop();
end

---@param e NPCEventCombat
function event_combat(e)
	if(e.joined == true) then
		e.self:Say("To the death!!");
		eq.signal(12082,1);
		eq.signal(12154,1); -- NPC: Frostbite
	end
end
