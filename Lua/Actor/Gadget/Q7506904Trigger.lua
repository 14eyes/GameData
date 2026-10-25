require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7506904Trigger = class("Q7506904Trigger", GadgetActorProxy)
Q7506904Trigger.defaultAlias = "Q7506904Trigger"
local Q75069ClientConfig = require("Quest/Client/Q75069ClientConfig")

local this
local subIDs = Q75069ClientConfig.SubIDs
local npcs = Q75069ClientConfig.Npcs
local points = Q75069ClientConfig.Points

function Q7506904Trigger:OnPostDataPrepare()
    print("[MainId: 75069][Trigger: Q7506904Trigger] OnPostDataPrepare")
    this = self
end

function Q7506904Trigger:OnPostComponentPrepare()
    print("[MainId: 75069][Trigger: Q7506904Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75069)
end

function Q7506904Trigger:TriggerIn()
    print("[MainId: 75069][Trigger: Q7506904Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7506904)
    this:DestroySelf()
end

function Q7506904Trigger:PreTriggerIn()
    print("[MainId: 75069][Trigger: Q7506904Trigger] PreTriggerIn")
end

function Q7506904Trigger:LightUpTriggerIn()
    print("[MainId: 75069][Trigger: Q7506904Trigger] LightUpTriggerIn")
end

function Q7506904Trigger:TriggerOut()
    print("[MainId: 75069][Trigger: Q7506904Trigger] TriggerOut")
end

return Q7506904Trigger
