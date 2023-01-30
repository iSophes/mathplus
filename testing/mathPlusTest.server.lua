local replicatedStorage = game:GetService("ReplicatedStorage")

local mathPlus = require(replicatedStorage:WaitForChild("MathPlus"))

local normal = mathPlus.clamp(2.5, 2, 3) -- Should return 2.5

local ValTable = { 2.5, 2, 3 } -- Should return 2.5
local calcedTable = mathPlus.clamp(ValTable)

print(normal) -- {1, 2, 3}
print(calcedTable) -- {1, 2, 3}
