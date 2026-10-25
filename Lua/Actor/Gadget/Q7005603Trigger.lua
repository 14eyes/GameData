require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7005603Trigger = class("Q7005603Trigger", GadgetActorProxy)
Q7005603Trigger.defaultAlias = "Q7005603Trigger"
local Q70056ClientConfig = require("Quest/Client/Q70056ClientConfig")

local this
local subIDs = Q70056ClientConfig.SubIDs
local points = Q70056ClientConfig.Points

function Q7005603Trigger:OnPostDataPrepare()
    print("Q7005603Trigger - OnPostDataPrepare")
    this = self
end

function Q7005603Trigger:OnPostComponentPrepare()
    print("Q7005603Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70056)
end

function Q7005603Trigger:TriggerIn()
    print("Q7005603Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7005603)
    this:DestroySelf()
end

function Q7005603Trigger:PreTriggerIn()
    print("Q7005603Trigger - PreTriggerIn")
end

function Q7005603Trigger:LightUpTriggerIn()
    print("Q7005603Trigger - LightUpTriggerIn")
end

function Q7005603Trigger:TriggerOut()
    print("Q7005603Trigger - TriggerOut")
end

return Q7005603Trigger
