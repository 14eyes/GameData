require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501202Trigger = class("Q1501202Trigger", GadgetActorProxy)
Q1501202Trigger.defaultAlias = "Q1501202Trigger"
local Q15012ClientConfig = require("Quest/Client/Q15012ClientConfig")

local this
local subIDs = Q15012ClientConfig.SubIDs
local npcs = Q15012ClientConfig.Npcs
local points = Q15012ClientConfig.Points
local datas = Q15012ClientConfig.Datas

function Q1501202Trigger:OnPostDataPrepare()
    print("[MainId: 15012][Trigger: Q1501202Trigger] OnPostDataPrepare")
    this = self
end

function Q1501202Trigger:OnPostComponentPrepare()
    print("[MainId: 15012][Trigger: Q1501202Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15012)
end

function Q1501202Trigger:TriggerIn()
    print("[MainId: 15012][Trigger: Q1501202Trigger] TriggerIn")
    actorMgr:GetActor("15012"):QuestNarratorTask(datas.NarratorWithId01)
    this:DestroySelf()
end

function Q1501202Trigger:PreTriggerIn()
    print("[MainId: 15012][Trigger: Q1501202Trigger] PreTriggerIn")
end

function Q1501202Trigger:LightUpTriggerIn()
    print("[MainId: 15012][Trigger: Q1501202Trigger] LightUpTriggerIn")
end

function Q1501202Trigger:TriggerOut()
    print("[MainId: 15012][Trigger: Q1501202Trigger] TriggerOut")
end

return Q1501202Trigger
