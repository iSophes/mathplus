local replicatedStorage = game:GetService("ReplicatedStorage")

local mathPlus = require(replicatedStorage:WaitForChild("MathPlus").MathPlus)

local normal = mathPlus.abs(1, 2, -3) -- Should return {1, 2, 3}

local ValTable = {1, 2, -3}
local calcedTable = mathPlus.abs(ValTable)

print(normal) -- {1, 2, 3}
print(calcedTable) -- {1, 2, 3}

