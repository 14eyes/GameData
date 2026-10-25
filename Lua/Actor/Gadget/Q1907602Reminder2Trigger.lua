require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1907602Reminder2Trigger = class("Q1907602Reminder2Trigger", GadgetActorProxy)
Q1907602Reminder2Trigger.defaultAlias = "Q1907602Reminder2Trigger"
local Q19076ClientConfig = require("Quest/Client/Q19076ClientConfig")

local this
local subIDs = Q19076ClientConfig.SubIDs
local npcs = Q19076ClientConfig.Npcs
local datas = Q19076ClientConfig.Datas

function Q1907602Reminder2Trigger:OnPostDataPrepare()
    print("[MainId: 19076][Trigger: Q1907602Reminder2Trigger] OnPostDataPrepare")
    this = self
end

function Q1907602Reminder2Trigger:OnPostComponentPrepare()
    print("[MainId: 19076][Trigger: Q1907602Reminder2Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(2.485992, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1907602Reminder2Trigger:TriggerIn()
    print("[MainId: 19076][Trigger: Q1907602Reminder2Trigger] TriggerIn")
    this:DestroySelf()
end

function Q1907602Reminder2Trigger:PreTriggerIn()
    print("[MainId: 19076][Trigger: Q1907602Reminder2Trigger] PreTriggerIn")
end

function Q1907602Reminder2Trigger:LightUpTriggerIn()
    print("[MainId: 19076][Trigger: Q1907602Reminder2Trigger] LightUpTriggerIn")
end

function Q1907602Reminder2Trigger:TriggerOut()
    print("[MainId: 19076][Trigger: Q1907602Reminder2Trigger] TriggerOut")
end

return Q1907602Reminder2Trigger
