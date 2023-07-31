function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Say("Halt!!  This tunnel is no longer operational.  The walls have given way to the pressures of the sea.");
		e.self:DoAnim(67);
	end
end

function event_trade(e)
	local item_lib = require("items");
	item_lib.return_items(e.self, e.other, e.trade)
end