require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3015Trigger = class("Q3015Trigger", GadgetActorProxy)
Q3015Trigger.defaultAlias = "Q3015Trigger"
local subIDs = require("Quest/Client/Q3015ClientConfig").SubIDs

function Q3015Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3015Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(230, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3015Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 301503)
end

function Q3015Trigger:TriggerOut()
    print("TriggerOut")
end

return Q3015Trigger
