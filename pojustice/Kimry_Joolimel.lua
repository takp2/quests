----------------------------------------------------------------------
-- Zone: PoJustice
-- NPC: Kimry Joolimel (201363)
----------------------------------------------------------------------

---@param e NPCEventSay
function event_say(e)
    if(e.language == 8 and e.other:GetLanguageSkill(8) >= 100) then
        if(e.message:findi("Hail")) then
            e.self:Say("Hi there!'  Her radiant smile seems too quick and shallow, you wonder what she wants from you.  'Tell me, what's a nice " .. e.other:Race() .. " doing in such a foul place such as this?  Have you been...'  She makes a motion with her hand as if raising an invisible glass to her anxious lips.  'Partaking of the [finer things] in life, too?",8);
        elseif(e.message:findi("finer things")) then
            e.self:Say("Mmmm!'  She broadens her smile, until she appears to be nearly all teeth.  You ponder just how wide a gnome can grin.  'A little of the old Spirits, eh?  I'm not talking about those boring ghosts that flit back and forth around these parts, wailing all night, either!  Have you got some of the [good stuff] for me?  Have you?  Come on, Kimry knows you have.",8);
        elseif(e.message:findi("good stuff")) then
            e.self:Say("Come on!'  She smiles yet wider from her place on the bed as her hands begin to tremble.  'Don't hold out on me now, I know you've got some there!  Just a little sip, that's all I ask.  What harm can it do?  I'm already here, so it cannot get any worse!  Come on, just give mother what she wants...   Just a little sip is all!",8);
        end
    else
        e.self:Emote('does not appear to understand you.');
    end
end
