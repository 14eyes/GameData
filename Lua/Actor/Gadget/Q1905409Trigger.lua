require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905409Trigger = class("Q1905409Trigger", GadgetActorProxy)
Q1905409Trigger.defaultAlias = "Q1905409Trigger"
local Q19054ClientConfig = require("Quest/Client/Q19054ClientConfig")

local subIDs = Q19054ClientConfig.SubIDs
local npcs = Q19054ClientConfig.Npcs
local gadgets = Q19054ClientConfig.Gadgets

function Q1905409Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1905409Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(180, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1905409Trigger:TriggerIn()
    print("TriggerIn")
end

function Q1905409Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("19054"):FinishQuestID(true, 1905409)
    self:DestroySelf()
end

return Q1905409Trigger
