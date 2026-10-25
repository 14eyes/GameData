require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7401823Trigger = class("Q7401823Trigger", GadgetActorProxy)
Q7401823Trigger.defaultAlias = "Q7401823Trigger"
local Q74018ClientConfig = require("Quest/Client/Q74018ClientConfig")

local this
local subIDs = Q74018ClientConfig.SubIDs
local npcs = Q74018ClientConfig.Npcs
local points = Q74018ClientConfig.Points

function Q7401823Trigger:OnPostDataPrepare()
    print("[MainId: 74018][Trigger: Q7401823Trigger] OnPostDataPrepare")
    this = self
end

function Q7401823Trigger:OnPostComponentPrepare()
    print("[MainId: 74018][Trigger: Q7401823Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7401823Trigger:TriggerIn()
    print("[MainId: 74018][Trigger: Q7401823Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7401823Trigger:PreTriggerIn()
    print("[MainId: 74018][Trigger: Q7401823Trigger] PreTriggerIn")
end

function Q7401823Trigger:LightUpTriggerIn()
    print("[MainId: 74018][Trigger: Q7401823Trigger] LightUpTriggerIn")
end

function Q7401823Trigger:TriggerOut()
    print("[MainId: 74018][Trigger: Q7401823Trigger] TriggerOut")
end

return Q7401823Trigger
