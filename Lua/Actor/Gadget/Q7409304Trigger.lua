require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7409304Trigger = class("Q7409304Trigger", GadgetActorProxy)
Q7409304Trigger.defaultAlias = "Q7409304Trigger"
local Q74093ClientConfig = require("Quest/Client/Q74093ClientConfig")

local this
local subIDs = Q74093ClientConfig.SubIDs

function Q7409304Trigger:OnPostDataPrepare()
    print("[MainId: 74093][Trigger: Q7409304Trigger] OnPostDataPrepare")
    this = self
end

function Q7409304Trigger:OnPostComponentPrepare()
    print("[MainId: 74093][Trigger: Q7409304Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8.538278, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7409304Trigger:TriggerIn()
    print("[MainId: 74093][Trigger: Q7409304Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7409304)
    this:DestroySelf()
end

function Q7409304Trigger:PreTriggerIn()
    print("[MainId: 74093][Trigger: Q7409304Trigger] PreTriggerIn")
end

function Q7409304Trigger:LightUpTriggerIn()
    print("[MainId: 74093][Trigger: Q7409304Trigger] LightUpTriggerIn")
end

function Q7409304Trigger:TriggerOut()
    print("[MainId: 74093][Trigger: Q7409304Trigger] TriggerOut")
end

return Q7409304Trigger
