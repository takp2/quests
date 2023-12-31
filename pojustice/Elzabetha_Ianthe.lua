----------------------------------------------------------------------
-- Zone: PoJustice
-- NPC: Elzabetha Ianthe (201353)
----------------------------------------------------------------------

---@param e NPCEventSay
function event_say(e)
    if(e.message:findi("Hail")) then
        e.self:Emote("gives a solemn nod and speaks in a hushed voice, 'You should not wander this place, ".. e.other:GetName() .. ". We are creatures condemned for eternity in this limbo. Some of us await our oblivion while others dwell in an infinite prison. We are all criminals here -- some greater than others, but all have committed crimes that their people could not judge. The Tribunal will judge those whose mortal crimes fall beyond the capabilities of their people to pass punishment upon. Do not pity us, ".. e.other:GetName() .. " and do be careful in your travels amongst us. To speak with us could lead to invoking the Tribunal's wrath upon us further. Many are recently free of solitary confinement and to send them there again would be unfathomably cruel.");
    end
end