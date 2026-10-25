require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401106Trigger = class("Q401106Trigger", GadgetActorProxy)
Q401106Trigger.defaultAlias = "Q401106Trigger"
local Q4011ClientConfig = require("Quest/Client/Q4011ClientConfig")

local this
local subIDs = Q4011ClientConfig.SubIDs
local npcs = Q4011ClientConfig.Npcs
local points = Q4011ClientConfig.Points
local datas = Q4011ClientConfig.Datas

function Q401106Trigger:OnPostDataPrepare()
    print("[MainId: 4011][Trigger: Q401106Trigger] OnPostDataPrepare")
    this = self
end

function Q401106Trigger:OnPostComponentPrepare()
    print("[MainId: 4011][Trigger: Q401106Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401106Trigger:TriggerIn()
    print("[MainId: 4011][Trigger: Q401106Trigger] TriggerIn")
    actorMgr:GetActor("4011"):RequestInteraction(npcs.Npc1076Data.alias, "", true)
    this:DestroySelf()
end

function Q401106Trigger:PreTriggerIn()
    print("[MainId: 4011][Trigger: Q401106Trigger] PreTriggerIn")
end

function Q401106Trigger:LightUpTriggerIn()
    print("[MainId: 4011][Trigger: Q401106Trigger] LightUpTriggerIn")
end

function Q401106Trigger:TriggerOut()
    print("[MainId: 4011][Trigger: Q401106Trigger] TriggerOut")
end

return Q401106Trigger
