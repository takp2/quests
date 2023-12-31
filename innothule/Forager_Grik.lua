---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Grikk.. Please leave me be. I but a humble forager. My people are starving.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13375})) then
		e.self:Say("Grrrikk.. This is Groak's vial!! He must be in danger. Here. Return this liquid to him. Be quick!");
		e.other:Faction(e.self,251,1); -- Faction: Frogloks of Guk
		e.other:QuestReward(e.self,0,0,0,0,13376,500); -- Item: Ochre Liquid
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
