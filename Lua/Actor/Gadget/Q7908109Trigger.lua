require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7908109Trigger = class("Q7908109Trigger", GadgetActorProxy)
Q7908109Trigger.defaultAlias = "Q7908109Trigger"
local Q79081ClientConfig = require("Quest/Client/Q79081ClientConfig")

local this
local subIDs = Q79081ClientConfig.SubIDs
local points = Q79081ClientConfig.Points

function Q7908109Trigger:OnPostDataPrepare()
    print("[MainId: 79081][Trigger: Q7908109Trigger] OnPostDataPrepare")
    this = self
end

function Q7908109Trigger:OnPostComponentPrepare()
    print("[MainId: 79081][Trigger: Q7908109Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 79081)
end

function Q7908109Trigger:TriggerIn()
    print("[MainId: 79081][Trigger: Q7908109Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7908109)
    this:DestroySelf()
end

function Q7908109Trigger:PreTriggerIn()
    print("[MainId: 79081][Trigger: Q7908109Trigger] PreTriggerIn")
end

function Q7908109Trigger:LightUpTriggerIn()
    print("[MainId: 79081][Trigger: Q7908109Trigger] LightUpTriggerIn")
end

function Q7908109Trigger:TriggerOut()
    print("[MainId: 79081][Trigger: Q7908109Trigger] TriggerOut")
end

return Q7908109Trigger
