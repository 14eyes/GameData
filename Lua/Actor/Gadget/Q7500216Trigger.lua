require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500216Trigger = class("Q7500216Trigger", GadgetActorProxy)
Q7500216Trigger.defaultAlias = "Q7500216Trigger"
local Q75002ClientConfig = require("Quest/Client/Q75002ClientConfig")

local this
local subIDs = Q75002ClientConfig.SubIDs
local npcs = Q75002ClientConfig.Npcs

function Q7500216Trigger:OnPostDataPrepare()
    print("[MainId: 75002][Trigger: Q7500216Trigger] OnPostDataPrepare")
    this = self
end

function Q7500216Trigger:OnPostComponentPrepare()
    print("[MainId: 75002][Trigger: Q7500216Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75002)
end

function Q7500216Trigger:TriggerIn()
    print("[MainId: 75002][Trigger: Q7500216Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500216)
    this:DestroySelf()
end

function Q7500216Trigger:PreTriggerIn()
    print("[MainId: 75002][Trigger: Q7500216Trigger] PreTriggerIn")
end

function Q7500216Trigger:LightUpTriggerIn()
    print("[MainId: 75002][Trigger: Q7500216Trigger] LightUpTriggerIn")
end

function Q7500216Trigger:TriggerOut()
    print("[MainId: 75002][Trigger: Q7500216Trigger] TriggerOut")
end

return Q7500216Trigger
