-- Quest for luclin smithing
---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Say("You there.  Have you seen the [poachers] out in the thicket?  You best not be one of them!");
	elseif(e.message:findi("poacher")) then
		e.self:Say("There has been an outbreak in the thicket of people hunting wild cats for their hides.  Their hides!  People profiting off of that which was never theirs, bringing pain to any that they may overrun with force.  I can think of nothing else that turns my stomach so!  A former Khala Dun named Ferin is out there heading up the initial investigation into the despicable actions.  My apologies if I seemed a bit gruff, but I am not quite myself when discussing such matters as these.");
	elseif(e.message:findi("ferin")) then
		e.self:Say("Ferin and I went through training together, he is as noble as they come.  The city guard will miss him terribly, but his mission in the thicket is just as necessary as our work here.");
	elseif(e.message:findi("barkhem")) then
		e.self:Say("A finer smith has never put hammer to anvil.  We are all lucky to have Master Barkhem forge and maintain our equipment.");
	elseif(e.message:findi("training camp")) then
		e.self:Say("The training camp is located on the cliff behind the Royal Palace.  Younger citizens are encouraged to go there if they wish to build their skills and combat proficiency.  Just find the sergeant and sign up.");
	elseif(e.message:findi("where.* barrel")) then
		e.self:Say("I know many of the taverns and eateries have their own barrels, but you may want to try Jakhal and Kahala's Brewery.  You can find it in the southwestern section of the Merchant's Quarter, or Corridor of Heroes, as I like to call it.");
	elseif(e.message:findi("where.* bank")) then
		e.self:Say("The bank is in the south-eastern end of the Merchants' Quarter.");
	elseif(e.message:findi("where.* merchant.* quarter")) then
		e.self:Say("The Merchants' Quarter lies in the middle of the city just east of the Royal Palace.");
	elseif(e.message:findi("where.* food")) then
		e.self:Say("Take a look around.  If you're hungry, just follow your nose... or look around one of the barracks in either the South or North Gate districts.");
	elseif(e.message:findi("where.* arena")) then
		e.self:Say("You can find the arena in the east side of the city, but it is rarely used these days.  It stands opposite of the pool in the Merchants' Corridor.");
	elseif(e.message:findi("where.* drink")) then
		e.self:Say("If you're looking for a good drink, just look around.  The Taruun tend to frequent Rawlf's Place in the North Gate district of town.  I prefer the busier taverns.  Try the Trail's End just inside the South Gate district.  It is always packed with soldiers moving back and forth to combat.");
	elseif(e.message:findi("where.* forge")) then
		e.self:Say("Hmm... I know that the Khala Dun are fond of smithing. Try looking near their barracks in the western section of the North Gate district.  You can use the forge in Barkhem's shop as well. It's in the Merchants' Quarter.");
	elseif(e.message:findi("corridor.* hero")) then
		e.self:Say("The Corridor of Heroes is the section of town that houses many of our finest establishments.  That area also houses our arena and Hall of Heroes.  The Corridor of Heroes is also known as the Merchants' Quarter.  I hope that I did not confuse you with the name.  Its proper name stems from the fact that you must have served in combat to act as proprietor of a shop in that area.");
	elseif(e.message:findi("hall.* hero")) then
		e.self:Say("The Hall of Heroes was built overlooking the Arena.  The Arena is rarely used these days, but you can almost always find activity in the Hall.  Our greatest leaders and heroes gather there to direct the battle against the Grimling hordes.");
	elseif(e.message:findi("where.* pottery")) then
		e.self:Say("Pottery and other Jharin supplies are located in the northeastern section of the Corridor of Heroes.");
	elseif(e.message:findi("where.* hollowshade")) then
		e.self:Say("The Hollowshade is the moor located just outside of the North Gate. There have been a lot of grimling attacks around that area. Coupled with deadly owlbears and rhino beetles, you had best not go unprepared for a tough battle.");
	elseif(e.message:findi("where.* north gate")) then
		e.self:Say("The North Gate district lies between the Northern Bridge and the inner corridors of our city.  That district houses our many Khala Dun barracks, Officers' quarters, and larger meeting halls.  The North Bridge leads to the Hollowshade Moor.");
	elseif(e.message:findi("where.* south gate")) then
		e.self:Say("The South Gate district lies between the Southern Bridge and the inner corridors of our city.  Many of our Scouts, Animists, and Taruun, live in that district. The South Bridge leads to the Shadeweaver's Thicket.");
	elseif(e.message:findi("the pit")) then
		e.self:Say("We call the crater that was formed around our city during the Shifting, the Pit.  It is full of all sorts of nasty little creatures.  Veteran guards watch the area closely and use it as a place to train our new recruits.");
	elseif(e.message:findi("where.* loom")) then
		e.self:Say("Many of our town's seamstresses and tailors can be found working together on the top floor of the general mercantile.  I'm sure that you can find a loom there.");
	elseif(e.message:findi("where.* mercantile")) then
		e.self:Say("The general mercantile can be found on the southern side of the Corridor of Heroes.  Just look for the sign.");
	elseif(e.message:findi("royal corridor")) then
		e.self:Say("The area surrounding the Royal Palace is known as the Royal Corridor.");
	elseif(e.message:findi("where.* library")) then
		e.self:Say("We have two libraries.  The Library of War History and Related works is located on the southern side of the Royal Corridor and the Library of Spiritual and Natural Studies is located on the northern side.");
	elseif(e.message:findi("where.* arrow")) then
		e.self:Say("If you are looking to purchase arrows, perhaps you should check the South Gate district.  The vendors in that area carry goods that appeal to the Taruun and other scouts that live in that district.");
	elseif(e.message:findi("guildmaster") or e.message:findi("guildhall") or e.message:findi("guild master") or e.message:findi("guild hall")) then
		e.self:Say("We have Guildhalls in several areas.  You can find the Khala Dun under the Arena. The Jharin are housed near the stage above the Royal Palace.  The Taruun, Dar Khura, and Khati Sha are housed near each other in under the Royal Palace.");
	elseif(e.message:findi("who.* khura")) then
		e.self:Say("The Dar Khura guide us with their wisdom. They are the ones who speak with the spirits and heal our wounds. They are named in honor of Dar Khura who taught us that we were brought here for a purpose.");
	elseif(e.message:findi("who.* khati")) then
		e.self:Say("He was a great hero among our people. It was he who learned to speak with the beasts. Khati Sha was the greatest of explorers who brought Acrylia to us. With these mystical stones, we have built our beloved city. Those who walk with the beasts are named in his honor.");
	elseif(e.message:findi("who.* khala")) then
		e.self:Say("The Khala Dun are the king's warriors. They are charged with defending the city of Shar Vahl and commanding any offensives necessary. They are named after Khala Dun who was King Vah Kerrath's protector during the times of the shifting. You can find their guild within the Arena Complex in the merchants quarter.");
	elseif(e.message:findi("who.* taruun")) then
		e.self:Say("The Taruun bring food for our city. They are among the most cunning of our people. The Taruun watch us and protect us from within the shadows. They are named in honor of Taruun, the lost orphan who lived and flourished among our people despite his shy nature. Taruun taught us the importance of stealth with honor. The location of their guild is in the heart of the city. To find it, you must find the delicate balance between honor and battle.");
	elseif(e.message:findi("raja")) then
		e.self:Say("King Raja Kerrath is our beloved and most noble king. He is the son of King Vah Kerrath and the grandson of our most honorable prophet Kejaan.");
	elseif(e.message:findi("ragnar")) then
		e.self:Say("Spiritist Ragnar has an alchemy shop within the Merchants' Quarter. He is a master of Alchemy and a knowledgeable shaman. You cannot miss his shop, it is located right next to the bank.");
	elseif(e.message:findi("shifting")) then
		e.self:Say("These were the troubled times when we were ripped from our world and brought to this soil. Our leader and beloved King Vah Kerrath led us to rebuild this great city and so we have taken his name in his honor.");
	elseif(e.message:findi("grimling")) then
		e.self:Say("The grimlings are the beings who attack our people around the Acrylia mines. They have the ability to use magic against us. Be careful if you wish to travel north. We have been waging war in that area.");
	elseif(e.message:findi("acrylia")) then
		e.self:Say("Acrylia is the magical ore found in the mines to the north. We use this ore to build our homes and weapons. It has been very difficult lately to mine for these stones due to the grimling attacks on our miners.");
	elseif(e.message:findi("shadow haven")) then
		e.self:Say("Shadow Haven is the great city that lies beneath the ground. We have many trading relationships with the houses that form the groundwork of Shadow Haven politics. Use caution when traveling there, although the haven houses many honest merchants, it is also a home to smugglers, bandits, and thieves.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	-- takes repair order from master Barkhem
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 29803})) then
		e.self:Say("Well it's about time Barkhem got around to us, and he couldn't even be bothered to come himself. Please get this back to me as soon as you can... you do know that we are here to guard the city, right?");
		e.other:QuestReward(e.self,0,0,0,0,29807);
	end
	-- You receive Jasir's Dented Shield. Take the dented shield and place it into a forge with your Vah Shir Apprentice Mallet. This creates Jasir's Immaculate Shield (the mallet will be returned). Give this shield back to Jasir to receive Jasir's Work Order.
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 29808})) then
		e.self:Say("Thank you very much " .. e.other:GetCleanName() .. ", and I must apologize for the way I spoke to you earlier. We just got word of some [poachers] out in the Thicket, they really get me angry. In any case, you have done a fine job, worthy of Barkhem himself.");
		e.other:QuestReward(e.self,0,0,0,0,29809);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
