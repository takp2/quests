---@param e NPCEventSpawn
function event_spawn(e)
	e.self:CastToNPC():SetNoQuestPause(true);
end

---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Emote("mumbles an inaudible phrase and continues to stare at the large table in front of him.");
	end
end
