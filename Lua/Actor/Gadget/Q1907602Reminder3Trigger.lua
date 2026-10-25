require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1907602Reminder3Trigger = class("Q1907602Reminder3Trigger", GadgetActorProxy)
Q1907602Reminder3Trigger.defaultAlias = "Q1907602Reminder3Trigger"
local Q19076ClientConfig = require("Quest/Client/Q19076ClientConfig")

local this
local subIDs = Q19076ClientConfig.SubIDs
local npcs = Q19076ClientConfig.Npcs
local datas = Q19076ClientConfig.Datas

function Q1907602Reminder3Trigger:OnPostDataPrepare()
    print("[MainId: 19076][Trigger: Q1907602Reminder3Trigger] OnPostDataPrepare")
    this = self
end

function Q1907602Reminder3Trigger:OnPostComponentPrepare()
    print("[MainId: 19076][Trigger: Q1907602Reminder3Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(3.198963, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1907602Reminder3Trigger:TriggerIn()
    print("[MainId: 19076][Trigger: Q1907602Reminder3Trigger] TriggerIn")
    actorMgr:GetActor("19076"):NarratorOnlyTaskByData(nil, function(arg1)
        actorUtils.FinishQuestID(false, 1907602)
        this:DestroySelf()
    end)
end

function Q1907602Reminder3Trigger:PreTriggerIn()
    print("[MainId: 19076][Trigger: Q1907602Reminder3Trigger] PreTriggerIn")
end

function Q1907602Reminder3Trigger:LightUpTriggerIn()
    print("[MainId: 19076][Trigger: Q1907602Reminder3Trigger] LightUpTriggerIn")
end

function Q1907602Reminder3Trigger:TriggerOut()
    print("[MainId: 19076][Trigger: Q1907602Reminder3Trigger] TriggerOut")
end

return Q1907602Reminder3Trigger
