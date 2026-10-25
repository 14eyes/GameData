require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1400617Trigger = class("Q1400617Trigger", GadgetActorProxy)
Q1400617Trigger.defaultAlias = "Q1400617Trigger"
local Q14006ClientConfig = require("Quest/Client/Q14006ClientConfig")

local this
local subIDs = Q14006ClientConfig.SubIDs
local npcs = Q14006ClientConfig.Npcs
local points = Q14006ClientConfig.Points
local datas = Q14006ClientConfig.Datas

function Q1400617Trigger:OnPostDataPrepare()
    print("[MainId: 14006][Trigger: Q1400617Trigger] OnPostDataPrepare")
    this = self
end

function Q1400617Trigger:OnPostComponentPrepare()
    print("[MainId: 14006][Trigger: Q1400617Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1400617Trigger:TriggerIn()
    print("[MainId: 14006][Trigger: Q1400617Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 1400617)
    this:DestroySelf()
end

function Q1400617Trigger:PreTriggerIn()
    print("[MainId: 14006][Trigger: Q1400617Trigger] PreTriggerIn")
end

function Q1400617Trigger:LightUpTriggerIn()
    print("[MainId: 14006][Trigger: Q1400617Trigger] LightUpTriggerIn")
end

function Q1400617Trigger:TriggerOut()
    print("[MainId: 14006][Trigger: Q1400617Trigger] TriggerOut")
end

return Q1400617Trigger
