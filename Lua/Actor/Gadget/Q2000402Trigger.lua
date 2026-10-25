require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2000402Trigger = class("Q2000402Trigger", GadgetActorProxy)
Q2000402Trigger.defaultAlias = "Q2000402Trigger"
local Q20004ClientConfig = require("Quest/Client/Q20004ClientConfig")

local subIDs = Q20004ClientConfig.SubIDs
local npcs = Q20004ClientConfig.Npcs
local datas = Q20004ClientConfig.Datas

function Q2000402Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2000402Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(11, DistType.EULER, sceneData:GetDummyPoint(3, "Q2000402_N10095"), self.TriggerIn, self.TriggerOut)
end

function Q2000402Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("20004")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q2000402_N10095").pos, 0, 3, false, false)
    actor:NarratorOnlyTask(datas.NarratorTable, nil, "")
    actor:FinishQuestID(false, 2000402)
    self:DestroySelf()
end

function Q2000402Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2000402Trigger
