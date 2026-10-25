require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004901Trigger = class("Q4004901Trigger", GadgetActorProxy)
Q4004901Trigger.defaultAlias = "Q4004901Trigger"
local Q40049ClientConfig = require("Quest/Client/Q40049ClientConfig")

local subIDs = Q40049ClientConfig.SubIDs
local datas = Q40049ClientConfig.Datas

function Q4004901Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4004901Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(17.50245, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4004901Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40049")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId4004901, nil, 40049)
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(7, "Q4004901_operator01").pos, 0, 3, false, false)
    actor:FinishQuestID(false, 4004908)
    self:DestroySelf()
end

function Q4004901Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4004901Trigger
