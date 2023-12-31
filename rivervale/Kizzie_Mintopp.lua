--#############
--#Quest Name:Honey Jum
--#Author:Shaznito
--#Revised and converted to Lua: robregen
--#NPCs Involved:Lil Honeybugger, Kizzie_Mintopp 
--#Items Involved:3 Honeycombs, 30 gold
--#################

---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Enough talk there, chatterbox.  You buy lots of herbs.  I gotta make a living, not more friends.");
	elseif(e.message:findi("temple of life")) then
		e.self:Say("Oh, yes.. They always come for Kizzie's [honey jum]. They should have sent you next week. There is a [problem].");
	elseif(e.message:findi("problem")) then
		e.self:Say("You see.. Joogl Honeybugger is hurt. He usually collects the [Honeycombs]. Only he knows where to get them. I need the Honeycombs to make the Honey Jum. Go and speak with Joogl. He is at his burrow outside of Rivervale. He says he cannot work. Tell him you need the Honeycombs.");
	elseif(e.message:findi("honeycombs")) then
		e.self:Say("If Kizzie knew that, then she would not hire Joogl Honeybugger!  Go talk to him in the Misty Thicket.");
	elseif(e.message:findi("make")) then
		e.self:Say("No, no, no!!  You will not get honey jum until you give Kizzie three honeycombs and thirty gold coins.  Honey jum is valuable.  Kizzie raised the fee!!  That is how it works.");
	elseif(e.message:findi("honey jum")) then
		e.self:Say("It's a secret!!  I get the honeycombs and combine them with the secret sauce and..presto.. honey jum!!  It is used by only the wisest as a component.  And you can only get it from Kizzie.  It is also good on batwing crunchies.  If you like.. Kizzie can [make honey jum] for you?");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	local text = "This is not all! Kizzie says, three honeycombs and thirty gold coins! Oooh! They never listen.";

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13953,item2 = 13953,item3 = 13953,gold = 30},1,text)) then
		e.self:Say("You are one lucky bixie buster. I just made a batch of honey jum. Here. No waiting for you.  One jar for your good work. Bye, now!");
		e.other:Faction(e.self,292,1,0); -- confirmed live faction
		e.other:Faction(e.self,241,1,0); -- Faction: DeepPockets
		e.other:Faction(e.self,263,1,0); -- Faction: Guardians of the Vale
		e.other:Faction(e.self,286,1,0); -- Faction: Mayor Gubbin
		e.other:Faction(e.self,336,-1,0); -- Faction: Coalition of Tradefolk Underground
		e.other:QuestReward(e.self,0,0,0,0,13952,500);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

-- END of FILE Zone:rivervale  ID:19070 -- Kizzie_Mintopp
