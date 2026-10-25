require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7521106Trigger = class("Q7521106Trigger", GadgetActorProxy)
Q7521106Trigger.defaultAlias = "Q7521106Trigger"
local Q75211ClientConfig = require("Quest/Client/Q75211ClientConfig")

local this
local subIDs = Q75211ClientConfig.SubIDs
local npcs = Q75211ClientConfig.Npcs
local points = Q75211ClientConfig.Points

function Q7521106Trigger:OnPostDataPrepare()
    print("Q7521106Trigger - OnPostDataPrepare")
    this = self
end

function Q7521106Trigger:OnPostComponentPrepare()
    print("Q7521106Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75211)
end

function Q7521106Trigger:TriggerIn()
    print("Q7521106Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7521106)
    this:DestroySelf()
end

function Q7521106Trigger:PreTriggerIn()
    print("Q7521106Trigger - PreTriggerIn")
end

function Q7521106Trigger:LightUpTriggerIn()
    print("Q7521106Trigger - LightUpTriggerIn")
end

function Q7521106Trigger:TriggerOut()
    print("Q7521106Trigger - TriggerOut")
end

return Q7521106Trigger
