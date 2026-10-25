require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7005607Trigger = class("Q7005607Trigger", GadgetActorProxy)
Q7005607Trigger.defaultAlias = "Q7005607Trigger"
local Q70056ClientConfig = require("Quest/Client/Q70056ClientConfig")

local this
local subIDs = Q70056ClientConfig.SubIDs
local points = Q70056ClientConfig.Points

function Q7005607Trigger:OnPostDataPrepare()
    print("Q7005607Trigger - OnPostDataPrepare")
    this = self
end

function Q7005607Trigger:OnPostComponentPrepare()
    print("Q7005607Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70056)
end

function Q7005607Trigger:TriggerIn()
    print("Q7005607Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7005607)
    this:DestroySelf()
end

function Q7005607Trigger:PreTriggerIn()
    print("Q7005607Trigger - PreTriggerIn")
end

function Q7005607Trigger:LightUpTriggerIn()
    print("Q7005607Trigger - LightUpTriggerIn")
end

function Q7005607Trigger:TriggerOut()
    print("Q7005607Trigger - TriggerOut")
end

return Q7005607Trigger
