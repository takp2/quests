----------------------------------------------------------------------
-- Zone: PoJustice
-- NPC: a forgotten spirit (201133)
----------------------------------------------------------------------

---@param e NPCEventSay
function event_say(e)
    if(e.message:findi("")) then -- Anything said
        e.self:Message(15,"You can't think of any reason why you would be here.");
    end
end
