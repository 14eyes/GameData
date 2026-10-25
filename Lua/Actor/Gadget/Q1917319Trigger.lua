require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1917319Trigger = class("Q1917319Trigger", GadgetActorProxy)
Q1917319Trigger.defaultAlias = "Q1917319Trigger"
local Q19173ClientConfig = require("Quest/Client/Q19173ClientConfig")

local this
local subIDs = Q19173ClientConfig.SubIDs
local npcs = Q19173ClientConfig.Npcs
local points = Q19173ClientConfig.Points

function Q1917319Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1917319Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(55, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1917319Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1917319)
    this:DestroySelf()
end

function Q1917319Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1917319Trigger
