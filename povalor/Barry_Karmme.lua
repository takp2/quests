---@param e NPCEventSay
function event_say(e)

	if ( e.message:findi("hail") ) then
		e.self:Say("We don't want to get into any more trouble than we are already in, go away!");
	end
end

---@param e NPCEventSignal
function event_signal(e)
	if ( e.signal == 1 ) then
		e.self:Say("Sir! Yes Sir!");
	end
end
