--[=[

    @class CreateTable

    Turns arguments into tables so each command doesn't need to copy and paste the same code

]=]
return function(...)
	local numTable = {}

	-- Converts non-tables into tables and leaves already-existing tables as they are

	if typeof(...) == "table" then
		numTable = ...
	end

	if typeof(...) ~= "table" then
		numTable = { ... }
	end

	-- If the inputs *aren't* numbers. (Strings will be converted, everything else errors.)

	for i, v in pairs(numTable) do
		if typeof(v) == "string" then
			numTable[i] = tonumber(v)
		end

		if typeof(v) ~= "number" then
			error("MathPlus: You must input numbers or strings only!")
		end
	end

	-- If there are no inputs then error

	if #numTable == 0 then
		error("MathPlus: No Input Given!")
	end

	-- Return the processed table.

	return numTable
end
