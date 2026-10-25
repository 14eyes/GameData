require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7520601Trigger = class("Q7520601Trigger", GadgetActorProxy)
Q7520601Trigger.defaultAlias = "Q7520601Trigger"
local Q75206ClientConfig = require("Quest/Client/Q75206ClientConfig")

local this
local subIDs = Q75206ClientConfig.SubIDs
local points = Q75206ClientConfig.Points

function Q7520601Trigger:OnPostDataPrepare()
    print("Q7520601Trigger - OnPostDataPrepare")
    this = self
end

function Q7520601Trigger:OnPostComponentPrepare()
    print("Q7520601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75206)
end

function Q7520601Trigger:TriggerIn()
    print("Q7520601Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7520601)
    this:DestroySelf()
end

function Q7520601Trigger:PreTriggerIn()
    print("Q7520601Trigger - PreTriggerIn")
end

function Q7520601Trigger:LightUpTriggerIn()
    print("Q7520601Trigger - LightUpTriggerIn")
end

function Q7520601Trigger:TriggerOut()
    print("Q7520601Trigger - TriggerOut")
end

return Q7520601Trigger
