return function(...)
	local mathPlus = require(script.Parent.Parent)
	local numberTable = mathPlus.classcreateTable(...)

	local currentNumber = #numberTable
	local divNumber = currentNumber / 3

	if math.floor(divNumber) ~= divNumber then
		error("Passed arguments need to be in multiples of 3! X, Min, Max. " .. currentNumber .. " passed!")
	end

	local valuesTable = {}
	local currentValue = 1
	local tableWereAt = 0

	for _, number in numberTable do
		-- Handles creating a new table when we're at a new value

		if currentValue == 1 then
			tableWereAt += 1
			valuesTable[tableWereAt] = {}
			valuesTable[tableWereAt][1] = number
			currentValue += 1
		end

		if currentValue == 3 then
			valuesTable[tableWereAt][3] = number
			currentValue = 1
		end

		valuesTable[tableWereAt][2] = number
		currentValue += 1
	end

	local values = {}

	for index, tab in valuesTable do
		values[index] = math.clamp(tab[1], tab[2], tab[3])
	end

	if #values == 1 then
		return values[1]
	end

	return values
end
