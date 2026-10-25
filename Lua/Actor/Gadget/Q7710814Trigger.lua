require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710814Trigger = class("Q7710814Trigger", GadgetActorProxy)
Q7710814Trigger.defaultAlias = "Q7710814Trigger"
local Q77108ClientConfig = require("Quest/Client/Q77108ClientConfig")

local this
local subIDs = Q77108ClientConfig.SubIDs

function Q7710814Trigger:OnPostDataPrepare()
    print("Q7710814Trigger - OnPostDataPrepare")
    this = self
end

function Q7710814Trigger:OnPostComponentPrepare()
    print("Q7710814Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77108)
end

function Q7710814Trigger:TriggerIn()
    print("Q7710814Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7710814Trigger:PreTriggerIn()
    print("Q7710814Trigger - PreTriggerIn")
end

function Q7710814Trigger:LightUpTriggerIn()
    print("Q7710814Trigger - LightUpTriggerIn")
end

function Q7710814Trigger:TriggerOut()
    print("Q7710814Trigger - TriggerOut")
end

return Q7710814Trigger
