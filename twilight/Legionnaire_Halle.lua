---@param e NPCEventSay
function event_say(e)
	if(e.other:GetFaction(e.self) < 5) then
		if(e.message:findi("hail")) then
			e.self:Emote("coughs a few times and reaches out to you, 'Please help me.'");
		elseif(e.message:findi("help")) then
			e.self:Emote("reaches out and puts something in your hand, 'Find Magistrate Phenic, he is the only one that I know I can trust.' With a look of someone who has left unfinished business behind her, Halle lets go and dies.");
			e.other:SummonCursorItem(18330);
			eq.depop_with_timer();
		end
	else
		e.self:Emote("considers you for a moment and shakes her head, 'I have information that can only be shared with a trusted member of the Validus Custodus.");
	end
end
