--[=[
	
	@class abs

	MathPlus.abs behaves like math.abs; Turns a negative into a positive, Turns 0 into 0 and Leaves a positive as a positive.
	Allows for multiple number support and table support

]=]

--[=[
	Single Number Support
	
	@within abs
	@function AbsSingleNumbers
	
	Single Number usage with MathPlus.abs
	
	@param a number -- Number to Absolute
	@return number  -- Absoluted Number
]=]

--[=[
	@function AbsMultipleNumbers
	@within abs

	Multiple Number Support for MathPlus.abs

	@param a number -- First number to Absolute
	@param b number -- Second number to Absolute
	@param c number -- Third number to Absolute
	@return table -- Table of passed arguments absoluted

]=]

--[=[
	@function AbsTable
	@within abs
	
	Table Support for MathPlus.abs

	@param table table -- Table of numbers to absolute
	@return table --Table of passed arguments absoluted
]=]

return function(...)
	local mathPlus = require(script.Parent.Parent)
	local numTable = mathPlus.classcreateTable(...)

	local newTable = {}

	for index, number in pairs(numTable) do
		newTable[index] = math.abs(number)
	end

	if #newTable == 1 then
		return newTable[1]
	end

	return newTable
end
