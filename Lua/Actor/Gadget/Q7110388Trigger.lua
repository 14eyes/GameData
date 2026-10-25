require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110388Trigger = class("Q7110388Trigger", GadgetActorProxy)
Q7110388Trigger.defaultAlias = "Q7110388Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110388Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110388Trigger] OnPostDataPrepare")
    this = self
end

function Q7110388Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110388Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110388Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110388Trigger] TriggerIn")
    actorMgr:GetActor("71103"):NarratorOnlyTaskByData(datas.C7110388)
    this:DestroySelf()
end

function Q7110388Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110388Trigger] PreTriggerIn")
end

function Q7110388Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110388Trigger] LightUpTriggerIn")
end

function Q7110388Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110388Trigger] TriggerOut")
end

return Q7110388Trigger
