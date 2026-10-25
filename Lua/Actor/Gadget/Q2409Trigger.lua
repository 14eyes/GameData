require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2409Trigger = class("Q2409Trigger", GadgetActorProxy)
Q2409Trigger.defaultAlias = "Q2409Trigger"
local Q24ClientConfig = require("Quest/Client/Q24ClientConfig")

local this
local subIDs = Q24ClientConfig.SubIDs
local npcs = Q24ClientConfig.Npcs
local points = Q24ClientConfig.Points

function Q2409Trigger:OnPostDataPrepare()
    print("Q2409Trigger - OnPostDataPrepare")
    this = self
end

function Q2409Trigger:OnPostComponentPrepare()
    print("Q2409Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 24)
end

function Q2409Trigger:TriggerIn()
    print("Q2409Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 2409)
    this:DestroySelf()
end

function Q2409Trigger:PreTriggerIn()
    print("Q2409Trigger - PreTriggerIn")
end

function Q2409Trigger:LightUpTriggerIn()
    print("Q2409Trigger - LightUpTriggerIn")
end

function Q2409Trigger:TriggerOut()
    print("Q2409Trigger - TriggerOut")
end

return Q2409Trigger
