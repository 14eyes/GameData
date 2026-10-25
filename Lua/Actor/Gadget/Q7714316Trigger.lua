require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714316Trigger = class("Q7714316Trigger", GadgetActorProxy)
Q7714316Trigger.defaultAlias = "Q7714316Trigger"
local Q77143ClientConfig = require("Quest/Client/Q77143ClientConfig")

local this
local subIDs = Q77143ClientConfig.SubIDs
local npcs = Q77143ClientConfig.Npcs
local points = Q77143ClientConfig.Points

function Q7714316Trigger:OnPostDataPrepare()
    print("Q7714316Trigger - OnPostDataPrepare")
    this = self
end

function Q7714316Trigger:OnPostComponentPrepare()
    print("Q7714316Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77143)
end

function Q7714316Trigger:TriggerIn()
    print("Q7714316Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7714316)
    this:DestroySelf()
end

function Q7714316Trigger:PreTriggerIn()
    print("Q7714316Trigger - PreTriggerIn")
end

function Q7714316Trigger:LightUpTriggerIn()
    print("Q7714316Trigger - LightUpTriggerIn")
end

function Q7714316Trigger:TriggerOut()
    print("Q7714316Trigger - TriggerOut")
end

return Q7714316Trigger
