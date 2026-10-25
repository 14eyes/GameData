require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401810Trigger = class("Q401810Trigger", GadgetActorProxy)
Q401810Trigger.defaultAlias = "Q401810Trigger"
local Q4018ClientConfig = require("Quest/Client/Q4018ClientConfig")

local this
local subIDs = Q4018ClientConfig.SubIDs
local npcs = Q4018ClientConfig.Npcs
local points = Q4018ClientConfig.Points
local datas = Q4018ClientConfig.Datas

function Q401810Trigger:OnPostDataPrepare()
    print("[MainId: 4018][Trigger: Q401810Trigger] OnPostDataPrepare")
    this = self
end

function Q401810Trigger:OnPostComponentPrepare()
    print("[MainId: 4018][Trigger: Q401810Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401810Trigger:TriggerIn()
    print("[MainId: 4018][Trigger: Q401810Trigger] TriggerIn")
    actorMgr:GetActor("4018"):RequestInteraction(npcs.Npc13512Data.alias, "", true)
    this:DestroySelf()
end

function Q401810Trigger:PreTriggerIn()
    print("[MainId: 4018][Trigger: Q401810Trigger] PreTriggerIn")
end

function Q401810Trigger:LightUpTriggerIn()
    print("[MainId: 4018][Trigger: Q401810Trigger] LightUpTriggerIn")
end

function Q401810Trigger:TriggerOut()
    print("[MainId: 4018][Trigger: Q401810Trigger] TriggerOut")
end

return Q401810Trigger
