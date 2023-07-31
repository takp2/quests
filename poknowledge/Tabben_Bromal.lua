function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("What is it? What do you wan. . . Oh bloody underfoot, do forgive me, traveler. I'm not used to all this bickering and flittering about -- you know, the bustle of the 'living' city. The racket, the noise, and the wails of the children. Bah! I came here to escape it, not to relive it. But if I survived it once, I sure as Brell's holy bottom will do it again! In hopes of getting you all out of here as soon as possible and the peace and quiet being resurrected out of your blessed absence, I've agreed to lend some of my knowledge of the more inferior levels of tinkering to those who have an interest in this art. If you don't intend on purchasing any materials, then be off with you and leave me in peace. However, if you have coin in your pocket and you plan on spending, then do so quickly. I have more pressing things to do with my time than wait while you leisurely browse my wares.");
	elseif(e.message:findi("ready to write down")) then
		if(e.other:HasItem(17278)) then -- Item: Small Parts Container  he replies to this if I have small parts container.
			e.self:Say("Very well. You'll need to gather up a dense hammered casing for the outer shell; a crystalline carapace will act to protect the face of the device; and it requires a fiery power source to propel the rotor mechanism. The device is then attached around the neck, much like the one you are wearing. The only difference will be the strands of living chain that will keep it from slipping from around your neck. Place those four items and your talisman in that box and return it to me. We should be able to get this thing built for you without much fuss at all, should all things go well on your end of the task, of course.");
		else
			e.self:Say("Ready for what?");
		end
	end
end

function event_trade(e)
	local item_lib = require("items");
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 28278})) then -- Strange Jeweler's Schematic
		e.self:Emote("takes the document from you and looks at it for a moment. 'Well, this is a beautiful looking schematic. I wonder what they are trying to make with it? Where did you get this? No wait; don't tell me. I'd rather not know. I can make some of this writing out but just barely. What I can read leads me to believe that I'd be better off not knowing.'");
		e.self:Emote("falls victim to his curiosity and grabs a small kit from the table behind him. 'Take this kit and look for the following parts,' he says as he scrunches his nose at the schematic again. 'We'll need a Tri-coated Metal Casing, one Size C spring, some Creeping silk strands -- whatever those are -- and some Congealed Bile-based Ooze. I'm not sure if this thing is wanting us to make a device or some sort of nasty cocktail, but that's what it's asking for... ewww!'");
		e.self:Say("Seal those things up in the container that I just gave you and bring it straight back to me. I'll wait here for you and see if I can decipher anymore of this schematic."); --not sure on how to check to see if the container combine works
		e.other:QuestReward(e.self,{items = {17277,28278}}); -- item: Small Parts kit, Strange Jeweler's Schematic
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 28283})) then -- Sealed Parts Box
		e.self:Say("Oh, you've returned! Very good, " .. e.other:GetCleanName() .. "! Saria and I have made some real progress on the document that you brought us. Watch this and you'll see what I mean!");
		e.self:Emote("quickly opens the small case and removes the parts. He takes a tiny spanner, several small bolts, and a long wire and quickly pieces together what appears to be a small clockwork talisman. He pulls a leather string through the top of it and offers it to you.");
		e.self:Say("That should work for you, but from what we gathered, there's another layer of mechanics that works to shield and envelope the existing talisman. It's going to require more parts. So take this container and let me know when you're [ready] to write down the names of the next set of parts.");
		e.other:QuestReward(e.self,{items = {17278,28284}}); -- Item: Small Parts Container, Small Clockwork Talisman
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 28289})) then
		e.self:Emote("nods at you and takes the parts box over to the table. He seems to have laid out the extra tools that he needs prior to your return. With only a few twists and clicks, the pieces of the talisman lock together and begin to glow. The gnome turns and hands you the talisman and the design schematic in an exaggeratedly sharp gesture.");
		e.self:Say("Please take the schematic to Elder Clinka. I'm afraid that I don't have the courage to spend any more time working on this for you. I wish I had a more adventurous spirit, but I don't. I like it here because it's peaceful. I don't need anyone changing that for you. Take care and be cautious on your way to see her. There's no telling who or what may be after you! When you show her the schematic, you may want to mention that most of that writing wasn't on there when we got it.");
		e.self:Say("It's seems that words are beginning to write themselves onto that schematic of yours. Maybe she'll be able to understand them. I sure don't want to. Take care.");
		e.other:QuestReward(e.self,{items = {28291,28290}}); -- Item: The Talisman Schematic, Powered Clockwork Talisman
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
