function event_spawn(e)
	local zone_time = eq.get_zone_time(); -- Time here is off by 1, so 6AM = 5.
	local hour = zone_time["zone_hour"] + 1;
	local minute = zone_time["zone_minute"];
	eq.debug("Boat spawned! Name is: " .. e.self:GetName() .. " Time is: " .. hour ..":" .. minute .. "", 1);
end

function event_waypoint_arrive(e)
	local zone_time = eq.get_zone_time(); -- Time here is off by 1, so 6AM = 5.
	local hour = zone_time["zone_hour"] + 1;
	local minute = zone_time["zone_minute"];
	if(e.wp == 12) then
		eq.debug("Boat to timorous (18) has reached the docks.  Name is: " .. e.self:GetName() .. " Time is: " .. hour ..":" .. minute .. "", 1);
	elseif(e.wp == 17) then
		eq.debug("Boat to timorous (18) has reached waypoint 17.  Name is: " .. e.self:GetName() .. " Time is: " .. hour ..":" .. minute .. "", 1);
	elseif(e.wp == 18) then
		eq.debug("Boat to timorous (18) has reached its destination! Name is: " .. e.self:GetName() .. " Time is: " .. hour ..":" .. minute .. "", 1);
		eq.get_entity_list():ForeachClient(
			function(ent)
				ent:MovePC(96,-2098,-2260,57,17);
			end,
			function(ent)
				if(ent:GetBoatID() == 838) then
					return true;
				end
				return false;
			end
		);
	end
end