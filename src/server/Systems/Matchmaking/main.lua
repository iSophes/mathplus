
--[[

    Matchmaking System for Quelliter



]]


local matchmaking = {}

function matchmaking.Initialise()

    for _, module in pairs(script.Parent:GetChildren()) do
        if not module:IsA("ModuleScript") then continue end

        _G["Matchmaking"..module.Name] = require(module)
    end

end

return matchmaking