require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615502Trigger = class("Q7615502Trigger", GadgetActorProxy)
Q7615502Trigger.defaultAlias = "Q7615502Trigger"
local Q76155ClientConfig = require("Quest/Client/Q76155ClientConfig")

local this
local subIDs = Q76155ClientConfig.SubIDs
local points = Q76155ClientConfig.Points

function Q7615502Trigger:OnPostDataPrepare()
    print("Q7615502Trigger - OnPostDataPrepare")
    this = self
end

function Q7615502Trigger:OnPostComponentPrepare()
    print("Q7615502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(266, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76155)
end

function Q7615502Trigger:TriggerIn()
    print("Q7615502Trigger - TriggerIn")
end

function Q7615502Trigger:PreTriggerIn()
    print("Q7615502Trigger - PreTriggerIn")
end

function Q7615502Trigger:LightUpTriggerIn()
    print("Q7615502Trigger - LightUpTriggerIn")
end

function Q7615502Trigger:TriggerOut()
    print("Q7615502Trigger - TriggerOut")
    actorUtils.FinishQuestID(true, 7615502)
    this:DestroySelf()
end

return Q7615502Trigger
