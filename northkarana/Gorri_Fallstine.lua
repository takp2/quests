---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("I'm afraid I can't speak right now, " .. e.other:GetCleanName() .. ".  I'm waiting for someone very important to arrive.");
	end
end
