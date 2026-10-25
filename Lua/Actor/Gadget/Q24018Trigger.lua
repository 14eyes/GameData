require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q24018Trigger = class("Q24018Trigger", GadgetActorProxy)
Q24018Trigger.defaultAlias = "Q24018Trigger"
local Q24018ClientConfig = require("Quest/Client/Q24018ClientConfig")

local this
local subIDs = Q24018ClientConfig.SubIDs
local npcs = Q24018ClientConfig.Npcs

function Q24018Trigger:OnPostDataPrepare()
    print("[MainId: 24018][Trigger: Q24018Trigger] OnPostDataPrepare")
    this = self
end

function Q24018Trigger:OnPostComponentPrepare()
    print("[MainId: 24018][Trigger: Q24018Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q24018Trigger:TriggerIn()
    print("[MainId: 24018][Trigger: Q24018Trigger] TriggerIn")
    actorMgr:GetActor("24018"):RequestInteraction(npcs.Npc5085Data.alias)
    this:DestroySelf()
end

function Q24018Trigger:PreTriggerIn()
    print("[MainId: 24018][Trigger: Q24018Trigger] PreTriggerIn")
end

function Q24018Trigger:LightUpTriggerIn()
    print("[MainId: 24018][Trigger: Q24018Trigger] LightUpTriggerIn")
end

function Q24018Trigger:TriggerOut()
    print("[MainId: 24018][Trigger: Q24018Trigger] TriggerOut")
end

return Q24018Trigger
