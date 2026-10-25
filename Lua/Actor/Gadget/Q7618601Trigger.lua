require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7618601Trigger = class("Q7618601Trigger", GadgetActorProxy)
Q7618601Trigger.defaultAlias = "Q7618601Trigger"
local Q76186ClientConfig = require("Quest/Client/Q76186ClientConfig")

local this
local subIDs = Q76186ClientConfig.SubIDs
local npcs = Q76186ClientConfig.Npcs
local points = Q76186ClientConfig.Points

function Q7618601Trigger:OnPostDataPrepare()
    print("Q7618601Trigger - OnPostDataPrepare")
    this = self
end

function Q7618601Trigger:OnPostComponentPrepare()
    print("Q7618601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76186)
end

function Q7618601Trigger:TriggerIn()
    print("Q7618601Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7618601})
    this:DestroySelf()
end

function Q7618601Trigger:PreTriggerIn()
    print("Q7618601Trigger - PreTriggerIn")
end

function Q7618601Trigger:LightUpTriggerIn()
    print("Q7618601Trigger - LightUpTriggerIn")
end

function Q7618601Trigger:TriggerOut()
    print("Q7618601Trigger - TriggerOut")
end

return Q7618601Trigger
