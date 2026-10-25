require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615507Trigger = class("Q7615507Trigger", GadgetActorProxy)
Q7615507Trigger.defaultAlias = "Q7615507Trigger"
local Q76155ClientConfig = require("Quest/Client/Q76155ClientConfig")

local this
local subIDs = Q76155ClientConfig.SubIDs
local points = Q76155ClientConfig.Points

function Q7615507Trigger:OnPostDataPrepare()
    print("Q7615507Trigger - OnPostDataPrepare")
    this = self
end

function Q7615507Trigger:OnPostComponentPrepare()
    print("Q7615507Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(260, 902, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76155)
end

function Q7615507Trigger:TriggerIn()
    print("Q7615507Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7615507)
    this:DestroySelf()
end

function Q7615507Trigger:PreTriggerIn()
    print("Q7615507Trigger - PreTriggerIn")
end

function Q7615507Trigger:LightUpTriggerIn()
    print("Q7615507Trigger - LightUpTriggerIn")
end

function Q7615507Trigger:TriggerOut()
    print("Q7615507Trigger - TriggerOut")
end

return Q7615507Trigger
