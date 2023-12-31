-- The Acrylia Plans

---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Well met " .. e.other:GetCleanName() .. "! I am Rallic Aristos. Governor of trade and economy here in Katta Castellum. I know it sounds like a lot of parchment pushing and coin counting but maintaining good trade relations with the various Houses of Shadow Haven and the haggling Vah Shir of Shar Vahl is not as easy at it may sound. Then there is the issue of the [acrylia mines] in the Tenebrous Mountains.");
	elseif(e.message:findi("acrylia mines")) then
		e.self:Say("The Tenebrous Mountains are rich with veins of the valuable acrylia ore. Unfortunately the mines were dug and controlled by a tribe of savage grimlings from the forests to the south. Negotiations have been attempted with the grimlings but to no avail. Several of the other governors and I have been developing a [plan] to take the mines or establish mines of our own. In either case the mines will have to be defended from attacks by the grimlings unless when placed in that predicament they finally resort to trade negotiations.");
	elseif(e.message:findi("plan")) then
		e.self:Say("The full plans are not at my disposal but one of my concerns that may be instrumental in our success is the acquisition of grimling documents carried by a grimling courier who is seen frequently running from the forest to the mines. If one of the Validus Custodus attempts to obtain the runners pouch the grimlings will surely retaliate. if adventurers like yourselves obtained it however and quietly delivered it to me we may be able to move forward with our plans.");
	elseif(e.message:findi("required materials")) then		
		e.self:Say("The rest of the materials are a pelt from an owlbear of the highest quality, a silk cord made from shades, and a silk thread also made from shades.");
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 31730}, 0)) then
		e.self:Say("Excellent. The contents of the pouch shall be examined immediately. Take this pattern for a crafting a pack that will be sure to lighten the burden of its contents. I'm afraid I do not have the rest of the [required materials] at hand.");
		e.other:Faction(e.self,1561,5);  -- concilium universe
		e.other:Faction(e.self,1483,-1); -- seru
		e.other:Faction(e.self,1486,-2); -- heart of seru
		e.other:QuestReward(e.self,0,0,0,0,31729,500);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

