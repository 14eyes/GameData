require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7623101Trigger = class("Q7623101Trigger", GadgetActorProxy)
Q7623101Trigger.defaultAlias = "Q7623101Trigger"
local Q76231ClientConfig = require("Quest/Client/Q76231ClientConfig")

local this
local subIDs = Q76231ClientConfig.SubIDs

function Q7623101Trigger:OnPostDataPrepare()
    print("Q7623101Trigger - OnPostDataPrepare")
    this = self
end

function Q7623101Trigger:OnPostComponentPrepare()
    print("Q7623101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76231)
end

function Q7623101Trigger:TriggerIn()
    print("Q7623101Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7623101)
    this:DestroySelf()
end

function Q7623101Trigger:PreTriggerIn()
    print("Q7623101Trigger - PreTriggerIn")
end

function Q7623101Trigger:LightUpTriggerIn()
    print("Q7623101Trigger - LightUpTriggerIn")
end

function Q7623101Trigger:TriggerOut()
    print("Q7623101Trigger - TriggerOut")
end

return Q7623101Trigger
