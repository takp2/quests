---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("plague warrior helm")) then
		e.self:Say("To assemble a Plague Warrior Helm you will need to obtain two bricks of crude bronze and smelt them in a forge with a Water Flask and this Crude Helm Mold. Once that is done combine the Crude Bronze Helm with a Ruined Coyote Pelt and two Rebel Clockwork Eye Lenses in the Mail Assembly Kit.");
		e.other:SummonCursorItem(19631); -- crude helm mold
	elseif(e.message:findi("plague warrior bracer")) then
		e.self:Say("To assemble a Plague warrior Mail Bracer you will need to obtain a brick of crude bronze and smelt it in a forge with a Water Flask and this Crude Bracer Mold. Once that is done, combine the Crude Bronze Bracer with a Ruined Coyote Pelt and a Rebel Clockwork Wrist Section in the Mail Assembly Kit.");
		e.other:SummonCursorItem(19632); -- crude bracer mold
	elseif(e.message:findi("plague warrior gauntlets")) then
		e.self:Say("To assemble Plague warrior Gauntlets you will need to obtain two bricks of crude bronze and smelt them in a forge with a Water Flask and this crude Gauntlet Mold. Once that is done combine the Crude Bronze Gauntlets with a Ruined Coyote Pelt and two Rebel Clockwork Hand Plates in the Mail Assembly Kit.");
		e.other:SummonCursorItem(19633); -- crude gauntlets mold
	elseif(e.message:findi("plague warrior boots")) then
		e.self:Say("To assemble Plague warrior Mail Boots you will need to obtain two bricks of crude bronze and smelt them in a forge with a Water Flask and this crude Boot Mold. Once that is done combine the Crude Bronze Boots with two Ruined Coyote Pelts, and two Rebel Clockwork Foot Plates in the Mail Assembly Kit.");
		e.other:SummonCursorItem(19634); -- crude boot mold
	elseif(e.message:findi("plague warrior vambraces")) then
		e.self:Say("To assemble Plague warrior Vambraces you will need to obtain two bricks of crude bronze and smelt them in a forge with a Water Flask and this Crude Vambrace Mold. Once that is done combine the Crude Bronze Vambraces with a Low Quality Coyote Pelt and two Rebel Clockwork Arm Sections in the Mail Assembly Kit.");
		e.other:SummonCursorItem(19635); -- crude vambrace mold
	elseif(e.message:findi("plague warrior greaves")) then
		e.self:Say("To assemble Plague warrior Greaves you will need to obtain two bricks of crude bronze and smelt them in a forge with a Water Flask and this Crude Greaves Mold. Once that is done combine the Crude Bronze Greaves with two Low Quality Coyote Pelts and two Rebel Clockwork Leg Sections in the Mail Assembly Kit.");
		e.other:SummonCursorItem(19636); -- crude greaves mold
	elseif(e.message:findi("plague warrior breastplate")) then
		e.self:Say("To assemble a Plague warrior Breastplate you will need to obtain four bricks of crude bronze and smelt them in a forge with a Water Flask and this Crude Breastplate Mold. Once that is done combine the Crude Bronze Breastplate with a Coyote Pelt, a Rebel Clockwork Chest Plate, and a Rebel Clockwork Back Plate in the Mail Assembly Kit.");
		e.other:SummonCursorItem(19637); -- crude breastplate mold
	end
end

---@param e NPCEventTrade
function event_trade(e)
	local item_lib = require("items");
	
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 10986}, 0)) then
		e.self:Say("Hail " .. e.other:GetCleanName() .. "! You must be one of Naygog's new soldiers. Naygog has asked me to help get you outfitted in a suit of armor to protect you from the weapons of our foes. I have assembled a kit for you that will allow you to construct the armor pieces once you have gathered the necessary components. The required components vary according to which piece of Plague Warrior Armor you are planning on assembling. Do you wish to craft a [plague warrior helm], a [plague warrior bracer], [plague warrior gauntlets], [plague warrior boots], [plague warrior vambraces], [plague warrior greaves], or a [plague warrior breastplate].");
		e.other:QuestReward(e.self,0,0,0,0,17124);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
