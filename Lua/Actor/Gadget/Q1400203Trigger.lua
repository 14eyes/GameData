require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1400203Trigger = class("Q1400203Trigger", GadgetActorProxy)
Q1400203Trigger.defaultAlias = "Q1400203Trigger"
local Q14002ClientConfig = require("Quest/Client/Q14002ClientConfig")

local this
local subIDs = Q14002ClientConfig.SubIDs
local npcs = Q14002ClientConfig.Npcs
local points = Q14002ClientConfig.Points
local datas = Q14002ClientConfig.Datas

function Q1400203Trigger:OnPostDataPrepare()
    print("[MainId: 14002][Trigger: Q1400203Trigger] OnPostDataPrepare")
    this = self
end

function Q1400203Trigger:OnPostComponentPrepare()
    print("[MainId: 14002][Trigger: Q1400203Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1400203Trigger:TriggerIn()
    print("[MainId: 14002][Trigger: Q1400203Trigger] TriggerIn")
    actorMgr:GetActor("14002"):NarratorOnlyTaskByData(datas.Narrator_1400298, function(arg1)
        actorUtils.FinishQuestID(false, 1400203)
    end, 14002)

    this:DestroySelf()
end

function Q1400203Trigger:PreTriggerIn()
    print("[MainId: 14002][Trigger: Q1400203Trigger] PreTriggerIn")
end

function Q1400203Trigger:LightUpTriggerIn()
    print("[MainId: 14002][Trigger: Q1400203Trigger] LightUpTriggerIn")
end

function Q1400203Trigger:TriggerOut()
    print("[MainId: 14002][Trigger: Q1400203Trigger] TriggerOut")
end

return Q1400203Trigger
