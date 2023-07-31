--Crusader_Swiftmoon.pl
--Part of Innoruuk Regent
--Quickie to despawn him after an hour -Kilelen

---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop", 3600000);
end

---@param e NPCEventTimer
function event_timer(e)
	eq.stop_timer("depop");
	eq.depop();
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
