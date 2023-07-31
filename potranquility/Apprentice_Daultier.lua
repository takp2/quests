---@param e NPCEventSpawn
function event_spawn(e)
	e.self:CastToNPC():SetNoQuestPause(true);
end

---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:DoAnim(64);
		e.self:Emote("whispers. 'Please return to the lobby. as not to disturb the elders.'");
	end
end
