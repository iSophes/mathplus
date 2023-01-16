local replicatedStorage = game:GetService("ReplicatedStorage")

local mathPlus = require(replicatedStorage:WaitForChild("Common"):WaitForChild("Packages").MathPlus)

local addedNormal = mathPlus.ordsubtract(1, 2, 3, 4) -- Should return -2

local addTable = {1, 2, 3, 4}
local addedTable = mathPlus.ordsubtract(addTable)

print(addedNormal) -- -2
print(addedTable) -- -2

