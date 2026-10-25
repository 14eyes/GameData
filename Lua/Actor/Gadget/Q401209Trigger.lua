require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401209Trigger = class("Q401209Trigger", GadgetActorProxy)
Q401209Trigger.defaultAlias = "Q401209Trigger"
local Q4012ClientConfig = require("Quest/Client/Q4012ClientConfig")

local this
local subIDs = Q4012ClientConfig.SubIDs
local npcs = Q4012ClientConfig.Npcs
local points = Q4012ClientConfig.Points
local datas = Q4012ClientConfig.Datas

function Q401209Trigger:OnPostDataPrepare()
    print("[MainId: 4012][Trigger: Q401209Trigger] OnPostDataPrepare")
    this = self
end

function Q401209Trigger:OnPostComponentPrepare()
    print("[MainId: 4012][Trigger: Q401209Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401209Trigger:TriggerIn()
    print("[MainId: 4012][Trigger: Q401209Trigger] TriggerIn")
    actorMgr:GetActor("4012"):RequestInteraction(npcs.Npc13548Data.alias, "", true)
    this:DestroySelf()
end

function Q401209Trigger:PreTriggerIn()
    print("[MainId: 4012][Trigger: Q401209Trigger] PreTriggerIn")
end

function Q401209Trigger:LightUpTriggerIn()
    print("[MainId: 4012][Trigger: Q401209Trigger] LightUpTriggerIn")
end

function Q401209Trigger:TriggerOut()
    print("[MainId: 4012][Trigger: Q401209Trigger] TriggerOut")
end

return Q401209Trigger
