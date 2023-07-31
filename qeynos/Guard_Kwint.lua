---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		if(e.other:GetFactionValue(e.self) >= -500) then -- might be slightly off, tested at -300 and scowls, determined it's within that range
			e.self:Say("Hail, " .. e.other:GetCleanName() .. "! Are you new to Qeynos? If you are, I highly recommend stopping by the Lion's Mane Tavern for the best ale in Antonica. Oh, did I mention that my brother Earron is the master brewer there? Tell him [Kwint sent] you.");
		else
			e.self:Say(eq.ChooseRandom("I didn't know Slime could speak common. Go back to the sewer before I lose my temper.","Is that your BREATH, or did something die in here? Now go away!","I wonder how much I could get for the tongue of a blithering fool? Leave before I decide to find out for myself."));		
		end
	elseif(e.message:findi("weapon")) then
		e.self:Say("This city has been blessed with the craftsmanship of the Ironforges.  Their weapons are supreme.  Their shop can be found near the Temple of Life in North Qeynos.  You may also try the local warrior guild.");
	elseif(e.message:findi("order of the three")) then
		e.self:Say("The Order of Three consists of the three positive circles of the arcane known as magic, enchantment and wizardry.  This guild keeps very busy in its hall near the arena.  All in Qeynos respect their powers.");
	elseif(e.message:findi("monk guild")) then
		e.self:Say("In North Qeynos sits the house of the Silent Fist Clan.  These monks are welcome in Qeynos and often assist in training the Qeynos Guard in hand to hand combat.");
	elseif(e.message:findi("bank")) then
		e.self:Say("Qeynos Hold in South Qeynos is just across from the arena.  You know, over the bridge behind Firepride's.");
	elseif(e.message:findi("port") or e.message:findi("dock")) then
		e.self:Say("The port of Qeynos is located in South Qeynos.  From here one may catch the ship to Erudin.");
	elseif(e.message:findi("kane")) then
		e.self:Say("Commander Kane Bayle is the commander of all the Qeynos Guard.  He is second only to his brother, Antonius Bayle.  His post is in the guard house at the city gates.  Mind you, do not bother him, he has a bit of a temper.");
	elseif(e.message:findi("circle.* unseen hand")) then
		e.self:Say("The Circle of the Unseen Hand?  I have heard nothing of them.  Are they some sort of performing magic troupe?");
	elseif(e.message:findi("paladin guild") or e.message:findi("cleric guild")) then
		e.self:Say("Within Qeynos are the Knights of Thunder and the Priests of Life.  Both of these orders consist of clerics and paladins and are respected by all.  The Hall of Thunder lies in South Qeynos and the Temple of Life is in North Qeynos.");
	elseif(e.message:findi("necromancer guild") or e.message:findi("shadowknight guild")) then
		e.self:Say("What gibberish are you spouting?  There is not, nor will there ever be, such an organization as that within a hundred miles of Qeynos, not with the Qeynos Guard on patrol.  Next you will be inquiring of a rogue guild!  Really!");
	elseif(e.message:findi("ranger guild") or e.message:findi("druid guild")) then	
		e.self:Say("I believe you shall find the Protectors of the Pine and Jaggedpine Treefolk in the hollow of Surefall Glade.");	
	elseif(e.message:findi("jaggedpine treefolk")) then
		e.self:Say("In Surefall Glade there are druids called the Jaggedpine Treefolk.  These men and women often assist our army during times of war.");
	elseif(e.message:findi("linarius")) then
		e.self:Say("The Qeynos Tower Guards of the hills and plains are commanded by Captain Linarius Graffe.  He often has much to report.  He is posted in a keep which spans a river.  I believe it is in the northern Plains of Karana.");
	elseif(e.message:findi("north qeynos")) then
		e.self:Say("The passages to North Qeynos can be found near the bard's guild or next to the Clock of Ak'Anon.");
	elseif(e.message:findi("inn") or e.message:findi("rest")) then	
		e.self:Say("If you need a place to rest, I highly recommend the Lion's Mane Inn and Tavern.  Poor adventurers all huddle together in one of the backrooms of Fish's.");	
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib =require("items");
	
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 18821})) then
		e.self:Say("Hey. Thanks! Sorry about that 'he's my brother' bit but I am sure you had a good time at the Lion's Mane anyway. I sure didn't lie to you about the quality of the ale there.");
		-- Confirmed Live Factions
		e.other:Faction(e.self,262,5,0); -- Faction: Guards of Qeynos
		e.other:Faction(e.self,219,1,0); -- Faction: Antonius Bayle
		e.other:Faction(e.self,223,-1,0); -- Faction: Circle of Unseen Hands
		e.other:Faction(e.self,230,-1,0); -- Faction: Corrupt Qeynos Guards
		e.other:Faction(e.self,291,1,0); -- Faction: Merchants of Qeynos
		e.other:QuestReward(e.self,0,0,0,0,0,800);
		e.other:GiveCash(8,0,0,0);
	end
	item_lib.return_items(e.self, e.other, e.trade, e.text)
end
