require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910403Trigger = class("Q1910403Trigger", GadgetActorProxy)
Q1910403Trigger.defaultAlias = "Q1910403Trigger"
local Q19104ClientConfig = require("Quest/Client/Q19104ClientConfig")

local subIDs = Q19104ClientConfig.SubIDs
local npcs = Q19104ClientConfig.Npcs
local datas = Q19104ClientConfig.Datas

function Q1910403Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910403Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910403Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19104")
    actor:FinishQuestID(false, 1910403)
    actor:NarratorOnlyTaskByData(datas.Q1910403NarratorWithId)
    self:DestroySelf()
end

function Q1910403Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910403Trigger
