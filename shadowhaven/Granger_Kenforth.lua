---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Take a look at this stuff I've got here. In case you haven't noticed, it's the same stuff you find in any other general store. Exciting isn't it?! Maybe some day I'll sell something a bit more interesting!");
	end
end
