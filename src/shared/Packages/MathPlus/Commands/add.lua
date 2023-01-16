--[[

    MATHPLUS | Add Command. 

    Returns given arguments added to each other. 
    Arguments can be normal or in a table.

    CODE EXAMPLE:

        local n1 = MathsPlus.add(1,2,3,4) -- Returns 10

        local Table = {
            1,
            2,
            3,
            4
        }

        local n2 = MathsPlus.add(Table)

        print(n1,n2) -- Prints "10, 10"
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

	-- Add our numbers up

	local currentNumber = numberTable[1]
    table.remove(numberTable, 1)

	if #numberTable == 0 then
		return currentNumber 
	end

	for _, number in pairs(numberTable) do
		currentNumber += number
	end

	return currentNumber
end
