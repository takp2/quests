--Pazin_Punox.pl
--Rogue Tome Handin/Rogue Master Sketch

---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Say("Welcome to the Hall of the Ebon Mask. You had best be a rogue or you have no business here. We have nothing to say to outsiders.");
	elseif(e.message:findi("dark assassin")) then
		e.self:Say("Aye we were visited by that dark assassin, he left some sketch in my safekeeping, I would gladly give you a copy if you would take care of a problem that has been vexing me.");
	elseif(e.message:findi("vexing you")) then
		e.self:Say("An old student of mine who goes by the name Lon has disgraced this House; his betrayal to Innoruuk and Neriak is unforgivable.' Pazin grins 'He must be punished through deceit and trickery. Make him your friend, do as he asks, and pretend to be Redeemed as he calls it. Once you are Redeemed take the cursed blade of Ro and run it through his heart. Bring me his rapier and his head and I shall know the task is complete.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 7041, item2 = 9438})) then--Burning Rapier, Lon's Head
		e.self:Emote("laughs. 'Here, take this then!'");--text made up
		e.other:QuestReward(e.self,0,0,0,0,24095); --Vein Rot Sketch
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

--END of FILE Zone:neriakc  ID:42075 -- Pazin_Punox
-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
