require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74120Trigger = class("Q74120Trigger", GadgetActorProxy)
Q74120Trigger.defaultAlias = "Q74120Trigger"
local Q74120ClientConfig = require("Quest/Client/Q74120ClientConfig")

local this
local subIDs = Q74120ClientConfig.SubIDs
local npcs = Q74120ClientConfig.Npcs
local points = Q74120ClientConfig.Points

function Q74120Trigger:OnPostDataPrepare()
    print("[MainId: 74120][Trigger: Q74120Trigger] OnPostDataPrepare")
    this = self
end

function Q74120Trigger:OnPostComponentPrepare()
    print("[MainId: 74120][Trigger: Q74120Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74120Trigger:TriggerIn()
    print("[MainId: 74120][Trigger: Q74120Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7412002)
    this:DestroySelf()
end

function Q74120Trigger:PreTriggerIn()
    print("[MainId: 74120][Trigger: Q74120Trigger] PreTriggerIn")
end

function Q74120Trigger:LightUpTriggerIn()
    print("[MainId: 74120][Trigger: Q74120Trigger] LightUpTriggerIn")
end

function Q74120Trigger:TriggerOut()
    print("[MainId: 74120][Trigger: Q74120Trigger] TriggerOut")
end

return Q74120Trigger
