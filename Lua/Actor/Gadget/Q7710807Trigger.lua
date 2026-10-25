require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710807Trigger = class("Q7710807Trigger", GadgetActorProxy)
Q7710807Trigger.defaultAlias = "Q7710807Trigger"
local Q77108ClientConfig = require("Quest/Client/Q77108ClientConfig")

local this
local subIDs = Q77108ClientConfig.SubIDs

function Q7710807Trigger:OnPostDataPrepare()
    print("Q7710807Trigger - OnPostDataPrepare")
    this = self
end

function Q7710807Trigger:OnPostComponentPrepare()
    print("Q7710807Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77108)
end

function Q7710807Trigger:TriggerIn()
    print("Q7710807Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7710807Trigger:PreTriggerIn()
    print("Q7710807Trigger - PreTriggerIn")
end

function Q7710807Trigger:LightUpTriggerIn()
    print("Q7710807Trigger - LightUpTriggerIn")
end

function Q7710807Trigger:TriggerOut()
    print("Q7710807Trigger - TriggerOut")
end

return Q7710807Trigger
