--[[

    Ordered Divide function for MathPlus. 
    Will order the numbers given from largest to smallest and divide

    Arguments can be normal or in a table.

    CODE EXAMPLE:

        local n1 = MathPlus.ordivide(1,2) -- | Gets the highest to the lowest and subtracts. | Returns 2

        local Table = {
            1,
            2
        }

        local n2 = MathPlus.ordivide(Table)

        print(n1,n2) -- Prints "2,2"
]]

return function(...)
	local mathPlus = require(script.Parent.Parent)
	local numberTable = mathPlus.classcreateTable(...)

	if #numberTable ~= 2 then
		error("MathPlus Ordivide Error: Ordivide function must have two numbers!")
	end

	local largest = math.max(numberTable[1], numberTable[2])

	if largest == numberTable[1] then
		return largest / numberTable[2]
	end

	return largest / numberTable[1]
end
