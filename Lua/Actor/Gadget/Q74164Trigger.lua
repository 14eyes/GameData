require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74164Trigger = class("Q74164Trigger", GadgetActorProxy)
Q74164Trigger.defaultAlias = "Q74164Trigger"
local Q74164ClientConfig = require("Quest/Client/Q74164ClientConfig")

local this
local subIDs = Q74164ClientConfig.SubIDs
local npcs = Q74164ClientConfig.Npcs
local datas = Q74164ClientConfig.Datas

function Q74164Trigger:OnPostDataPrepare()
    print("[MainId: 74164][Trigger: Q74164Trigger] OnPostDataPrepare")
    this = self
end

function Q74164Trigger:OnPostComponentPrepare()
    print("[MainId: 74164][Trigger: Q74164Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74164Trigger:TriggerIn()
    print("[MainId: 74164][Trigger: Q74164Trigger] TriggerIn")
    actorMgr:GetActor("74164"):RequestInteraction(npcs.Npc5290Data.alias, "", true)
    this:DestroySelf()
end

function Q74164Trigger:PreTriggerIn()
    print("[MainId: 74164][Trigger: Q74164Trigger] PreTriggerIn")
end

function Q74164Trigger:LightUpTriggerIn()
    print("[MainId: 74164][Trigger: Q74164Trigger] LightUpTriggerIn")
end

function Q74164Trigger:TriggerOut()
    print("[MainId: 74164][Trigger: Q74164Trigger] TriggerOut")
end

return Q74164Trigger
