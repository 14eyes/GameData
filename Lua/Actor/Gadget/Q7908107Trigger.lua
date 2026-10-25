require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7908107Trigger = class("Q7908107Trigger", GadgetActorProxy)
Q7908107Trigger.defaultAlias = "Q7908107Trigger"
local Q79081ClientConfig = require("Quest/Client/Q79081ClientConfig")

local this
local subIDs = Q79081ClientConfig.SubIDs
local points = Q79081ClientConfig.Points

function Q7908107Trigger:OnPostDataPrepare()
    print("[MainId: 79081][Trigger: Q7908107Trigger] OnPostDataPrepare")
    this = self
end

function Q7908107Trigger:OnPostComponentPrepare()
    print("[MainId: 79081][Trigger: Q7908107Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 79081)
end

function Q7908107Trigger:TriggerIn()
    print("[MainId: 79081][Trigger: Q7908107Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7908107)
    this:DestroySelf()
end

function Q7908107Trigger:PreTriggerIn()
    print("[MainId: 79081][Trigger: Q7908107Trigger] PreTriggerIn")
end

function Q7908107Trigger:LightUpTriggerIn()
    print("[MainId: 79081][Trigger: Q7908107Trigger] LightUpTriggerIn")
end

function Q7908107Trigger:TriggerOut()
    print("[MainId: 79081][Trigger: Q7908107Trigger] TriggerOut")
end

return Q7908107Trigger
