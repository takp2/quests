---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("May the Truthbringer guide your path. I am Celsar Vestagon, upholder of the faith and cleric of Mithaniel Marr. Did you come to see the [minnows of marr]?");
	elseif(e.message:findi("minnows of marr")) then
		e.self:Say("The Marr Minnow is unique to the Hall of Truth. It is a beautiful fish. Unfortunately, recently, reports of piranha have been heard. Due to greater concerns, I must look for assistance from noble clerics who wish to help Marr and [eradicate the piranha].");
	elseif(e.message:findi("piranha")) then
		e.self:Say("Yes. You are new to the word of Marr. Go to the waters surrounding the Hall of Truth. Fill this sack with no fewer than four dead piranha. You'd best keep well fed. I do not want you to eat the fish before you fill the sack and combine it. May Marr be with you.");
		e.other:SummonCursorItem(17936); -- Item: Empty Fish Sack
	elseif(e.message:findi("heal")) then
		e.self:Say("If you require the binding of wounds you should speak with Palious Jartan in the temple. He will be glad to help you.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13872})) then
		e.self:Say("You have done well. The Marr Minnow shall have a greater chance of flourishing. Please take this as a reward.");
		e.other:Faction(e.self,281,20,0); -- Faction: Knights of Truth
		e.other:Faction(e.self,271,-3,0); -- Faction: Dismal Rage
		e.other:Faction(e.self,330,-3,0); -- Faction: The Freeport Militia
		e.other:Faction(e.self,362,4,0); -- Faction: Priests of Marr
		e.other:Faction(e.self,311,2,0); -- Faction: Steel Warriors
		e.other:QuestReward(e.self,23,0,0,0,0,200);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
