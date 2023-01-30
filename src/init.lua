--[=[

	@class MathPlusInitialiser

	MathPlus Initialiser, Allows you to run MathPlus.commandName

]=]

local mathPlus = {}

--[=[

	@function commandInit
	@within MathPlusInitialiser

	Initialises all of the commands that MathPlus uses. E.g: MathPlus.abs()
	If the command we try and get fails, we error and state which module errors witth what happened
	Else we delete currentmodule and forget about it.
]=]

local function commandInit()
	local currentModule

	local success, err = pcall(function()
		for _, module in script:WaitForChild("Commands"):GetChildren() do
			mathPlus[module.Name] = require(module)
			currentModule = module
		end
	end)

	if err then
		error("MathPlus Command Error: " .. currentModule.Name .. " failed! Error: " .. err)
	end

	if success then
		currentModule = nil
	end
end

--[=[

	@function classInit
	@within MathPlusInitialiser

	Similar to commandInit, where it puts all of the commands into the MathPlus table,
	commandInit requires all of the classes in src/Classes and puts them into the mathPlus table
	Uses currentClass for errors for easy tracing of where errors occur.
	Deletes currentClass if no errors occur.

]=]

local function classInit()
	local currentClass

	local success, err = pcall(function()
		for _, class in pairs(script:WaitForChild("Classes"):GetChildren()) do
			if class:IsA("ModuleScript") then
				mathPlus["class" .. class.Name] = require(class)
				currentClass = class
			else
				continue
			end
		end
	end)

	if err then
		error("MathPlus Class Error: " .. currentClass.Name .. " failed! Error: " .. err)
	end

	if success then
		currentClass = nil
	end
end

--[=[

	@method init
	@within MathPlusInitialiser

	Runs classInit and commandInit and then returns our module ready for use by other scripts
	
	@param nil nil
	@return table
]=]

function mathPlus:init()
	-- Initialises mathsplus and gets all commands ready.

	classInit()
	commandInit()

	return mathPlus -- Returns the module so it can be used
end

return mathPlus:init() -- Returning mathPlus:init() forces the function to be ran
