require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102901_NarratorTrigger = class("Q1102901_NarratorTrigger", GadgetActorProxy)
Q1102901_NarratorTrigger.defaultAlias = "Q1102901_NarratorTrigger"
local Q11029ClientConfig = require("Quest/Client/Q11029ClientConfig")

local this
local subIDs = Q11029ClientConfig.SubIDs
local npcs = Q11029ClientConfig.Npcs
local points = Q11029ClientConfig.Points
local datas = Q11029ClientConfig.Datas

function Q1102901_NarratorTrigger:OnPostDataPrepare()
    print("[MainId: 11029][Trigger: Q1102901_NarratorTrigger] OnPostDataPrepare")
    this = self
end

function Q1102901_NarratorTrigger:OnPostComponentPrepare()
    print("[MainId: 11029][Trigger: Q1102901_NarratorTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1102901_NarratorTrigger:TriggerIn()
    print("[MainId: 11029][Trigger: Q1102901_NarratorTrigger] TriggerIn")
    actorMgr:GetActor("11029"):NarratorOnlyTaskByData(datas.Narrator_1102901, nil, 11029)
    this:DestroySelf()
end

function Q1102901_NarratorTrigger:PreTriggerIn()
    print("[MainId: 11029][Trigger: Q1102901_NarratorTrigger] PreTriggerIn")
end

function Q1102901_NarratorTrigger:LightUpTriggerIn()
    print("[MainId: 11029][Trigger: Q1102901_NarratorTrigger] LightUpTriggerIn")
end

function Q1102901_NarratorTrigger:TriggerOut()
    print("[MainId: 11029][Trigger: Q1102901_NarratorTrigger] TriggerOut")
end

return Q1102901_NarratorTrigger
