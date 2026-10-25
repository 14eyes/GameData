require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7711601Trigger = class("Q7711601Trigger", GadgetActorProxy)
Q7711601Trigger.defaultAlias = "Q7711601Trigger"
local Q77116ClientConfig = require("Quest/Client/Q77116ClientConfig")

local this
local subIDs = Q77116ClientConfig.SubIDs
local npcs = Q77116ClientConfig.Npcs
local points = Q77116ClientConfig.Points

function Q7711601Trigger:OnPostDataPrepare()
    print("Q7711601Trigger - OnPostDataPrepare")
    this = self
end

function Q7711601Trigger:OnPostComponentPrepare()
    print("Q7711601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77116)
end

function Q7711601Trigger:TriggerIn()
    print("Q7711601Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7711601)
    this:DestroySelf()
end

function Q7711601Trigger:PreTriggerIn()
    print("Q7711601Trigger - PreTriggerIn")
end

function Q7711601Trigger:LightUpTriggerIn()
    print("Q7711601Trigger - LightUpTriggerIn")
end

function Q7711601Trigger:TriggerOut()
    print("Q7711601Trigger - TriggerOut")
end

return Q7711601Trigger
