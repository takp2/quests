-- Converted to .lua by Speedz

---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Oh! Please excuse me. I was busy creating some new illusions for my collection. Hello there, " .. e.other:GetCleanName() .. "! I am Zapho the Ancient. My return from the halls of the Realm of Heroes is the will of Bertoxxulous. I must watch over those who catch the eyes of the gods and recognize their heroic deeds.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	item_lib.return_items(e.self, e.other, e.trade)
end
