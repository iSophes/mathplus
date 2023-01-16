local replicatedStorage = game:GetService("ReplicatedStorage")

local mathPlus = require(replicatedStorage:WaitForChild("Common"):WaitForChild("Packages").MathPlus)

local addedNormal = mathPlus.divide(1, 2) -- Should return 2

local addTable = {1, 2}
local addedTable = mathPlus.divide(addTable)

print(addedNormal) -- 0.5
print(addedTable) -- 0.5

