require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40081Trigger = class("Q40081Trigger", GadgetActorProxy)
Q40081Trigger.defaultAlias = "Q40081Trigger"
local subIDs = require("Quest/Client/Q40081ClientConfig").SubIDs

function Q40081Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40081Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40081Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q40081Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40081Trigger
