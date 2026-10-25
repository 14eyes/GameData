require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323903Trigger = class("Q7323903Trigger", GadgetActorProxy)
Q7323903Trigger.defaultAlias = "Q7323903Trigger"
local subIDs = require("Quest/Client/Q73239ClientConfig").SubIDs

function Q7323903Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7323903Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7323903Trigger:TriggerIn()
    print("TriggerIn")
    if actorUtils.IsLevelTagValid(38, true) then
        actorUtils.FinishQuestID(false, 7323903)
        self:DestroySelf()
    end
end

function Q7323903Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323903Trigger
