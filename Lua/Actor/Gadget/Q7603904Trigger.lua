require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7603904Trigger = class("Q7603904Trigger", GadgetActorProxy)
Q7603904Trigger.defaultAlias = "Q7603904Trigger"
local Q76039ClientConfig = require("Quest/Client/Q76039ClientConfig")

local this
local subIDs = Q76039ClientConfig.SubIDs
local npcs = Q76039ClientConfig.Npcs

function Q7603904Trigger:OnPostDataPrepare()
    print("Q7603904Trigger - OnPostDataPrepare")
    this = self
end

function Q7603904Trigger:OnPostComponentPrepare()
    print("Q7603904Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76039)
end

function Q7603904Trigger:TriggerIn()
    print("Q7603904Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7603904Trigger:PreTriggerIn()
    print("Q7603904Trigger - PreTriggerIn")
end

function Q7603904Trigger:LightUpTriggerIn()
    print("Q7603904Trigger - LightUpTriggerIn")
end

function Q7603904Trigger:TriggerOut()
    print("Q7603904Trigger - TriggerOut")
end

return Q7603904Trigger
