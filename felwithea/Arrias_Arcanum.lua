---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("I am sorry, young one, but I am too burdened by my own [troubles] to help you now. Please seek another of the faith to ease your soul.");
	elseif(e.message:findi("trouble")) then
		e.self:Say("My son Ariam, a paladin of this fair city, has been missing for many years. Now, after remaining hopeful for so long, I have given up and it has broken my heart and soul. If I could but hear news to know of his fate, then I could find comfort again. Until then, I am no good to others. I am sorry.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 31493})) then
		e.self:Say("This! This is the gift my daughter gave Ariam to aid his cause. This too is the piece of my soul that was missing. Your news of his fate is troubling, yet his heroism even beyond this life is cause for celebration. Here, keep this token. My heart is mended and I have no need of it. Once such as yourself who will continue to fight for the things in which my son believes ought to bear this. I am sure my daughter would agree.");
		e.other:Faction(e.self,226,5,0); -- Clerics of Tunare
		e.other:Faction(e.self,279,5,0); -- King Tearis Thex
		e.other:Faction(e.self,5002,3,0); -- Anti-Mage
		e.other:QuestReward(e.self,0,0,0,0,31495,300); -- Item: Arriallas Token
		eq.depop_with_timer();
	end
	item_lib.return_items(e.self, e.other, e.trade);
end
