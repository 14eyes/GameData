require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711106Trigger = class("Q7711106Trigger", GadgetActorProxy)
Q7711106Trigger.defaultAlias = "Q7711106Trigger"
local Q77111ClientConfig = require("Quest/Client/Q77111ClientConfig")

local this
local subIDs = Q77111ClientConfig.SubIDs
local npcs = Q77111ClientConfig.Npcs
local points = Q77111ClientConfig.Points

function Q7711106Trigger:OnPostDataPrepare()
    print("Q7711106Trigger - OnPostDataPrepare")
    this = self
end

function Q7711106Trigger:OnPostComponentPrepare()
    print("Q7711106Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77111)
end

function Q7711106Trigger:TriggerIn()
    print("Q7711106Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7711106})
    this:DestroySelf()
end

function Q7711106Trigger:PreTriggerIn()
    print("Q7711106Trigger - PreTriggerIn")
end

function Q7711106Trigger:LightUpTriggerIn()
    print("Q7711106Trigger - LightUpTriggerIn")
end

function Q7711106Trigger:TriggerOut()
    print("Q7711106Trigger - TriggerOut")
end

return Q7711106Trigger
