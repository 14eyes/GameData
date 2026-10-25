require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7908115Trigger = class("Q7908115Trigger", GadgetActorProxy)
Q7908115Trigger.defaultAlias = "Q7908115Trigger"
local Q79081ClientConfig = require("Quest/Client/Q79081ClientConfig")

local this
local subIDs = Q79081ClientConfig.SubIDs
local points = Q79081ClientConfig.Points

function Q7908115Trigger:OnPostDataPrepare()
    print("[MainId: 79081][Trigger: Q7908115Trigger] OnPostDataPrepare")
    this = self
end

function Q7908115Trigger:OnPostComponentPrepare()
    print("[MainId: 79081][Trigger: Q7908115Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 79081)
end

function Q7908115Trigger:TriggerIn()
    print("[MainId: 79081][Trigger: Q7908115Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7908115)
    this:DestroySelf()
end

function Q7908115Trigger:PreTriggerIn()
    print("[MainId: 79081][Trigger: Q7908115Trigger] PreTriggerIn")
end

function Q7908115Trigger:LightUpTriggerIn()
    print("[MainId: 79081][Trigger: Q7908115Trigger] LightUpTriggerIn")
end

function Q7908115Trigger:TriggerOut()
    print("[MainId: 79081][Trigger: Q7908115Trigger] TriggerOut")
end

return Q7908115Trigger
