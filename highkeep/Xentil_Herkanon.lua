---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop", 1800000);
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	item_lib.return_items(e.self, e.other, e.trade)
end

---@param e NPCEventDeathComplete
function event_death_complete(e)
	eq.signal(6186,0); -- NPC: Lartin
	eq.signal(6187,0); -- NPC: Grex
	eq.stop_timer("depop");
end

---@param e NPCEventTimer
function event_timer(e)
	if(e.timer == "depop") then
		eq.signal(6186,0); -- NPC: Lartin
		eq.signal(6187,0); -- NPC: Grex		
		eq.depop();
	end
end
