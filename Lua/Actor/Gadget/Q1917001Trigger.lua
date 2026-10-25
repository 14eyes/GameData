require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1917001Trigger = class("Q1917001Trigger", GadgetActorProxy)
Q1917001Trigger.defaultAlias = "Q1917001Trigger"
local Q19170ClientConfig = require("Quest/Client/Q19170ClientConfig")

local this
local subIDs = Q19170ClientConfig.SubIDs
local npcs = Q19170ClientConfig.Npcs

function Q1917001Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1917001Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1917001Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1917001)
    this:DestroySelf()
end

function Q1917001Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1917001Trigger
