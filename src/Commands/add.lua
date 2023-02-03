--[=[

	@class add

	MathPlus.add returns the given arguments added together.
	Supports single numbers, returning the passed number
	Supports multiple numbers, returning all added
	Supports tables, acting like multiple numbers but in table form.
]=]

--[=[

	@function AddSingleNumber
	@within add

	Single number support for MathPlus.add

	When a single number is inputted into MathPlus.add, it returns the number given with a warn
	mentioning that you cannot input singular numbers into MathPlus.

	@param a number -- 1 number
	@return a -- Returns A back

]=]

--[=[

	@function AddMultipleNumbers
	@within add

	Multiple number support for MathPlus.add
	@param a number
	@param b number
	@return number -- Returns all parameters added 

]=]

--[=[

	@function AddTable
	@within add

	Table support for MathPlus.add
	@param a table
	@return number -- Returns all numbers in table added 

]=]

return function(...)
	local mathPlus = require(script.Parent.Parent)
	local numberTable = mathPlus.classcreateTable(...)

	-- Add our numbers up

	local currentNumber = numberTable[1]
	table.remove(numberTable, 1)

	if #numberTable == 0 then
		local traceback = debug.info(2, "s")
		warn("MathPlus.add() can only add with multiple values! Traceback: " .. traceback)

		return currentNumber
	end

	for _, number in pairs(numberTable) do
		currentNumber += number
	end

	return currentNumber
end
