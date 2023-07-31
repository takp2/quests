---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("attack",1000);
end

---@param e NPCEventTimer
function event_timer(e)
	if(e.timer == "attack") then
		eq.attack_npc_type(160140);
		eq.stop_timer("attack");
	end
end
