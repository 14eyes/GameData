require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615505Trigger = class("Q7615505Trigger", GadgetActorProxy)
Q7615505Trigger.defaultAlias = "Q7615505Trigger"
local Q76155ClientConfig = require("Quest/Client/Q76155ClientConfig")

local this
local subIDs = Q76155ClientConfig.SubIDs
local points = Q76155ClientConfig.Points

function Q7615505Trigger:OnPostDataPrepare()
    print("Q7615505Trigger - OnPostDataPrepare")
    this = self
end

function Q7615505Trigger:OnPostComponentPrepare()
    print("Q7615505Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(260, 902, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76155)
end

function Q7615505Trigger:TriggerIn()
    print("Q7615505Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7615505)
    this:DestroySelf()
end

function Q7615505Trigger:PreTriggerIn()
    print("Q7615505Trigger - PreTriggerIn")
end

function Q7615505Trigger:LightUpTriggerIn()
    print("Q7615505Trigger - LightUpTriggerIn")
end

function Q7615505Trigger:TriggerOut()
    print("Q7615505Trigger - TriggerOut")
end

return Q7615505Trigger
