function event_say(e)
	local vahn = eq.get_entity_list():GetMobByNpcTypeID(160137);
	if(e.message:findi("traitor to the Validus Custodus")) then
		if(vahn.valid) then
			eq.unique_spawn(160140,0,0,vahn:CastToNPC():GetX(),vahn:CastToNPC():GetY(),vahn:CastToNPC():GetZ(),vahn:CastToNPC():GetHeading());
			eq.depop(160137);
			eq.unique_spawn(160141,0,0,e.self:GetX(),e.self:GetY(),e.self:GetZ(),e.self:GetHeading());
			eq.depop();
		end
	end
end

function event_waypoint_arrive(e)
	local vahn = eq.get_entity_list():GetMobByNpcTypeID(160137);
	if(e.wp == 34) then
		eq.unique_spawn(160137,0,0,-1149,67,-265,100);
	elseif(e.wp == 35) then
		if(vahn.valid) then
			vahn:Emote("speaks with Legionnaire Claudius in hushed tones. Their whispers cannot be heard, but there is certainly something suspicious in their demeanor.");
		end
	elseif(e.wp == 36) then
		if(vahn.valid) then
			vahn:Emote("passes something to Claudius and gets a rolled up parchment in return. Their business appears to be completed and both parties prepare to go about their business.");
		end
	elseif(e.wp == 37) then
		if(vahn.valid) then
			vahn:Emote("glances in either direction and nods at Claudius before disappearing back into the shadows.");
			e.self:Emote("looks to Vahn tentatively, 'We shall meet again soon.'");
			vahn:Say("Perhaps");
			vahn:Emote("steps out of the shadows as though appearing out of thin air.");
		end
		eq.depop(160137);
		eq.depop();
	end
end