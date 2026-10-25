require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7721003Trigger = class("Q7721003Trigger", GadgetActorProxy)
Q7721003Trigger.defaultAlias = "Q7721003Trigger"
local Q77210ClientConfig = require("Quest/Client/Q77210ClientConfig")

local this
local subIDs = Q77210ClientConfig.SubIDs
local npcs = Q77210ClientConfig.Npcs
local points = Q77210ClientConfig.Points

function Q7721003Trigger:OnPostDataPrepare()
    print("Q7721003Trigger - OnPostDataPrepare")
    this = self
end

function Q7721003Trigger:OnPostComponentPrepare()
    print("Q7721003Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77210)
end

function Q7721003Trigger:TriggerIn()
    print("Q7721003Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7721003})
    this:DestroySelf()
end

function Q7721003Trigger:PreTriggerIn()
    print("Q7721003Trigger - PreTriggerIn")
end

function Q7721003Trigger:LightUpTriggerIn()
    print("Q7721003Trigger - LightUpTriggerIn")
end

function Q7721003Trigger:TriggerOut()
    print("Q7721003Trigger - TriggerOut")
end

return Q7721003Trigger
