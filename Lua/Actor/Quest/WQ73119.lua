require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73119 = class("Quest73119", QuestActorProxy)
Quest73119.defaultAlias = "Quest73119"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73119:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73119:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7311901"] = self.OnSubStart7311901,
        ["7311902"] = self.OnSubStart7311902,
        ["7311906"] = self.OnSubStart7311906,
        ["7311903"] = self.OnSubStart7311903,
        ["7311904"] = self.OnSubStart7311904,
        ["7311905"] = self.OnSubStart7311905
    }
end

function Quest73119:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7311901"] = self.OnSubFinish7311901,
        ["7311902"] = self.OnSubFinish7311902,
        ["7311906"] = self.OnSubFinish7311906,
        ["7311903"] = self.OnSubFinish7311903,
        ["7311904"] = self.OnSubFinish7311904,
        ["7311905"] = self.OnSubFinish7311905
    }
end

function Quest73119:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73119:Start()
    print("Start")
end

function Quest73119:OnDestroy()
    print("OnDestroy")
end

function Quest73119:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73119:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73119:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73119:OnSubStart7311901(arg1)
    print("OnSubStart7311901")
end

function Quest73119:OnSubFinish7311901(arg1)
    print("OnSubFinish7311901")
end

function Quest73119:OnSubStart7311902(arg1)
    print("OnSubStart7311902")
    self.CreateQuestNpc(self, arg1, npcs.Npc20686Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20686Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20686Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7311903_N20686").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73119:OnSubFinish7311902(arg1)
    print("OnSubFinish7311902")
end

function Quest73119:OnSubStart7311906(arg1)
    print("OnSubStart7311906")
    self:CreateQuestNpc(arg1, npcs.Npc20686Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20686Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20686Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73119:OnSubFinish7311906(arg1)
    print("OnSubFinish7311906")
end

function Quest73119:OnSubStart7311903(arg1)
    print("OnSubStart7311903")
    self:CreateQuestNpc(arg1, npcs.Npc20686Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20686Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73119:OnSubFinish7311903(arg1)
    print("OnSubFinish7311903")
end

function Quest73119:OnSubStart7311904(arg1)
    print("OnSubStart7311904")
    self:GetQuestNpcActor(npcs.Npc20686Data.alias):DoFreeStyle(6040, true, nil, true, true, false, false)
end

function Quest73119:OnSubFinish7311904(arg1)
    print("OnSubFinish7311904")
end

function Quest73119:OnSubStart7311905(arg1)
    print("OnSubStart7311905")
    self:RequestInteraction(npcs.Npc20686Data.alias)
    self:GetQuestNpcActor(npcs.Npc20686Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73119:OnSubFinish7311905(arg1)
    print("OnSubFinish7311905")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20686Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73119
