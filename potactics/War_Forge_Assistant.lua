-- War_Forge_Assistant is a warrior class that appear to run on live without any run speed buff.
---@param e NPCEventSpawn
function event_spawn(e)
	e.self:SetRunning(true);
end