require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7722303Trigger = class("Q7722303Trigger", GadgetActorProxy)
Q7722303Trigger.defaultAlias = "Q7722303Trigger"
local Q77223ClientConfig = require("Quest/Client/Q77223ClientConfig")

local this
local subIDs = Q77223ClientConfig.SubIDs
local points = Q77223ClientConfig.Points

function Q7722303Trigger:OnPostDataPrepare()
    print("Q7722303Trigger - OnPostDataPrepare")
    this = self
end

function Q7722303Trigger:OnPostComponentPrepare()
    print("Q7722303Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(39.706722, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77223)
end

function Q7722303Trigger:TriggerIn()
    print("Q7722303Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7722303)
    this:DestroySelf()
end

function Q7722303Trigger:PreTriggerIn()
    print("Q7722303Trigger - PreTriggerIn")
end

function Q7722303Trigger:LightUpTriggerIn()
    print("Q7722303Trigger - LightUpTriggerIn")
end

function Q7722303Trigger:TriggerOut()
    print("Q7722303Trigger - TriggerOut")
end

return Q7722303Trigger
