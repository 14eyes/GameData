require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102702_NarratorTrigger2 = class("Q1102702_NarratorTrigger2", GadgetActorProxy)
Q1102702_NarratorTrigger2.defaultAlias = "Q1102702_NarratorTrigger2"
local Q11027ClientConfig = require("Quest/Client/Q11027ClientConfig")

local this
local subIDs = Q11027ClientConfig.SubIDs
local npcs = Q11027ClientConfig.Npcs
local points = Q11027ClientConfig.Points
local datas = Q11027ClientConfig.Datas

function Q1102702_NarratorTrigger2:OnPostDataPrepare()
    print("[MainId: 11027][Trigger: Q1102702_NarratorTrigger2] OnPostDataPrepare")
    this = self
end

function Q1102702_NarratorTrigger2:OnPostComponentPrepare()
    print("[MainId: 11027][Trigger: Q1102702_NarratorTrigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1102702_NarratorTrigger2:TriggerIn()
    print("[MainId: 11027][Trigger: Q1102702_NarratorTrigger2] TriggerIn")
    actorUtils.FinishQuestID(false, 1102702)
    this:DestroySelf()
end

function Q1102702_NarratorTrigger2:PreTriggerIn()
    print("[MainId: 11027][Trigger: Q1102702_NarratorTrigger2] PreTriggerIn")
end

function Q1102702_NarratorTrigger2:LightUpTriggerIn()
    print("[MainId: 11027][Trigger: Q1102702_NarratorTrigger2] LightUpTriggerIn")
end

function Q1102702_NarratorTrigger2:TriggerOut()
    print("[MainId: 11027][Trigger: Q1102702_NarratorTrigger2] TriggerOut")
end

return Q1102702_NarratorTrigger2
