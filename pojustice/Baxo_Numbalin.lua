----------------------------------------------------------------------
-- Zone: PoJustice
-- NPC: Baxo Numbalin (201282)
----------------------------------------------------------------------

---@param e NPCEventSay
function event_say(e)
    if(e.message:findi("Hail")) then
        e.self:Emote("furrows his brow and sighs heavily, his grief and boredom more than apparent. The gnome looks up at you with deadened eyes and a veil of unfathomable sadness. He opens his mouth as if to speak, but remains silent and turns away, staring once more upon the unvarnished walls of his cell.");
    end
end
