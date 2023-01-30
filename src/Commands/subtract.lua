--[[

    MATHPLUS | Subtract Command. 

    Returns given arguments subtracted from each other. 

    SUBTRACTS IN ORDER GIVEN. USE MathsPlus.ordsubtract TO BE ORDERERED (10 - 8 - 6 - 4) 

    Arguments can be normal or in a table.

    CODE EXAMPLE:

        local n1 = MathPlus.subtract(1,2,3,4) -- Returns 1 - 2 - 3 - 4 (-8) 

        local Table = {
            1,
            2,
            3,
            4
        }

        local n2 = MathPlus.subtract(Table)

        print(n1,n2) -- Prints "-8, -8"
]]

return function(...)
	local mathPlus = require(script.Parent.Parent)
	local numberTable = mathPlus.classcreateTable(...)

	-- Subtract our numbers

	local currentNumber = numberTable[1]
	table.remove(numberTable, 1)

	for _, number in pairs(numberTable) do
		currentNumber -= number
	end

	return currentNumber
end
