require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1400113Trigger = class("Q1400113Trigger", GadgetActorProxy)
Q1400113Trigger.defaultAlias = "Q1400113Trigger"
local Q14001ClientConfig = require("Quest/Client/Q14001ClientConfig")

local this
local subIDs = Q14001ClientConfig.SubIDs
local npcs = Q14001ClientConfig.Npcs
local points = Q14001ClientConfig.Points
local datas = Q14001ClientConfig.Datas

function Q1400113Trigger:OnPostDataPrepare()
    print("[MainId: 14001][Trigger: Q1400113Trigger] OnPostDataPrepare")
    this = self
end

function Q1400113Trigger:OnPostComponentPrepare()
    print("[MainId: 14001][Trigger: Q1400113Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(22, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1400113Trigger:TriggerIn()
    print("[MainId: 14001][Trigger: Q1400113Trigger] TriggerIn")
    actorMgr:GetActor("14001"):NarratorOnlyTaskByData(datas.NarratorWithId03, nil, 14001)
    this:DestroySelf()
end

function Q1400113Trigger:PreTriggerIn()
    print("[MainId: 14001][Trigger: Q1400113Trigger] PreTriggerIn")
end

function Q1400113Trigger:LightUpTriggerIn()
    print("[MainId: 14001][Trigger: Q1400113Trigger] LightUpTriggerIn")
end

function Q1400113Trigger:TriggerOut()
    print("[MainId: 14001][Trigger: Q1400113Trigger] TriggerOut")
end

return Q1400113Trigger
