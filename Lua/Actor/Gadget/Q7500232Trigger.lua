require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500232Trigger = class("Q7500232Trigger", GadgetActorProxy)
Q7500232Trigger.defaultAlias = "Q7500232Trigger"
local Q75002ClientConfig = require("Quest/Client/Q75002ClientConfig")

local this
local subIDs = Q75002ClientConfig.SubIDs
local npcs = Q75002ClientConfig.Npcs

function Q7500232Trigger:OnPostDataPrepare()
    print("[MainId: 75002][Trigger: Q7500232Trigger] OnPostDataPrepare")
    this = self
end

function Q7500232Trigger:OnPostComponentPrepare()
    print("[MainId: 75002][Trigger: Q7500232Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75002)
end

function Q7500232Trigger:TriggerIn()
    print("[MainId: 75002][Trigger: Q7500232Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500232)
    this:DestroySelf()
end

function Q7500232Trigger:PreTriggerIn()
    print("[MainId: 75002][Trigger: Q7500232Trigger] PreTriggerIn")
end

function Q7500232Trigger:LightUpTriggerIn()
    print("[MainId: 75002][Trigger: Q7500232Trigger] LightUpTriggerIn")
end

function Q7500232Trigger:TriggerOut()
    print("[MainId: 75002][Trigger: Q7500232Trigger] TriggerOut")
end

return Q7500232Trigger
