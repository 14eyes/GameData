require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7908101Trigger = class("Q7908101Trigger", GadgetActorProxy)
Q7908101Trigger.defaultAlias = "Q7908101Trigger"
local Q79081ClientConfig = require("Quest/Client/Q79081ClientConfig")

local this
local subIDs = Q79081ClientConfig.SubIDs
local points = Q79081ClientConfig.Points

function Q7908101Trigger:OnPostDataPrepare()
    print("[MainId: 79081][Trigger: Q7908101Trigger] OnPostDataPrepare")
    this = self
end

function Q7908101Trigger:OnPostComponentPrepare()
    print("[MainId: 79081][Trigger: Q7908101Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 79081)
end

function Q7908101Trigger:TriggerIn()
    print("[MainId: 79081][Trigger: Q7908101Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7908101)
    this:DestroySelf()
end

function Q7908101Trigger:PreTriggerIn()
    print("[MainId: 79081][Trigger: Q7908101Trigger] PreTriggerIn")
end

function Q7908101Trigger:LightUpTriggerIn()
    print("[MainId: 79081][Trigger: Q7908101Trigger] LightUpTriggerIn")
end

function Q7908101Trigger:TriggerOut()
    print("[MainId: 79081][Trigger: Q7908101Trigger] TriggerOut")
end

return Q7908101Trigger
