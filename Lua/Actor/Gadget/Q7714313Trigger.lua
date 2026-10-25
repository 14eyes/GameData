require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714313Trigger = class("Q7714313Trigger", GadgetActorProxy)
Q7714313Trigger.defaultAlias = "Q7714313Trigger"
local Q77143ClientConfig = require("Quest/Client/Q77143ClientConfig")

local this
local subIDs = Q77143ClientConfig.SubIDs
local npcs = Q77143ClientConfig.Npcs
local points = Q77143ClientConfig.Points

function Q7714313Trigger:OnPostDataPrepare()
    print("Q7714313Trigger - OnPostDataPrepare")
    this = self
end

function Q7714313Trigger:OnPostComponentPrepare()
    print("Q7714313Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77143)
end

function Q7714313Trigger:TriggerIn()
    print("Q7714313Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7714313)
    this:DestroySelf()
end

function Q7714313Trigger:PreTriggerIn()
    print("Q7714313Trigger - PreTriggerIn")
end

function Q7714313Trigger:LightUpTriggerIn()
    print("Q7714313Trigger - LightUpTriggerIn")
end

function Q7714313Trigger:TriggerOut()
    print("Q7714313Trigger - TriggerOut")
end

return Q7714313Trigger
