require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1917201Trigger = class("Q1917201Trigger", GadgetActorProxy)
Q1917201Trigger.defaultAlias = "Q1917201Trigger"
local Q19172ClientConfig = require("Quest/Client/Q19172ClientConfig")

local this
local subIDs = Q19172ClientConfig.SubIDs
local npcs = Q19172ClientConfig.Npcs

function Q1917201Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1917201Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1917201Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1917201)
    this:DestroySelf()
end

function Q1917201Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1917201Trigger
