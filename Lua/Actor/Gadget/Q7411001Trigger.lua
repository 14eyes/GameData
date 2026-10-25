require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411001Trigger = class("Q7411001Trigger", GadgetActorProxy)
Q7411001Trigger.defaultAlias = "Q7411001Trigger"
local Q74110ClientConfig = require("Quest/Client/Q74110ClientConfig")

local this
local subIDs = Q74110ClientConfig.SubIDs

function Q7411001Trigger:OnPostDataPrepare()
    print("[MainId: 74110][Trigger: Q7411001Trigger] OnPostDataPrepare")
    this = self
end

function Q7411001Trigger:OnPostComponentPrepare()
    print("[MainId: 74110][Trigger: Q7411001Trigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(115.5, 130.36, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411001Trigger:TriggerIn()
    print("[MainId: 74110][Trigger: Q7411001Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7411001)
    this:DestroySelf()
end

function Q7411001Trigger:PreTriggerIn()
    print("[MainId: 74110][Trigger: Q7411001Trigger] PreTriggerIn")
end

function Q7411001Trigger:LightUpTriggerIn()
    print("[MainId: 74110][Trigger: Q7411001Trigger] LightUpTriggerIn")
end

function Q7411001Trigger:TriggerOut()
    print("[MainId: 74110][Trigger: Q7411001Trigger] TriggerOut")
end

return Q7411001Trigger
