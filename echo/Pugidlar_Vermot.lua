---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		if(e.other:GetFactionValue(e.self) >= -100) then
			e.self:Say("Looking to make some pretty baubles?  Check out my wares.");
		else
			e.self:Say("We know who you are.  Give me the slightest reason and I will call the scounds upon your head.");
		end
	end
end
