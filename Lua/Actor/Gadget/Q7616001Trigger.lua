require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7616001Trigger = class("Q7616001Trigger", GadgetActorProxy)
Q7616001Trigger.defaultAlias = "Q7616001Trigger"
local Q76160ClientConfig = require("Quest/Client/Q76160ClientConfig")

local this
local subIDs = Q76160ClientConfig.SubIDs
local points = Q76160ClientConfig.Points

function Q7616001Trigger:OnPostDataPrepare()
    print("Q7616001Trigger - OnPostDataPrepare")
    this = self
end

function Q7616001Trigger:OnPostComponentPrepare()
    print("Q7616001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76160)
end

function Q7616001Trigger:TriggerIn()
    print("Q7616001Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7616001)
    this:DestroySelf()
end

function Q7616001Trigger:PreTriggerIn()
    print("Q7616001Trigger - PreTriggerIn")
end

function Q7616001Trigger:LightUpTriggerIn()
    print("Q7616001Trigger - LightUpTriggerIn")
end

function Q7616001Trigger:TriggerOut()
    print("Q7616001Trigger - TriggerOut")
end

return Q7616001Trigger
