---@param e NPCEventSpawn
function event_spawn(e)
	e.self:CastToNPC():SetNoQuestPause(true);
end

---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Emote("doesn't seem to notice you.  Her concentration is set on trying to reach the tray that rests on the table before her.");
	end
end
