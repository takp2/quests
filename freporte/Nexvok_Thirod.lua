---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("I am Nexvok, master wizard of the Dismal Rage.  My associates Heneva and Konious and I provide our services to master Zarn on a regular basis.  People of our talent are in high demand. and Pietro pays well, so we are, of course, very loyal.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 18854})) then
		e.self:Say("Ah ha.. Fresh meat. here, put this on.. you're one of us now. Do your best to do your worst.");
		e.other:Faction(e.self,271,100,0); -- Dismal Rage
		e.other:Faction(e.self,281,-15,0); -- Knights of Truth
		e.other:Faction(e.self,296,20,0); -- Opal Dark Briar
		e.other:QuestReward(e.self,0,0,0,0,13564,20); -- Dirty Torn Robe*
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

-- END of FILE Zone:freporte -- Nexvok_Thirod



