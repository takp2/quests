---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop",600000);
end

---@param e NPCEventTimer
function event_timer(e)
	eq.depop();
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 5983}, 0)) then
		e.self:Say("Thank you so much for your help!  As I promised here is a small token of my appreciation.");
		e.other:QuestReward(e.self,0,0,0,0,5984,10000);
		eq.depop();
	end
	item_lib.return_items(e.self, e.other, e.trade)
end