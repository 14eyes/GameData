require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102702_NarratorTrigger = class("Q1102702_NarratorTrigger", GadgetActorProxy)
Q1102702_NarratorTrigger.defaultAlias = "Q1102702_NarratorTrigger"
local Q11027ClientConfig = require("Quest/Client/Q11027ClientConfig")

local this
local subIDs = Q11027ClientConfig.SubIDs
local npcs = Q11027ClientConfig.Npcs
local points = Q11027ClientConfig.Points
local datas = Q11027ClientConfig.Datas

function Q1102702_NarratorTrigger:OnPostDataPrepare()
    print("[MainId: 11027][Trigger: Q1102702_NarratorTrigger] OnPostDataPrepare")
    this = self
end

function Q1102702_NarratorTrigger:OnPostComponentPrepare()
    print("[MainId: 11027][Trigger: Q1102702_NarratorTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1102702_NarratorTrigger:TriggerIn()
    print("[MainId: 11027][Trigger: Q1102702_NarratorTrigger] TriggerIn")
    actorMgr:GetActor("11027"):NarratorOnlyTaskByData(datas.Narrator_1102701, nil, 11027)
    this:DestroySelf()
end

function Q1102702_NarratorTrigger:PreTriggerIn()
    print("[MainId: 11027][Trigger: Q1102702_NarratorTrigger] PreTriggerIn")
end

function Q1102702_NarratorTrigger:LightUpTriggerIn()
    print("[MainId: 11027][Trigger: Q1102702_NarratorTrigger] LightUpTriggerIn")
end

function Q1102702_NarratorTrigger:TriggerOut()
    print("[MainId: 11027][Trigger: Q1102702_NarratorTrigger] TriggerOut")
end

return Q1102702_NarratorTrigger
