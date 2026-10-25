require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711201Trigger = class("Q7711201Trigger", GadgetActorProxy)
Q7711201Trigger.defaultAlias = "Q7711201Trigger"
local Q77112ClientConfig = require("Quest/Client/Q77112ClientConfig")

local this
local subIDs = Q77112ClientConfig.SubIDs
local npcs = Q77112ClientConfig.Npcs
local points = Q77112ClientConfig.Points

function Q7711201Trigger:OnPostDataPrepare()
    print("Q7711201Trigger - OnPostDataPrepare")
    this = self
end

function Q7711201Trigger:OnPostComponentPrepare()
    print("Q7711201Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77112)
end

function Q7711201Trigger:TriggerIn()
    print("Q7711201Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7711201})
    this:DestroySelf()
end

function Q7711201Trigger:PreTriggerIn()
    print("Q7711201Trigger - PreTriggerIn")
end

function Q7711201Trigger:LightUpTriggerIn()
    print("Q7711201Trigger - LightUpTriggerIn")
end

function Q7711201Trigger:TriggerOut()
    print("Q7711201Trigger - TriggerOut")
end

return Q7711201Trigger
