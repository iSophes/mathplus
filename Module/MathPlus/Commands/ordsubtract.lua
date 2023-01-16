--[[

    Ordered Subtract function for MathPlus. 
    Will order the numbers given from largest to smallest and subtract

    Arguments can be normal or in a table.

    CODE EXAMPLE:

        local n1 = MathsPlus.ordsubtract(1,2,3,4) -- | Gets the highest to the lowest and subtracts. | Returns -2 in our case

        local Table = {
            1,
            2,
            3,
            4
        }

        local n2 = MathsPlus.ordsubtract(Table)

        print(n1,n2) -- Prints "-2, -2"

    

]]

return function (...)

	local mathPlus = require(script.Parent.Parent)
	local numberTable = mathPlus.classcreateTable(...)

    local newTable = {}

    local max = #numberTable

    -- Repeat each number in number table, if it's the max then add it to the new table, then remove from possible numbers and continue
    -- If it's not largest, continue with loop.

	repeat
		for _, instance in pairs(numberTable) do

			local maxNum = math.max(unpack(numberTable))

            if instance ~= maxNum then 
                continue 
            end

            table.insert(newTable, instance)
            table.remove(numberTable, instance)
		end
    until
        #newTable == max 

    return mathPlus.subtract(newTable)    
end