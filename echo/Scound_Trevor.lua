---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		if(e.other:GetFactionValue(e.self) >= -100) then
			e.self:Say("The Duke is upstairs, but he doesn't like being disturbed for trivial things.");
		else
			e.self:Say("You have a lot of nerve wandering in here.  We'll be watching you carefully.  Try anything and it will be the last thing you ever try.");
		end
	end
end