require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1400631Trigger = class("Q1400631Trigger", GadgetActorProxy)
Q1400631Trigger.defaultAlias = "Q1400631Trigger"
local Q14006ClientConfig = require("Quest/Client/Q14006ClientConfig")

local this
local subIDs = Q14006ClientConfig.SubIDs
local npcs = Q14006ClientConfig.Npcs
local points = Q14006ClientConfig.Points
local datas = Q14006ClientConfig.Datas

function Q1400631Trigger:OnPostDataPrepare()
    print("[MainId: 14006][Trigger: Q1400631Trigger] OnPostDataPrepare")
    this = self
end

function Q1400631Trigger:OnPostComponentPrepare()
    print("[MainId: 14006][Trigger: Q1400631Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(65, 70, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1400631Trigger:TriggerIn()
    print("[MainId: 14006][Trigger: Q1400631Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1400631)
    this:DestroySelf()
end

function Q1400631Trigger:PreTriggerIn()
    print("[MainId: 14006][Trigger: Q1400631Trigger] PreTriggerIn")
end

function Q1400631Trigger:LightUpTriggerIn()
    print("[MainId: 14006][Trigger: Q1400631Trigger] LightUpTriggerIn")
end

function Q1400631Trigger:TriggerOut()
    print("[MainId: 14006][Trigger: Q1400631Trigger] TriggerOut")
end

return Q1400631Trigger
