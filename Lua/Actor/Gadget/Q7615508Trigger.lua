require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615508Trigger = class("Q7615508Trigger", GadgetActorProxy)
Q7615508Trigger.defaultAlias = "Q7615508Trigger"
local Q76155ClientConfig = require("Quest/Client/Q76155ClientConfig")

local this
local subIDs = Q76155ClientConfig.SubIDs
local points = Q76155ClientConfig.Points

function Q7615508Trigger:OnPostDataPrepare()
    print("Q7615508Trigger - OnPostDataPrepare")
    this = self
end

function Q7615508Trigger:OnPostComponentPrepare()
    print("Q7615508Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(265, 910, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76155)
end

function Q7615508Trigger:TriggerIn()
    print("Q7615508Trigger - TriggerIn")
end

function Q7615508Trigger:PreTriggerIn()
    print("Q7615508Trigger - PreTriggerIn")
end

function Q7615508Trigger:LightUpTriggerIn()
    print("Q7615508Trigger - LightUpTriggerIn")
end

function Q7615508Trigger:TriggerOut()
    print("Q7615508Trigger - TriggerOut")
    actorUtils.FinishQuestID(true, 7615508)
    this:DestroySelf()
end

return Q7615508Trigger
