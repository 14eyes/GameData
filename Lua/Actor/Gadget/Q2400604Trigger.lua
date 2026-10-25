require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2400604Trigger = class("Q2400604Trigger", GadgetActorProxy)
Q2400604Trigger.defaultAlias = "Q2400604Trigger"
local Q24006ClientConfig = require("Quest/Client/Q24006ClientConfig")

local this
local subIDs = Q24006ClientConfig.SubIDs
local npcs = Q24006ClientConfig.Npcs
local points = Q24006ClientConfig.Points
local datas = Q24006ClientConfig.Datas

function Q2400604Trigger:OnPostDataPrepare()
    print("[MainId: 24006][Trigger: Q2400604Trigger] OnPostDataPrepare")
    this = self
end

function Q2400604Trigger:OnPostComponentPrepare()
    print("[MainId: 24006][Trigger: Q2400604Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q2400604Trigger:TriggerIn()
    print("[MainId: 24006][Trigger: Q2400604Trigger] TriggerIn")
    actorMgr:GetActor("24006"):GetQuestNpcActor(npcs.Npc5021Data.alias, 24006):NarratorOnlyTaskByDataSpecifyingResumeReminder(datas.NarratorWithId_01, nil, 24006, 0)
end

function Q2400604Trigger:PreTriggerIn()
    print("[MainId: 24006][Trigger: Q2400604Trigger] PreTriggerIn")
end

function Q2400604Trigger:LightUpTriggerIn()
    print("[MainId: 24006][Trigger: Q2400604Trigger] LightUpTriggerIn")
end

function Q2400604Trigger:TriggerOut()
    print("[MainId: 24006][Trigger: Q2400604Trigger] TriggerOut")
end

return Q2400604Trigger
