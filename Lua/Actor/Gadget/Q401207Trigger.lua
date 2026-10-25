require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401207Trigger = class("Q401207Trigger", GadgetActorProxy)
Q401207Trigger.defaultAlias = "Q401207Trigger"
local Q4012ClientConfig = require("Quest/Client/Q4012ClientConfig")

local this
local subIDs = Q4012ClientConfig.SubIDs
local npcs = Q4012ClientConfig.Npcs
local points = Q4012ClientConfig.Points
local datas = Q4012ClientConfig.Datas

function Q401207Trigger:OnPostDataPrepare()
    print("[MainId: 4012][Trigger: Q401207Trigger] OnPostDataPrepare")
    this = self
end

function Q401207Trigger:OnPostComponentPrepare()
    print("[MainId: 4012][Trigger: Q401207Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401207Trigger:TriggerIn()
    print("[MainId: 4012][Trigger: Q401207Trigger] TriggerIn")
    actorMgr:GetActor("4012"):RequestInteraction(npcs.Npc1079Data.alias, "", true)
    this:DestroySelf()
end

function Q401207Trigger:PreTriggerIn()
    print("[MainId: 4012][Trigger: Q401207Trigger] PreTriggerIn")
end

function Q401207Trigger:LightUpTriggerIn()
    print("[MainId: 4012][Trigger: Q401207Trigger] LightUpTriggerIn")
end

function Q401207Trigger:TriggerOut()
    print("[MainId: 4012][Trigger: Q401207Trigger] TriggerOut")
end

return Q401207Trigger
