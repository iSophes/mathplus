--[[

    MathPlus | Floor

    Default roblox floor but with table and multiple number support.
    Returns a downwards rounded number of the number inputted

    Arguments can be normal or in a table.
    Returns number if only one argument passed, returns table if multiple passed.

]]

local mathPlus = require(script.Parent.Parent)

return function(...)
	local argTable = mathPlus.classcreateTable(...)

	local newTable = {}

	for _, number in pairs(argTable) do
		table.insert(newTable, math.floor(number))
	end

	if #newTable == 1 then
		return newTable[1]
	end

	return newTable
end
