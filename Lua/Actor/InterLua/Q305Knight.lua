require("Actor/ActorCommon")
local InteractionActorProxy = require("Actor/Interaction/InteractionActorProxy")

local TestInteractionActor = class("TestInteractionActor", InteractionActorProxy)

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
    local actor = actorMgr:GetActor("1006")
    local v = actorMgr:GetActor("1001")
    local actor2 = actorMgr:GetActor("1005")
    if arg1 == 1 then
        print_r(actorMgr.ActorDic)
        actor:SetPos(sceneData:GetDummyPoint(3, "Q305KnightDoor").pos)
        actor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q305KnightDoor").rot))
    elseif arg1 == 2 then
        print_r(actorMgr.ActorDic)
        actor:Standby()
        actor:WalkTo(sceneData:GetDummyPoint(3, "Q411QinBorn").pos)
    elseif arg1 == 5 then
        print_r(actorMgr.ActorDic)
        v:DoFreeStyle(0)
        v:CallDelay(2, v.Standby)
        actor:SetPos(sceneData:GetDummyPoint(3, "Q411QinBorn").pos)
    elseif arg1 == 25 then
        print_r(actorMgr.ActorDic)
        v:SetPos(sceneData:GetDummyPoint(3, "Q301Hidden").pos)
        actor2:SetPos(sceneData:GetDummyPoint(3, "Q301Hidden").pos)
    end
end

return TestInteractionActor
