require("Actor/ActorCommon")
local MQ378 = require("Actor/Quest/MQ378")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Qin = class("Qin", NpcActorProxy)
Qin.defaultAlias = "Qin"
local Q378ClientConfig = require("Quest/Client/Q378ClientConfig")

local qinData = Q378ClientConfig.QinData

function Qin:PreGetAlias()
    return qinData.Qin
end

function Qin:TransPreCallBack(arg1)
    print("TransPreCallBack")
    local euler = self.GetEuler(self)
    self.uActor:SetAvatarEuler(euler)
    self.AddPriorityInter(self, InterTimingType.BTN, arg1.PlayerBackInter)
    actorMgr:GetActor(arg1.ActorAlias):RequestInteraction(arg1.QinData.Qin)
    self.ActionSafeCall(self, function(arg1)
        self:ClearPriorityInter(InterTimingType.BTN)
    end)
end

function Qin:TransFinishCallBack(arg1)
    print("TransFinishCallBack")
end

function Qin:WalkFollow()
    print("WalkFollow")
    self:ClearFollowTask()
    self:BeFollowTask(Q378ClientConfig.QinData.bornPos2, Q378ClientConfig.FollowLen, -1, function(arg1, arg2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            local actor = actorMgr:GetActor(Q378ClientConfig.ActorAlias)
            if actor ~= nil then
                actor:FinishQuest(true, nil)
            end

            arg1:StopNarrator()
        else
            if arg1.BeFollowState == BeFollowState.SUCCESS then
                arg1:TurnTo(M.Euler2DirXZ(Q378ClientConfig.QinData.bornDir2))
                local actor = actorMgr:GetActor(Q378ClientConfig.ActorAlias)
                if actor ~= nil then
                    actor:FinishQuest(false, nil)
                end
            end
        end
    end, function(arg1, arg2)
        arg1:Standby()
    end)

    self:BeLockTask(Q378ClientConfig.FollowTransLen, 1, function(arg1)
        arg1:TransFinishCallBack(Q378ClientConfig)
    end, function(arg1)
        arg1:TransPreCallBack(Q378ClientConfig)
    end)
end

function Qin:Start()
    print("start!Qin")
end

function Qin:OnDestroy()
    print("Qin " .. qinData.QinID .. " destroied")
end

return Qin
