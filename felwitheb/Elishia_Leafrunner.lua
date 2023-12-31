---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("letter back to him")) then
		e.other:SummonCursorItem(8970); -- Letter to Jeremy
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 8969})) then -- Letter to Elishia
		e.self:Say("Oh, a letter from my grandson? Thank you very much. I haven't been able to talk to him recently. Would you mind taking a [letter back to him] for me?");
		e.other:Ding();
		e.other:Faction(e.self,275,10,0);  -- Keepers of the Art
		e.other:Faction(e.self,279,2,0);  -- King Tearis Thex
		e.other:Faction(e.self,246,1,0);   -- Faydarks Champions
		e.other:Faction(e.self,239,-2,0); -- The Dead
	end
	item_lib.return_items(e.self, e.other, e.trade);
end

-- Elishia_Leafrunner
