---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("cast",1000);
	eq.set_timer("depop",3000);
end

---@param e NPCEventTimer
function event_timer(e)
	if(e.timer == "cast") then
		eq.stop_timer("cast");
		e.self:CastSpell(2815,e.self:GetID(),0,1);
	elseif(e.timer == "depop") then
		eq.stop_timer("depop");
		eq.depop();
	end
end
