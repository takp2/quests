---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Ahem....yes, hail. I suppose that would suffice in this case. Well, then, hail to you, sir. I am Lorekeeper Gundlt, master keeper of etiquette. It is my duty, as ordained by the Grand Historian, to keep all records and rules on all royal audiences and dealings.");
	elseif(e.message:findi("royal")) then
		e.self:Say("Why, Frostreaver IV, of course! All who wish an audience must first consult with me to be educated on the proper way to address our great Dain. Do you wish an audience with the crown?");
	elseif(e.message:findi("crown")) then
		e.self:Say("Very well, then. When you approach our king you must keep your head bowed and eyes focused approximately 5 to 6 feet in front of you. When you first see the boots of our Lord you must kneel before him and touch your forehead to your knee. At this point you may rise and address the king. He will not respond to the popular and mundane \"Hail.\" You must say, 'Greetings and good fortune to you, honored Dain Frostreaver IV.' Remember to mind your manners when in the presence of the Dain for his guards are fiercely protective of him.");
	end
end
