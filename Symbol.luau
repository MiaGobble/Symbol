-- Author: iGottic

--[[
    @class Symbol
--]]

local Symbol = {}

-- Types
export type Symbol = typeof(newproxy(true))

function Symbol.new(Name : string)
    local self = newproxy(true)

    getmetatable(self).__tostring = function()
        return Name
    end

    return self
end

function Symbol.newNameless()
    local self = newproxy(true)

    return self
end

function Symbol.AsString(ThisSymbol : Symbol)
    return tostring(ThisSymbol)
end

return Symbol