require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73078 = class("Quest73078", QuestActorProxy)
Quest73078.defaultAlias = "Quest73078"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73078:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73078:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7307801"] = self.OnSubStart7307801,
        ["7307805"] = self.OnSubStart7307805,
        ["7307806"] = self.OnSubStart7307806,
        ["7307802"] = self.OnSubStart7307802,
        ["7307803"] = self.OnSubStart7307803,
        ["7307804"] = self.OnSubStart7307804
    }
end

function Quest73078:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7307801"] = self.OnSubFinish7307801,
        ["7307805"] = self.OnSubFinish7307805,
        ["7307806"] = self.OnSubFinish7307806,
        ["7307802"] = self.OnSubFinish7307802,
        ["7307803"] = self.OnSubFinish7307803,
        ["7307804"] = self.OnSubFinish7307804
    }
end

function Quest73078:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73078:Start()
    print("Start")
end

function Quest73078:OnDestroy()
    print("OnDestroy")
end

function Quest73078:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73078:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73078:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73078:OnSubStart7307801(arg1)
    print("OnSubStart7307801")
end

function Quest73078:OnSubFinish7307801(arg1)
    print("OnSubFinish7307801")
end

function Quest73078:OnSubStart7307805(arg1)
    print("OnSubStart7307805")
    self.CreateQuestNpc(self, arg1, npcs.Npc20669Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20669Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20669Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7307802_N20669").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73078:OnSubFinish7307805(arg1)
    print("OnSubFinish7307805")
end

function Quest73078:OnSubStart7307806(arg1)
    print("OnSubStart7307806")
    self:CreateQuestNpc(arg1, npcs.Npc20669Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20669Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20669Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73078:OnSubFinish7307806(arg1)
    print("OnSubFinish7307806")
end

function Quest73078:OnSubStart7307802(arg1)
    print("OnSubStart7307802")
    self:CreateQuestNpc(arg1, npcs.Npc20669Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20669Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
end

function Quest73078:OnSubFinish7307802(arg1)
    print("OnSubFinish7307802")
end

function Quest73078:OnSubStart7307803(arg1)
    print("OnSubStart7307803")
    self:GetQuestNpcActor(npcs.Npc20669Data.alias):DoFreeStyle(6040, true, nil, true, true, false, false)
end

function Quest73078:OnSubFinish7307803(arg1)
    print("OnSubFinish7307803")
end

function Quest73078:OnSubStart7307804(arg1)
    print("OnSubStart7307804")
    self:RequestInteraction(npcs.Npc20669Data.alias)
    self:GetQuestNpcActor(npcs.Npc20669Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73078:OnSubFinish7307804(arg1)
    print("OnSubFinish7307804")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20669Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73078
