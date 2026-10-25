require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19038Trigger = class("Q19038Trigger", GadgetActorProxy)
Q19038Trigger.defaultAlias = "Q19038Trigger"
local Q19038ClientConfig = require("Quest/Client/Q19038ClientConfig")

local subIDs = Q19038ClientConfig.SubIDs
local npcs = Q19038ClientConfig.Npcs

function Q19038Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19038Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19038Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19038"):FinishQuestID(false, 1903801)
    self:DestroySelf()
end

function Q19038Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19038Trigger
