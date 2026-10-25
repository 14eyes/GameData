require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1400609reminderTrigger = class("Q1400609reminderTrigger", GadgetActorProxy)
Q1400609reminderTrigger.defaultAlias = "Q1400609reminderTrigger"
local Q14006ClientConfig = require("Quest/Client/Q14006ClientConfig")

local this
local subIDs = Q14006ClientConfig.SubIDs
local npcs = Q14006ClientConfig.Npcs
local points = Q14006ClientConfig.Points
local datas = Q14006ClientConfig.Datas

function Q1400609reminderTrigger:OnPostDataPrepare()
    print("[MainId: 14006][Trigger: Q1400609reminderTrigger] OnPostDataPrepare")
    this = self
end

function Q1400609reminderTrigger:OnPostComponentPrepare()
    print("[MainId: 14006][Trigger: Q1400609reminderTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(9.41411, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1400609reminderTrigger:TriggerIn()
    print("[MainId: 14006][Trigger: Q1400609reminderTrigger] TriggerIn")
    actorMgr:GetActor("14006"):NarratorOnlyTaskByData(datas.Narrator_1400603, nil, 14006)
    this:DestroySelf()
end

function Q1400609reminderTrigger:PreTriggerIn()
    print("[MainId: 14006][Trigger: Q1400609reminderTrigger] PreTriggerIn")
end

function Q1400609reminderTrigger:LightUpTriggerIn()
    print("[MainId: 14006][Trigger: Q1400609reminderTrigger] LightUpTriggerIn")
end

function Q1400609reminderTrigger:TriggerOut()
    print("[MainId: 14006][Trigger: Q1400609reminderTrigger] TriggerOut")
end

return Q1400609reminderTrigger
