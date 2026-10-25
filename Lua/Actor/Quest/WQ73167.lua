require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73167 = class("Quest73167", QuestActorProxy)
Quest73167.defaultAlias = "Quest73167"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73167:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73167:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7316701"] = self.OnSubStart7316701,
        ["7316702"] = self.OnSubStart7316702,
        ["7316705"] = self.OnSubStart7316705,
        ["7316703"] = self.OnSubStart7316703,
        ["7316704"] = self.OnSubStart7316704
    }
end

function Quest73167:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7316701"] = self.OnSubFinish7316701,
        ["7316702"] = self.OnSubFinish7316702,
        ["7316705"] = self.OnSubFinish7316705,
        ["7316703"] = self.OnSubFinish7316703,
        ["7316704"] = self.OnSubFinish7316704
    }
end

function Quest73167:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73167:Start()
    print("Start")
end

function Quest73167:OnDestroy()
    print("OnDestroy")
end

function Quest73167:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73167:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73167:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73167:OnSubStart7316701(arg1)
    print("OnSubStart7316701")
end

function Quest73167:OnSubFinish7316701(arg1)
    print("OnSubFinish7316701")
end

function Quest73167:OnSubStart7316702(arg1)
    print("OnSubStart7316702")
    self.CreateQuestNpc(self, arg1, npcs.Npc20705Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20705Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20705Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7316702_N20705").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73167:OnSubFinish7316702(arg1)
    print("OnSubFinish7316702")
end

function Quest73167:OnSubStart7316705(arg1)
    print("OnSubStart7316705")
    self:CreateQuestNpc(arg1, npcs.Npc20705Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20705Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20705Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73167:OnSubFinish7316705(arg1)
    print("OnSubFinish7316705")
end

function Quest73167:OnSubStart7316703(arg1)
    print("OnSubStart7316703")
    self:CreateQuestNpc(arg1, npcs.Npc20705Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20705Data.alias):DoFreeStyle(1040, true, nil, true, true, false, false)
end

function Quest73167:OnSubFinish7316703(arg1)
    print("OnSubFinish7316703")
end

function Quest73167:OnSubStart7316704(arg1)
    print("OnSubStart7316704")
    self:RequestInteraction(npcs.Npc20705Data.alias)
    self:GetQuestNpcActor(npcs.Npc20705Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73167:OnSubFinish7316704(arg1)
    print("OnSubFinish7316704")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20705Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73167
