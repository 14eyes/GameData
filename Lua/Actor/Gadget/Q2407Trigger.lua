require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2407Trigger = class("Q2407Trigger", GadgetActorProxy)
Q2407Trigger.defaultAlias = "Q2407Trigger"
local Q24ClientConfig = require("Quest/Client/Q24ClientConfig")

local this
local subIDs = Q24ClientConfig.SubIDs
local npcs = Q24ClientConfig.Npcs
local points = Q24ClientConfig.Points

function Q2407Trigger:OnPostDataPrepare()
    print("Q2407Trigger - OnPostDataPrepare")
    this = self
end

function Q2407Trigger:OnPostComponentPrepare()
    print("Q2407Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 24)
end

function Q2407Trigger:TriggerIn()
    print("Q2407Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 2407)
    this:DestroySelf()
end

function Q2407Trigger:PreTriggerIn()
    print("Q2407Trigger - PreTriggerIn")
end

function Q2407Trigger:LightUpTriggerIn()
    print("Q2407Trigger - LightUpTriggerIn")
end

function Q2407Trigger:TriggerOut()
    print("Q2407Trigger - TriggerOut")
end

return Q2407Trigger
