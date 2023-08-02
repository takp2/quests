--- Iterate entities and call func on each entity
---@param func function # func to call on each entity
---@param cond function # condition to check on each entity
---@param lst table # table to iterate over
function EntityList:Foreach(func, cond, lst)
	for ent in lst.entries do
		local cv = cond(ent);
		if(cv) then
			func(ent);
		end
	end
end

--- Iterate mobs and call func on each mob
---@param func function # func to call on each mob
---@param cond function # condition to check on each mob
function EntityList:ForeachMob(func, cond)
	cond = cond or function(ent) return true end;
	local lst = self:GetMobList();
	self:Foreach(func, cond, lst);
end

--- Iterate clients and call func on each client
---@param func function # func to call on each client
---@param cond function # condition to check on each client
function EntityList:ForeachClient(func, cond)
	cond = cond or function(ent) return true end;
	local lst = self:GetClientList();
	self:Foreach(func, cond, lst);
end

--- Iterate npcs and call func on each npc
---@param func function # func to call on each npc
---@param cond function # condition to check on each npc
function EntityList:ForeachNPC(func, cond)
	cond = cond or function(ent) return true end;
	local lst = self:GetNPCList();
	self:Foreach(func, cond, lst);
end

--- Iterate corpses and call func on each corpse
---@param func function # func to call on each corpse
---@param cond function # condition to check on each corpse
function EntityList:ForeachCorpse(func, cond)
	cond = cond or function(ent) return true end;
	local lst = self:GetCorpseList();
	self:Foreach(func, cond, lst);
end

--- Iterate objects and call func on each object
---@param func function # func to call on each object
---@param cond function # condition to check on each object
function EntityList:ForeachObject(func, cond)
	cond = cond or function(ent) return true end;
	local lst = self:GetObjectList();
	self:Foreach(func, cond, lst);
end

--- Iterate doors and call func on each door
---@param func function # func to call on each door
---@param cond function # condition to check on each door
function EntityList:ForeachDoor(func, cond)
	cond = cond or function(ent) return true end;
	local lst = self:GetDoorsList();
	self:Foreach(func, cond, lst);
end

--- Iterate spawns and call func on each spawn
---@param func function # func to call on each spawn
---@param cond function # condition to check on each spawn
function EntityList:ForeachSpawn(func, cond)
	cond = cond or function(ent) return true end;
	local lst = self:GetSpawnList();
	self:Foreach(func, cond, lst);
end

--- Count entities that match cond
---@param cond function # condition to check on each entity
---@param lst table # list of entities
---@return number # number of entities that match cond
function EntityList:Count(cond, lst)
	local ret = 0;
	for ent in lst.entries do
		local cv = cond(ent);
		if(cv) then
			ret = ret + 1;
		end
	end

	return ret;
end

--- Count mobs that match cond
---@param cond function # condition to check on each mob
---@return number # number of mobs that match cond
function EntityList:CountMob(cond)
	cond = cond or function(ent) return true end;
	local lst = self:GetMobList();
	return self:Count(cond, lst);
end

--- Count clients that match cond
---@param cond function # condition to check on each client
---@return number # number of clients that match cond
function EntityList:CountClient(cond)
	cond = cond or function(ent) return true end;
	local lst = self:GetClientList();
	return self:Count(cond, lst);
end

--- Count npcs that match cond
---@param cond function # condition to check on each npc
---@return number # number of npcs that match cond
function EntityList:CountNPC(cond)
	cond = cond or function(ent) return true end;
	local lst = self:GetNPCList();
	return self:Count(cond, lst);
end

--- Count corpses that match cond
---@param cond function # condition to check on each corpse
---@return number # number of corpses that match cond
function EntityList:CountCorpse(cond)
	cond = cond or function(ent) return true end;
	local lst = self:GetCorpseList();
	return self:Count(cond, lst);
end

--- Count objects that match cond
---@param cond function # condition to check on each object
---@return number # number of objects that match cond
function EntityList:CountObject(cond)
	cond = cond or function(ent) return true end;
	local lst = self:GetObjectList();
	return self:Count(cond, lst);
end

function EntityList:CountDoor(cond)
	cond = cond or function(ent) return true end;
	local lst = self:GetDoorsList();
	return self:Count(cond, lst);
end

--- Count spawns that match cond
---@param cond function # condition to check on each spawn
---@return number # number of spawns that match cond
function EntityList:CountSpawn(cond)
	cond = cond or function(ent) return true end;
	local lst = self:GetSpawnList();
	return self:Count(cond, lst);
end
