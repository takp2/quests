-- Rallos Zek Planar Projection

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

---@param e NPCEventSignal
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

---@param e NPCEventSpawn
function event_spawn(e)
	flags = 0;
	eq.set_timer("depop", 600000);
end

---@param e NPCEventTimer
function event_timer(e)
	if ( e.timer == "depop" ) then
		eq.depop();
	end
end

---@param e NPCEventSay
function event_say(e)
	
	if ( ClientCanFlag(e.other) ) then

		if ( e.message:findi("hail") and flags < FLAG_LIMIT ) then 
		
			local qglobals = eq.get_qglobals(e.other);
			local zeks = tonumber(qglobals.zeks) or 0;
			
			if ( zeks == 6 ) then
				e.other:Message(0, "Maelin Starpyre's thoughts enter into your own.  'The singed parchment of Rallos lies in his dead hand.  Bring it back to me I will translate them using the Cipher of Druzzil.'");
				eq.set_global("zeks", "7", 5, "F");
				e.other:Message(15, "You have received a character flag!");
				flags = flags + 1;
				
				if ( qglobals.cl_rallos ) then
					eq.delete_global("cl_rallos");
				end
			elseif ( zeks < 6 and not qglobals.cl_rallos ) then
				e.other:Message(0, "The Planar Projection seems to flicker in and out of existence.  It seems to be impressed by the defeat of Rallos Zek.");
				eq.set_global("cl_rallos", "1", 5, "F");
				e.other:Message(15, "You have received a new checklist flag!");
				flags = flags + 1;
			end
		end
	end
end
