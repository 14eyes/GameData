require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7722302Trigger = class("Q7722302Trigger", GadgetActorProxy)
Q7722302Trigger.defaultAlias = "Q7722302Trigger"
local Q77223ClientConfig = require("Quest/Client/Q77223ClientConfig")

local this
local subIDs = Q77223ClientConfig.SubIDs
local points = Q77223ClientConfig.Points

function Q7722302Trigger:OnPostDataPrepare()
    print("Q7722302Trigger - OnPostDataPrepare")
    this = self
end

function Q7722302Trigger:OnPostComponentPrepare()
    print("Q7722302Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77223)
end

function Q7722302Trigger:TriggerIn()
    print("Q7722302Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7722302)
    this:DestroySelf()
end

function Q7722302Trigger:PreTriggerIn()
    print("Q7722302Trigger - PreTriggerIn")
end

function Q7722302Trigger:LightUpTriggerIn()
    print("Q7722302Trigger - LightUpTriggerIn")
end

function Q7722302Trigger:TriggerOut()
    print("Q7722302Trigger - TriggerOut")
end

return Q7722302Trigger
