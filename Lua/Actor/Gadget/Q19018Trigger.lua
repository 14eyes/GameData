require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19018Trigger = class("Q19018Trigger", GadgetActorProxy)
Q19018Trigger.defaultAlias = "Q19018Trigger"
local Q19018ClientConfig = require("Quest/Client/Q19018ClientConfig")

local subIDs = Q19018ClientConfig.SubIDs
local npcs = Q19018ClientConfig.Npcs

function Q19018Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19018Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19018Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19018"):FinishQuestID(false, 1901803)
    self:DestroySelf()
end

function Q19018Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19018Trigger
