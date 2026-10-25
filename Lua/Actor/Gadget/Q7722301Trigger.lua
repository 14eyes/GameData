require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7722301Trigger = class("Q7722301Trigger", GadgetActorProxy)
Q7722301Trigger.defaultAlias = "Q7722301Trigger"
local Q77223ClientConfig = require("Quest/Client/Q77223ClientConfig")

local this
local subIDs = Q77223ClientConfig.SubIDs
local points = Q77223ClientConfig.Points

function Q7722301Trigger:OnPostDataPrepare()
    print("Q7722301Trigger - OnPostDataPrepare")
    this = self
end

function Q7722301Trigger:OnPostComponentPrepare()
    print("Q7722301Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77223)
end

function Q7722301Trigger:TriggerIn()
    print("Q7722301Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7722301)
    this:DestroySelf()
end

function Q7722301Trigger:PreTriggerIn()
    print("Q7722301Trigger - PreTriggerIn")
end

function Q7722301Trigger:LightUpTriggerIn()
    print("Q7722301Trigger - LightUpTriggerIn")
end

function Q7722301Trigger:TriggerOut()
    print("Q7722301Trigger - TriggerOut")
end

return Q7722301Trigger
