---@param e NPCEventSignal
function event_signal(e)
  e.self:Say("Yeah, it seems hard to come by lately. We're all out of rat whiskers.");
  eq.signal(1118,1); -- NPC: Caleah_Herblender
end
