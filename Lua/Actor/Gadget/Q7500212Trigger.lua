require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500212Trigger = class("Q7500212Trigger", GadgetActorProxy)
Q7500212Trigger.defaultAlias = "Q7500212Trigger"
local Q75002ClientConfig = require("Quest/Client/Q75002ClientConfig")

local this
local subIDs = Q75002ClientConfig.SubIDs
local npcs = Q75002ClientConfig.Npcs

function Q7500212Trigger:OnPostDataPrepare()
    print("[MainId: 75002][Trigger: Q7500212Trigger] OnPostDataPrepare")
    this = self
end

function Q7500212Trigger:OnPostComponentPrepare()
    print("[MainId: 75002][Trigger: Q7500212Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 45.72359, 100, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75002)
end

function Q7500212Trigger:TriggerIn()
    print("[MainId: 75002][Trigger: Q7500212Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7500212)
    this:DestroySelf()
end

function Q7500212Trigger:PreTriggerIn()
    print("[MainId: 75002][Trigger: Q7500212Trigger] PreTriggerIn")
end

function Q7500212Trigger:LightUpTriggerIn()
    print("[MainId: 75002][Trigger: Q7500212Trigger] LightUpTriggerIn")
end

function Q7500212Trigger:TriggerOut()
    print("[MainId: 75002][Trigger: Q7500212Trigger] TriggerOut")
end

return Q7500212Trigger
