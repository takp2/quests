function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Tee hee");
	end
end
