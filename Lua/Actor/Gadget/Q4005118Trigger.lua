require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005118Trigger = class("Q4005118Trigger", GadgetActorProxy)
Q4005118Trigger.defaultAlias = "Q4005118Trigger"
local Q40051ClientConfig = require("Quest/Client/Q40051ClientConfig")

local subIDs = Q40051ClientConfig.SubIDs
local npcs = Q40051ClientConfig.Npcs
local datas = Q40051ClientConfig.Datas

function Q4005118Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005118Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005118Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40051")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId4005106, nil, 40051)
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(7, "Q4005112_guide").pos, 0, 1, false, false)
    actor:FinishQuestID(false, 4005118)
    self:DestroySelf()
end

function Q4005118Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005118Trigger
