require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500202Trigger = class("Q7500202Trigger", GadgetActorProxy)
Q7500202Trigger.defaultAlias = "Q7500202Trigger"
local Q75002ClientConfig = require("Quest/Client/Q75002ClientConfig")

local this
local subIDs = Q75002ClientConfig.SubIDs

function Q7500202Trigger:OnPostDataPrepare()
    print("[MainId: 75002][Trigger: Q7500202Trigger] OnPostDataPrepare")
    this = self
end

function Q7500202Trigger:OnPostComponentPrepare()
    print("[MainId: 75002][Trigger: Q7500202Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75002)
end

function Q7500202Trigger:TriggerIn()
    print("[MainId: 75002][Trigger: Q7500202Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500202)
    this:DestroySelf()
end

function Q7500202Trigger:PreTriggerIn()
    print("[MainId: 75002][Trigger: Q7500202Trigger] PreTriggerIn")
end

function Q7500202Trigger:LightUpTriggerIn()
    print("[MainId: 75002][Trigger: Q7500202Trigger] LightUpTriggerIn")
end

function Q7500202Trigger:TriggerOut()
    print("[MainId: 75002][Trigger: Q7500202Trigger] TriggerOut")
end

return Q7500202Trigger
