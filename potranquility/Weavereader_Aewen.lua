---@param e NPCEventSpawn
function event_spawn(e)
	e.self:CastToNPC():SetNoQuestPause(true);
end

---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Emote("scans the tapestry that rests before her. Her eyes don't stop their twitching analysis of the material in your address to her.");
	end
end
