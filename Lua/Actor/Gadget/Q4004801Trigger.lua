require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004801Trigger = class("Q4004801Trigger", GadgetActorProxy)
Q4004801Trigger.defaultAlias = "Q4004801Trigger"
local Q40048ClientConfig = require("Quest/Client/Q40048ClientConfig")

local subIDs = Q40048ClientConfig.SubIDs
local datas = Q40048ClientConfig.Datas

function Q4004801Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4004801Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(9.540275, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4004801Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40048")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(7, "Q4004801_operator").pos, 0, 2, false, false)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId4004802, nil, 40048)
    actor:FinishQuestID(false, 4004808)
    self:DestroySelf()
end

function Q4004801Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4004801Trigger
