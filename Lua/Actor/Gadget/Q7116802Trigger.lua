require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7116802Trigger = class("Q7116802Trigger", GadgetActorProxy)
Q7116802Trigger.defaultAlias = "Q7116802Trigger"
local Q71168ClientConfig = require("Quest/Client/Q71168ClientConfig")

local this
local subIDs = Q71168ClientConfig.SubIDs

function Q7116802Trigger:OnPostDataPrepare()
    print("Q7116802Trigger - OnPostDataPrepare")
    this = self
end

function Q7116802Trigger:OnPostComponentPrepare()
    print("Q7116802Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71168)
end

function Q7116802Trigger:TriggerIn()
    print("Q7116802Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7116802Trigger:PreTriggerIn()
    print("Q7116802Trigger - PreTriggerIn")
end

function Q7116802Trigger:LightUpTriggerIn()
    print("Q7116802Trigger - LightUpTriggerIn")
end

function Q7116802Trigger:TriggerOut()
    print("Q7116802Trigger - TriggerOut")
end

return Q7116802Trigger
