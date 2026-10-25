require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2400602Trigger = class("Q2400602Trigger", GadgetActorProxy)
Q2400602Trigger.defaultAlias = "Q2400602Trigger"
local Q24006ClientConfig = require("Quest/Client/Q24006ClientConfig")

local this
local subIDs = Q24006ClientConfig.SubIDs
local npcs = Q24006ClientConfig.Npcs
local points = Q24006ClientConfig.Points
local datas = Q24006ClientConfig.Datas

function Q2400602Trigger:OnPostDataPrepare()
    print("[MainId: 24006][Trigger: Q2400602Trigger] OnPostDataPrepare")
    this = self
end

function Q2400602Trigger:OnPostComponentPrepare()
    print("[MainId: 24006][Trigger: Q2400602Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q2400602Trigger:TriggerIn()
    print("[MainId: 24006][Trigger: Q2400602Trigger] TriggerIn")
    actorMgr:GetActor("24006"):GetQuestNpcActor(npcs.Npc5062Data.alias, 24006):NarratorOnlyTaskByDataSpecifyingResumeReminder(datas.NarratorWithId, nil, 24006, 0)
end

function Q2400602Trigger:PreTriggerIn()
    print("[MainId: 24006][Trigger: Q2400602Trigger] PreTriggerIn")
end

function Q2400602Trigger:LightUpTriggerIn()
    print("[MainId: 24006][Trigger: Q2400602Trigger] LightUpTriggerIn")
end

function Q2400602Trigger:TriggerOut()
    print("[MainId: 24006][Trigger: Q2400602Trigger] TriggerOut")
end

return Q2400602Trigger
