require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905803Trigger = class("Q1905803Trigger", GadgetActorProxy)
Q1905803Trigger.defaultAlias = "Q1905803Trigger"
local Q19058ClientConfig = require("Quest/Client/Q19058ClientConfig")

local this
local subIDs = Q19058ClientConfig.SubIDs
local npcs = Q19058ClientConfig.Npcs
local points = Q19058ClientConfig.Points
local datas = Q19058ClientConfig.Datas

function Q1905803Trigger:OnPostDataPrepare()
    print("[MainId: 19058][Trigger: Q1905803Trigger] OnPostDataPrepare")
    this = self
end

function Q1905803Trigger:OnPostComponentPrepare()
    print("[MainId: 19058][Trigger: Q1905803Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12.75734, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1905803Trigger:TriggerIn()
    print("[MainId: 19058][Trigger: Q1905803Trigger] TriggerIn")
end

function Q1905803Trigger:PreTriggerIn()
    print("[MainId: 19058][Trigger: Q1905803Trigger] PreTriggerIn")
end

function Q1905803Trigger:LightUpTriggerIn()
    print("[MainId: 19058][Trigger: Q1905803Trigger] LightUpTriggerIn")
    actorMgr:GetActor("19058"):GetQuestNpcActor(npcs.Coop_KavehData.alias, 19058):DoFreeStyle(8061, false, nil, true, true, true, false)
end

function Q1905803Trigger:TriggerOut()
    print("[MainId: 19058][Trigger: Q1905803Trigger] TriggerOut")
end

return Q1905803Trigger
