---@diagnostic disable: param-type-mismatch, return-type-mismatch
---@return string
function string:case_insensitive_pattern()
	local p = self:gsub("(%%?)(.)", function(percent, letter)
		if percent ~= "" or not letter:match("%a") then
			return percent .. letter;
		else
			return string.format("[%s%s]", letter:lower(), letter:upper());
		end
	end);
	return p;
end

---Find pattern in string, case insensitive
---@param pattern string
---@param init? number
---@param plain? boolean
---@return any|nil ... captured
function string:findi(pattern, init, plain)
	if(init ~= nil and plain ~= nil) then
		return self:find(pattern:case_insensitive_pattern(), init, plain);
	else
		return self:find(pattern:case_insensitive_pattern());
	end
end

--- Returns an iterator function that, each time it is called, returns the next captures from pattern (see §6.4.1) over the string s.
---@param pattern string|number
---@return string
---@diagnostic disable-next-line: duplicate-set-field
function string:gmatchi(pattern)
	return self:gmatch(pattern:case_insensitive_pattern());
end

--- Split string by pattern, case insensitive
---@param pattern string # pattern to split by
---@param n number # number of times to replace
---@return string
---@return integer count
function string:gsubi(pattern, replace, n)
	if(n ~= nil) then
		return self:gsub(pattern:case_insensitive_pattern(), replace, n);
	else
		return self:gsub(pattern:case_insensitive_pattern(), replace);
	end
end


