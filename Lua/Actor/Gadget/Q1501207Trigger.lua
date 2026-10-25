require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501207Trigger = class("Q1501207Trigger", GadgetActorProxy)
Q1501207Trigger.defaultAlias = "Q1501207Trigger"
local Q15012ClientConfig = require("Quest/Client/Q15012ClientConfig")

local this
local subIDs = Q15012ClientConfig.SubIDs
local npcs = Q15012ClientConfig.Npcs
local points = Q15012ClientConfig.Points
local datas = Q15012ClientConfig.Datas

function Q1501207Trigger:OnPostDataPrepare()
    print("[MainId: 15012][Trigger: Q1501207Trigger] OnPostDataPrepare")
    this = self
end

function Q1501207Trigger:OnPostComponentPrepare()
    print("[MainId: 15012][Trigger: Q1501207Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15012)
end

function Q1501207Trigger:TriggerIn()
    print("[MainId: 15012][Trigger: Q1501207Trigger] TriggerIn")
    actorMgr:GetActor("15012"):QuestNarratorTask(datas.NarratorWithId02)
    this:DestroySelf()
end

function Q1501207Trigger:PreTriggerIn()
    print("[MainId: 15012][Trigger: Q1501207Trigger] PreTriggerIn")
end

function Q1501207Trigger:LightUpTriggerIn()
    print("[MainId: 15012][Trigger: Q1501207Trigger] LightUpTriggerIn")
end

function Q1501207Trigger:TriggerOut()
    print("[MainId: 15012][Trigger: Q1501207Trigger] TriggerOut")
end

return Q1501207Trigger
