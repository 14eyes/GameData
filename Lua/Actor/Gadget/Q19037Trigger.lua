require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19037Trigger = class("Q19037Trigger", GadgetActorProxy)
Q19037Trigger.defaultAlias = "Q19037Trigger"
local Q19037ClientConfig = require("Quest/Client/Q19037ClientConfig")

local subIDs = Q19037ClientConfig.SubIDs
local npcs = Q19037ClientConfig.Npcs
local datas = Q19037ClientConfig.Datas

function Q19037Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19037Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19037Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19037"):FinishQuestID(false, 1903703)
    self:DestroySelf()
end

function Q19037Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19037Trigger
