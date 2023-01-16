--[[

    MathPlus Module by iSophes

    Read "Readme.md" for more info

]]

local mathPlus = {}
mathPlus.Settings = require(script:WaitForChild("settings"))

local function sortSettings()

    -- Read settings.lua for what each setting does

    if mathPlus.Settings.RemoveReadMeOnStartup == true then
        script:WaitForChild("readme"):Destroy()
    end
end

function mathPlus:init()

    -- Initialises mathsplus and gets all commands ready.

    local curMod

	local success, err = pcall(function()
		for _, module in script:WaitForChild("Commands"):GetChildren() do
			mathPlus[module.Name] = require(module)
            curMod = module
		end
    end)

	if err then
		error("MathPlus Error: ".. curMod.Name .. " failed! Error: "..err)
	end

    if success then 
        curMod = nil 
    end

    -- Runs a function to apply all setttings

    sortSettings()

    return mathPlus -- Returns the module so it can be used
end

return mathPlus:init() -- Returning mathPlus:init() forces the function to be ran
