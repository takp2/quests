---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Say("Greetin's! I've many fine herbs and potions fer sale. Please look around.");
	end
end

---@param e NPCEventSignal
function event_signal(e)
	if(e.signal == 1) then
		e.self:Say("Dinnae be rude to the customers, Holana.");
	end
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
