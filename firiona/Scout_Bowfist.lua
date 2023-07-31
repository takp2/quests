function event_waypoint_arrive(e)
	if(e.wp == 8) then
		e.self:SetRunning(true);
	end
	if(e.wp == 16) then
		e.self:SetRunning(false);
	end
end

---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Halt!! This tunnel is used primarily for the forces of the Union of Vie. Citizens and adventurers are to use the main entrance.");
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
