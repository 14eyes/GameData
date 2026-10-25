require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500110Trigger = class("Q7500110Trigger", GadgetActorProxy)
Q7500110Trigger.defaultAlias = "Q7500110Trigger"
local Q75001ClientConfig = require("Quest/Client/Q75001ClientConfig")

local this
local subIDs = Q75001ClientConfig.SubIDs
local npcs = Q75001ClientConfig.Npcs

function Q7500110Trigger:OnPostDataPrepare()
    print("[MainId: 75001][Trigger: Q7500110Trigger] OnPostDataPrepare")
    this = self
end

function Q7500110Trigger:OnPostComponentPrepare()
    print("[MainId: 75001][Trigger: Q7500110Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(34.14468, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75001)
end

function Q7500110Trigger:TriggerIn()
    print("[MainId: 75001][Trigger: Q7500110Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500110)
    this:DestroySelf()
end

function Q7500110Trigger:PreTriggerIn()
    print("[MainId: 75001][Trigger: Q7500110Trigger] PreTriggerIn")
end

function Q7500110Trigger:LightUpTriggerIn()
    print("[MainId: 75001][Trigger: Q7500110Trigger] LightUpTriggerIn")
end

function Q7500110Trigger:TriggerOut()
    print("[MainId: 75001][Trigger: Q7500110Trigger] TriggerOut")
end

return Q7500110Trigger
