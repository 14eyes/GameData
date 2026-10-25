require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2400603Trigger = class("Q2400603Trigger", GadgetActorProxy)
Q2400603Trigger.defaultAlias = "Q2400603Trigger"
local Q24006ClientConfig = require("Quest/Client/Q24006ClientConfig")

local this
local subIDs = Q24006ClientConfig.SubIDs
local npcs = Q24006ClientConfig.Npcs
local points = Q24006ClientConfig.Points
local datas = Q24006ClientConfig.Datas

function Q2400603Trigger:OnPostDataPrepare()
    print("[MainId: 24006][Trigger: Q2400603Trigger] OnPostDataPrepare")
    this = self
end

function Q2400603Trigger:OnPostComponentPrepare()
    print("[MainId: 24006][Trigger: Q2400603Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q2400603Trigger:TriggerIn()
    print("[MainId: 24006][Trigger: Q2400603Trigger] TriggerIn")
    actorMgr:GetActor("24006"):CreateSpeechBubbleTask(npcs.Npc5063Data.id, 240069903, 4, true, 5, 6)
    this:DestroySelf()
end

function Q2400603Trigger:PreTriggerIn()
    print("[MainId: 24006][Trigger: Q2400603Trigger] PreTriggerIn")
end

function Q2400603Trigger:LightUpTriggerIn()
    print("[MainId: 24006][Trigger: Q2400603Trigger] LightUpTriggerIn")
end

function Q2400603Trigger:TriggerOut()
    print("[MainId: 24006][Trigger: Q2400603Trigger] TriggerOut")
end

return Q2400603Trigger
