require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79044Trigger1 = class("Q79044Trigger1", GadgetActorProxy)
Q79044Trigger1.defaultAlias = "Q79044Trigger1"
local Q79044ClientConfig = require("Quest/Client/Q79044ClientConfig")

local this
local subIDs = Q79044ClientConfig.SubIDs
local npcs = Q79044ClientConfig.Npcs
local points = Q79044ClientConfig.Points

function Q79044Trigger1:OnPostDataPrepare()
    print("[MainId: 79044][Trigger: Q79044Trigger1] OnPostDataPrepare")
    this = self
end

function Q79044Trigger1:OnPostComponentPrepare()
    print("[MainId: 79044][Trigger: Q79044Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q79044Trigger1:TriggerIn()
    print("[MainId: 79044][Trigger: Q79044Trigger1] TriggerIn")
end

function Q79044Trigger1:PreTriggerIn()
    print("[MainId: 79044][Trigger: Q79044Trigger1] PreTriggerIn")
end

function Q79044Trigger1:LightUpTriggerIn()
    print("[MainId: 79044][Trigger: Q79044Trigger1] LightUpTriggerIn")
end

function Q79044Trigger1:TriggerOut()
    print("[MainId: 79044][Trigger: Q79044Trigger1] TriggerOut")
end

return Q79044Trigger1
