require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615601Trigger = class("Q7615601Trigger", GadgetActorProxy)
Q7615601Trigger.defaultAlias = "Q7615601Trigger"
local Q76156ClientConfig = require("Quest/Client/Q76156ClientConfig")

local this
local subIDs = Q76156ClientConfig.SubIDs
local points = Q76156ClientConfig.Points

function Q7615601Trigger:OnPostDataPrepare()
    print("Q7615601Trigger - OnPostDataPrepare")
    this = self
end

function Q7615601Trigger:OnPostComponentPrepare()
    print("Q7615601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76156)
end

function Q7615601Trigger:TriggerIn()
    print("Q7615601Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7615601)
    this:DestroySelf()
end

function Q7615601Trigger:PreTriggerIn()
    print("Q7615601Trigger - PreTriggerIn")
end

function Q7615601Trigger:LightUpTriggerIn()
    print("Q7615601Trigger - LightUpTriggerIn")
end

function Q7615601Trigger:TriggerOut()
    print("Q7615601Trigger - TriggerOut")
end

return Q7615601Trigger
