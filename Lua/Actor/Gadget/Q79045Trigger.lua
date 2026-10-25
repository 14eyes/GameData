require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79045Trigger = class("Q79045Trigger", GadgetActorProxy)
Q79045Trigger.defaultAlias = "Q79045Trigger"
local Q79045ClientConfig = require("Quest/Client/Q79045ClientConfig")

local this
local subIDs = Q79045ClientConfig.SubIDs
local npcs = Q79045ClientConfig.Npcs
local points = Q79045ClientConfig.Points

function Q79045Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q79045Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q79045Trigger:TriggerIn()
    print("TriggerIn")
end

function Q79045Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q79045Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q79045Trigger:TriggerOut()
    print("TriggerOut")
end

return Q79045Trigger
