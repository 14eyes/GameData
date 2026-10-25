require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1917302Trigger = class("Q1917302Trigger", GadgetActorProxy)
Q1917302Trigger.defaultAlias = "Q1917302Trigger"
local Q19173ClientConfig = require("Quest/Client/Q19173ClientConfig")

local this
local subIDs = Q19173ClientConfig.SubIDs
local npcs = Q19173ClientConfig.Npcs
local points = Q19173ClientConfig.Points

function Q1917302Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1917302Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1917302Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1917302)
    this:DestroySelf()
end

function Q1917302Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1917302Trigger
