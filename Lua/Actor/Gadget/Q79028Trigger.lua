require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79028Trigger = class("Q79028Trigger", GadgetActorProxy)
Q79028Trigger.defaultAlias = "Q79028Trigger"
local subIDs = require("Quest/Client/Q79028ClientConfig").SubIDs

function Q79028Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q79028Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q79028Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7902801)
    self:DestroySelf()
end

function Q79028Trigger:TriggerOut()
    print("TriggerOut")
end

return Q79028Trigger
