require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73168 = class("Quest73168", QuestActorProxy)
Quest73168.defaultAlias = "Quest73168"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73168:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73168:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7316801"] = self.OnSubStart7316801,
        ["7316802"] = self.OnSubStart7316802,
        ["7316805"] = self.OnSubStart7316805,
        ["7316803"] = self.OnSubStart7316803,
        ["7316804"] = self.OnSubStart7316804
    }
end

function Quest73168:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7316801"] = self.OnSubFinish7316801,
        ["7316802"] = self.OnSubFinish7316802,
        ["7316805"] = self.OnSubFinish7316805,
        ["7316803"] = self.OnSubFinish7316803,
        ["7316804"] = self.OnSubFinish7316804
    }
end

function Quest73168:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73168:Start()
    print("Start")
end

function Quest73168:OnDestroy()
    print("OnDestroy")
end

function Quest73168:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73168:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73168:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73168:OnSubStart7316801(arg1)
    print("OnSubStart7316801")
end

function Quest73168:OnSubFinish7316801(arg1)
    print("OnSubFinish7316801")
end

function Quest73168:OnSubStart7316802(arg1)
    print("OnSubStart7316802")
    self.CreateQuestNpc(self, arg1, npcs.Npc20706Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20706Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20706Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7316802_N20706").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73168:OnSubFinish7316802(arg1)
    print("OnSubFinish7316802")
end

function Quest73168:OnSubStart7316805(arg1)
    print("OnSubStart7316805")
    self:CreateQuestNpc(arg1, npcs.Npc20706Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20706Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20706Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73168:OnSubFinish7316805(arg1)
    print("OnSubFinish7316805")
end

function Quest73168:OnSubStart7316803(arg1)
    print("OnSubStart7316803")
    self:CreateQuestNpc(arg1, npcs.Npc20706Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20706Data.alias):DoFreeStyle(1040, true, nil, true, true, false, false)
end

function Quest73168:OnSubFinish7316803(arg1)
    print("OnSubFinish7316803")
end

function Quest73168:OnSubStart7316804(arg1)
    print("OnSubStart7316804")
    self:RequestInteraction(npcs.Npc20706Data.alias)
    self:GetQuestNpcActor(npcs.Npc20706Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73168:OnSubFinish7316804(arg1)
    print("OnSubFinish7316804")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20706Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73168
