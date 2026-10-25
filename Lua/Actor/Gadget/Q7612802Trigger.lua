require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612802Trigger = class("Q7612802Trigger", GadgetActorProxy)
Q7612802Trigger.defaultAlias = "Q7612802Trigger"
local Q76128ClientConfig = require("Quest/Client/Q76128ClientConfig")

local this
local subIDs = Q76128ClientConfig.SubIDs
local points = Q76128ClientConfig.Points

function Q7612802Trigger:OnPostDataPrepare()
    print("Q7612802Trigger - OnPostDataPrepare")
    this = self
end

function Q7612802Trigger:OnPostComponentPrepare()
    print("Q7612802Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76128)
end

function Q7612802Trigger:TriggerIn()
    print("Q7612802Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7612802)
    this:DestroySelf()
end

function Q7612802Trigger:PreTriggerIn()
    print("Q7612802Trigger - PreTriggerIn")
end

function Q7612802Trigger:LightUpTriggerIn()
    print("Q7612802Trigger - LightUpTriggerIn")
end

function Q7612802Trigger:TriggerOut()
    print("Q7612802Trigger - TriggerOut")
end

return Q7612802Trigger
