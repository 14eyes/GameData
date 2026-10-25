require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7521105Trigger = class("Q7521105Trigger", GadgetActorProxy)
Q7521105Trigger.defaultAlias = "Q7521105Trigger"
local Q75211ClientConfig = require("Quest/Client/Q75211ClientConfig")

local this
local subIDs = Q75211ClientConfig.SubIDs
local npcs = Q75211ClientConfig.Npcs
local points = Q75211ClientConfig.Points

function Q7521105Trigger:OnPostDataPrepare()
    print("Q7521105Trigger - OnPostDataPrepare")
    this = self
end

function Q7521105Trigger:OnPostComponentPrepare()
    print("Q7521105Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75211)
end

function Q7521105Trigger:TriggerIn()
    print("Q7521105Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7521105)
    this:DestroySelf()
end

function Q7521105Trigger:PreTriggerIn()
    print("Q7521105Trigger - PreTriggerIn")
end

function Q7521105Trigger:LightUpTriggerIn()
    print("Q7521105Trigger - LightUpTriggerIn")
end

function Q7521105Trigger:TriggerOut()
    print("Q7521105Trigger - TriggerOut")
end

return Q7521105Trigger
