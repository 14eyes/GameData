require("Actor/ActorCommon")
local SQ413 = require("Actor/Quest/SQ413")
local ConfigNpcActorProxy = require("Actor/Npc/ConfigNpcActorProxy")

local Pastor = class("Pastor", ConfigNpcActorProxy)
Pastor.defaultAlias = "Pastor"

function Pastor:Show()
    self:ClearFollowTask()
    self:WalkToTask(pastorData.showPos, function(arg1, arg2)
        local actor = actorMgr:GetActor(q413Cfg.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end

        arg1:TurnTo(M.Euler2DirXZ(pastorData.showDir))
        arg1:Standby()
    end)
end

function Pastor:Vanish()
    self:ClearFollowTask()
    self:WalkToTask(pastorData.bornPos, function(arg1, arg2)
        arg1:Destroy(false)
    end)
end

function Pastor:Start()
    print("start!Pastor")
end

function Pastor:OnDestroy()
    print("Pastor destroied")
end

return Pastor
