-- poknowledge\Guardian_Vaehan.lua NPCID 202096

---@param e NPCEventSay
function event_say(e)
		if(e.message:findi("hail")) then
			e.self:Say("Welcome to the Selia district of New Tanaan. Be sure to help us to keep it clean!");
		end
end