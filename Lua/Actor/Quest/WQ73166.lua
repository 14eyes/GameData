require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73166 = class("Quest73166", QuestActorProxy)
Quest73166.defaultAlias = "Quest73166"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73166:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73166:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7316601"] = self.OnSubStart7316601,
        ["7316602"] = self.OnSubStart7316602,
        ["7316605"] = self.OnSubStart7316605,
        ["7316603"] = self.OnSubStart7316603,
        ["7316604"] = self.OnSubStart7316604
    }
end

function Quest73166:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7316601"] = self.OnSubFinish7316601,
        ["7316602"] = self.OnSubFinish7316602,
        ["7316605"] = self.OnSubFinish7316605,
        ["7316603"] = self.OnSubFinish7316603,
        ["7316604"] = self.OnSubFinish7316604
    }
end

function Quest73166:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73166:Start()
    print("Start")
end

function Quest73166:OnDestroy()
    print("OnDestroy")
end

function Quest73166:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73166:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73166:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73166:OnSubStart7316601(arg1)
    print("OnSubStart7316601")
end

function Quest73166:OnSubFinish7316601(arg1)
    print("OnSubFinish7316601")
end

function Quest73166:OnSubStart7316602(arg1)
    print("OnSubStart7316602")
    self.CreateQuestNpc(self, arg1, npcs.Npc20704Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20704Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20704Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7316602_N20704").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73166:OnSubFinish7316602(arg1)
    print("OnSubFinish7316602")
end

function Quest73166:OnSubStart7316605(arg1)
    print("OnSubStart7316605")
    self:CreateQuestNpc(arg1, npcs.Npc20704Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20704Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20704Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73166:OnSubFinish7316605(arg1)
    print("OnSubFinish7316605")
end

function Quest73166:OnSubStart7316603(arg1)
    print("OnSubStart7316603")
    self:CreateQuestNpc(arg1, npcs.Npc20704Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20704Data.alias):DoFreeStyle(1040, true, nil, true, true, false, false)
end

function Quest73166:OnSubFinish7316603(arg1)
    print("OnSubFinish7316603")
end

function Quest73166:OnSubStart7316604(arg1)
    print("OnSubStart7316604")
    self:RequestInteraction(npcs.Npc20704Data.alias)
    self:GetQuestNpcActor(npcs.Npc20704Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73166:OnSubFinish7316604(arg1)
    print("OnSubFinish7316604")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20704Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73166
