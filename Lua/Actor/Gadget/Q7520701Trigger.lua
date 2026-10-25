require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7520701Trigger = class("Q7520701Trigger", GadgetActorProxy)
Q7520701Trigger.defaultAlias = "Q7520701Trigger"
local Q75207ClientConfig = require("Quest/Client/Q75207ClientConfig")

local this
local subIDs = Q75207ClientConfig.SubIDs
local points = Q75207ClientConfig.Points

function Q7520701Trigger:OnPostDataPrepare()
    print("Q7520701Trigger - OnPostDataPrepare")
    this = self
end

function Q7520701Trigger:OnPostComponentPrepare()
    print("Q7520701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75207)
end

function Q7520701Trigger:TriggerIn()
    print("Q7520701Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7520701)
    this:DestroySelf()
end

function Q7520701Trigger:PreTriggerIn()
    print("Q7520701Trigger - PreTriggerIn")
end

function Q7520701Trigger:LightUpTriggerIn()
    print("Q7520701Trigger - LightUpTriggerIn")
end

function Q7520701Trigger:TriggerOut()
    print("Q7520701Trigger - TriggerOut")
end

return Q7520701Trigger
