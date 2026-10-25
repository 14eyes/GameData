require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905406Trigger = class("Q1905406Trigger", GadgetActorProxy)
Q1905406Trigger.defaultAlias = "Q1905406Trigger"
local Q19054ClientConfig = require("Quest/Client/Q19054ClientConfig")

local subIDs = Q19054ClientConfig.SubIDs
local npcs = Q19054ClientConfig.Npcs
local gadgets = Q19054ClientConfig.Gadgets

function Q1905406Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1905406Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1905406Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19054"):FinishQuestID(false, 1905406)
    self:DestroySelf()
end

function Q1905406Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1905406Trigger
