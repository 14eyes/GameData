require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110344Trigger = class("Q7110344Trigger", GadgetActorProxy)
Q7110344Trigger.defaultAlias = "Q7110344Trigger"
local Q71103ClientConfig = require("Quest/Client/Q71103ClientConfig")

local this
local subIDs = Q71103ClientConfig.SubIDs
local npcs = Q71103ClientConfig.Npcs
local points = Q71103ClientConfig.Points
local datas = Q71103ClientConfig.Datas

function Q7110344Trigger:OnPostDataPrepare()
    print("[MainId: 71103][Trigger: Q7110344Trigger] OnPostDataPrepare")
    this = self
end

function Q7110344Trigger:OnPostComponentPrepare()
    print("[MainId: 71103][Trigger: Q7110344Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110344Trigger:TriggerIn()
    print("[MainId: 71103][Trigger: Q7110344Trigger] TriggerIn")
    actorMgr:GetActor("71103"):NarratorOnlyTaskByData(datas.C7110344)
    this:DestroySelf()
end

function Q7110344Trigger:PreTriggerIn()
    print("[MainId: 71103][Trigger: Q7110344Trigger] PreTriggerIn")
end

function Q7110344Trigger:LightUpTriggerIn()
    print("[MainId: 71103][Trigger: Q7110344Trigger] LightUpTriggerIn")
end

function Q7110344Trigger:TriggerOut()
    print("[MainId: 71103][Trigger: Q7110344Trigger] TriggerOut")
end

return Q7110344Trigger
