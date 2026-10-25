require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500103Trigger = class("Q7500103Trigger", GadgetActorProxy)
Q7500103Trigger.defaultAlias = "Q7500103Trigger"
local Q75001ClientConfig = require("Quest/Client/Q75001ClientConfig")

local this
local subIDs = Q75001ClientConfig.SubIDs
local npcs = Q75001ClientConfig.Npcs

function Q7500103Trigger:OnPostDataPrepare()
    print("[MainId: 75001][Trigger: Q7500103Trigger] OnPostDataPrepare")
    this = self
end

function Q7500103Trigger:OnPostComponentPrepare()
    print("[MainId: 75001][Trigger: Q7500103Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(43.8112, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75001)
end

function Q7500103Trigger:TriggerIn()
    print("[MainId: 75001][Trigger: Q7500103Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500103)
    this:DestroySelf()
end

function Q7500103Trigger:PreTriggerIn()
    print("[MainId: 75001][Trigger: Q7500103Trigger] PreTriggerIn")
end

function Q7500103Trigger:LightUpTriggerIn()
    print("[MainId: 75001][Trigger: Q7500103Trigger] LightUpTriggerIn")
end

function Q7500103Trigger:TriggerOut()
    print("[MainId: 75001][Trigger: Q7500103Trigger] TriggerOut")
end

return Q7500103Trigger
