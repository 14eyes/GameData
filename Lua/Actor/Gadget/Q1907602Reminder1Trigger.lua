require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1907602Reminder1Trigger = class("Q1907602Reminder1Trigger", GadgetActorProxy)
Q1907602Reminder1Trigger.defaultAlias = "Q1907602Reminder1Trigger"
local Q19076ClientConfig = require("Quest/Client/Q19076ClientConfig")

local this
local subIDs = Q19076ClientConfig.SubIDs
local npcs = Q19076ClientConfig.Npcs
local datas = Q19076ClientConfig.Datas

function Q1907602Reminder1Trigger:OnPostDataPrepare()
    print("[MainId: 19076][Trigger: Q1907602Reminder1Trigger] OnPostDataPrepare")
    this = self
end

function Q1907602Reminder1Trigger:OnPostComponentPrepare()
    print("[MainId: 19076][Trigger: Q1907602Reminder1Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(2.268876, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1907602Reminder1Trigger:TriggerIn()
    print("[MainId: 19076][Trigger: Q1907602Reminder1Trigger] TriggerIn")
    actorMgr:GetActor("19076"):NarratorOnlyTaskByData(datas.Narrator_1907601, function(arg1)
        this:DestroySelf()
    end)
end

function Q1907602Reminder1Trigger:PreTriggerIn()
    print("[MainId: 19076][Trigger: Q1907602Reminder1Trigger] PreTriggerIn")
end

function Q1907602Reminder1Trigger:LightUpTriggerIn()
    print("[MainId: 19076][Trigger: Q1907602Reminder1Trigger] LightUpTriggerIn")
end

function Q1907602Reminder1Trigger:TriggerOut()
    print("[MainId: 19076][Trigger: Q1907602Reminder1Trigger] TriggerOut")
end

return Q1907602Reminder1Trigger
