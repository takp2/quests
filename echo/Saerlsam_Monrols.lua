function event_say(e)
	if(e.message:findi("hail")) then
		if(e.other:GetFactionValue(e.self) >= -100) then
			e.self:Say("Have a parched throat?  I have just the cure.");
		else
			e.self:Say("We know who you are.  Give me the slightest reason and I will call the scounds upon your head.");
		end
	end
end