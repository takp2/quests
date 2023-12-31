---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Listen, this is a pretty busy [operation] I run here.  I certainly don't have any spare time to sit around and chit-chat with you all day, got it?");
	elseif(e.message:findi("operation")) then
		e.self:Say("Look, " .. e.other:GetCleanName() .. ". I don't have time for this.  Let's just say importing exotic goods is our main interest, along with a few other profitable ventures.  Now quit pestering me, or you'll force me to sic Grenny here on ya.");
		eq.signal(10122,10); -- NPC: Gren_Frikniller
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 18745})) then -- A tattered note
		e.self:Say("Welcome to the Coalition of Tradesfolk underground. We like to keep a low profile around here and not draw any unneeded attention to our operations, you following me? I hope so, for your sake. Anyways, Nestral T'Gaza is in charge with helping out our newest members. Go see her as soon as you get a chance.");
		e.other:Faction(e.self,336,100,0); --Coalition of TradeFolk Underground
		e.other:Faction(e.self,229,100,0); --Coalition of Trade Folk
		e.other:Faction(e.self,329,10,0); --Carson McCabe
		e.other:Faction(e.self,230,5,0); --Corrupt Qeynos Guards
		e.other:Faction(e.self,330,15,0); --The Freeport Militia
		e.other:QuestReward(e.self,0,0,0,0,13568,20); -- Brown Faded Tunic
	end
	item_lib.return_items(e.self, e.other, e.trade);
end

-- END of FILE Zone:freporte  ID:10108 -- Elisi_Nasin
