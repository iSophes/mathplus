
--[[

    Default roblox abs but with math number support
    Essentially turns a negative number positive.

    Arguments can be normal or in a table.
    Returns number if only one argument passed, returns table if multiple passed 

]]

return function (...)
    
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