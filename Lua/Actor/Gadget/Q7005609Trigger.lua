require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7005609Trigger = class("Q7005609Trigger", GadgetActorProxy)
Q7005609Trigger.defaultAlias = "Q7005609Trigger"
local Q70056ClientConfig = require("Quest/Client/Q70056ClientConfig")

local this
local subIDs = Q70056ClientConfig.SubIDs
local points = Q70056ClientConfig.Points

function Q7005609Trigger:OnPostDataPrepare()
    print("Q7005609Trigger - OnPostDataPrepare")
    this = self
end

function Q7005609Trigger:OnPostComponentPrepare()
    print("Q7005609Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70056)
end

function Q7005609Trigger:TriggerIn()
    print("Q7005609Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7005609)
    this:DestroySelf()
end

function Q7005609Trigger:PreTriggerIn()
    print("Q7005609Trigger - PreTriggerIn")
end

function Q7005609Trigger:LightUpTriggerIn()
    print("Q7005609Trigger - LightUpTriggerIn")
end

function Q7005609Trigger:TriggerOut()
    print("Q7005609Trigger - TriggerOut")
end

return Q7005609Trigger
