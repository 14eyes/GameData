require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7908103Trigger = class("Q7908103Trigger", GadgetActorProxy)
Q7908103Trigger.defaultAlias = "Q7908103Trigger"
local Q79081ClientConfig = require("Quest/Client/Q79081ClientConfig")

local this
local subIDs = Q79081ClientConfig.SubIDs
local points = Q79081ClientConfig.Points

function Q7908103Trigger:OnPostDataPrepare()
    print("[MainId: 79081][Trigger: Q7908103Trigger] OnPostDataPrepare")
    this = self
end

function Q7908103Trigger:OnPostComponentPrepare()
    print("[MainId: 79081][Trigger: Q7908103Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 79081)
end

function Q7908103Trigger:TriggerIn()
    print("[MainId: 79081][Trigger: Q7908103Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7908103)
    this:DestroySelf()
end

function Q7908103Trigger:PreTriggerIn()
    print("[MainId: 79081][Trigger: Q7908103Trigger] PreTriggerIn")
end

function Q7908103Trigger:LightUpTriggerIn()
    print("[MainId: 79081][Trigger: Q7908103Trigger] LightUpTriggerIn")
end

function Q7908103Trigger:TriggerOut()
    print("[MainId: 79081][Trigger: Q7908103Trigger] TriggerOut")
end

return Q7908103Trigger
