require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74037Trigger = class("Q74037Trigger", GadgetActorProxy)
Q74037Trigger.defaultAlias = "Q74037Trigger"
local Q74037ClientConfig = require("Quest/Client/Q74037ClientConfig")

local this
local subIDs = Q74037ClientConfig.SubIDs
local npcs = Q74037ClientConfig.Npcs
local points = Q74037ClientConfig.Points

function Q74037Trigger:OnPostDataPrepare()
    print("[MainId: 74037][Trigger: Q74037Trigger] OnPostDataPrepare")
    this = self
end

function Q74037Trigger:OnPostComponentPrepare()
    print("[MainId: 74037][Trigger: Q74037Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74037Trigger:TriggerIn()
    print("[MainId: 74037][Trigger: Q74037Trigger] TriggerIn")
    actorMgr:GetActor("74037"):RequestInteraction(npcs.Npc5033Data.alias)
    this:DestroySelf()
end

function Q74037Trigger:PreTriggerIn()
    print("[MainId: 74037][Trigger: Q74037Trigger] PreTriggerIn")
end

function Q74037Trigger:LightUpTriggerIn()
    print("[MainId: 74037][Trigger: Q74037Trigger] LightUpTriggerIn")
end

function Q74037Trigger:TriggerOut()
    print("[MainId: 74037][Trigger: Q74037Trigger] TriggerOut")
end

return Q74037Trigger
