require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73162 = class("Quest73162", QuestActorProxy)
Quest73162.defaultAlias = "Quest73162"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73162:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73162:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7316201"] = self.OnSubStart7316201,
        ["7316202"] = self.OnSubStart7316202,
        ["7316205"] = self.OnSubStart7316205,
        ["7316203"] = self.OnSubStart7316203,
        ["7316204"] = self.OnSubStart7316204
    }
end

function Quest73162:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7316201"] = self.OnSubFinish7316201,
        ["7316202"] = self.OnSubFinish7316202,
        ["7316205"] = self.OnSubFinish7316205,
        ["7316203"] = self.OnSubFinish7316203,
        ["7316204"] = self.OnSubFinish7316204
    }
end

function Quest73162:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73162:Start()
    print("Start")
end

function Quest73162:OnDestroy()
    print("OnDestroy")
end

function Quest73162:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73162:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73162:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73162:OnSubStart7316201(arg1)
    print("OnSubStart7316201")
end

function Quest73162:OnSubFinish7316201(arg1)
    print("OnSubFinish7316201")
end

function Quest73162:OnSubStart7316202(arg1)
    print("OnSubStart7316202")
    self.CreateQuestNpc(self, arg1, npcs.Npc20700Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20700Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20700Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7316202_N20700").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73162:OnSubFinish7316202(arg1)
    print("OnSubFinish7316202")
end

function Quest73162:OnSubStart7316205(arg1)
    print("OnSubStart7316205")
    self:CreateQuestNpc(arg1, npcs.Npc20700Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20700Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20700Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73162:OnSubFinish7316205(arg1)
    print("OnSubFinish7316205")
end

function Quest73162:OnSubStart7316203(arg1)
    print("OnSubStart7316203")
    self:CreateQuestNpc(arg1, npcs.Npc20700Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20700Data.alias):DoFreeStyle(1040, true, nil, true, true, false, false)
end

function Quest73162:OnSubFinish7316203(arg1)
    print("OnSubFinish7316203")
end

function Quest73162:OnSubStart7316204(arg1)
    print("OnSubStart7316204")
    self:RequestInteraction(npcs.Npc20700Data.alias)
    self:GetQuestNpcActor(npcs.Npc20700Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73162:OnSubFinish7316204(arg1)
    print("OnSubFinish7316204")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20700Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73162
