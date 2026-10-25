require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005001Trigger = class("Q4005001Trigger", GadgetActorProxy)
Q4005001Trigger.defaultAlias = "Q4005001Trigger"
local Q40050ClientConfig = require("Quest/Client/Q40050ClientConfig")

local subIDs = Q40050ClientConfig.SubIDs
local datas = Q40050ClientConfig.Datas

function Q4005001Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005001Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005001Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40050")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId4005001, nil, 40050)
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(7, "Q4005001_operator").pos, 0, 2, false, false)
    actor:FinishQuestID(false, 4005008)
    self:DestroySelf()
end

function Q4005001Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005001Trigger
