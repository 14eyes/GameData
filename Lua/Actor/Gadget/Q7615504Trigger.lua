require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615504Trigger = class("Q7615504Trigger", GadgetActorProxy)
Q7615504Trigger.defaultAlias = "Q7615504Trigger"
local Q76155ClientConfig = require("Quest/Client/Q76155ClientConfig")

local this
local subIDs = Q76155ClientConfig.SubIDs
local points = Q76155ClientConfig.Points

function Q7615504Trigger:OnPostDataPrepare()
    print("Q7615504Trigger - OnPostDataPrepare")
    this = self
end

function Q7615504Trigger:OnPostComponentPrepare()
    print("Q7615504Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(266, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76155)
end

function Q7615504Trigger:TriggerIn()
    print("Q7615504Trigger - TriggerIn")
end

function Q7615504Trigger:PreTriggerIn()
    print("Q7615504Trigger - PreTriggerIn")
end

function Q7615504Trigger:LightUpTriggerIn()
    print("Q7615504Trigger - LightUpTriggerIn")
end

function Q7615504Trigger:TriggerOut()
    print("Q7615504Trigger - TriggerOut")
    actorUtils.FinishQuestID(true, 7615504)
    this:DestroySelf()
end

return Q7615504Trigger
