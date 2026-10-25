require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Gaia22003 = class("Gaia22003", NpcActorProxy)
local Q220Config = require("Actor/Quest/Q220/Config/Q220Config")

local gaiaData = Q220Config.GaiaData
Gaia22003.defaultAlias = "Gaia22003"

function Gaia22003:StartBeFollow()
    self:BeFollowTask(gaiaData.FirstPos, gaiaData.BeFollowLen, gaiaData.BeFollowFailedLen, function(arg1, arg2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            local actor = actorMgr:GetActor(Q220Config.ActorAlias)
            if actor ~= nil then
                actor:FinishQuest(true, nil)
            end

            arg1:Destroy(false)
        else
            if arg1.BeFollowState == BeFollowState.SUCCESS then
                arg1:TurnTo(M.Euler2DirXZ(gaiaData.bornDir))
                arg1:Standby()
            end
        end
    end, function(arg1, arg2)
        arg1:Standby()
    end)
end

function Gaia22003:Start()
    print("start!gaia22003")
    self:StartBeFollow()
end

return Gaia22003
