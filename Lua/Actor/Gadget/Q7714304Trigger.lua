require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714304Trigger = class("Q7714304Trigger", GadgetActorProxy)
Q7714304Trigger.defaultAlias = "Q7714304Trigger"
local Q77143ClientConfig = require("Quest/Client/Q77143ClientConfig")

local this
local subIDs = Q77143ClientConfig.SubIDs
local npcs = Q77143ClientConfig.Npcs
local points = Q77143ClientConfig.Points

function Q7714304Trigger:OnPostDataPrepare()
    print("Q7714304Trigger - OnPostDataPrepare")
    this = self
end

function Q7714304Trigger:OnPostComponentPrepare()
    print("Q7714304Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77143)
end

function Q7714304Trigger:TriggerIn()
    print("Q7714304Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7714304)
    this:DestroySelf()
end

function Q7714304Trigger:PreTriggerIn()
    print("Q7714304Trigger - PreTriggerIn")
end

function Q7714304Trigger:LightUpTriggerIn()
    print("Q7714304Trigger - LightUpTriggerIn")
end

function Q7714304Trigger:TriggerOut()
    print("Q7714304Trigger - TriggerOut")
end

return Q7714304Trigger
