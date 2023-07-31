---@param e NPCEventSay
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hello. The name's Lars McMannus of Clan McMannus.")
	elseif(e.message:findi("halas")) then		
		e.self:Say("Halas is the mighty city of the barbarians of the North. It lies among the Everfrost Peaks.")
	elseif(e.message:findi("frostbite")) then
			e.self:Say("Frostbite is our trusty wolf. We found him as a pup.")		
	elseif(e.message:findi("ulrich")) then
			e.self:Say("He is my brother and the oldest of my siblings.")
	elseif(e.message:findi("misla")) then
			e.self:Say("She is my sister.")
	elseif(e.message:findi("einhorst")) then
			e.self:Say("He is my father. We hail from Halas.")
	elseif(e.message:findi("sera")) then
			e.self:Say("She is my sister and the youngest of the clan.")
	elseif(e.message:findi("brenzl")) then
			e.self:Say("He is my brother and a fine bowyer and net maker.")
	elseif(e.message:findi("junth")) then
			e.self:Say("He is my brother.")
	elseif(e.message:findi("wolves of the north")) then
			e.self:Say("The Wolves of the North are the barbarian warriors of Halas. All of us in Clan McMannus are members. Mess with us and you mess with the Wolves of the North.")			
	end
end

function event_waypoint_arrive(e)
	if(e.wp == 1 or e.wp == 6) then
		e.self:SetRunning(true);
	elseif(e.wp == 4 or e.wp == 7) then
		e.self:SetRunning(false);
	end
end
