require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73161 = class("Quest73161", QuestActorProxy)
Quest73161.defaultAlias = "Quest73161"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73161:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73161:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7316101"] = self.OnSubStart7316101,
        ["7316102"] = self.OnSubStart7316102,
        ["7316105"] = self.OnSubStart7316105,
        ["7316103"] = self.OnSubStart7316103,
        ["7316104"] = self.OnSubStart7316104
    }
end

function Quest73161:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7316101"] = self.OnSubFinish7316101,
        ["7316102"] = self.OnSubFinish7316102,
        ["7316105"] = self.OnSubFinish7316105,
        ["7316103"] = self.OnSubFinish7316103,
        ["7316104"] = self.OnSubFinish7316104
    }
end

function Quest73161:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73161:Start()
    print("Start")
end

function Quest73161:OnDestroy()
    print("OnDestroy")
end

function Quest73161:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73161:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73161:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73161:OnSubStart7316101(arg1)
    print("OnSubStart7316101")
end

function Quest73161:OnSubFinish7316101(arg1)
    print("OnSubFinish7316101")
end

function Quest73161:OnSubStart7316102(arg1)
    print("OnSubStart7316102")
    self.CreateQuestNpc(self, arg1, npcs.Npc20699Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20699Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20699Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7316102_N20699").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73161:OnSubFinish7316102(arg1)
    print("OnSubFinish7316102")
end

function Quest73161:OnSubStart7316105(arg1)
    print("OnSubStart7316105")
    self:CreateQuestNpc(arg1, npcs.Npc20699Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20699Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20699Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73161:OnSubFinish7316105(arg1)
    print("OnSubFinish7316105")
end

function Quest73161:OnSubStart7316103(arg1)
    print("OnSubStart7316103")
    self:CreateQuestNpc(arg1, npcs.Npc20699Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20699Data.alias):DoFreeStyle(1040, true, nil, true, true, false, false)
end

function Quest73161:OnSubFinish7316103(arg1)
    print("OnSubFinish7316103")
end

function Quest73161:OnSubStart7316104(arg1)
    print("OnSubStart7316104")
    self:RequestInteraction(npcs.Npc20699Data.alias)
    self:GetQuestNpcActor(npcs.Npc20699Data.alias):DoFreeStyle(1050, true, nil, true, true, false, false)
end

function Quest73161:OnSubFinish7316104(arg1)
    print("OnSubFinish7316104")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20699Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73161
