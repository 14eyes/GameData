require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614601Trigger = class("Q7614601Trigger", GadgetActorProxy)
Q7614601Trigger.defaultAlias = "Q7614601Trigger"
local Q76146ClientConfig = require("Quest/Client/Q76146ClientConfig")

local this
local subIDs = Q76146ClientConfig.SubIDs
local npcs = Q76146ClientConfig.Npcs
local points = Q76146ClientConfig.Points

function Q7614601Trigger:OnPostDataPrepare()
    print("Q7614601Trigger - OnPostDataPrepare")
    this = self
end

function Q7614601Trigger:OnPostComponentPrepare()
    print("Q7614601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76146)
end

function Q7614601Trigger:TriggerIn()
    print("Q7614601Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614601)
    this:DestroySelf()
end

function Q7614601Trigger:PreTriggerIn()
    print("Q7614601Trigger - PreTriggerIn")
end

function Q7614601Trigger:LightUpTriggerIn()
    print("Q7614601Trigger - LightUpTriggerIn")
end

function Q7614601Trigger:TriggerOut()
    print("Q7614601Trigger - TriggerOut")
end

return Q7614601Trigger
