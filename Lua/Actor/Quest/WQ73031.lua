require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73031 = class("Quest73031", QuestActorProxy)
Quest73031.defaultAlias = "Quest73031"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73031:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7303102"] = self.OnSubStart7303102,
        ["7303103"] = self.OnSubStart7303103,
        ["7303106"] = self.OnSubStart7303106,
        ["7303104"] = self.OnSubStart7303104,
        ["7303105"] = self.OnSubStart7303105,
        ["7303101"] = self.OnSubStart7303101,
        ["7303107"] = self.OnSubStart7303107
    }
end

function Quest73031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7303102"] = self.OnSubFinish7303102,
        ["7303103"] = self.OnSubFinish7303103,
        ["7303106"] = self.OnSubFinish7303106,
        ["7303104"] = self.OnSubFinish7303104,
        ["7303105"] = self.OnSubFinish7303105,
        ["7303101"] = self.OnSubFinish7303101,
        ["7303107"] = self.OnSubFinish7303107
    }
end

function Quest73031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7303105"] = self.OnSubFailed7303105}
end

function Quest73031:Start()
    print("Start")
end

function Quest73031:OnDestroy()
    print("OnDestroy")
end

function Quest73031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73031:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73031:OnSubStart7303102(arg1)
    print("OnSubStart7303102")
    self:CreateQuestNpc(arg1, npcs.Npc20646Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20648Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20646Data.alias):ShowNpcWithLevelTagId(38, false)
    self:GetQuestNpcActor(npcs.Npc20648Data.alias):ShowNpcWithLevelTagId(38, false)
end

function Quest73031:OnSubFinish7303102(arg1)
    print("OnSubFinish7303102")
end

function Quest73031:OnSubStart7303103(arg1)
    print("OnSubStart7303103")
end

function Quest73031:OnSubFinish7303103(arg1)
    print("OnSubFinish7303103")
end

function Quest73031:OnSubStart7303106(arg1)
    print("OnSubStart7303106")
end

function Quest73031:OnSubFinish7303106(arg1)
    print("OnSubFinish7303106")
    self:NarratorOnlyTask(datas.Paimon1_start, nil, "")
end

function Quest73031:OnSubStart7303104(arg1)
    print("OnSubStart7303104")
    self:CreateQuestNpc(arg1, npcs.Npc20813Data.id, 1)
    actorMgr:CreateActorWithPos("Q73031Trigger_7303104", "Actor/Gadget/Q73031Trigger_7303104", 70900002, 0, sceneData:GetDummyPoint(3, "Q7303104_guide").pos, sceneData:GetDummyPoint(3, "Q7303104_guide").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc20646Data.alias):ShowNpcWithLevelTagId(38, false)
    self:GetQuestNpcActor(npcs.Npc20648Data.alias):ShowNpcWithLevelTagId(38, false)
end

function Quest73031:OnSubFinish7303104(arg1)
    print("OnSubFinish7303104")
    self:SafeDestroyQuestNpc(npcs.Npc20646Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20648Data.alias, 3)
end

function Quest73031:OnSubStart7303105(arg1)
    print("OnSubStart7303105")
end

function Quest73031:OnSubFinish7303105(arg1)
    print("OnSubFinish7303105")
    self:SafeDestroyQuestNpc(npcs.Npc20813Data.alias, 3)
end

function Quest73031:OnSubFailed7303105(arg1)
    print("OnSubFailed7303105")
    self:NarratorOnlyTask(datas.Paimon3_prepare, nil, "")
end

function Quest73031:OnSubStart7303101(arg1)
    print("OnSubStart7303101")
end

function Quest73031:OnSubFinish7303101(arg1)
    print("OnSubFinish7303101")
end

function Quest73031:OnSubStart7303107(arg1)
    print("OnSubStart7303107")
    self:CreateQuestNpc(arg1, npcs.Npc20646Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20647Data.id, 3)
end

function Quest73031:OnSubFinish7303107(arg1)
    print("OnSubFinish7303107")
end

return Quest73031
