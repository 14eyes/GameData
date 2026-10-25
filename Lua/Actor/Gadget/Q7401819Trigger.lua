require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7401819Trigger = class("Q7401819Trigger", GadgetActorProxy)
Q7401819Trigger.defaultAlias = "Q7401819Trigger"
local Q74018ClientConfig = require("Quest/Client/Q74018ClientConfig")

local this
local subIDs = Q74018ClientConfig.SubIDs
local npcs = Q74018ClientConfig.Npcs
local points = Q74018ClientConfig.Points

function Q7401819Trigger:OnPostDataPrepare()
    print("[MainId: 74018][Trigger: Q7401819Trigger] OnPostDataPrepare")
    this = self
end

function Q7401819Trigger:OnPostComponentPrepare()
    print("[MainId: 74018][Trigger: Q7401819Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7401819Trigger:TriggerIn()
    print("[MainId: 74018][Trigger: Q7401819Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7401819Trigger:PreTriggerIn()
    print("[MainId: 74018][Trigger: Q7401819Trigger] PreTriggerIn")
end

function Q7401819Trigger:LightUpTriggerIn()
    print("[MainId: 74018][Trigger: Q7401819Trigger] LightUpTriggerIn")
end

function Q7401819Trigger:TriggerOut()
    print("[MainId: 74018][Trigger: Q7401819Trigger] TriggerOut")
end

return Q7401819Trigger
