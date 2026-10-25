require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7901904Trigger = class("Q7901904Trigger", GadgetActorProxy)
Q7901904Trigger.defaultAlias = "Q7901904Trigger"
local subIDs = require("Quest/Client/Q79019ClientConfig").SubIDs

function Q7901904Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7901904Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7901904Trigger:TriggerIn()
    print("TriggerIn")
end

function Q7901904Trigger:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(false, 7901904)
    self:DestroySelf()
end

return Q7901904Trigger
