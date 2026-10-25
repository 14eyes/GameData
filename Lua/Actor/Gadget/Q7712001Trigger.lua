require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7712001Trigger = class("Q7712001Trigger", GadgetActorProxy)
Q7712001Trigger.defaultAlias = "Q7712001Trigger"
local Q77120ClientConfig = require("Quest/Client/Q77120ClientConfig")

local this
local subIDs = Q77120ClientConfig.SubIDs

function Q7712001Trigger:OnPostDataPrepare()
    print("Q7712001Trigger - OnPostDataPrepare")
    this = self
end

function Q7712001Trigger:OnPostComponentPrepare()
    print("Q7712001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77120)
end

function Q7712001Trigger:TriggerIn()
    print("Q7712001Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7712001)
    this:DestroySelf()
end

function Q7712001Trigger:PreTriggerIn()
    print("Q7712001Trigger - PreTriggerIn")
end

function Q7712001Trigger:LightUpTriggerIn()
    print("Q7712001Trigger - LightUpTriggerIn")
end

function Q7712001Trigger:TriggerOut()
    print("Q7712001Trigger - TriggerOut")
end

return Q7712001Trigger
