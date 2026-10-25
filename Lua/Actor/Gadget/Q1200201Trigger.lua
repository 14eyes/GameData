require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1200201Trigger = class("Q1200201Trigger", GadgetActorProxy)
Q1200201Trigger.defaultAlias = "Q1200201Trigger"
local Q12002ClientConfig = require("Quest/Client/Q12002ClientConfig")

function Q1200201Trigger:OnPostDataPrepare() end

function Q1200201Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(10, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1200201Trigger:TriggerIn()
    print("Out Q12002TriggerSP01")
    local actor = actorMgr:GetActor(Q12002ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************get quest success")
        actor:FinishQuest(false, nil)
    end

    print("35301 start: 222")
    self:DestroySelf()
end

function Q1200201Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q1200201Trigger
