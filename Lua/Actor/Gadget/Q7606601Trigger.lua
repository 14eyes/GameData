require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7606601Trigger = class("Q7606601Trigger", GadgetActorProxy)
Q7606601Trigger.defaultAlias = "Q7606601Trigger"
local Q76066ClientConfig = require("Quest/Client/Q76066ClientConfig")

local this
local subIDs = Q76066ClientConfig.SubIDs
local points = Q76066ClientConfig.Points

function Q7606601Trigger:OnPostDataPrepare()
    print("Q7606601Trigger - OnPostDataPrepare")
    this = self
end

function Q7606601Trigger:OnPostComponentPrepare()
    print("Q7606601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76066)
end

function Q7606601Trigger:TriggerIn()
    print("Q7606601Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7606601)
    this:DestroySelf()
end

function Q7606601Trigger:PreTriggerIn()
    print("Q7606601Trigger - PreTriggerIn")
end

function Q7606601Trigger:LightUpTriggerIn()
    print("Q7606601Trigger - LightUpTriggerIn")
end

function Q7606601Trigger:TriggerOut()
    print("Q7606601Trigger - TriggerOut")
end

return Q7606601Trigger
