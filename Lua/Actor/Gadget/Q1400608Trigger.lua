require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1400608Trigger = class("Q1400608Trigger", GadgetActorProxy)
Q1400608Trigger.defaultAlias = "Q1400608Trigger"
local Q14006ClientConfig = require("Quest/Client/Q14006ClientConfig")

local this
local subIDs = Q14006ClientConfig.SubIDs
local npcs = Q14006ClientConfig.Npcs
local points = Q14006ClientConfig.Points
local datas = Q14006ClientConfig.Datas

function Q1400608Trigger:OnPostDataPrepare()
    print("[MainId: 14006][Trigger: Q1400608Trigger] OnPostDataPrepare")
    this = self
end

function Q1400608Trigger:OnPostComponentPrepare()
    print("[MainId: 14006][Trigger: Q1400608Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(18.95759, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1400608Trigger:TriggerIn()
    print("[MainId: 14006][Trigger: Q1400608Trigger] TriggerIn")
    actorMgr:GetActor("14006"):NarratorOnlyTaskByData(datas.Narrator_1400602, function(arg1)
        actorUtils.FinishQuestID(false, 1400608)
    end, 14006)

    this:DestroySelf()
end

function Q1400608Trigger:PreTriggerIn()
    print("[MainId: 14006][Trigger: Q1400608Trigger] PreTriggerIn")
end

function Q1400608Trigger:LightUpTriggerIn()
    print("[MainId: 14006][Trigger: Q1400608Trigger] LightUpTriggerIn")
end

function Q1400608Trigger:TriggerOut()
    print("[MainId: 14006][Trigger: Q1400608Trigger] TriggerOut")
end

return Q1400608Trigger
