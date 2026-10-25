require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910402Trigger = class("Q1910402Trigger", GadgetActorProxy)
Q1910402Trigger.defaultAlias = "Q1910402Trigger"
local Q19104ClientConfig = require("Quest/Client/Q19104ClientConfig")

local subIDs = Q19104ClientConfig.SubIDs
local npcs = Q19104ClientConfig.Npcs
local datas = Q19104ClientConfig.Datas

function Q1910402Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910402Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910402Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19104")
    actor:NarratorOnlyTaskByData(datas.Q1910402NarratorWithId)
    actor:FinishQuestID(false, 1910402)
    self:DestroySelf()
end

function Q1910402Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910402Trigger
