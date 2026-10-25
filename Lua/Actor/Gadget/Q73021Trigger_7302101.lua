require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73021Trigger_7302101 = class("Q73021Trigger_7302101", GadgetActorProxy)
Q73021Trigger_7302101.defaultAlias = "Q73021Trigger_7302101"
local Q73021ClientConfig = require("Quest/Client/Q73021ClientConfig")

local subIDs = Q73021ClientConfig.SubIDs
local npcs = Q73021ClientConfig.Npcs
local datas = Q73021ClientConfig.Datas

function Q73021Trigger_7302101:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73021Trigger_7302101:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73021Trigger_7302101:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73021")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7302102_guide").pos, 0, 3, true, false)
    actorUtils.FinishQuestID(false, 7302101)
    actor:NarratorOnlyTask(datas.Reminder_7302101, nil, "")
    self:DestroySelf()
end

function Q73021Trigger_7302101:TriggerOut()
    print("TriggerOut")
end

return Q73021Trigger_7302101
