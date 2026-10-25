require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1910411Trigger = class("Q1910411Trigger", GadgetActorProxy)
Q1910411Trigger.defaultAlias = "Q1910411Trigger"
local Q19104ClientConfig = require("Quest/Client/Q19104ClientConfig")

local subIDs = Q19104ClientConfig.SubIDs
local npcs = Q19104ClientConfig.Npcs
local datas = Q19104ClientConfig.Datas

function Q1910411Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1910411Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1910411Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19104")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "COOP103901Pot01").pos, 0, 2, true, false)
    actor:NarratorOnlyTaskByData(datas.Q1910411NarratorWithId)
    actor:FinishQuestID(false, 1910411)
    self:DestroySelf()
end

function Q1910411Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1910411Trigger
