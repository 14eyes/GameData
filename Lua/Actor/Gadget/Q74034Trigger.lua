require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74034Trigger = class("Q74034Trigger", GadgetActorProxy)
Q74034Trigger.defaultAlias = "Q74034Trigger"
local Q74034ClientConfig = require("Quest/Client/Q74034ClientConfig")

local this
local subIDs = Q74034ClientConfig.SubIDs
local npcs = Q74034ClientConfig.Npcs
local points = Q74034ClientConfig.Points
local datas = Q74034ClientConfig.Datas

function Q74034Trigger:OnPostDataPrepare()
    print("[MainId: 74034][Trigger: Q74034Trigger] OnPostDataPrepare")
    this = self
end

function Q74034Trigger:OnPostComponentPrepare()
    print("[MainId: 74034][Trigger: Q74034Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74034Trigger:TriggerIn()
    print("[MainId: 74034][Trigger: Q74034Trigger] TriggerIn")
    actorMgr:GetActor("74034"):RequestInteraction(npcs.Npc13350Data.alias)
    this:DestroySelf()
end

function Q74034Trigger:PreTriggerIn()
    print("[MainId: 74034][Trigger: Q74034Trigger] PreTriggerIn")
end

function Q74034Trigger:LightUpTriggerIn()
    print("[MainId: 74034][Trigger: Q74034Trigger] LightUpTriggerIn")
end

function Q74034Trigger:TriggerOut()
    print("[MainId: 74034][Trigger: Q74034Trigger] TriggerOut")
end

return Q74034Trigger
