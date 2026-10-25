require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500205Trigger = class("Q7500205Trigger", GadgetActorProxy)
Q7500205Trigger.defaultAlias = "Q7500205Trigger"
local Q75002ClientConfig = require("Quest/Client/Q75002ClientConfig")

local this
local subIDs = Q75002ClientConfig.SubIDs
local npcs = Q75002ClientConfig.Npcs

function Q7500205Trigger:OnPostDataPrepare()
    print("[MainId: 75002][Trigger: Q7500205Trigger] OnPostDataPrepare")
    this = self
end

function Q7500205Trigger:OnPostComponentPrepare()
    print("[MainId: 75002][Trigger: Q7500205Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75002)
end

function Q7500205Trigger:TriggerIn()
    print("[MainId: 75002][Trigger: Q7500205Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500205)
    this:DestroySelf()
end

function Q7500205Trigger:PreTriggerIn()
    print("[MainId: 75002][Trigger: Q7500205Trigger] PreTriggerIn")
end

function Q7500205Trigger:LightUpTriggerIn()
    print("[MainId: 75002][Trigger: Q7500205Trigger] LightUpTriggerIn")
end

function Q7500205Trigger:TriggerOut()
    print("[MainId: 75002][Trigger: Q7500205Trigger] TriggerOut")
end

return Q7500205Trigger
