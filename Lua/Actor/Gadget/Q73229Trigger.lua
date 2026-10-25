require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73229Trigger = class("Q73229Trigger", GadgetActorProxy)
Q73229Trigger.defaultAlias = "Q73229Trigger"
local subIDs = require("Quest/Client/Q73229ClientConfig").SubIDs

function Q73229Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73229Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73229Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7322901)
    self:DestroySelf()
end

function Q73229Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73229Trigger
