require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501203Trigger = class("Q1501203Trigger", GadgetActorProxy)
Q1501203Trigger.defaultAlias = "Q1501203Trigger"
local Q15012ClientConfig = require("Quest/Client/Q15012ClientConfig")

local this
local subIDs = Q15012ClientConfig.SubIDs
local npcs = Q15012ClientConfig.Npcs
local points = Q15012ClientConfig.Points
local datas = Q15012ClientConfig.Datas

function Q1501203Trigger:OnPostDataPrepare()
    print("[MainId: 15012][Trigger: Q1501203Trigger] OnPostDataPrepare")
    this = self
end

function Q1501203Trigger:OnPostComponentPrepare()
    print("[MainId: 15012][Trigger: Q1501203Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15012)
end

function Q1501203Trigger:TriggerIn()
    print("[MainId: 15012][Trigger: Q1501203Trigger] TriggerIn")
    actorMgr:GetActor("15012"):QuestNarratorTask(datas.NarratorWithId02)
    actorUtils.FinishQuestID(false, 1501202)
    this:DestroySelf()
end

function Q1501203Trigger:PreTriggerIn()
    print("[MainId: 15012][Trigger: Q1501203Trigger] PreTriggerIn")
end

function Q1501203Trigger:LightUpTriggerIn()
    print("[MainId: 15012][Trigger: Q1501203Trigger] LightUpTriggerIn")
end

function Q1501203Trigger:TriggerOut()
    print("[MainId: 15012][Trigger: Q1501203Trigger] TriggerOut")
end

return Q1501203Trigger
