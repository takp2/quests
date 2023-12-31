-- warrior crafted armor

---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Greetings. I am Ulan Meadowgreen of the family Meadowgreen. My brother and I are the best Armorers in all of Norrath. We craft [armor] for the bravest warriors in the land. If you are a Warrior of renown, and are interested in our armor, I have some mighty [labors] which you might attempt for me.");
	elseif(e.message:findi("armor")) then
		e.self:Say("I smith [Bracers], [Greaves], [Pauldrons] and [Breastplates]. My brother Shakrn smiths Helms, Gauntlets, Boots and Vambraces.");
	elseif(e.message:findi("labors")) then
		e.self:Say("Only those who can prove themselves mighty warriors deserve to wear our crafted armor.  While my brother prefers trophies, I seek instead tasks which will help my craft and my people.");
	elseif(e.message:findi("bracers")) then
		e.self:Say("The fine sheen that you see on our Crafted Armor is produced by a mixture of river berries and juice squeezed from the Optic Nerves of an Evil Eye. We are always in need of more Optic nerves for our armor. Bring me a handful of Optic Nerves and a [Sapphire], and I will give you a Crafted Bracer for your trouble.");
	elseif(e.message:findi("greaves")) then
		e.self:Say("Years ago, a Necromancer most foul terrorized the people of the Karanas. This wretch stole a [circlet] that father was smithing for my sister. It was very easy to recognize - shining silver like the light of dawn breaking. I have heard rumors that this Necromancer has settled in the depths of Najena. Return this circlet to me and gift me with two [Star Rubies], and I will reward you with Crafted Greaves.");
	elseif(e.message:findi("circlet")) then
		e.self:Say("The circlet my father forged was of the finest silver, ready to be enchanted by our more magical cousins.  It is a shame we never had the chance to finish the work.");
	elseif(e.message:findi("pauldron")) then
		e.self:Say("In the Caverns of Clan Runny Eye live several Evil Eyes of prestigious magical power. Split amongst them are the three lost pieces of the legendary [Rune of Dwarves]. When assembled, this Rune is said to impart a mystic skill to the smith who holds it. Bring me these three pieces and a [Fire Emerald], and I will smith for you a Pauldren worthy of the mightiest of warriors.");
	elseif(e.message:findi("rune of dwarves")) then
		e.self:Say("The Rune of Dwarves once rested in the heart of the city of Kaladim. Years ago, the goblins of Clan Runnyeye stole it from the dwarves. No one I have ever spoken to knows how it was broken. It is not hard to guess, however, why the evil eyes now hold them.");
	elseif(e.message:findi("breastplate")) then
		e.self:Say("Deep within the depths of Castle Mistmoore lives a particularly deadly clan of werewolves. These are the servants of [Mayong], and he has enchanted the most ferocious of them that their talons might cut through steel. I wish to study these talons, and see if I can transfer the enchantments from them to the crafted armor I make. If you bring me werewolf talons and 3 [rubies], I will give you a breastplate, the likes of which you have never before seen.");
	elseif(e.message:findi("mayong")) then
		e.self:Say("Mayong Mistmoore is the ruler of Castle Mistmoore. He has ruled there for centuries, and will most likely rule for centuries more to come. It is said that he does not age.");
	elseif(e.message:findi("star rubies")) then
		e.self:Say("I need a star ruby for a piece of jewelry my brother and I are creating.");
	elseif(e.message:findi("sapphire")) then
		e.self:Say("I need a sapphire for a piece of jewelry my brother and I are crafting.");
	elseif(e.message:findi("^rubies$")) then
		e.self:Say("I need rubies for a piece of jewelry my brother and I are crafting.");
	elseif(e.message:findi("fire emerald")) then
		e.self:Say("I need a fire emerald for a piece of jewelry my brother and I are crafting.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	local text = "Wait, " .. e.other:GetCleanName() .. ", are you not forgetting something?";

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 14019,item2 = 10034},1,text)) then
		e.self:Say("Very good. I am always in need of more optic nerves. Take this crafted bracer with my thanks.");
		e.other:QuestReward(e.self,0,0,0,0,4177,25000); -- Item: Crafted Bracers
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 13742,item2 = 10032,item3 = 10032},1,text)) then
		e.self:Say("Is this.. it is! I did not recognize it at first, but this is indeed the circlet my father once crafted. It seems to have been enchanted since. Take these crafted greaves with my thanks for a job well done.");
		e.other:QuestReward(e.self,0,0,0,0,4179,25000); -- Item: Crafted Greaves
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 13698,item2 = 13699,item3 = 13738,item4 = 10033},1,text)) then
		e.self:Say("Most impressive - all three pieces of the dwarven rune. When joined, this shall serve me well. Take this crafted pauldron with my gratitude.");
		e.other:QuestReward(e.self,0,0,0,0,4175,25000); -- Item: Crafted Pauldron
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 13746,item2 = 10035,item3 = 10035,item4 = 10035},1,text)) then
		e.self:Say("I am most impressed that you have returned from Castle Mistmoore with a werewolf talon. You have justly earned your crafted breastplate.");
		e.other:QuestReward(e.self,0,0,0,0,4174,25000); -- Item: Crafted Breastplate
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

-- EOF zone: southkarana ID: 14073 NPC: Ulan_Meadowgreen

