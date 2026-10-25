require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615503Trigger = class("Q7615503Trigger", GadgetActorProxy)
Q7615503Trigger.defaultAlias = "Q7615503Trigger"
local Q76155ClientConfig = require("Quest/Client/Q76155ClientConfig")

local this
local subIDs = Q76155ClientConfig.SubIDs
local points = Q76155ClientConfig.Points

function Q7615503Trigger:OnPostDataPrepare()
    print("Q7615503Trigger - OnPostDataPrepare")
    this = self
end

function Q7615503Trigger:OnPostComponentPrepare()
    print("Q7615503Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(266, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76155)
end

function Q7615503Trigger:TriggerIn()
    print("Q7615503Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7615503)
    this:DestroySelf()
end

function Q7615503Trigger:PreTriggerIn()
    print("Q7615503Trigger - PreTriggerIn")
end

function Q7615503Trigger:LightUpTriggerIn()
    print("Q7615503Trigger - LightUpTriggerIn")
end

function Q7615503Trigger:TriggerOut()
    print("Q7615503Trigger - TriggerOut")
end

return Q7615503Trigger
