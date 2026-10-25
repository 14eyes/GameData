require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910501Trigger = class("Q1910501Trigger", GadgetActorProxy)
Q1910501Trigger.defaultAlias = "Q1910501Trigger"
local Q19105ClientConfig = require("Quest/Client/Q19105ClientConfig")

local subIDs = Q19105ClientConfig.SubIDs
local npcs = Q19105ClientConfig.Npcs

function Q1910501Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910501Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910501Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19105"):FinishQuestID(false, 1910501)
    self:DestroySelf()
end

function Q1910501Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910501Trigger
