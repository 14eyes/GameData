require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q102208Trigger = class("Q102208Trigger", GadgetActorProxy)
Q102208Trigger.defaultAlias = "Q102208Trigger"
local Q1022ClientConfig = require("Quest/Client/Q1022ClientConfig")

function Q102208Trigger:OnPostDataPrepare() end

function Q102208Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(20, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q102208Trigger:TriggerIn()
    print("Out Q1022TriggerSP01")
    local actor = actorMgr:GetActor(Q1022ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************get quest success1111")
        actor:FinishQuest(false, nil)
        actor:NarratorOnlyTaskByData(Q1022ClientConfig.NarratorData3, nil, 1022)
    end

    print("35301 start: 222")
    self:DestroySelf()
end

function Q102208Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q102208Trigger
