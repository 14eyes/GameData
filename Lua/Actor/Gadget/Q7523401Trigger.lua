require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7523401Trigger = class("Q7523401Trigger", GadgetActorProxy)
Q7523401Trigger.defaultAlias = "Q7523401Trigger"
local Q75234ClientConfig = require("Quest/Client/Q75234ClientConfig")

local this
local subIDs = Q75234ClientConfig.SubIDs
local points = Q75234ClientConfig.Points

function Q7523401Trigger:OnPostDataPrepare()
    print("Q7523401Trigger - OnPostDataPrepare")
    this = self
end

function Q7523401Trigger:OnPostComponentPrepare()
    print("Q7523401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75234)
end

function Q7523401Trigger:TriggerIn()
    print("Q7523401Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7523401)
    this:DestroySelf()
end

function Q7523401Trigger:PreTriggerIn()
    print("Q7523401Trigger - PreTriggerIn")
end

function Q7523401Trigger:LightUpTriggerIn()
    print("Q7523401Trigger - LightUpTriggerIn")
end

function Q7523401Trigger:TriggerOut()
    print("Q7523401Trigger - TriggerOut")
end

return Q7523401Trigger
