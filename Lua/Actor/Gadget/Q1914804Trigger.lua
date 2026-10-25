require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914804Trigger = class("Q1914804Trigger", GadgetActorProxy)
Q1914804Trigger.defaultAlias = "Q1914804Trigger"
local Q19148ClientConfig = require("Quest/Client/Q19148ClientConfig")

local subIDs = Q19148ClientConfig.SubIDs
local npcs = Q19148ClientConfig.Npcs
local datas = Q19148ClientConfig.Datas

function Q1914804Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914804Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914804Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19148")
    actor.FinishQuestID(false, 1914804)
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q1914805_C1914805_N12512").pos, 1, 2, true, false)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId1, nil, 19148)
    self:DestroySelf()
end

function Q1914804Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1914804Trigger
