require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500229Trigger = class("Q7500229Trigger", GadgetActorProxy)
Q7500229Trigger.defaultAlias = "Q7500229Trigger"
local Q75002ClientConfig = require("Quest/Client/Q75002ClientConfig")

local this
local subIDs = Q75002ClientConfig.SubIDs
local npcs = Q75002ClientConfig.Npcs

function Q7500229Trigger:OnPostDataPrepare()
    print("[MainId: 75002][Trigger: Q7500229Trigger] OnPostDataPrepare")
    this = self
end

function Q7500229Trigger:OnPostComponentPrepare()
    print("[MainId: 75002][Trigger: Q7500229Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75002)
end

function Q7500229Trigger:TriggerIn()
    print("[MainId: 75002][Trigger: Q7500229Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500229)
    this:DestroySelf()
end

function Q7500229Trigger:PreTriggerIn()
    print("[MainId: 75002][Trigger: Q7500229Trigger] PreTriggerIn")
end

function Q7500229Trigger:LightUpTriggerIn()
    print("[MainId: 75002][Trigger: Q7500229Trigger] LightUpTriggerIn")
end

function Q7500229Trigger:TriggerOut()
    print("[MainId: 75002][Trigger: Q7500229Trigger] TriggerOut")
end

return Q7500229Trigger
