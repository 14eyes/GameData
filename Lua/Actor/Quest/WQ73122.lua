require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73122 = class("Quest73122", QuestActorProxy)
Quest73122.defaultAlias = "Quest73122"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73122:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73122:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7312201"] = self.OnSubStart7312201,
        ["7312202"] = self.OnSubStart7312202,
        ["7312206"] = self.OnSubStart7312206,
        ["7312203"] = self.OnSubStart7312203,
        ["7312204"] = self.OnSubStart7312204,
        ["7312205"] = self.OnSubStart7312205
    }
end

function Quest73122:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7312201"] = self.OnSubFinish7312201,
        ["7312202"] = self.OnSubFinish7312202,
        ["7312206"] = self.OnSubFinish7312206,
        ["7312203"] = self.OnSubFinish7312203,
        ["7312204"] = self.OnSubFinish7312204,
        ["7312205"] = self.OnSubFinish7312205
    }
end

function Quest73122:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73122:Start()
    print("Start")
end

function Quest73122:OnDestroy()
    print("OnDestroy")
end

function Quest73122:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73122:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73122:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73122:OnSubStart7312201(arg1)
    print("OnSubStart7312201")
end

function Quest73122:OnSubFinish7312201(arg1)
    print("OnSubFinish7312201")
end

function Quest73122:OnSubStart7312202(arg1)
    print("OnSubStart7312202")
    self.CreateQuestNpc(self, arg1, npcs.Npc20688Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20688Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20688Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7312203_N20688").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73122:OnSubFinish7312202(arg1)
    print("OnSubFinish7312202")
end

function Quest73122:OnSubStart7312206(arg1)
    print("OnSubStart7312206")
    self:CreateQuestNpc(arg1, npcs.Npc20688Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20688Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20688Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73122:OnSubFinish7312206(arg1)
    print("OnSubFinish7312206")
end

function Quest73122:OnSubStart7312203(arg1)
    print("OnSubStart7312203")
    self:CreateQuestNpc(arg1, npcs.Npc20688Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20688Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73122:OnSubFinish7312203(arg1)
    print("OnSubFinish7312203")
end

function Quest73122:OnSubStart7312204(arg1)
    print("OnSubStart7312204")
    self:GetQuestNpcActor(npcs.Npc20688Data.alias):DoFreeStyle(6040, true, nil, true, true, false, false)
end

function Quest73122:OnSubFinish7312204(arg1)
    print("OnSubFinish7312204")
end

function Quest73122:OnSubStart7312205(arg1)
    print("OnSubStart7312205")
    self:RequestInteraction(npcs.Npc20688Data.alias)
    self:GetQuestNpcActor(npcs.Npc20688Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73122:OnSubFinish7312205(arg1)
    print("OnSubFinish7312205")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20688Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73122
