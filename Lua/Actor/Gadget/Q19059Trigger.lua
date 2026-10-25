require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19059Trigger = class("Q19059Trigger", GadgetActorProxy)
Q19059Trigger.defaultAlias = "Q19059Trigger"
local Q19059ClientConfig = require("Quest/Client/Q19059ClientConfig")

local this
local subIDs = Q19059ClientConfig.SubIDs
local npcs = Q19059ClientConfig.Npcs

function Q19059Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q19059Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19059Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1905902)
    this:DestroySelf()
end

function Q19059Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19059Trigger
