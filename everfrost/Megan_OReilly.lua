---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Brrrr.. It.. Is sooo.. c-cold!! I never.. sh-should've j-joined.. the.. the W-wolves of the N-north!!");
	elseif(e.message:findi("ivan's remains")) then
		if(e.other:GetFaction(e.self) < 5) then -- requires amiably
			e.self:Say("You were sent to retrieve the remains? I am sorry, I lost them. It was not my fault! There was no escort as I was told. I got lost returning to Halas and ended up on a frozen river. The ice broke and the remains were scattered into the freezing water. Will you [dive for the remains]?");
		elseif(e.other:GetFaction(e.self) == 5) then
			e.self:Say("The Wolves o' the North show ye no ill will, but there's much ye must do t' earn our trust.  Perhaps ye should speak with Lysbith and inquire o' the [gnoll bounty].");
		elseif(e.other:GetFaction(e.self) > 5) then
			e.self:Say("Run while ye still can!! The Wolves o' the North will not tolerate yer presence!");
		end	
	elseif(e.message:findi("dive for the remains")) then
		if(e.other:GetFaction(e.self) < 5) then -- requires amiably
			e.self:Say("Thank the Tribunal!! I would have, but I cannot swim. Take this chest. Fill it with the four pieces which fell below the surface. I know not what else lies within. When you fill the box and combine the items, return it to Renth. Good luck, " .. e.other:GetCleanName() .. ".");
			e.other:SummonCursorItem(17945); -- Item: Empty Box
		elseif(e.other:GetFaction(e.self) == 5) then
			e.self:Say("The Wolves o' the North show ye no ill will, but there's much ye must do t' earn our trust.  Perhaps ye should speak with Lysbith and inquire o' the [gnoll bounty].");
		elseif(e.other:GetFaction(e.self) > 5) then
			e.self:Say("Run while ye still can!! The Wolves o' the North will not tolerate yer presence!");
		end		
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");

	if(e.other:GetFaction(e.self) < 5 and item_lib.check_turn_in(e.self, e.trade, {item1 = 13244})) then -- requires amiably, One Quarter Bottle of Elixir
		e.self:Say("Oh thank you. Sorry, but the bottle is empty now. I hope you did't need any. Take the empty bottle back to Dargon. He may refill it for you.");
		-- Confirmed Live Factions
		e.other:Faction(e.self,320,5,0); -- Wolves of the North
		e.other:Faction(e.self,327,1,0); -- Shaman of Justice
		e.other:Faction(e.self,328,1,0); -- Merchants of Halas
		e.other:Faction(e.self,311,1,0); -- Steel Warriors
		e.other:QuestReward(e.self,0,0,0,0,13245,150); -- Empty Bottle of Elixir
	end
	item_lib.return_items(e.self, e.other, e.trade);
end

function event_waypoint_arrive(e)
	if(e.wp == 3) then
		e.self:SetRunning(true);
	elseif(e.wp == 6) then
		e.self:SetRunning(false);
	end
end

-- END of FILE Zone:everfrost  ID:30029, 30096, 30119 -- Megan_OReilly
