require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500113Trigger = class("Q7500113Trigger", GadgetActorProxy)
Q7500113Trigger.defaultAlias = "Q7500113Trigger"
local Q75001ClientConfig = require("Quest/Client/Q75001ClientConfig")

local this
local subIDs = Q75001ClientConfig.SubIDs
local npcs = Q75001ClientConfig.Npcs

function Q7500113Trigger:OnPostDataPrepare()
    print("[MainId: 75001][Trigger: Q7500113Trigger] OnPostDataPrepare")
    this = self
end

function Q7500113Trigger:OnPostComponentPrepare()
    print("[MainId: 75001][Trigger: Q7500113Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(21.15695, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75001)
end

function Q7500113Trigger:TriggerIn()
    print("[MainId: 75001][Trigger: Q7500113Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500113)
    this:DestroySelf()
end

function Q7500113Trigger:PreTriggerIn()
    print("[MainId: 75001][Trigger: Q7500113Trigger] PreTriggerIn")
end

function Q7500113Trigger:LightUpTriggerIn()
    print("[MainId: 75001][Trigger: Q7500113Trigger] LightUpTriggerIn")
end

function Q7500113Trigger:TriggerOut()
    print("[MainId: 75001][Trigger: Q7500113Trigger] TriggerOut")
end

return Q7500113Trigger
