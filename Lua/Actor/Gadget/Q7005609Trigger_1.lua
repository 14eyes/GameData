require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7005609Trigger_1 = class("Q7005609Trigger_1", GadgetActorProxy)
Q7005609Trigger_1.defaultAlias = "Q7005609Trigger_1"
local Q70056ClientConfig = require("Quest/Client/Q70056ClientConfig")

local this
local subIDs = Q70056ClientConfig.SubIDs
local points = Q70056ClientConfig.Points

function Q7005609Trigger_1:OnPostDataPrepare()
    print("Q7005609Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7005609Trigger_1:OnPostComponentPrepare()
    print("Q7005609Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70056)
end

function Q7005609Trigger_1:TriggerIn()
    print("Q7005609Trigger_1 - TriggerIn")
    this:DestroySelf()
end

function Q7005609Trigger_1:PreTriggerIn()
    print("Q7005609Trigger_1 - PreTriggerIn")
end

function Q7005609Trigger_1:LightUpTriggerIn()
    print("Q7005609Trigger_1 - LightUpTriggerIn")
end

function Q7005609Trigger_1:TriggerOut()
    print("Q7005609Trigger_1 - TriggerOut")
end

return Q7005609Trigger_1
