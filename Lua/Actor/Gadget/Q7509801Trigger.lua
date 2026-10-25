require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7509801Trigger = class("Q7509801Trigger", GadgetActorProxy)
Q7509801Trigger.defaultAlias = "Q7509801Trigger"
local Q75098ClientConfig = require("Quest/Client/Q75098ClientConfig")

local this
local subIDs = Q75098ClientConfig.SubIDs
local npcs = Q75098ClientConfig.Npcs
local points = Q75098ClientConfig.Points

function Q7509801Trigger:OnPostDataPrepare()
    print("Q7509801Trigger - OnPostDataPrepare")
    this = self
end

function Q7509801Trigger:OnPostComponentPrepare()
    print("Q7509801Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75098)
end

function Q7509801Trigger:TriggerIn()
    print("Q7509801Trigger - TriggerIn")
    this:DestroySelf()
    actorUtils.FinishQuestID(false, 7509801)
end

function Q7509801Trigger:PreTriggerIn()
    print("Q7509801Trigger - PreTriggerIn")
end

function Q7509801Trigger:LightUpTriggerIn()
    print("Q7509801Trigger - LightUpTriggerIn")
end

function Q7509801Trigger:TriggerOut()
    print("Q7509801Trigger - TriggerOut")
end

return Q7509801Trigger
