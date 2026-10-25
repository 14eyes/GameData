require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1400628Trigger = class("Q1400628Trigger", GadgetActorProxy)
Q1400628Trigger.defaultAlias = "Q1400628Trigger"
local Q14006ClientConfig = require("Quest/Client/Q14006ClientConfig")

local this
local subIDs = Q14006ClientConfig.SubIDs
local npcs = Q14006ClientConfig.Npcs
local points = Q14006ClientConfig.Points
local datas = Q14006ClientConfig.Datas

function Q1400628Trigger:OnPostDataPrepare()
    print("[MainId: 14006][Trigger: Q1400628Trigger] OnPostDataPrepare")
    this = self
end

function Q1400628Trigger:OnPostComponentPrepare()
    print("[MainId: 14006][Trigger: Q1400628Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(65, 70, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1400628Trigger:TriggerIn()
    print("[MainId: 14006][Trigger: Q1400628Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1400628)
    this:DestroySelf()
end

function Q1400628Trigger:PreTriggerIn()
    print("[MainId: 14006][Trigger: Q1400628Trigger] PreTriggerIn")
end

function Q1400628Trigger:LightUpTriggerIn()
    print("[MainId: 14006][Trigger: Q1400628Trigger] LightUpTriggerIn")
end

function Q1400628Trigger:TriggerOut()
    print("[MainId: 14006][Trigger: Q1400628Trigger] TriggerOut")
end

return Q1400628Trigger
