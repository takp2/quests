-- Heretic remains

---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Oh, Brell!! Help me get out of here. I did nothing wrong!! I did not know you could not take that [tonic] out of the city.");
	elseif(e.message:findi("tonic")) then
		e.self:Say("Oh, why did I have to try and help that Erudite in Qeynos? He was sick and vomiting and needed something called Erud's Tonic!! Now just because I wanted to help, I am going to be vomiting up my insides!! Oh, Brell!!! GET ME OUT OF HERE!!");
	elseif(e.message:findi("where is the heretic")) then
		e.self:Say("Why are you asking me about the heretic?! I am going to die! DO YOU HEAR ME?!! Oh, I need a drink. Please... honor a dying man's last request, a bottle of Vasty Deep Ale. If you get me that, I will tell you what I know of the heretic.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13126})) then
		e.self:Say("Gulp.. Gulp.. Aaahhh!!! That hits the spot. All I can tell you is that the heretic's name was E'lial B'rook. He mumbled something about a rendezvous and he would be floating down a river, smooth sailing back to something called Paineel. That's all I know.");
		-- Confirmed Live Factions
		e.other:Faction(e.self,255,10,0); -- Faction: Gem Choppers
		e.other:Faction(e.self,288,2,0); -- Faction: Merchants of Ak'Anon
		e.other:Faction(e.self,333,2,0); -- Faction: King Ak'Anon
		e.other:Faction(e.self,238,-2,0); -- Faction: Dark Reflection
		e.other:Faction(e.self,1604,-1,0); -- Faction: Clan Grikbar
		e.other:QuestReward(e.self,0,0,0,0,0,100);
	end
	item_lib.return_items(e.self, e.other, e.trade);
end

-- EOF zone: erudnint ID: 23021 NPC: Shondo_Billin
