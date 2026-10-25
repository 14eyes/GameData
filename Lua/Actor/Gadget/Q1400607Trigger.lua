require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1400607Trigger = class("Q1400607Trigger", GadgetActorProxy)
Q1400607Trigger.defaultAlias = "Q1400607Trigger"
local Q14006ClientConfig = require("Quest/Client/Q14006ClientConfig")

local this
local subIDs = Q14006ClientConfig.SubIDs
local npcs = Q14006ClientConfig.Npcs
local points = Q14006ClientConfig.Points
local datas = Q14006ClientConfig.Datas

function Q1400607Trigger:OnPostDataPrepare()
    print("[MainId: 14006][Trigger: Q1400607Trigger] OnPostDataPrepare")
    this = self
end

function Q1400607Trigger:OnPostComponentPrepare()
    print("[MainId: 14006][Trigger: Q1400607Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(65, 70, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1400607Trigger:TriggerIn()
    print("[MainId: 14006][Trigger: Q1400607Trigger] TriggerIn")
    actorMgr:GetActor("14006"):TransmitPlayerWithTextByQuestId(1400607, 1, datas.TextmapId, 1)
    this:DestroySelf()
end

function Q1400607Trigger:PreTriggerIn()
    print("[MainId: 14006][Trigger: Q1400607Trigger] PreTriggerIn")
end

function Q1400607Trigger:LightUpTriggerIn()
    print("[MainId: 14006][Trigger: Q1400607Trigger] LightUpTriggerIn")
end

function Q1400607Trigger:TriggerOut()
    print("[MainId: 14006][Trigger: Q1400607Trigger] TriggerOut")
end

return Q1400607Trigger
