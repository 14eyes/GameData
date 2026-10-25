require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918002Trigger = class("Q1918002Trigger", GadgetActorProxy)
Q1918002Trigger.defaultAlias = "Q1918002Trigger"
local Q19180ClientConfig = require("Quest/Client/Q19180ClientConfig")

local this
local subIDs = Q19180ClientConfig.SubIDs
local npcs = Q19180ClientConfig.Npcs
local points = Q19180ClientConfig.Points

function Q1918002Trigger:OnPostDataPrepare()
    print("[MainId: 19180][Trigger: Q1918002Trigger] OnPostDataPrepare")
    this = self
end

function Q1918002Trigger:OnPostComponentPrepare()
    print("[MainId: 19180][Trigger: Q1918002Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1918002Trigger:TriggerIn()
    print("[MainId: 19180][Trigger: Q1918002Trigger] TriggerIn")
    actorMgr:GetActor("19180"):RequestInteraction(npcs.Npc518Data.alias, "", true)
    this:DestroySelf()
end

function Q1918002Trigger:PreTriggerIn()
    print("[MainId: 19180][Trigger: Q1918002Trigger] PreTriggerIn")
end

function Q1918002Trigger:LightUpTriggerIn()
    print("[MainId: 19180][Trigger: Q1918002Trigger] LightUpTriggerIn")
end

function Q1918002Trigger:TriggerOut()
    print("[MainId: 19180][Trigger: Q1918002Trigger] TriggerOut")
end

return Q1918002Trigger
