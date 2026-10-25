require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110386Trigger = class("Q7110386Trigger", GadgetActorProxy)
Q7110386Trigger.defaultAlias = "Q7110386Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110386Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110386Trigger] OnPostDataPrepare")
    this = self
end

function Q7110386Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110386Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110386Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110386Trigger] TriggerIn")
    actorMgr:GetActor("71103"):NarratorOnlyTaskByData(datas.C7110386)
    this:DestroySelf()
end

function Q7110386Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110386Trigger] PreTriggerIn")
end

function Q7110386Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110386Trigger] LightUpTriggerIn")
end

function Q7110386Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110386Trigger] TriggerOut")
end

return Q7110386Trigger
