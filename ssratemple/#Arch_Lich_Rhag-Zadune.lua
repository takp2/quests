-- Last of the arch lich rhag`zadune cycle

---@param e NPCEventDeathComplete
function event_death_complete(e)
	eq.delete_global("Lich");
end
