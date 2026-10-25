require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102911_NarratorTrigger1 = class("Q1102911_NarratorTrigger1", GadgetActorProxy)
Q1102911_NarratorTrigger1.defaultAlias = "Q1102911_NarratorTrigger1"
local Q11029ClientConfig = require("Quest/Client/Q11029ClientConfig")

local this
local subIDs = Q11029ClientConfig.SubIDs
local npcs = Q11029ClientConfig.Npcs
local points = Q11029ClientConfig.Points
local datas = Q11029ClientConfig.Datas

function Q1102911_NarratorTrigger1:OnPostDataPrepare()
    print("[MainId: 11029][Trigger: Q1102911_NarratorTrigger1] OnPostDataPrepare")
    this = self
end

function Q1102911_NarratorTrigger1:OnPostComponentPrepare()
    print("[MainId: 11029][Trigger: Q1102911_NarratorTrigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1102911_NarratorTrigger1:TriggerIn()
    print("[MainId: 11029][Trigger: Q1102911_NarratorTrigger1] TriggerIn")
    actorMgr:GetActor("11029"):NarratorOnlyTaskByData(datas.Narrator_1102905, nil, 11029)
    this:DestroySelf()
end

function Q1102911_NarratorTrigger1:PreTriggerIn()
    print("[MainId: 11029][Trigger: Q1102911_NarratorTrigger1] PreTriggerIn")
end

function Q1102911_NarratorTrigger1:LightUpTriggerIn()
    print("[MainId: 11029][Trigger: Q1102911_NarratorTrigger1] LightUpTriggerIn")
end

function Q1102911_NarratorTrigger1:TriggerOut()
    print("[MainId: 11029][Trigger: Q1102911_NarratorTrigger1] TriggerOut")
end

return Q1102911_NarratorTrigger1
