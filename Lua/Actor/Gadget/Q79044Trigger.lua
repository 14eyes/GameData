require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79044Trigger = class("Q79044Trigger", GadgetActorProxy)
Q79044Trigger.defaultAlias = "Q79044Trigger"
local Q79044ClientConfig = require("Quest/Client/Q79044ClientConfig")

local this
local subIDs = Q79044ClientConfig.SubIDs
local npcs = Q79044ClientConfig.Npcs
local points = Q79044ClientConfig.Points

function Q79044Trigger:OnPostDataPrepare()
    print("[MainId: 79044][Trigger: Q79044Trigger] OnPostDataPrepare")
    this = self
end

function Q79044Trigger:OnPostComponentPrepare()
    print("[MainId: 79044][Trigger: Q79044Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q79044Trigger:TriggerIn()
    print("[MainId: 79044][Trigger: Q79044Trigger] TriggerIn")
end

function Q79044Trigger:PreTriggerIn()
    print("[MainId: 79044][Trigger: Q79044Trigger] PreTriggerIn")
end

function Q79044Trigger:LightUpTriggerIn()
    print("[MainId: 79044][Trigger: Q79044Trigger] LightUpTriggerIn")
end

function Q79044Trigger:TriggerOut()
    print("[MainId: 79044][Trigger: Q79044Trigger] TriggerOut")
end

return Q79044Trigger
