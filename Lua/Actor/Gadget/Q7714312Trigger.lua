require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714312Trigger = class("Q7714312Trigger", GadgetActorProxy)
Q7714312Trigger.defaultAlias = "Q7714312Trigger"
local Q77143ClientConfig = require("Quest/Client/Q77143ClientConfig")

local this
local subIDs = Q77143ClientConfig.SubIDs
local npcs = Q77143ClientConfig.Npcs
local points = Q77143ClientConfig.Points

function Q7714312Trigger:OnPostDataPrepare()
    print("Q7714312Trigger - OnPostDataPrepare")
    this = self
end

function Q7714312Trigger:OnPostComponentPrepare()
    print("Q7714312Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77143)
end

function Q7714312Trigger:TriggerIn()
    print("Q7714312Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7714312)
    this:DestroySelf()
end

function Q7714312Trigger:PreTriggerIn()
    print("Q7714312Trigger - PreTriggerIn")
end

function Q7714312Trigger:LightUpTriggerIn()
    print("Q7714312Trigger - LightUpTriggerIn")
end

function Q7714312Trigger:TriggerOut()
    print("Q7714312Trigger - TriggerOut")
end

return Q7714312Trigger
