function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Emote("is now aware of your presence.  This could be bad, very bad...");
		eq.attack(e.other:GetName());
	end
end

function event_death_complete(e)
	eq.spawn2(123231,0,0,e.self:GetX(),e.self:GetY(),e.self:GetZ(),e.self:GetHeading());
	eq.spawn2(123231,0,0,e.self:GetX() + 5,e.self:GetY(),e.self:GetZ(),e.self:GetHeading());
end