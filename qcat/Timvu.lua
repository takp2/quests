function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("What are you doing down here?  This is a dangerous place.  We are only here to finish off any enemies of [the Circle] who escape the sharks.");
	elseif(e.message:findi("circle")) then
		e.self:Say("What?  Why the Circle of Unseen Hands, of course!");
		e.other:Faction(e.self,223,-5); -- Faction: Circle of Unseen Hands
	end
end