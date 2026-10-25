require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500236Trigger = class("Q7500236Trigger", GadgetActorProxy)
Q7500236Trigger.defaultAlias = "Q7500236Trigger"
local Q75002ClientConfig = require("Quest/Client/Q75002ClientConfig")

local this
local subIDs = Q75002ClientConfig.SubIDs
local npcs = Q75002ClientConfig.Npcs

function Q7500236Trigger:OnPostDataPrepare()
    print("[MainId: 75002][Trigger: Q7500236Trigger] OnPostDataPrepare")
    this = self
end

function Q7500236Trigger:OnPostComponentPrepare()
    print("[MainId: 75002][Trigger: Q7500236Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75002)
end

function Q7500236Trigger:TriggerIn()
    print("[MainId: 75002][Trigger: Q7500236Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500236)
    this:DestroySelf()
end

function Q7500236Trigger:PreTriggerIn()
    print("[MainId: 75002][Trigger: Q7500236Trigger] PreTriggerIn")
end

function Q7500236Trigger:LightUpTriggerIn()
    print("[MainId: 75002][Trigger: Q7500236Trigger] LightUpTriggerIn")
end

function Q7500236Trigger:TriggerOut()
    print("[MainId: 75002][Trigger: Q7500236Trigger] TriggerOut")
end

return Q7500236Trigger
