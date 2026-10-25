require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73126 = class("Quest73126", QuestActorProxy)
Quest73126.defaultAlias = "Quest73126"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73126:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73126:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7312601"] = self.OnSubStart7312601,
        ["7312602"] = self.OnSubStart7312602,
        ["7312606"] = self.OnSubStart7312606,
        ["7312603"] = self.OnSubStart7312603,
        ["7312604"] = self.OnSubStart7312604,
        ["7312605"] = self.OnSubStart7312605
    }
end

function Quest73126:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7312601"] = self.OnSubFinish7312601,
        ["7312602"] = self.OnSubFinish7312602,
        ["7312606"] = self.OnSubFinish7312606,
        ["7312603"] = self.OnSubFinish7312603,
        ["7312604"] = self.OnSubFinish7312604,
        ["7312605"] = self.OnSubFinish7312605
    }
end

function Quest73126:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73126:Start()
    print("Start")
end

function Quest73126:OnDestroy()
    print("OnDestroy")
end

function Quest73126:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73126:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73126:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73126:OnSubStart7312601(arg1)
    print("OnSubStart7312601")
end

function Quest73126:OnSubFinish7312601(arg1)
    print("OnSubFinish7312601")
end

function Quest73126:OnSubStart7312602(arg1)
    print("OnSubStart7312602")
    self.CreateQuestNpc(self, arg1, npcs.Npc20692Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20692Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20692Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7312603_N20692").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73126:OnSubFinish7312602(arg1)
    print("OnSubFinish7312602")
end

function Quest73126:OnSubStart7312606(arg1)
    print("OnSubStart7312606")
    self:CreateQuestNpc(arg1, npcs.Npc20692Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20692Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20692Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73126:OnSubFinish7312606(arg1)
    print("OnSubFinish7312606")
end

function Quest73126:OnSubStart7312603(arg1)
    print("OnSubStart7312603")
    self:CreateQuestNpc(arg1, npcs.Npc20692Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20692Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73126:OnSubFinish7312603(arg1)
    print("OnSubFinish7312603")
end

function Quest73126:OnSubStart7312604(arg1)
    print("OnSubStart7312604")
    self:GetQuestNpcActor(npcs.Npc20692Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73126:OnSubFinish7312604(arg1)
    print("OnSubFinish7312604")
end

function Quest73126:OnSubStart7312605(arg1)
    print("OnSubStart7312605")
    self:RequestInteraction(npcs.Npc20692Data.alias)
    self:GetQuestNpcActor(npcs.Npc20692Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73126:OnSubFinish7312605(arg1)
    print("OnSubFinish7312605")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20692Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73126
