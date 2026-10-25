require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006401Trigger = class("Q7006401Trigger", GadgetActorProxy)
Q7006401Trigger.defaultAlias = "Q7006401Trigger"
local Q70064ClientConfig = require("Quest/Client/Q70064ClientConfig")

local this
local subIDs = Q70064ClientConfig.SubIDs
local points = Q70064ClientConfig.Points

function Q7006401Trigger:OnPostDataPrepare()
    print("Q7006401Trigger - OnPostDataPrepare")
    this = self
end

function Q7006401Trigger:OnPostComponentPrepare()
    print("Q7006401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70064)
end

function Q7006401Trigger:TriggerIn()
    print("Q7006401Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006401)
    this:DestroySelf()
end

function Q7006401Trigger:PreTriggerIn()
    print("Q7006401Trigger - PreTriggerIn")
end

function Q7006401Trigger:LightUpTriggerIn()
    print("Q7006401Trigger - LightUpTriggerIn")
end

function Q7006401Trigger:TriggerOut()
    print("Q7006401Trigger - TriggerOut")
end

return Q7006401Trigger
