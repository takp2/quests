--Crusader Vragor is used for spawning Zhaoku, a Trakasaur who drops one of the pieces for the Whistling Fists quest.
---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Perhaps you would care to hear a tale, and perhaps you could help me with the ending. It is the tale of the end of Grandmaster Tynn. We all know that Tynn came into Sebilis with no rebirth. I suppose you know he created the caste of Iksar monks, but I doubt you know where he now [rests] do you?");
	elseif(e.message:findi("rests")) then
		e.self:Say("Then I shall tell you. Master Tynn chose a place of rest in his old age. While deep in meditation he slipped away and breathed no more. His corpse remained in the stance of meditation for many years unyielding to the elements. This brings us to recent times. A Trakanasaur that has been named Zhaoku came along the remains and devoured them. The bones too hard to be chewed, he swallowed them whole. To this day he wanders with them lodged in his stomach. Are you interested in knowing [where] Zhaoku is?");
	elseif(e.message:findi("where")) then
		e.self:Say("I will tell you but you must help me first. I have been tied to this plane because of deeds unfinished. I was questing for the stupendous tome for ages to no avail. Without this tome I can not pass on in peace. Finish my quest, bring me the stupendous tome and a crusader coffin. I will tell you where the beast rests before I pass on. I doubt you can finish this, but I can always hope.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 18051, item2 = 17031})) then
		e.self:Say("The tome! I can finally pass on in peace. Before I go I will tell you that Zhaoku rests to the east of here near Old Sebilis. He is gigantic and not easily missed.");
		eq.spawn2(95184,0,0,-1801,-2260,-365,38); -- NPC: Zhaoku
		e.other:Faction(e.self,444,10); -- Faction: Swift Tails
		e.other:Faction(e.self,441,5); -- Faction: Legion of Cabilis
		e.other:QuestReward(e.self,0,0,0,0,0,20000);
		eq.depop_with_timer();
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

--Submitted by: Jim Mills
-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
