require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1200101Trigger = class("Q1200101Trigger", GadgetActorProxy)
Q1200101Trigger.defaultAlias = "Q1200101Trigger"
local Q12001ClientConfig = require("Quest/Client/Q12001ClientConfig")

function Q1200101Trigger:OnPostDataPrepare() end

function Q1200101Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1200101Trigger:TriggerIn()
    print("Out Q12000TriggerSP01")
    local actor = actorMgr:GetActor(Q12001ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************get quest success")
        actor:FinishQuest(false, nil)
    end

    print("35301 start: 222")
    self:DestroySelf()
end

function Q1200101Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q1200101Trigger
