require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1401206Trigger = class("Q1401206Trigger", GadgetActorProxy)
Q1401206Trigger.defaultAlias = "Q1401206Trigger"
local Q14012ClientConfig = require("Quest/Client/Q14012ClientConfig")

local this
local subIDs = Q14012ClientConfig.SubIDs
local npcs = Q14012ClientConfig.Npcs
local points = Q14012ClientConfig.Points
local datas = Q14012ClientConfig.Datas

function Q1401206Trigger:OnPostDataPrepare()
    print("[MainId: 14012][Trigger: Q1401206Trigger] OnPostDataPrepare")
    this = self
end

function Q1401206Trigger:OnPostComponentPrepare()
    print("[MainId: 14012][Trigger: Q1401206Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(16, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14012)
end

function Q1401206Trigger:TriggerIn()
    print("[MainId: 14012][Trigger: Q1401206Trigger] TriggerIn")
    local actor = actorMgr:GetActor("14012")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId1401206)
    actor:EnterSceneLookCamera(points.TPos_Q1401206Trigger.pos, 0, 5, true, false)
    actor:EnablePlayerInputByQuest(false)
    actor:CallDelayByQuest("1401206", 5, function(arg1)
        actorMgr:GetActor("14012"):EnablePlayerInputByQuest(true)
        this:DestroySelf()
    end)
end

function Q1401206Trigger:PreTriggerIn()
    print("[MainId: 14012][Trigger: Q1401206Trigger] PreTriggerIn")
end

function Q1401206Trigger:LightUpTriggerIn()
    print("[MainId: 14012][Trigger: Q1401206Trigger] LightUpTriggerIn")
end

function Q1401206Trigger:TriggerOut()
    print("[MainId: 14012][Trigger: Q1401206Trigger] TriggerOut")
end

return Q1401206Trigger
