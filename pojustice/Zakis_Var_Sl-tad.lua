----------------------------------------------------------------------
-- Zone: PoJustice
-- NPC: Zakis Var Sl`tad (201340)
----------------------------------------------------------------------

---@param e NPCEventSay
function event_say(e)
    if(e.message:findi("Hail")) then
        e.self:Emote("twitches his tail and glares at ".. e.other:GetName() .. " with an eye seemingly full of disdain, though surprisingly, you do not feel as if the emotion is directed solely at you. The look seems to be a constant upon this one's face -- a mask of torment, hate, and regret. In a barely audible hiss, the Iksar prisoner speaks, 'Perhaps you find amusement in the suffering of others? Very well, listen to the tale. It has been long since I have had the pleasure of seeing fear -- borne of my own acts -- blaze in the eyes of another.");
    end
end
