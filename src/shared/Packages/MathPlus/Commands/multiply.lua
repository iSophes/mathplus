--[[

    MATHPLUS | Multiply Command. 

    Returns given arguments number to each other. 
    Arguments can be normal or in a table.

    Usage is same as add.

]]

return function(...)
    
    local mathPlus = require(script.Parent.Parent)
    local numberTable = mathPlus.classcreateTable(...)

    local currentNumber = numberTable[1]
    table.remove(numberTable, 1)

    if #numberTable == 0 then
        return currentNumber
    end

    for _, number in numberTable do
        currentNumber *= number
    end

	return currentNumber
end    