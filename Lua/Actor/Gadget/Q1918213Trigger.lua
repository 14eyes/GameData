require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918213Trigger = class("Q1918213Trigger", GadgetActorProxy)
Q1918213Trigger.defaultAlias = "Q1918213Trigger"
local Q19182ClientConfig = require("Quest/Client/Q19182ClientConfig")

local this
local subIDs = Q19182ClientConfig.SubIDs
local npcs = Q19182ClientConfig.Npcs
local points = Q19182ClientConfig.Points

function Q1918213Trigger:OnPostDataPrepare()
    print("[MainId: 19182][Trigger: Q1918213Trigger] OnPostDataPrepare")
    this = self
end

function Q1918213Trigger:OnPostComponentPrepare()
    print("[MainId: 19182][Trigger: Q1918213Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1918213Trigger:TriggerIn()
    print("[MainId: 19182][Trigger: Q1918213Trigger] TriggerIn")
    actorMgr:GetActor("19182"):RequestInteraction(npcs.Npc13933Data.alias, "", true)
    this:DestroySelf()
end

function Q1918213Trigger:PreTriggerIn()
    print("[MainId: 19182][Trigger: Q1918213Trigger] PreTriggerIn")
end

function Q1918213Trigger:LightUpTriggerIn()
    print("[MainId: 19182][Trigger: Q1918213Trigger] LightUpTriggerIn")
end

function Q1918213Trigger:TriggerOut()
    print("[MainId: 19182][Trigger: Q1918213Trigger] TriggerOut")
end

return Q1918213Trigger
