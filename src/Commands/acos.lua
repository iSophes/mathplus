--[=[
	
	@class acos

	MathPlus.acos behaves like math.acos; Returns the arc cosine of a number (x)
	Allows for multiple number support and table support

]=]

--[=[
	Single Number Support
	
	@within acos
	@function AcosSingleNumbers
	
	Single Number usage with MathPlus.acos
	
	@param a number -- Number to Acos
	@return number  -- Acos
]=]

--[=[
	@function AcosMultipleNumbers
	@within acos

	Multiple Number Support for MathPlus.acos

	@param a number -- First number to Acos
	@param b number -- Second number to Acos
	@param c number -- Third number to Acos
	@return table -- Table of numbers passed through Acos

]=]

--[=[
	@function AcosTable
	@within acos
	
	Table Support for MathPlus.acos

	@param table table -- Table of numbers to run acos on
	@return table --Table of passed that have had acos ran on them.
]=]

return function(...)
	local mathPlus = require(script.Parent.Parent)
	local argTable = mathPlus.classcreateTable(...)

	local newTable = {}

	for _, number in pairs(argTable) do
		table.insert(newTable, math.acos(number))
	end

	if #newTable == 1 then
		return newTable[1]
	end

	return newTable
end
