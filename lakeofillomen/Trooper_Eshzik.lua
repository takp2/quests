function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Emote("puts his guard up and glances from left to right.  'Be on the lookout for Sabertooth Cats.  Many troopers have been wounded by their sharp, piercing teeth.");
	end
end

function event_trade(e)
	local item_lib = require("items");
	item_lib.return_items(e.self, e.other, e.trade)
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
