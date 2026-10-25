require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73131 = class("Quest73131", QuestActorProxy)
Quest73131.defaultAlias = "Quest73131"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73131:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73131:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7313101"] = self.OnSubStart7313101,
        ["7313102"] = self.OnSubStart7313102,
        ["7313106"] = self.OnSubStart7313106,
        ["7313103"] = self.OnSubStart7313103,
        ["7313104"] = self.OnSubStart7313104,
        ["7313105"] = self.OnSubStart7313105
    }
end

function Quest73131:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7313101"] = self.OnSubFinish7313101,
        ["7313102"] = self.OnSubFinish7313102,
        ["7313106"] = self.OnSubFinish7313106,
        ["7313103"] = self.OnSubFinish7313103,
        ["7313104"] = self.OnSubFinish7313104,
        ["7313105"] = self.OnSubFinish7313105
    }
end

function Quest73131:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73131:Start()
    print("Start")
end

function Quest73131:OnDestroy()
    print("OnDestroy")
end

function Quest73131:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73131:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73131:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73131:OnSubStart7313101(arg1)
    print("OnSubStart7313101")
end

function Quest73131:OnSubFinish7313101(arg1)
    print("OnSubFinish7313101")
end

function Quest73131:OnSubStart7313102(arg1)
    print("OnSubStart7313102")
    self.CreateQuestNpc(self, arg1, npcs.Npc20697Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20697Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20697Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7313103_N20697").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73131:OnSubFinish7313102(arg1)
    print("OnSubFinish7313102")
end

function Quest73131:OnSubStart7313106(arg1)
    print("OnSubStart7313106")
    self:CreateQuestNpc(arg1, npcs.Npc20697Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20697Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20697Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73131:OnSubFinish7313106(arg1)
    print("OnSubFinish7313106")
end

function Quest73131:OnSubStart7313103(arg1)
    print("OnSubStart7313103")
    self:CreateQuestNpc(arg1, npcs.Npc20697Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20697Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73131:OnSubFinish7313103(arg1)
    print("OnSubFinish7313103")
end

function Quest73131:OnSubStart7313104(arg1)
    print("OnSubStart7313104")
    self:GetQuestNpcActor(npcs.Npc20697Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73131:OnSubFinish7313104(arg1)
    print("OnSubFinish7313104")
end

function Quest73131:OnSubStart7313105(arg1)
    print("OnSubStart7313105")
    self:RequestInteraction(npcs.Npc20697Data.alias)
    self:GetQuestNpcActor(npcs.Npc20697Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73131:OnSubFinish7313105(arg1)
    print("OnSubFinish7313105")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20697Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73131
