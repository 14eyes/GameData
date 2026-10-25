require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7722304Trigger = class("Q7722304Trigger", GadgetActorProxy)
Q7722304Trigger.defaultAlias = "Q7722304Trigger"
local Q77223ClientConfig = require("Quest/Client/Q77223ClientConfig")

local this
local subIDs = Q77223ClientConfig.SubIDs
local points = Q77223ClientConfig.Points

function Q7722304Trigger:OnPostDataPrepare()
    print("Q7722304Trigger - OnPostDataPrepare")
    this = self
end

function Q7722304Trigger:OnPostComponentPrepare()
    print("Q7722304Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77223)
end

function Q7722304Trigger:TriggerIn()
    print("Q7722304Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7722304)
    this:DestroySelf()
end

function Q7722304Trigger:PreTriggerIn()
    print("Q7722304Trigger - PreTriggerIn")
end

function Q7722304Trigger:LightUpTriggerIn()
    print("Q7722304Trigger - LightUpTriggerIn")
end

function Q7722304Trigger:TriggerOut()
    print("Q7722304Trigger - TriggerOut")
end

return Q7722304Trigger
