require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400903Trigger = class("Q7400903Trigger", GadgetActorProxy)
Q7400903Trigger.defaultAlias = "Q7400903Trigger"
local Q74009ClientConfig = require("Quest/Client/Q74009ClientConfig")

local this
local subIDs = Q74009ClientConfig.SubIDs
local npcs = Q74009ClientConfig.Npcs

function Q7400903Trigger:OnPostDataPrepare()
    print("[MainId: 74009][Trigger: Q7400903Trigger] OnPostDataPrepare")
    this = self
end

function Q7400903Trigger:OnPostComponentPrepare()
    print("[MainId: 74009][Trigger: Q7400903Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400903Trigger:TriggerIn()
    print("[MainId: 74009][Trigger: Q7400903Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400903)
    this:DestroySelf()
end

function Q7400903Trigger:PreTriggerIn()
    print("[MainId: 74009][Trigger: Q7400903Trigger] PreTriggerIn")
end

function Q7400903Trigger:LightUpTriggerIn()
    print("[MainId: 74009][Trigger: Q7400903Trigger] LightUpTriggerIn")
end

function Q7400903Trigger:TriggerOut()
    print("[MainId: 74009][Trigger: Q7400903Trigger] TriggerOut")
end

return Q7400903Trigger
