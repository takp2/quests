---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Welcome to Halas! Home of the Wolves of the North.");
	elseif(e.message:findi("shaman")) then
		e.self:Say("The Shamans of Justice serve the will of the Tribunal. They search out those who defy the laws set by the Tribunal.");
	elseif(e.message:findi("rogue")) then
		e.self:Say("The Rogues of the White Rose are loyal to the city of Halas. For that, they are viewed with the same respect as all other residents.");
	elseif(e.message:findi("wolves")) then
		e.self:Say("The Wolves of the North comprise of warriors. It is their sole purpose to defend the city and its visitors from all those that would harm it. Becoming a warrior and thus a Wolve of the North holds the highest form of honor among the clans.");
	elseif(e.message:findi("gnoll")) then
		e.self:Say("The vermin you speak of come from the den of Blackburrow. It is your duty to remove them from the Peaks of Everfrost.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	item_lib.return_items(e.self, e.other, e.trade)
end
