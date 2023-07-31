local FLAG_LIMIT = 72;

local flags = 0;
local rid, gid, cid;

function ClientCanFlag(mob)
	if ( mob:IsClient() ) then
		local client = mob:CastToClient();
		
		local raid = client:GetRaid();
		local group = client:GetGroup();
		
		if ( rid and raid.valid and raid:GetID() == rid ) then
			return true;
		elseif ( gid and group.valid and group:GetID() == gid ) then
			return true;
		elseif ( cid and client:GetID() == cid ) then
			return true;
		end
	end
	return false;
end

function event_signal(e)
	rid, gid, cid = nil, nil, nil;
	local client = eq.get_entity_list():GetClientByID(e.signal);	-- the signal # is the entity ID of a client with kill credit
	
	if ( client.valid ) then
	
		local raid = client:GetRaid();
		local group = client:GetGroup();
		
		if ( raid.valid ) then
			rid = raid:GetID();
		elseif ( group.valid ) then
			gid = group:GetID();
		else
			cid = client:GetID();
		end
		eq.debug("Flagger NPC will acknowledge "..client:GetName().."'s raid/group; Raid ID == "..(rid or "(nil)")..";  Group ID == "..(gid or "(nil)"), 1);
	end
end

function event_spawn(e)
	eq.set_timer("depop", 1200000);
	flags = 0;
end

function event_combat(e)
	if ( e.joined ) then
		eq.pause_timer("depop");
	else
		eq.resume_timer("depop");
	end
end

function event_timer(e)
	if ( e.timer == "depop" ) then
		eq.depop();
	end
end

function event_say(e)

	if ( ClientCanFlag(e.other) and e.message:findi("hail") ) then
		
		if ( not e.other:HasItem(29164) and not e.other:HasItem(29165) ) then -- Amorphous Cloud of Air, Quintessence of Elements
			e.other:SummonCursorItem(29164); -- Item: Amorphous Cloud of Air
			flags = flags + 1;
		end
		
		if ( flags >= FLAG_LIMIT ) then
			eq.depop();
		end
	end
end
