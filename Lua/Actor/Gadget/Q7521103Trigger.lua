require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7521103Trigger = class("Q7521103Trigger", GadgetActorProxy)
Q7521103Trigger.defaultAlias = "Q7521103Trigger"
local Q75211ClientConfig = require("Quest/Client/Q75211ClientConfig")

local this
local subIDs = Q75211ClientConfig.SubIDs
local npcs = Q75211ClientConfig.Npcs
local points = Q75211ClientConfig.Points

function Q7521103Trigger:OnPostDataPrepare()
    print("Q7521103Trigger - OnPostDataPrepare")
    this = self
end

function Q7521103Trigger:OnPostComponentPrepare()
    print("Q7521103Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(44, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75211)
end

function Q7521103Trigger:TriggerIn()
    print("Q7521103Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7521103)
    this:DestroySelf()
end

function Q7521103Trigger:PreTriggerIn()
    print("Q7521103Trigger - PreTriggerIn")
end

function Q7521103Trigger:LightUpTriggerIn()
    print("Q7521103Trigger - LightUpTriggerIn")
end

function Q7521103Trigger:TriggerOut()
    print("Q7521103Trigger - TriggerOut")
end

return Q7521103Trigger
