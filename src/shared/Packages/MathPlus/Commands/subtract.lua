--[[

    MATHPLUS | Subtract Command. 

    Returns given arguments subtracted from each other. 

    SUBTRACTS IN ORDER GIVEN. USE MathsPlus.ordsubtract TO BE ORDERERED (10 - 8 - 6 - 4) 

    Arguments can be normal or in a table.

    CODE EXAMPLE:

        local n1 = MathsPlus.subtract(1,2,3,4) -- Returns 1 - 2 - 3 - 4 (-8) 

        local Table = {
            1,
            2,
            3,
            4
        }

        local n2 = MathsPlus.subtract(Table)

        print(n1,n2) -- Prints "-8, -8"
]]

return function(...)
	local numberTable = {}

	-- Is the arguments a table or not
	-- If not, make it one. If so then turn the argument given into the table

	if typeof(...) ~= "table" then
		numberTable = { ... }
	end

	if typeof(...) == "table" then
		numberTable = ...
	end

	-- Subtract our numbers

	local currentNumber = numberTable[1]
	table.remove(numberTable, 1)

	for _, number in pairs(numberTable) do
		currentNumber -= number
	end

	return currentNumber
end
