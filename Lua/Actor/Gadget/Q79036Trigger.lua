require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79036Trigger = class("Q79036Trigger", GadgetActorProxy)
Q79036Trigger.defaultAlias = "Q79036Trigger"
local subIDs = require("Quest/Client/Q79036ClientConfig").SubIDs

function Q79036Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q79036Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q79036Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7903602)
    self:DestroySelf()
end

function Q79036Trigger:TriggerOut()
    print("TriggerOut")
end

return Q79036Trigger
