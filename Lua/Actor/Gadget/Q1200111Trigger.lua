require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1200111Trigger = class("Q1200111Trigger", GadgetActorProxy)
Q1200111Trigger.defaultAlias = "Q1200111Trigger"
local Q12001ClientConfig = require("Quest/Client/Q12001ClientConfig")

function Q1200111Trigger:OnPostDataPrepare() end

function Q1200111Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(6, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1200111Trigger:TriggerIn()
    print("Q1200111Trigger")
    local actor = actorMgr:GetActor(Q12001ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************Q1200111Triggerget quest success")
        actor:FinishQuest(false, nil)
    end

    print("Q1200111Trigger")
    self:DestroySelf()
end

function Q1200111Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q1200111Trigger
