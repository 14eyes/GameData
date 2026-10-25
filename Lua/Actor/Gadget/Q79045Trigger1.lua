require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79045Trigger1 = class("Q79045Trigger1", GadgetActorProxy)
Q79045Trigger1.defaultAlias = "Q79045Trigger1"
local Q79045ClientConfig = require("Quest/Client/Q79045ClientConfig")

local this
local subIDs = Q79045ClientConfig.SubIDs
local npcs = Q79045ClientConfig.Npcs
local points = Q79045ClientConfig.Points

function Q79045Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q79045Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q79045Trigger1:TriggerIn()
    print("TriggerIn")
end

function Q79045Trigger1:PreTriggerIn()
    print("PreTriggerIn")
end

function Q79045Trigger1:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q79045Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q79045Trigger1
