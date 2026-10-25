require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7520603Trigger = class("Q7520603Trigger", GadgetActorProxy)
Q7520603Trigger.defaultAlias = "Q7520603Trigger"
local Q75206ClientConfig = require("Quest/Client/Q75206ClientConfig")

local this
local subIDs = Q75206ClientConfig.SubIDs
local points = Q75206ClientConfig.Points

function Q7520603Trigger:OnPostDataPrepare()
    print("Q7520603Trigger - OnPostDataPrepare")
    this = self
end

function Q7520603Trigger:OnPostComponentPrepare()
    print("Q7520603Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75206)
end

function Q7520603Trigger:TriggerIn()
    print("Q7520603Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7520603)
    this:DestroySelf()
end

function Q7520603Trigger:PreTriggerIn()
    print("Q7520603Trigger - PreTriggerIn")
end

function Q7520603Trigger:LightUpTriggerIn()
    print("Q7520603Trigger - LightUpTriggerIn")
end

function Q7520603Trigger:TriggerOut()
    print("Q7520603Trigger - TriggerOut")
end

return Q7520603Trigger
