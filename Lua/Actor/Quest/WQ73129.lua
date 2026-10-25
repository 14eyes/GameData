require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73129 = class("Quest73129", QuestActorProxy)
Quest73129.defaultAlias = "Quest73129"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73129:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73129:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7312901"] = self.OnSubStart7312901,
        ["7312902"] = self.OnSubStart7312902,
        ["7312906"] = self.OnSubStart7312906,
        ["7312903"] = self.OnSubStart7312903,
        ["7312904"] = self.OnSubStart7312904,
        ["7312905"] = self.OnSubStart7312905
    }
end

function Quest73129:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7312901"] = self.OnSubFinish7312901,
        ["7312902"] = self.OnSubFinish7312902,
        ["7312906"] = self.OnSubFinish7312906,
        ["7312903"] = self.OnSubFinish7312903,
        ["7312904"] = self.OnSubFinish7312904,
        ["7312905"] = self.OnSubFinish7312905
    }
end

function Quest73129:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73129:Start()
    print("Start")
end

function Quest73129:OnDestroy()
    print("OnDestroy")
end

function Quest73129:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73129:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73129:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73129:OnSubStart7312901(arg1)
    print("OnSubStart7312901")
end

function Quest73129:OnSubFinish7312901(arg1)
    print("OnSubFinish7312901")
end

function Quest73129:OnSubStart7312902(arg1)
    print("OnSubStart7312902")
    self.CreateQuestNpc(self, arg1, npcs.Npc20695Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20695Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20695Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7312903_N20695").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73129:OnSubFinish7312902(arg1)
    print("OnSubFinish7312902")
end

function Quest73129:OnSubStart7312906(arg1)
    print("OnSubStart7312906")
    self:CreateQuestNpc(arg1, npcs.Npc20695Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20695Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20695Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73129:OnSubFinish7312906(arg1)
    print("OnSubFinish7312906")
end

function Quest73129:OnSubStart7312903(arg1)
    print("OnSubStart7312903")
    self:CreateQuestNpc(arg1, npcs.Npc20695Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20695Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73129:OnSubFinish7312903(arg1)
    print("OnSubFinish7312903")
end

function Quest73129:OnSubStart7312904(arg1)
    print("OnSubStart7312904")
    self:GetQuestNpcActor(npcs.Npc20695Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73129:OnSubFinish7312904(arg1)
    print("OnSubFinish7312904")
end

function Quest73129:OnSubStart7312905(arg1)
    print("OnSubStart7312905")
    self:RequestInteraction(npcs.Npc20695Data.alias)
    self:GetQuestNpcActor(npcs.Npc20695Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73129:OnSubFinish7312905(arg1)
    print("OnSubFinish7312905")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20695Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73129
