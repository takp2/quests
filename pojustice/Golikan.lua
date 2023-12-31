----------------------------------------------------------------------
-- Zone: PoJustice
-- NPC: Golikan (201339)
----------------------------------------------------------------------

---@param e NPCEventSay
function event_say(e)
    if(e.message:findi("Hail")) then
        e.self:Emote("regards you with indifference.  'Hail indeed.  It seems that even in the realms of Pure Justice, there are conflicting forces at work.  My friends and I remain here, bound to the spot at which we were [murdered], long before any Judgment could be placed upon us.  Perhaps we shall yet have our revenge, and our peace.");
    elseif(e.message:findi("murdered")) then
        e.self:Say("Aye, put to the sword, all three.'  Her unfaltering gaze regards you with accusing eyes.  'A mortal, such as yourself, just a guard mayhap.  When revenge is met, then we shall to our place of resting go.  Revenge, and rest.  There is naught else.'");
    end
end
