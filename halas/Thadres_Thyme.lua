---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hello. " .. e.other:GetCleanName() .. "!  It's hard to believe just how cold it gets here!  It really has been wearing me down. Especially after the [journey] from Qeynos.");
	elseif(e.message:findi("what journey")) then
		e.self:Say("I have been traveling the face of Norrath to unravel the mystery of why my beloved [brother] attacked a group of traveling bards.  He didn't survive the fight.  It's been so long. I can't really remember what he looked like!  I miss him so much...  Now all I have are his [diary] and some brewing recipes he sold before his death.");
	elseif(e.message:findi("brother")) then
		e.self:Say("My brother was Delius Thyme. I think he was a great man. " .. e.other:GetCleanName() .. ", have you ever lost someone close? I don't know if I can ever forgive myself for letting him travel on his own after his sanity began to fade. Oh, Delius, please forgive me!");
	elseif(e.message:findi("what diary")) then
		e.self:Say("The diary?  It's one of the two connections I still have to my brother.  Sadly. [pages] are missing from it.  I've been looking for them.");
	elseif(e.message:findi("what pages")) then
		e.self:Say("I believe the pages contain the events that drove my brother to insanity.  I have been searching for the remaining three missing pages.  There is some hope; I found a couple of pages over in Everfrost Mountains.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	local text = "Thank you very much. Now, please help me find all three missing pages.";
	
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 18136, item2 = 18137, item3 = 18138},1,text)) then
		e.self:Say("Thank you, thank you. Let me read them. Oh! How could I want these brewing recipes after they made my brother insane? Where are they? I think this is all of them. Take them away from me! Delius can smile upon me now.");
		e.other:QuestReward(e.self,0,0,0,0,eq.ChooseRandom(18139,18140,18141),200); -- Item: Garsen's Brewing List, Garsen's Notes, Garsen's Secret Brews
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
