require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500207Trigger = class("Q7500207Trigger", GadgetActorProxy)
Q7500207Trigger.defaultAlias = "Q7500207Trigger"
local Q75002ClientConfig = require("Quest/Client/Q75002ClientConfig")

local this
local subIDs = Q75002ClientConfig.SubIDs
local npcs = Q75002ClientConfig.Npcs

function Q7500207Trigger:OnPostDataPrepare()
    print("[MainId: 75002][Trigger: Q7500207Trigger] OnPostDataPrepare")
    this = self
end

function Q7500207Trigger:OnPostComponentPrepare()
    print("[MainId: 75002][Trigger: Q7500207Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 50, 80, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75002)
end

function Q7500207Trigger:TriggerIn()
    print("[MainId: 75002][Trigger: Q7500207Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500207)
    this:DestroySelf()
end

function Q7500207Trigger:PreTriggerIn()
    print("[MainId: 75002][Trigger: Q7500207Trigger] PreTriggerIn")
end

function Q7500207Trigger:LightUpTriggerIn()
    print("[MainId: 75002][Trigger: Q7500207Trigger] LightUpTriggerIn")
end

function Q7500207Trigger:TriggerOut()
    print("[MainId: 75002][Trigger: Q7500207Trigger] TriggerOut")
end

return Q7500207Trigger
