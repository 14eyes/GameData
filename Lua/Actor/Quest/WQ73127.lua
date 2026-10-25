require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73127 = class("Quest73127", QuestActorProxy)
Quest73127.defaultAlias = "Quest73127"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73127:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73127:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7312701"] = self.OnSubStart7312701,
        ["7312702"] = self.OnSubStart7312702,
        ["7312706"] = self.OnSubStart7312706,
        ["7312703"] = self.OnSubStart7312703,
        ["7312704"] = self.OnSubStart7312704,
        ["7312705"] = self.OnSubStart7312705
    }
end

function Quest73127:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7312701"] = self.OnSubFinish7312701,
        ["7312702"] = self.OnSubFinish7312702,
        ["7312706"] = self.OnSubFinish7312706,
        ["7312703"] = self.OnSubFinish7312703,
        ["7312704"] = self.OnSubFinish7312704,
        ["7312705"] = self.OnSubFinish7312705
    }
end

function Quest73127:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73127:Start()
    print("Start")
end

function Quest73127:OnDestroy()
    print("OnDestroy")
end

function Quest73127:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73127:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73127:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73127:OnSubStart7312701(arg1)
    print("OnSubStart7312701")
end

function Quest73127:OnSubFinish7312701(arg1)
    print("OnSubFinish7312701")
end

function Quest73127:OnSubStart7312702(arg1)
    print("OnSubStart7312702")
    self.CreateQuestNpc(self, arg1, npcs.Npc20693Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20693Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20693Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7312703_N20693").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73127:OnSubFinish7312702(arg1)
    print("OnSubFinish7312702")
end

function Quest73127:OnSubStart7312706(arg1)
    print("OnSubStart7312706")
    self:CreateQuestNpc(arg1, npcs.Npc20693Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20693Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20693Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73127:OnSubFinish7312706(arg1)
    print("OnSubFinish7312706")
end

function Quest73127:OnSubStart7312703(arg1)
    print("OnSubStart7312703")
    self:CreateQuestNpc(arg1, npcs.Npc20693Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20693Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73127:OnSubFinish7312703(arg1)
    print("OnSubFinish7312703")
end

function Quest73127:OnSubStart7312704(arg1)
    print("OnSubStart7312704")
    self:GetQuestNpcActor(npcs.Npc20693Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73127:OnSubFinish7312704(arg1)
    print("OnSubFinish7312704")
end

function Quest73127:OnSubStart7312705(arg1)
    print("OnSubStart7312705")
    self:RequestInteraction(npcs.Npc20693Data.alias)
    self:GetQuestNpcActor(npcs.Npc20693Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73127:OnSubFinish7312705(arg1)
    print("OnSubFinish7312705")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20693Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73127
