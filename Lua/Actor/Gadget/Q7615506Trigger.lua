require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615506Trigger = class("Q7615506Trigger", GadgetActorProxy)
Q7615506Trigger.defaultAlias = "Q7615506Trigger"
local Q76155ClientConfig = require("Quest/Client/Q76155ClientConfig")

local this
local subIDs = Q76155ClientConfig.SubIDs
local points = Q76155ClientConfig.Points

function Q7615506Trigger:OnPostDataPrepare()
    print("Q7615506Trigger - OnPostDataPrepare")
    this = self
end

function Q7615506Trigger:OnPostComponentPrepare()
    print("Q7615506Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(265, 910, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76155)
end

function Q7615506Trigger:TriggerIn()
    print("Q7615506Trigger - TriggerIn")
end

function Q7615506Trigger:PreTriggerIn()
    print("Q7615506Trigger - PreTriggerIn")
end

function Q7615506Trigger:LightUpTriggerIn()
    print("Q7615506Trigger - LightUpTriggerIn")
end

function Q7615506Trigger:TriggerOut()
    print("Q7615506Trigger - TriggerOut")
    actorUtils.FinishQuestID(true, 7615506)
    this:DestroySelf()
end

return Q7615506Trigger
