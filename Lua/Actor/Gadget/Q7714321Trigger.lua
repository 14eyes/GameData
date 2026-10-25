require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714321Trigger = class("Q7714321Trigger", GadgetActorProxy)
Q7714321Trigger.defaultAlias = "Q7714321Trigger"
local Q77143ClientConfig = require("Quest/Client/Q77143ClientConfig")

local this
local subIDs = Q77143ClientConfig.SubIDs
local npcs = Q77143ClientConfig.Npcs
local points = Q77143ClientConfig.Points

function Q7714321Trigger:OnPostDataPrepare()
    print("Q7714321Trigger - OnPostDataPrepare")
    this = self
end

function Q7714321Trigger:OnPostComponentPrepare()
    print("Q7714321Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77143)
end

function Q7714321Trigger:TriggerIn()
    print("Q7714321Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7714321)
    this:DestroySelf()
end

function Q7714321Trigger:PreTriggerIn()
    print("Q7714321Trigger - PreTriggerIn")
end

function Q7714321Trigger:LightUpTriggerIn()
    print("Q7714321Trigger - LightUpTriggerIn")
end

function Q7714321Trigger:TriggerOut()
    print("Q7714321Trigger - TriggerOut")
end

return Q7714321Trigger
