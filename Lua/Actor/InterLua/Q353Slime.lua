require("Actor/ActorCommon")
local InteractionActorProxy = require("Actor/Interaction/InteractionActorProxy")

local TestInteractionActor = class("TestInteractionActor", InteractionActorProxy)
local this

function tablelength(arg1)
    local n = 0
    for k in pairs(arg1) do
        n = n + 1
    end

    return n
end

function print_r(arg1)
    local tbl = {}
    local func
    function func(arg1, arg2)
        if tbl[tostring(arg1)] then
            Print(arg2 .. "*" .. tostring(arg1))
        else
            tbl[tostring(arg1)] = true
            if type(arg1) == "table" then
                for k, v in pairs(arg1) do
                    if type(v) == "table" then
                        Print(arg2 .. "[" .. k .. "] => " .. tostring(arg1) .. " {")
                        func(v, arg2 .. string.rep(" ", string.len(k) + 8))
                        Print(arg2 .. string.rep(" ", string.len(k) + 6) .. "}")
                    else
                        if type(v) == "string" then
                            Print(arg2 .. "[" .. k .. "] => \"" .. v .. "\"")
                        else
                            Print(arg2 .. "[" .. k .. "] => " .. tostring(v))
                        end
                    end
                end
            else
                Print(arg2 .. tostring(arg1))
            end
        end
    end

    if type(arg1) == "table" then
        Print(tostring(arg1) .. " {")
        func(arg1, "  ")
        Print("}")
    else
        func(arg1, "  ")
    end
end

function TestInteractionActor:OnInterStart(arg1)
    local actor = actorMgr:GetActor("Qin")
    local v = actorMgr:GetActor("Wendy")
    local actor2 = actorMgr:GetActor("Paimon")
    this = self
end

return TestInteractionActor
