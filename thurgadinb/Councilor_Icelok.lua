---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Isn't Icewell the most beautiful Keep ye have ever seen stranger? I do hope you've taken the time to visit some of our other attractions in Thurgadin. I often go to remembrance park just to stare at the sculptures. Our people may be cold and simple, but keep in mind there is an artistic side to us as well.");
	end
end
