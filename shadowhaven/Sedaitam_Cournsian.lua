---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		if(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("Hi there " .. e.other:GetCleanName() .. ", I'm a new merchant here so you will have to pardon my somewhat bland list of wares. I expect to have many more items in soon, so please check back with me from time to time.");
		else
			e.self:Say(eq.ChooseRandom("I didn't know Slime could speak common.  Go back to the sewer before I lose my temper.","Is that your BREATH, or did something die in here?  Now go away!","I wonder how much I could get for the tongue of a blithering fool?  Leave before I decide to find out for myself."));
		end
	end
end
