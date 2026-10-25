require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006804Trigger = class("Q7006804Trigger", GadgetActorProxy)
Q7006804Trigger.defaultAlias = "Q7006804Trigger"
local Q70068ClientConfig = require("Quest/Client/Q70068ClientConfig")

local this
local subIDs = Q70068ClientConfig.SubIDs

function Q7006804Trigger:OnPostDataPrepare()
    print("Q7006804Trigger - OnPostDataPrepare")
    this = self
end

function Q7006804Trigger:OnPostComponentPrepare()
    print("Q7006804Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70068)
end

function Q7006804Trigger:TriggerIn()
    print("Q7006804Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006733)
end

function Q7006804Trigger:PreTriggerIn()
    print("Q7006804Trigger - PreTriggerIn")
end

function Q7006804Trigger:LightUpTriggerIn()
    print("Q7006804Trigger - LightUpTriggerIn")
end

function Q7006804Trigger:TriggerOut()
    print("Q7006804Trigger - TriggerOut")
end

return Q7006804Trigger
