--NPC: Minotaur_Lord   Zone: steamfont

---@param e NPCEventCombat
function event_combat(e)
	if(e.joined) then
		e.self:Say("I survived the gladiator pens of Qeynos!! What can you do to one such as I?!!");
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
