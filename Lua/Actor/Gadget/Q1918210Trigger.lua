require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918210Trigger = class("Q1918210Trigger", GadgetActorProxy)
Q1918210Trigger.defaultAlias = "Q1918210Trigger"
local Q19182ClientConfig = require("Quest/Client/Q19182ClientConfig")

local this
local subIDs = Q19182ClientConfig.SubIDs
local npcs = Q19182ClientConfig.Npcs
local points = Q19182ClientConfig.Points

function Q1918210Trigger:OnPostDataPrepare()
    print("[MainId: 19182][Trigger: Q1918210Trigger] OnPostDataPrepare")
    this = self
end

function Q1918210Trigger:OnPostComponentPrepare()
    print("[MainId: 19182][Trigger: Q1918210Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(13, 8, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19182)
end

function Q1918210Trigger:TriggerIn()
    print("[MainId: 19182][Trigger: Q1918210Trigger] TriggerIn")
    actorMgr:GetActor("19182"):RequestInteraction(npcs.Npc13980Data.alias, "", true)
    this:DestroySelf()
end

function Q1918210Trigger:PreTriggerIn()
    print("[MainId: 19182][Trigger: Q1918210Trigger] PreTriggerIn")
end

function Q1918210Trigger:LightUpTriggerIn()
    print("[MainId: 19182][Trigger: Q1918210Trigger] LightUpTriggerIn")
end

function Q1918210Trigger:TriggerOut()
    print("[MainId: 19182][Trigger: Q1918210Trigger] TriggerOut")
end

return Q1918210Trigger
