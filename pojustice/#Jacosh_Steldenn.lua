----------------------------------------------------------------------
-- Zone: PoJustice
-- NPC: Jacosh Steldenn (201080)
----------------------------------------------------------------------

---@param e NPCEventSay
function event_say(e)
    if(e.message:findi("Hail")) then
        e.self:Emote("looks down, his dark eyes burrowing into yours.  'My prison is not one for casual visits, " .. e.other:Race() .. ".  What is your business here?  Do you seek an audience with the Tribunal?'");
    elseif(e.message:findi("audience with the Tribunal")) then
        e.self:Say("nods slightly.  'You shall find them through this gateway.  I trust you shall find their knowledge vast, and their justice...' his lips curl into a sneer, 'quite fitting.");
    end
end
