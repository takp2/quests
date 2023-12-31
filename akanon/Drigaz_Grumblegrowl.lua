-- Converted to .lua by Speedz

---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Grrreetings, " .. e.other:GetCleanName() .. ", would you like to share a roasted rat steak or perhaps a tall glass of gnomish spirits? Have no fear of my appearance. My bark is meaner than my bite! Grraw haw haw!");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	local text = "I need the odd cold iron necklace and the note from Glyssa if I am to assist you.";
	
	if (item_lib.check_turn_in(e.self, e.trade, {item1 = 1779,item2 = 14585},1,text)) then
		e.self:Say("I had hoped to see the last of these sorrowful symbols. There is little I can tell you of the details of the kobold religion as I was rescued from death as a pup by the Deep Muses and reunited with Brell Serilis. What I know is this, the deity this symbol represents is named Rolfron Zek. He was a devoted shaman of Brell before the Abandonment, now he is the lord of Despair and Hopelessness. There is a shaman of Rolfron that teaches the local kobolds, he carries with him a doctrine. Recover the doctrine and take it with this translation scroll back to your Temple");
		-- Confirmed Live Factions
		e.other:Faction(e.self,240,5); -- deepmuse
		e.other:Faction(e.self,288,1); -- merchant of ak'anon
		e.other:Faction(e.self,255,1); -- gemchoppers
		e.other:Faction(e.self,238,-1); -- dark reflection
		e.other:QuestReward(e.self,0,0,0,0,1780,1500);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
