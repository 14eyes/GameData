require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918301Trigger = class("Q1918301Trigger", GadgetActorProxy)
Q1918301Trigger.defaultAlias = "Q1918301Trigger"
local Q19183ClientConfig = require("Quest/Client/Q19183ClientConfig")

local this
local subIDs = Q19183ClientConfig.SubIDs
local npcs = Q19183ClientConfig.Npcs
local points = Q19183ClientConfig.Points

function Q1918301Trigger:OnPostDataPrepare()
    print("[MainId: 19183][Trigger: Q1918301Trigger] OnPostDataPrepare")
    this = self
end

function Q1918301Trigger:OnPostComponentPrepare()
    print("[MainId: 19183][Trigger: Q1918301Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1918301Trigger:TriggerIn()
    print("[MainId: 19183][Trigger: Q1918301Trigger] TriggerIn")
    actorMgr:GetActor("19183"):RequestInteraction(npcs.Npc13934Data.alias, "", true)
    this:DestroySelf()
end

function Q1918301Trigger:PreTriggerIn()
    print("[MainId: 19183][Trigger: Q1918301Trigger] PreTriggerIn")
end

function Q1918301Trigger:LightUpTriggerIn()
    print("[MainId: 19183][Trigger: Q1918301Trigger] LightUpTriggerIn")
end

function Q1918301Trigger:TriggerOut()
    print("[MainId: 19183][Trigger: Q1918301Trigger] TriggerOut")
end

return Q1918301Trigger
