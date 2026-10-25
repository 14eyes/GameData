require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73169 = class("Quest73169", QuestActorProxy)
Quest73169.defaultAlias = "Quest73169"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73169:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73169:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7316901"] = self.OnSubStart7316901,
        ["7316902"] = self.OnSubStart7316902,
        ["7316905"] = self.OnSubStart7316905,
        ["7316903"] = self.OnSubStart7316903,
        ["7316904"] = self.OnSubStart7316904
    }
end

function Quest73169:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7316901"] = self.OnSubFinish7316901,
        ["7316902"] = self.OnSubFinish7316902,
        ["7316905"] = self.OnSubFinish7316905,
        ["7316903"] = self.OnSubFinish7316903,
        ["7316904"] = self.OnSubFinish7316904
    }
end

function Quest73169:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73169:Start()
    print("Start")
end

function Quest73169:OnDestroy()
    print("OnDestroy")
end

function Quest73169:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73169:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73169:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73169:OnSubStart7316901(arg1)
    print("OnSubStart7316901")
end

function Quest73169:OnSubFinish7316901(arg1)
    print("OnSubFinish7316901")
end

function Quest73169:OnSubStart7316902(arg1)
    print("OnSubStart7316902")
    self.CreateQuestNpc(self, arg1, npcs.Npc20707Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20707Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20707Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7316902_N20707").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73169:OnSubFinish7316902(arg1)
    print("OnSubFinish7316902")
end

function Quest73169:OnSubStart7316905(arg1)
    print("OnSubStart7316905")
    self:CreateQuestNpc(arg1, npcs.Npc20707Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20707Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20707Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73169:OnSubFinish7316905(arg1)
    print("OnSubFinish7316905")
end

function Quest73169:OnSubStart7316903(arg1)
    print("OnSubStart7316903")
    self:CreateQuestNpc(arg1, npcs.Npc20707Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20707Data.alias):DoFreeStyle(1040, true, nil, true, true, false, false)
end

function Quest73169:OnSubFinish7316903(arg1)
    print("OnSubFinish7316903")
end

function Quest73169:OnSubStart7316904(arg1)
    print("OnSubStart7316904")
    self:RequestInteraction(npcs.Npc20707Data.alias)
    self:GetQuestNpcActor(npcs.Npc20707Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73169:OnSubFinish7316904(arg1)
    print("OnSubFinish7316904")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20707Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73169
