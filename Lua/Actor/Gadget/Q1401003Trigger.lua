require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401003Trigger = class("Q1401003Trigger", GadgetActorProxy)
Q1401003Trigger.defaultAlias = "Q1401003Trigger"
local Q14010ClientConfig = require("Quest/Client/Q14010ClientConfig")

local this
local subIDs = Q14010ClientConfig.SubIDs
local npcs = Q14010ClientConfig.Npcs
local points = Q14010ClientConfig.Points
local datas = Q14010ClientConfig.Datas

function Q1401003Trigger:OnPostDataPrepare()
    print("[MainId: 14010][Trigger: Q1401003Trigger] OnPostDataPrepare")
    this = self
end

function Q1401003Trigger:OnPostComponentPrepare()
    print("[MainId: 14010][Trigger: Q1401003Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14010)
end

function Q1401003Trigger:TriggerIn()
    print("[MainId: 14010][Trigger: Q1401003Trigger] TriggerIn")
    actorMgr:GetActor("14010"):NarratorOnlyTaskByData(datas.NarratorWithId1401003)
    this:DestroySelf()
end

function Q1401003Trigger:PreTriggerIn()
    print("[MainId: 14010][Trigger: Q1401003Trigger] PreTriggerIn")
end

function Q1401003Trigger:LightUpTriggerIn()
    print("[MainId: 14010][Trigger: Q1401003Trigger] LightUpTriggerIn")
end

function Q1401003Trigger:TriggerOut()
    print("[MainId: 14010][Trigger: Q1401003Trigger] TriggerOut")
end

return Q1401003Trigger
