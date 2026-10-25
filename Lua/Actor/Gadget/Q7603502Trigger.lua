require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7603502Trigger = class("Q7603502Trigger", GadgetActorProxy)
Q7603502Trigger.defaultAlias = "Q7603502Trigger"
local Q76035ClientConfig = require("Quest/Client/Q76035ClientConfig")

local this
local subIDs = Q76035ClientConfig.SubIDs
local npcs = Q76035ClientConfig.Npcs

function Q7603502Trigger:OnPostDataPrepare()
    print("Q7603502Trigger - OnPostDataPrepare")
    this = self
end

function Q7603502Trigger:OnPostComponentPrepare()
    print("Q7603502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(64.606445, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76035)
end

function Q7603502Trigger:TriggerIn()
    print("Q7603502Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7603502)
    this:DestroySelf()
end

function Q7603502Trigger:PreTriggerIn()
    print("Q7603502Trigger - PreTriggerIn")
end

function Q7603502Trigger:LightUpTriggerIn()
    print("Q7603502Trigger - LightUpTriggerIn")
end

function Q7603502Trigger:TriggerOut()
    print("Q7603502Trigger - TriggerOut")
end

return Q7603502Trigger
