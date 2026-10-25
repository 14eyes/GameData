require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7603501Trigger = class("Q7603501Trigger", GadgetActorProxy)
Q7603501Trigger.defaultAlias = "Q7603501Trigger"
local Q76035ClientConfig = require("Quest/Client/Q76035ClientConfig")

local this
local subIDs = Q76035ClientConfig.SubIDs
local npcs = Q76035ClientConfig.Npcs

function Q7603501Trigger:OnPostDataPrepare()
    print("Q7603501Trigger - OnPostDataPrepare")
    this = self
end

function Q7603501Trigger:OnPostComponentPrepare()
    print("Q7603501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(47.913033, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76035)
end

function Q7603501Trigger:TriggerIn()
    print("Q7603501Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7603501Trigger:PreTriggerIn()
    print("Q7603501Trigger - PreTriggerIn")
end

function Q7603501Trigger:LightUpTriggerIn()
    print("Q7603501Trigger - LightUpTriggerIn")
end

function Q7603501Trigger:TriggerOut()
    print("Q7603501Trigger - TriggerOut")
end

return Q7603501Trigger
