---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Good day, citizen. Please remember to keep your voice down in our library. Feel free to browse the extensive collection of books we have on display. Learning is all about you. Our library is the greatest collection of educational literature in the world, as you can no doubt see. If you come across any [rare finds] we may be interested in purchasing them.");
	elseif(e.message:findi("rare find")) then
		e.self:Say("Yes, any rare books, tomes, essays, or other literature you find may be of interest to me. Although the finds I am interested in are quite high profile and would most likely only be found in the possession of very powerful or influential beings. Give me what you find and I will pay you what it is worth to us.");
	elseif(e.message:findi("lheao")) then
		e.self:Say("Lheao was my predecessor here at the library of Erudin. He has since retired, just a few years ago. Im sure he would be most impressed with your find and other insightful conversation on the subject. Although Im not sure one of your profession would be interested in such a scholarly endeavor, no offense. If you are interested, find him and tell him you found the book Immortals. Im not sure where he has retired to, but I hear it is near an ocean somewhere.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 18195})) then
		e.self:Emote("gasps at the sight of the rare book. 'This is a great find indeed! I can only imagine who you had to.. persuade to give you the book. Our library would be very interested in acquiring this and I am prepared to give you this referral that marks you as a friend of the library. If only [Lheao] could see this.'");
		e.other:QuestReward(e.self,3,0,0,0,1682); -- Danl's Reference
	end
	item_lib.return_items(e.self, e.other, e.trade);
end

-- End of File