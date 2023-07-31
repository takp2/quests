---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Don't keel me.");
	end
end

---@param e NPCEventDeathComplete
function event_death_complete(e)
     eq.spawn2(126366,0,0,e.self:GetX(),e.self:GetY(),e.self:GetZ(),e.self:GetHeading());
end
