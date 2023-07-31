---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Emote("ignores you.");
	elseif(e.message:findi("prepared")) then	-- Monk Epic 1.0
		eq.attack(e.other:GetName());
	end
end

---@param e NPCEventSpawn
function event_spawn(e)				-- Monk Epic 1.0
	e.self:Say("Im ready when you are. Tell me when you are [prepared].");
end

---@param e NPCEventDeathComplete
function event_death_complete(e)	-- Monk Epic 1.0
	e.self:Emote("lets out one last, frustrated breath and gasps.");
	e.self:Say("Trunt! Prepare yourself!");
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
