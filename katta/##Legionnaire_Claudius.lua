local count = 0;

---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("attack",2000);
end

---@param e NPCEventTimer
function event_timer(e)
	if(e.timer == "attack") then
		count = count + 1;
		if(count == 1) then
			eq.spawn2(160139,0,0,-1191,-6,-266,0);
		elseif(count == 2) then
			eq.spawn2(160139,0,0,-1191,-6,-266,0);
			eq.spawn2(160139,0,0,-1191,-6,-266,0);
			eq.spawn2(160138,0,0,-1005,54,-266,0);
		elseif(count == 3) then
			e.self:Say("I have been discovered! You should have left well enough alone!!!")
			eq.stop_timer("attack");
		end
	end
end
