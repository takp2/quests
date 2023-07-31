function event_signal(e)
	if(e.signal==1) then
		eq.stop();
		e.self:MoveTo(2710,3141,-49,52,true);
	elseif(e.signal==2) then
		e.self:MoveTo(2733,2480,-49,195,true);
	elseif(e.signal==3) then
		e.self:SetRunning(true);
		eq.start(11);
	end
end

function event_waypoint_arrive(e)
	if(e.wp==28) then
		e.self:SetRunning(false);
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
