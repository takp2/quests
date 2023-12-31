----------------------------------------------------------------------
-- Zone: PoJustice
-- NPC: Evia N`Cizai (201307)
----------------------------------------------------------------------

---@param e NPCEventSay
function event_say(e)
    if(e.language == 11 and e.other:GetLanguageSkill(11) >= 100) then
        if(e.message:findi("Hail")) then
            e.self:Say("The darkest days are yet to come.  Though I may be interred within this vile prison, my forces shall continue to despoil!  I am proud of my heritage, and my lineage shall continue long into the Age of [Dark Paths], you shall see!",11);
        elseif(e.message:findi("Dark Paths")) then
            e.self:Say("You shall see...  foolish, mortal ".. e.other:GetName() .. ".  When your families are burned at the stake, and my armies raze your cities and slaughter your animals...  then you shall see!  Just like they did in Perronium!'  She throws back her head and lets loose a laugh of purest, unadulterated evil.  'I shall bathe in the blood of the weak, just as I did in [Perronium]!",11);
        elseif(e.message:findi("Perronium")) then
            e.self:Emote("grins and regards you with malice.  'Your time will come.");
        end
    else
        e.self:Emote('does not appear to understand you.');
    end
end
