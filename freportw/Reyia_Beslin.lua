---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Greetings. "..e.other:GetName()..". I am Reyia Beslin of the Ashen Order.  I help to train our members and I am in charge of handing out the orange and red Sashes of Order.  Would you like to know how you can get an [orange sash]? Or maybe you think you are ready to earn the [red sash]?");
	elseif(e.message:findi("orange sash")) then
		if(e.other:GetFactionValue(e.self) >= 225) then
			e.self:Say("To prove your skills and earn the orange Sash of Order, you must bring me the following items - a greater lightstone, a cutthroat insignia ring, a legionnaire's bracer, and, of course, your yellow sash. I will leave it to you to figure out exactly where to get these items. Good luck, "..e.other:GetName().." .");
		elseif(e.other:GetFaction(e.self) == 5) then
			e.self:Say("I have been watching you, and appreciate the help you've given to the brothers and sisters of the Ashen Order, but I feel that such a vital matter should be left to one of our more trusted members.");
		else
			e.self:Say(eq.ChooseRandom("I didn't know Slime could speak common.  Go back to the sewer before I lose my temper.","Is that your BREATH, or did something die in here?  Now go away!","I wonder how much I could get for the tongue of a blithering fool?  Leave before I decide to find out for myself.","Oh look..a talking lump of refuse..how novel!"));
		end
	elseif(e.message:findi("red sash")) then
		if(e.other:GetFactionValue(e.self) >= 275) then
			e.self:Say("So, you think you are skilled enough to earn the red Sash of Order, "..e.other:GetName().." ? I have just the [task] for you then. But be warned, this will be the toughest challenge you have faced yet. There are many legends and myths of great heroes and ancient evils from all over Norrath. Here in Freeport, we get travelers from all over the world, and we get their tales as well. The point is that most of these stories are just that, stories and fairy tales. Told to amuse people and frighten children. I also thought the tales I'd heard about the [Marnek Jaull] were only legends, but now I know better.");
		elseif(e.other:GetFaction(e.self) == 5) then
			e.self:Say("I have been watching you, and appreciate the help you've given to the brothers and sisters of the Ashen Order, but I feel that such a vital matter should be left to one of our more trusted members.");
		else
			e.self:Say(eq.ChooseRandom("I didn't know Slime could speak common.  Go back to the sewer before I lose my temper.","Is that your BREATH, or did something die in here?  Now go away!","I wonder how much I could get for the tongue of a blithering fool?  Leave before I decide to find out for myself.","Oh look..a talking lump of refuse..how novel!"));
		end
	elseif(e.message:findi("marnek jaull")) then
		e.self:Say("Marnek Jaull led a cult of necromancers who followed the Burning Prince, Solusek Ro. He built an army, known as the Burning Dead, and spread destruction and fire throughout Antonica. Over the years, the Burning Dead fought many fierce and bloody battles with the paladins of Prexus, the Oceanlord. Though Marnek achieved many victories over the paladins, ultimately they were able to defeat him and destroy the Burning Dead. Legends say that before his defeat, Marnek created many powerful weapons and items, and wrote many books on his findings in the areas of magic. Many of these items were hidden away from the paladin forces, and remain untouched, waiting for Marnek's return, as the legends go.");
	elseif(e.message:findi("task")) then
		e.self:Say("I've heard a few legends of a powerful wand that Marnek himself used to wield. This was known as the wand of the Burning Dead, and was rumored to instill its owner with mystical energies. The legends I have heard all differed on the wand's creation and powers, but the basic story was always the same. I will [tell you the legend] if you like. The task I have for you is to bring me the two parts that make up the wand of the Burning Dead, before they can be assembled and used for evil once again. Bring me [Marnek's wand] and the [Sapphire of Souls], along with your orange sash, and you will have proven yourself a loyal member of the Ashen Order, worthy of receiving the red sash.");
	elseif(e.message:findi("legend") or e.message:findi("tell you the legend")) then
		e.self:Say("The legend of the wand of the Burning Dead goes basically like this, though you may hear slighty different versions from others. Marnek did a lot of experiments and created an unknown number of diabolical artifacts and weapons. One of his creations was this wand. Marnek fashioned a charred wand from the scorched bone of a paladin of Prexus, and Solusek Ro himself created the wretched Sapphire of Souls. Then, Marnek and his priests combined these, with the Burning Prince's blessing, to create the wand of the Burning Dead. Marnek used this Wand and its powers in his evil and destructive reign over Antonica. Years later, as Marnek starting losing battles to the paladins of Prexus, one of his own followers, a necromancer named Kenox, was able to steal the wand. Sensing Marnek's defeat, Kenox made his way toward Odus, hoping to strike a deal with the paladins for the wand. Would you like me to [tell you about Kenox]?");
	elseif(e.message:findi("kenox") or e.message:findi("tell you about Kenox")) then
		e.self:Say("Well, Kenox was not as sly as he liked to think he was. Marnek knew full well what he was up to, but let him continue with his plans. Kenox had arranged to meet with two paladins late one nght on a small island in Erud's Crossing, a place that would be considered neutral ground. Sir Toran Neshal, leader of the paladins, knowing the power of the wand, was certainly not going to make any deals with a servant of Solusek Ro, and definitely not foolish enough to take any chances with this mission. Imagine the look on Kenox's face when a ship carrying more than 25 paladins, including Sir Toran, arrived at the small island! The paladins immediately captured Kenox and the wand, and headed back to Erudin. Would like me to tell you [what happened to Toran]?");
	elseif(e.message:findi("toran")) then
		e.self:Say("Below the deck of the ship, Toran and his men questioned Kenox and carefully inspected the wand. Toran ordered one of his men to pick up the wand and try to identify its true powers. The man picked up the wand, but was unable to decipher its magic. He handed it to Toran, just as Marnek and Solusek had hoped, and the wand exploded, instantly incinerating the ship and everyone aboard, and lighting up the night sky with a giant fireball. Marnek's plan had succeeded. With the help and blessing of the Burning Prince, they had destroyed Sir Toran and an entire squad of Prexus' finest paladins. Years later, though, the paladins were able to regroup and ultimately defeat Marnek. The wand of the Burning Dead was destroyed and gone forever. Or least, that's what we thought. This wand must never be allowed to be made whole again.");
	elseif(e.message:findi("wand")) then
		e.self:Say("Marnek's Wand is rumored to be found in the depths of Befallen. Those who currently hold Befallen are said to be new followers of the Burning Dead. Probably believing that they may one day be able to awaken the evil Marnek again. This group must be stopped, and these evil items destroyed, before their wicked armies grow powerful enough to leave their horrible dungeon and spread throughout Antonica.");
	elseif(e.message:findi("sapphire of souls")) then
		e.self:Say("The Sapphire of Souls is rumored to be held by a thief in Najena. No one knows how this guy obtained the sapphire, but we believe he is trying to strike a bargain with those who are currently holding Befallen. Apparently, we aren't the only ones who know of the wand's powers, and this thief thinks he can make a profit from it. Sadly, his greed will surely lead to his death.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	local text1 = "You are well on your way to earning the orange Sash of Order.";
	local text2 = "Quite impressive, "..e.other:GetName()..". Keep up the good work and you will surely be wearing a red Sash of Order in no time at all.";	

	--  Greater Lightstone ID-10400 - Cutthroat Insignia Ring ID-1903 - Legionnaire's Bracer ID-2299 - Yellow Sash of Order ID-10131
	if(e.other:GetFactionValue(e.self) >= 225 and item_lib.check_turn_in(e.self, e.trade, {item1 = 10400,item2 = 1903,item3 = 2299,item4 = 10131},1,text1)) then
		e.self:Say("You have proven yourself a mighty warrior. I am honored to present you, "..e.other:GetName()..", with the orange Sash of Order.");
		e.other:Faction(e.self,361,50); -- Ashen Order
		e.other:Faction(e.self,281,7); -- Knights of Truth
		e.other:Faction(e.self,309,2); -- Silent Fist Clan
		e.other:QuestReward(e.self,0,0,0,0,10132,300); -- Orange Sash of Order
	--  Blackened Wand ID-13237 - Blackened Sapphire ID-13238 - Orange Sash of Order ID-10132
	elseif(e.other:GetFactionValue(e.self) >= 275 and item_lib.check_turn_in(e.self, e.trade, {item1 = 13237,item2 = 13238,item3 = 10132},1,text2)) then
		e.self:Say("Great job, "..e.other:GetName().." ! Congratulations. With the destruction of these evil items, the wand of the Burning Dead will never bring harm to anyone on Norrath again. It is my honor to present to you, on behalf of Master Closk and the Ashen Order, the red sash. May Quellious be with you always.");
		e.other:Faction(e.self,361,75); -- Ashen Order
		e.other:Faction(e.self,281,11); -- Knights of Truth
		e.other:Faction(e.self,309,3); -- Silent Fist Clan
		e.other:QuestReward(e.self,0,0,0,0,10133,400); -- Red Sash of Order
	end
	item_lib.return_items(e.self, e.other, e.trade);
end

-- END of FILE Zone:freportw  ID:9084 -- Reyia_Beslin 
