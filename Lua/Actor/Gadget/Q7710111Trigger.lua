require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710111Trigger = class("Q7710111Trigger", GadgetActorProxy)
Q7710111Trigger.defaultAlias = "Q7710111Trigger"
local Q77101ClientConfig = require("Quest/Client/Q77101ClientConfig")

local this
local subIDs = Q77101ClientConfig.SubIDs
local npcs = Q77101ClientConfig.Npcs
local points = Q77101ClientConfig.Points

function Q7710111Trigger:OnPostDataPrepare()
    print("Q7710111Trigger - OnPostDataPrepare")
    this = self
end

function Q7710111Trigger:OnPostComponentPrepare()
    print("Q7710111Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77101)
end

function Q7710111Trigger:TriggerIn()
    print("Q7710111Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710111)
    this:DestroySelf()
end

function Q7710111Trigger:PreTriggerIn()
    print("Q7710111Trigger - PreTriggerIn")
end

function Q7710111Trigger:LightUpTriggerIn()
    print("Q7710111Trigger - LightUpTriggerIn")
end

function Q7710111Trigger:TriggerOut()
    print("Q7710111Trigger - TriggerOut")
end

return Q7710111Trigger
