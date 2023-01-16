--[[

    MATHPLUS | Divide Command

    Divides two numbers from each other 

    POSSIBLE INPUTS:
    
    Raw Numbers (6, 3)
    Tables {6, 3} MathPlus.divide(table)

    | MUST BE IN ORDER. USE ordivide() FOR AUTOMATIC ORDERING! |

]]

return function (...)

    local mathPlus = require(script.Parent.Parent)
    local numberTable = mathPlus.classcreateTable(...)

    if #numberTable ~= 2 then
        error("MathPlus Divide Error: Divide function must have two numbers!")
    end

    local divide = numberTable[1] / numberTable[2] 

    return divide 
    
end