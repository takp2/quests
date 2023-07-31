-- Evil Research
-- The xp from this quest was what made it worthwhile, more than the concordance. -Kilelen
-- Converted to .lua by Speedz

---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		if(e.other:GetFaction(e.self) <= 5) then
			e.self:Say("I am Tv`ysa, guardian of the [Concordance of Research].");
		else
			e.self:Say(eq.ChooseRandom("I didn't know Slime could speak common.  Go back to the sewer before I lose my temper.","Is that your BREATH, or did something die in here?  Now go away!","I wonder how much I could get for the tongue of a blithering fool?  Leave before I decide to find out for myself.","Oh look..a talking lump of refuse..how novel!"));
		end
	elseif(e.message:findi("Concordance of Research")) then
		e.self:Say("The 'Concordance of Research' is an aid to those who follow the path of academia. It, and its sister books, 'Runes and Research', volumes I and II, help those who are [interested] in researching spells.");
	elseif(e.message:findi("interested")) then
		e.self:Say("I have several copies of each book. If you want a copy of 'Runes and Research', volume I or II, bring me a lightstone and I will give you whichever book I have more of at the moment. Bring me a greater lightstone, and I will give you a copy of the 'Concordance of Research.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	if(e.other:GetFaction(e.self) <= 5 and (item_lib.check_turn_in(e.self, e.trade, {item1 = 10300}))) then -- Lightstone
		e.self:Say("A lightstone ? Thank you very much. Here is a copy of 'Runes and Research' for you.");
		e.other:Faction(e.self,236,10,0); -- Dark Bargainers
		e.other:Faction(e.self,334,1,0); -- Dreadguard Outer
		e.other:Faction(e.self,370,1,0); -- Dreadguard Inner
		e.other:QuestReward(e.self,0,0,0,0,eq.ChooseRandom(18175, 18176),28000); -- Runes and Research Volume I or II
	elseif(e.other:GetFaction(e.self) <= 5 and (item_lib.check_turn_in(e.self, e.trade, {item1 = 10400}))) then -- Greater Lightstone
		e.self:Say("A greater lightstone? Thank you very much. Here is a 'Concordance of Research' for you.");
		e.other:Faction(e.self,236,10,0); -- Dark Bargainers
		e.other:Faction(e.self,334,1,0); -- Dreadguard Outer
		e.other:Faction(e.self,370,1,0); -- Dreadguard Inner
		e.other:QuestReward(e.self,0,0,0,0,17504,55000); -- Concordance of Research
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
