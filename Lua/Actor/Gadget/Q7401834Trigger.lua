require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7401834Trigger = class("Q7401834Trigger", GadgetActorProxy)
Q7401834Trigger.defaultAlias = "Q7401834Trigger"
local Q74018ClientConfig = require("Quest/Client/Q74018ClientConfig")

local this
local subIDs = Q74018ClientConfig.SubIDs
local npcs = Q74018ClientConfig.Npcs
local points = Q74018ClientConfig.Points

function Q7401834Trigger:OnPostDataPrepare()
    print("[MainId: 74018][Trigger: Q7401834Trigger] OnPostDataPrepare")
    this = self
end

function Q7401834Trigger:OnPostComponentPrepare()
    print("[MainId: 74018][Trigger: Q7401834Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(31.45788, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7401834Trigger:TriggerIn()
    print("[MainId: 74018][Trigger: Q7401834Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7401834Trigger:PreTriggerIn()
    print("[MainId: 74018][Trigger: Q7401834Trigger] PreTriggerIn")
end

function Q7401834Trigger:LightUpTriggerIn()
    print("[MainId: 74018][Trigger: Q7401834Trigger] LightUpTriggerIn")
end

function Q7401834Trigger:TriggerOut()
    print("[MainId: 74018][Trigger: Q7401834Trigger] TriggerOut")
end

return Q7401834Trigger
