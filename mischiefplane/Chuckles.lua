---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("dance", 1000);
end

---@param e NPCEventTimer
function event_timer(e)
	if(e.timer == "dance") then
		e.self:DoAnim(34);  -- he does this animation constantly
	end
end

---@param e NPCEventCombat
function event_combat(e)
	if(e.joined) then
		if(not eq.is_paused_timer("dance")) then
			eq.pause_timer("dance");
		end
	else
		eq.resume_timer("dance");
	end
end
