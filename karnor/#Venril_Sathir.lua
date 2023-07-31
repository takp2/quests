-- triggered version of Venril Sathir.  set to despawn in 1 hour if left alone.

---@param e NPCEventSpawn
function event_spawn(e)
	eq.set_timer("depop",3600000);
end

---@param e NPCEventTimer
function event_timer(e)
	eq.depop();
end
