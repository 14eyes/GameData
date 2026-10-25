require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7523203Trigger = class("Q7523203Trigger", GadgetActorProxy)
Q7523203Trigger.defaultAlias = "Q7523203Trigger"
local Q75232ClientConfig = require("Quest/Client/Q75232ClientConfig")

local this
local subIDs = Q75232ClientConfig.SubIDs
local npcs = Q75232ClientConfig.Npcs

function Q7523203Trigger:OnPostDataPrepare()
    print("Q7523203Trigger - OnPostDataPrepare")
    this = self
end

function Q7523203Trigger:OnPostComponentPrepare()
    print("Q7523203Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75232)
end

function Q7523203Trigger:TriggerIn()
    print("Q7523203Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7523203)
    this:DestroySelf()
end

function Q7523203Trigger:PreTriggerIn()
    print("Q7523203Trigger - PreTriggerIn")
end

function Q7523203Trigger:LightUpTriggerIn()
    print("Q7523203Trigger - LightUpTriggerIn")
end

function Q7523203Trigger:TriggerOut()
    print("Q7523203Trigger - TriggerOut")
end

return Q7523203Trigger
