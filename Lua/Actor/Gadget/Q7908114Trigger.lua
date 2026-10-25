require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7908114Trigger = class("Q7908114Trigger", GadgetActorProxy)
Q7908114Trigger.defaultAlias = "Q7908114Trigger"
local Q79081ClientConfig = require("Quest/Client/Q79081ClientConfig")

local this
local subIDs = Q79081ClientConfig.SubIDs
local points = Q79081ClientConfig.Points

function Q7908114Trigger:OnPostDataPrepare()
    print("[MainId: 79081][Trigger: Q7908114Trigger] OnPostDataPrepare")
    this = self
end

function Q7908114Trigger:OnPostComponentPrepare()
    print("[MainId: 79081][Trigger: Q7908114Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 79081)
end

function Q7908114Trigger:TriggerIn()
    print("[MainId: 79081][Trigger: Q7908114Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7908114)
    this:DestroySelf()
end

function Q7908114Trigger:PreTriggerIn()
    print("[MainId: 79081][Trigger: Q7908114Trigger] PreTriggerIn")
end

function Q7908114Trigger:LightUpTriggerIn()
    print("[MainId: 79081][Trigger: Q7908114Trigger] LightUpTriggerIn")
end

function Q7908114Trigger:TriggerOut()
    print("[MainId: 79081][Trigger: Q7908114Trigger] TriggerOut")
end

return Q7908114Trigger
