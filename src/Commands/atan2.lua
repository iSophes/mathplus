return function(...)
	local mathPlus = require(script.Parent.Parent)
	local numTable = mathPlus.classcreateTable(...)

	if #numTable > 2 then
		error("MathPlus Atan2: Only 2 arguments allowed. " .. #numTable .. " passed.")
	end

	if #numTable <= 1 then
		error("MathPlus Atan2: Arguments missing! Requires 2 arguments! " .. #numTable .. " passed.")
	end

	return math.atan2(numTable[1], numTable[2])
end
