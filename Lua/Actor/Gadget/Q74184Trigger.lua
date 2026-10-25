require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74184Trigger = class("Q74184Trigger", GadgetActorProxy)
Q74184Trigger.defaultAlias = "Q74184Trigger"
local Q74184ClientConfig = require("Quest/Client/Q74184ClientConfig")

local this
local subIDs = Q74184ClientConfig.SubIDs
local npcs = Q74184ClientConfig.Npcs
local points = Q74184ClientConfig.Points
local datas = Q74184ClientConfig.Datas

function Q74184Trigger:OnPostDataPrepare()
    print("[MainId: 74184][Trigger: Q74184Trigger] OnPostDataPrepare")
    this = self
end

function Q74184Trigger:OnPostComponentPrepare()
    print("[MainId: 74184][Trigger: Q74184Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74184Trigger:TriggerIn()
    print("[MainId: 74184][Trigger: Q74184Trigger] TriggerIn")
    actorUtils:HandleQuestLoadingCtxOpForLua("7418407", 1)
    this:DestroySelf()
end

function Q74184Trigger:PreTriggerIn()
    print("[MainId: 74184][Trigger: Q74184Trigger] PreTriggerIn")
    actorMgr:GetActor("74184"):CreateQuestNpcById(7418408, npcs.Npc21338Data.id, 0)
end

function Q74184Trigger:LightUpTriggerIn()
    print("[MainId: 74184][Trigger: Q74184Trigger] LightUpTriggerIn")
    actorMgr:GetActor("74184"):RequestInteraction(npcs.Npc21338Data.alias, "", true)
end

function Q74184Trigger:TriggerOut()
    print("[MainId: 74184][Trigger: Q74184Trigger] TriggerOut")
end

return Q74184Trigger
