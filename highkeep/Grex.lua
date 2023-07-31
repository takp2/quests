---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("You have no business here. Get lost!"); -- Text made up
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	item_lib.return_items(e.self, e.other, e.trade)
end

---@param e NPCEventSignal
function event_signal(e)
	eq.depop();
end
