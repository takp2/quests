---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Emote("waves you away.  'I have no time for conversation!!  Can't you see I am on duty?!'");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	item_lib.return_items(e.self, e.other, e.trade)
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
