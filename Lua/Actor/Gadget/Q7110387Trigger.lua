require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110387Trigger = class("Q7110387Trigger", GadgetActorProxy)
Q7110387Trigger.defaultAlias = "Q7110387Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110387Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110387Trigger] OnPostDataPrepare")
    this = self
end

function Q7110387Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110387Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110387Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110387Trigger] TriggerIn")
    actorMgr:GetActor("71103"):NarratorOnlyTaskByData(datas.C7110387)
    this:DestroySelf()
end

function Q7110387Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110387Trigger] PreTriggerIn")
end

function Q7110387Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110387Trigger] LightUpTriggerIn")
end

function Q7110387Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110387Trigger] TriggerOut")
end

return Q7110387Trigger
