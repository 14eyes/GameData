require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1917003Trigger = class("Q1917003Trigger", GadgetActorProxy)
Q1917003Trigger.defaultAlias = "Q1917003Trigger"
local Q19170ClientConfig = require("Quest/Client/Q19170ClientConfig")

local this
local subIDs = Q19170ClientConfig.SubIDs
local npcs = Q19170ClientConfig.Npcs

function Q1917003Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1917003Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(15, 6, true, {x = 0.0, y = 2.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1917003Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1917003)
    this:DestroySelf()
end

function Q1917003Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1917003Trigger
