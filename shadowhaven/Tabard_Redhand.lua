function event_say(e)
	if(e.message:findi("hail")) then
		if(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("Greetings, " .. e.other:GetCleanName() .. ". If you are in need of some shoes for the big and tall then have a look around, I am sure to have something that will catch your eye.");
		else
			e.self:Say("Due to the problems we have had lately with dishonorable visitors to the Haven we require all newcomers to see Daloran and Mistala for some simple tasks to prove that your intentions are good. I hope to see you soon.");
		end
	end
end
