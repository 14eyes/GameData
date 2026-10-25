require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500109Trigger = class("Q7500109Trigger", GadgetActorProxy)
Q7500109Trigger.defaultAlias = "Q7500109Trigger"
local Q75001ClientConfig = require("Quest/Client/Q75001ClientConfig")

local this
local subIDs = Q75001ClientConfig.SubIDs
local npcs = Q75001ClientConfig.Npcs

function Q7500109Trigger:OnPostDataPrepare()
    print("[MainId: 75001][Trigger: Q7500109Trigger] OnPostDataPrepare")
    this = self
end

function Q7500109Trigger:OnPostComponentPrepare()
    print("[MainId: 75001][Trigger: Q7500109Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(31.00754, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75001)
end

function Q7500109Trigger:TriggerIn()
    print("[MainId: 75001][Trigger: Q7500109Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500109)
    this:DestroySelf()
end

function Q7500109Trigger:PreTriggerIn()
    print("[MainId: 75001][Trigger: Q7500109Trigger] PreTriggerIn")
end

function Q7500109Trigger:LightUpTriggerIn()
    print("[MainId: 75001][Trigger: Q7500109Trigger] LightUpTriggerIn")
end

function Q7500109Trigger:TriggerOut()
    print("[MainId: 75001][Trigger: Q7500109Trigger] TriggerOut")
end

return Q7500109Trigger
