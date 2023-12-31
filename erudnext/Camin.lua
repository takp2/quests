---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Go away! I have no time for you!");
	elseif(e.message:findi("What are you searching for")) then
		e.self:Say("Ah! A smart one, I see! If you really wish to know about such a thing, you will have to help me finance my studies. The knowledge I have acquired and researched did not come cheaply.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	local qglobals = eq.get_qglobals(e.self,e.other);

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 18088})) then
		e.self:Say("So you have met Solomen, eh? He is a man with a wealth of knowledge. It is good to hear he is well.");
		e.other:QuestReward(e.self,0,0,0,0,0,500);
		eq.set_global("wizepic","1",0,"D30");
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 14330})) then
		if(qglobals["wizepic"] == "2") then
			e.self:Say("Very interesting... I've seen this work before. Yes, yes! It's the work of Arantir Karondor! Give this back to the person you got it from. Maybe they will have a clue to Arantir's Location.");
			e.other:Faction(e.self,404,10,0); -- Truespirit
			e.other:QuestReward(e.self,0,0,0,0,14331,10000);
			eq.delete_global("wizepic");
		else
			e.self:Say("I have no need for this item " .. e.other:GetCleanName() .. ", you can have it back.");
			e.other:QuestReward(e.self,0,0,0,0,14330); -- Item: Ro's Breath
		end
	elseif(item_lib.check_turn_in(e.self, e.trade, {platinum = 1000})) then
		if(qglobals["wizepic"] == "1") then
			e.self:Say("Good, good, you show a willingness to learn of this with your offer. What I can tell you is that Solusek Ro had four followers who had shown exceptional aptitude in the arts of wizardry. Solusek Ro himself tutored them. He considered them to be like his own children. I know of one who still exists. He goes by the name of Arantir Karondor. He used to specialize in the storing of magic into physical objects. Arantir has been hiding for many, many years and will most assuredly be going by another name, so keep your eyes open. Anyway, be off, I need to continue my research. Return to me if you ever find Arantir Karondor.");
			e.other:Faction(e.self,404,10,0); -- Truespirit
			e.other:QuestReward(e.self,0,0,0,0,0,500);
			eq.set_global("wizepic","2",0,"D30");
		else
			e.self:Say("I have no need for this item " .. e.other:GetCleanName() .. ", you can have it back.");
			e.other:GiveCash(0,0,0,1000);
		end
	end
	item_lib.return_items(e.self, e.other, e.trade);
end
