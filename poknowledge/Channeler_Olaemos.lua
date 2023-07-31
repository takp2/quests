--Wizard PoP Spells
---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Say("Greetings, " .. e.other:GetCleanName() .. ". I am channeler Olaemos, one of five scholars in the art of evocation to reside here in Myrist. We have volunteered to temporarily halt our personal quests for knowledge and power beyond the material world so that we may aid the travelers in our midst. The spells we have scribed are native to your world, though in our hands they are available to all practitioners of the evocational arts despite race or religious differences. There is one other thing that I can aid you with should you truly be a wizard and that is the scribing of a most foreign and potent spell. I require you to find a piece of the untainted, fledgling magical manifestations upon the plane. These items appear as scrolls or runes that seem mundane to the eyes of mortals, though they are far more powerful than you realize. If you are fortunate enough to stumble across such a treasure, do not discard it but return it to me and I shall turn it into a power most befitting of the plane's travelers.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	local ethereal = item_lib.count_handed_item(e.self, e.trade, {29112}); --Ethereal Parchment
	local spectral = item_lib.count_handed_item(e.self, e.trade, {29131}); --Spectral Parchment
	local glyphed = item_lib.count_handed_item(e.self, e.trade, {29132}); --Glyphed Rune Word
	if(ethereal > 0) then
		repeat
			e.self:Emote("almost brashly snatches the item out of your grip with his small, cold froglok hands. The wizard eyes the item quickly, nodding and mumbling to himself at an inaudible tone. Eventually, the wizard begins to weave a spell around the item, which seems to become saturated with the conjured magic. Runes of a brilliant, shimmering azure appear upon the parchment, which is now wholly tangible in its form. As the spell ends, the forglok inspects his work one last time before offering the spell to you, 'Take this, " .. e.other:GetCleanName() .. ". Do not use it without caution or discipline, for the power is unlike anything you have wielded in the past. It will affect both the divine and primal realms, despite its astral birth.");
			e.other:QuestReward(e.self,0,0,0,0,eq.ChooseRandom(26944, 28413, 28438, 28437, 21662, 28440, 28441, 28442)); --Level 61 or 62 Wizard spell, PoP (Greater Fetter, Shield of the Arcane, Tears of Ro, Resistant Armor, Teleport, Elemental Barrier, Draught of Ro, or Lure of Ro.)
			ethereal = ethereal - 1;
		until ethereal == 0;
	end
	if(spectral > 0) then
		repeat
			e.self:Emote("almost brashly snatches the item out of your grip with his small, cold froglok hands. The wizard eyes the item quickly, nodding and mumbling to himself at an inaudible tone. Eventually, the wizard begins to weave a spell around the item, which seems to become saturated with the conjured magic. Runes of a brilliant, shimmering azure appear upon the parchment, which is now wholly tangible in its form. As the spell ends, the forglok inspects his work one last time before offering the spell to you, 'Take this, " .. e.other:GetCleanName() .. ". Do not use it without caution or discipline, for the power is unlike anything you have wielded in the past. It will affect both the divine and primal realms, despite its astral birth.");
			e.other:QuestReward(e.self,0,0,0,0,eq.ChooseRandom(28414, 28445, 28446, 28448, 26940, 28415, 28444, 28447)); --Level 63 or 64 Wizard spell, PoP (Force Shield, Draught of Thunder, Agnarr's Thunder, Iceflame of E'ci, Tears of Arlyxir, Shield of Maelin, Telekin, or Draught of E'ci)
			spectral = spectral - 1;
		until spectral == 0;
	end
	if(glyphed > 0) then
		repeat
			e.self:Emote("almost brashly snatches the item out of your grip with his small, cold froglok hands. The wizard eyes the item quickly, nodding and mumbling to himself at an inaudible tone. Eventually, the wizard begins to weave a spell around the item, which seems to become saturated with the conjured magic. Runes of a brilliant, shimmering azure appear upon the parchment, which is now wholly tangible in its form. As the spell ends, the forglok inspects his work one last time before offering the spell to you, 'Take this, " .. e.other:GetCleanName() .. ". Do not use it without caution or discipline, for the power is unlike anything you have wielded in the past. It will affect both the divine and primal realms, despite its astral birth.");
			e.other:QuestReward(e.self,0,0,0,0,eq.ChooseRandom(26942, 21663, 28443, 28450)); --Level 65 Wizard spell, PoP (Shock of Magic, Greater Decession, Tears of Marr, or Strike of Solusek)
			glyphed = glyphed - 1;
		until glyphed == 0;
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

-- quest by Kilelen
-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
