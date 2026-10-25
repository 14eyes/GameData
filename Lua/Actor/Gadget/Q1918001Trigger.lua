require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918001Trigger = class("Q1918001Trigger", GadgetActorProxy)
Q1918001Trigger.defaultAlias = "Q1918001Trigger"
local Q19180ClientConfig = require("Quest/Client/Q19180ClientConfig")

local this
local subIDs = Q19180ClientConfig.SubIDs
local npcs = Q19180ClientConfig.Npcs
local points = Q19180ClientConfig.Points

function Q1918001Trigger:OnPostDataPrepare()
    print("[MainId: 19180][Trigger: Q1918001Trigger] OnPostDataPrepare")
    this = self
end

function Q1918001Trigger:OnPostComponentPrepare()
    print("[MainId: 19180][Trigger: Q1918001Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1918001Trigger:TriggerIn()
    print("[MainId: 19180][Trigger: Q1918001Trigger] TriggerIn")
    actorMgr:GetActor("19180"):RequestInteraction(npcs.Npc518Data.alias, "", true)
    this:DestroySelf()
end

function Q1918001Trigger:PreTriggerIn()
    print("[MainId: 19180][Trigger: Q1918001Trigger] PreTriggerIn")
end

function Q1918001Trigger:LightUpTriggerIn()
    print("[MainId: 19180][Trigger: Q1918001Trigger] LightUpTriggerIn")
end

function Q1918001Trigger:TriggerOut()
    print("[MainId: 19180][Trigger: Q1918001Trigger] TriggerOut")
end

return Q1918001Trigger
