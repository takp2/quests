---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Ah. hello there. friend!  Me an' Rebby here. we're a just couple o' regular merchants.  Though we've got nothin' to sell right now. we'd gladly take any donations.  Them's the breaks. I suppose.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 18015})) then -- Note to Janam
		e.self:Emote("scribbles out a note and says, 'Please make sure that Harkin gets this right away. If you lose it, it could mean both of our heads.'");
		e.other:QuestReward(e.self,0,0,0,0,18016,375); -- Note to Harkin
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

-- END of FILE Zone:freportw -- Janam_Rekish