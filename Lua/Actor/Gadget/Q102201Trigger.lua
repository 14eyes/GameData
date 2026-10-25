require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q102201Trigger = class("Q102201Trigger", GadgetActorProxy)
Q102201Trigger.defaultAlias = "Q102201Trigger"
local Q1022ClientConfig = require("Quest/Client/Q1022ClientConfig")

function Q102201Trigger:OnPostDataPrepare() end

function Q102201Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(25, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q102201Trigger:TriggerIn()
    print("Out Q1022TriggerSP01")
    local actor = actorMgr:GetActor(Q1022ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************get quest success")
        actor:FinishQuest(false, nil)
        actor:NarratorOnlyTaskByData(Q1022ClientConfig.NarratorData1, nil, 1022)
    end

    print("35301 start: 222")
    self:DestroySelf()
end

function Q102201Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q102201Trigger
