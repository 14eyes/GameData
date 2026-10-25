require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110504Trigger = class("Q7110504Trigger", GadgetActorProxy)
Q7110504Trigger.defaultAlias = "Q7110504Trigger"
local Q71105ClientConfig = require("Quest/Client/Q71105ClientConfig")

local this
local subIDs = Q71105ClientConfig.SubIDs
local npcs = Q71105ClientConfig.Npcs
local points = Q71105ClientConfig.Points
local datas = Q71105ClientConfig.Datas

function Q7110504Trigger:OnPostDataPrepare()
    print("[MainId: 71105][Trigger: Q7110504Trigger] OnPostDataPrepare")
    this = self
end

function Q7110504Trigger:OnPostComponentPrepare()
    print("[MainId: 71105][Trigger: Q7110504Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110504Trigger:TriggerIn()
    print("[MainId: 71105][Trigger: Q7110504Trigger] TriggerIn")
    local actor = actorMgr:GetActor("71105")
    actorUtils.FinishQuestID(false, 7110504)
    actor:QuestNarratorTask(datas.Narrator_7110504)
    this:DestroySelf()
end

function Q7110504Trigger:PreTriggerIn()
    print("[MainId: 71105][Trigger: Q7110504Trigger] PreTriggerIn")
end

function Q7110504Trigger:LightUpTriggerIn()
    print("[MainId: 71105][Trigger: Q7110504Trigger] LightUpTriggerIn")
end

function Q7110504Trigger:TriggerOut()
    print("[MainId: 71105][Trigger: Q7110504Trigger] TriggerOut")
end

return Q7110504Trigger
