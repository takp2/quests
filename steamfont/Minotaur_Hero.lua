--NPC: Minotaur_Hero   Zone: steamfont
--
--by Qadar

---@param e NPCEventCombat
function event_combat(e)
	if(e.joined) then
		e.self:Say("<Snort!!>.. For Meldrath!!");
	end
end

---@param e NPCEventDeathComplete
function event_death_complete(e)
	e.self:Say("I die soon! Meldrath, help me!");
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
