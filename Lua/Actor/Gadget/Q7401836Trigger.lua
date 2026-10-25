require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7401836Trigger = class("Q7401836Trigger", GadgetActorProxy)
Q7401836Trigger.defaultAlias = "Q7401836Trigger"
local Q74018ClientConfig = require("Quest/Client/Q74018ClientConfig")

local this
local subIDs = Q74018ClientConfig.SubIDs
local npcs = Q74018ClientConfig.Npcs
local points = Q74018ClientConfig.Points

function Q7401836Trigger:OnPostDataPrepare()
    print("[MainId: 74018][Trigger: Q7401836Trigger] OnPostDataPrepare")
    this = self
end

function Q7401836Trigger:OnPostComponentPrepare()
    print("[MainId: 74018][Trigger: Q7401836Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(38.81828, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7401836Trigger:TriggerIn()
    print("[MainId: 74018][Trigger: Q7401836Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7401836)
    this:DestroySelf()
end

function Q7401836Trigger:PreTriggerIn()
    print("[MainId: 74018][Trigger: Q7401836Trigger] PreTriggerIn")
end

function Q7401836Trigger:LightUpTriggerIn()
    print("[MainId: 74018][Trigger: Q7401836Trigger] LightUpTriggerIn")
end

function Q7401836Trigger:TriggerOut()
    print("[MainId: 74018][Trigger: Q7401836Trigger] TriggerOut")
end

return Q7401836Trigger
