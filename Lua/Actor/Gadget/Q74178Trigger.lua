require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74178Trigger = class("Q74178Trigger", GadgetActorProxy)
Q74178Trigger.defaultAlias = "Q74178Trigger"
local Q74178ClientConfig = require("Quest/Client/Q74178ClientConfig")

local this
local subIDs = Q74178ClientConfig.SubIDs
local npcs = Q74178ClientConfig.Npcs
local datas = Q74178ClientConfig.Datas

function Q74178Trigger:OnPostDataPrepare()
    print("[MainId: 74178][Trigger: Q74178Trigger] OnPostDataPrepare")
    this = self
end

function Q74178Trigger:OnPostComponentPrepare()
    print("[MainId: 74178][Trigger: Q74178Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74178Trigger:TriggerIn()
    print("[MainId: 74178][Trigger: Q74178Trigger] TriggerIn")
    actorMgr:GetActor("74178"):RequestInteraction(npcs.Npc21274Data.alias, "", true)
    this:DestroySelf()
end

function Q74178Trigger:PreTriggerIn()
    print("[MainId: 74178][Trigger: Q74178Trigger] PreTriggerIn")
end

function Q74178Trigger:LightUpTriggerIn()
    print("[MainId: 74178][Trigger: Q74178Trigger] LightUpTriggerIn")
end

function Q74178Trigger:TriggerOut()
    print("[MainId: 74178][Trigger: Q74178Trigger] TriggerOut")
end

return Q74178Trigger
