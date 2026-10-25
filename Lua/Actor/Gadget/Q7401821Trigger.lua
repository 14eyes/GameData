require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7401821Trigger = class("Q7401821Trigger", GadgetActorProxy)
Q7401821Trigger.defaultAlias = "Q7401821Trigger"
local Q74018ClientConfig = require("Quest/Client/Q74018ClientConfig")

local this
local subIDs = Q74018ClientConfig.SubIDs
local npcs = Q74018ClientConfig.Npcs
local points = Q74018ClientConfig.Points

function Q7401821Trigger:OnPostDataPrepare()
    print("[MainId: 74018][Trigger: Q7401821Trigger] OnPostDataPrepare")
    this = self
end

function Q7401821Trigger:OnPostComponentPrepare()
    print("[MainId: 74018][Trigger: Q7401821Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7401821Trigger:TriggerIn()
    print("[MainId: 74018][Trigger: Q7401821Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7401821Trigger:PreTriggerIn()
    print("[MainId: 74018][Trigger: Q7401821Trigger] PreTriggerIn")
end

function Q7401821Trigger:LightUpTriggerIn()
    print("[MainId: 74018][Trigger: Q7401821Trigger] LightUpTriggerIn")
end

function Q7401821Trigger:TriggerOut()
    print("[MainId: 74018][Trigger: Q7401821Trigger] TriggerOut")
end

return Q7401821Trigger
