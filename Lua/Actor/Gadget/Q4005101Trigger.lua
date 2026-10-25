require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005101Trigger = class("Q4005101Trigger", GadgetActorProxy)
Q4005101Trigger.defaultAlias = "Q4005101Trigger"
local Q40051ClientConfig = require("Quest/Client/Q40051ClientConfig")

local subIDs = Q40051ClientConfig.SubIDs
local npcs = Q40051ClientConfig.Npcs
local datas = Q40051ClientConfig.Datas

function Q4005101Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005101Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005101Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40051")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId4005101, nil, 40051)
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(7, "Q4005114_guide_LOOKAT").pos, 0, 3, false, false)
    actor:FinishQuestID(false, 4005101)
    self:DestroySelf()
end

function Q4005101Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005101Trigger
