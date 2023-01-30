return function(...)
	local mathPlus = require(script.Parent.Parent)
	local numTable = mathPlus.classcreateTable(...)

	local newTable = {}

	for index, number in pairs(numTable) do
		newTable[index] = math.atan(number)
	end

	if #newTable == 1 then
		return newTable[1]
	end

	return newTable
end
