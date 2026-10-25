require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7520704Trigger = class("Q7520704Trigger", GadgetActorProxy)
Q7520704Trigger.defaultAlias = "Q7520704Trigger"
local Q75207ClientConfig = require("Quest/Client/Q75207ClientConfig")

local this
local subIDs = Q75207ClientConfig.SubIDs
local points = Q75207ClientConfig.Points

function Q7520704Trigger:OnPostDataPrepare()
    print("Q7520704Trigger - OnPostDataPrepare")
    this = self
end

function Q7520704Trigger:OnPostComponentPrepare()
    print("Q7520704Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75207)
end

function Q7520704Trigger:TriggerIn()
    print("Q7520704Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7520704)
    this:DestroySelf()
end

function Q7520704Trigger:PreTriggerIn()
    print("Q7520704Trigger - PreTriggerIn")
end

function Q7520704Trigger:LightUpTriggerIn()
    print("Q7520704Trigger - LightUpTriggerIn")
end

function Q7520704Trigger:TriggerOut()
    print("Q7520704Trigger - TriggerOut")
end

return Q7520704Trigger
