require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73165 = class("Quest73165", QuestActorProxy)
Quest73165.defaultAlias = "Quest73165"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73165:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73165:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7316501"] = self.OnSubStart7316501,
        ["7316502"] = self.OnSubStart7316502,
        ["7316505"] = self.OnSubStart7316505,
        ["7316503"] = self.OnSubStart7316503,
        ["7316504"] = self.OnSubStart7316504
    }
end

function Quest73165:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7316501"] = self.OnSubFinish7316501,
        ["7316502"] = self.OnSubFinish7316502,
        ["7316505"] = self.OnSubFinish7316505,
        ["7316503"] = self.OnSubFinish7316503,
        ["7316504"] = self.OnSubFinish7316504
    }
end

function Quest73165:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73165:Start()
    print("Start")
end

function Quest73165:OnDestroy()
    print("OnDestroy")
end

function Quest73165:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73165:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73165:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73165:OnSubStart7316501(arg1)
    print("OnSubStart7316501")
end

function Quest73165:OnSubFinish7316501(arg1)
    print("OnSubFinish7316501")
end

function Quest73165:OnSubStart7316502(arg1)
    print("OnSubStart7316502")
    self.CreateQuestNpc(self, arg1, npcs.Npc20703Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20703Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20703Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7316502_N20703").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73165:OnSubFinish7316502(arg1)
    print("OnSubFinish7316502")
end

function Quest73165:OnSubStart7316505(arg1)
    print("OnSubStart7316505")
    self:CreateQuestNpc(arg1, npcs.Npc20703Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20703Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20703Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73165:OnSubFinish7316505(arg1)
    print("OnSubFinish7316505")
end

function Quest73165:OnSubStart7316503(arg1)
    print("OnSubStart7316503")
    self:CreateQuestNpc(arg1, npcs.Npc20703Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20703Data.alias):DoFreeStyle(1040, true, nil, true, true, false, false)
end

function Quest73165:OnSubFinish7316503(arg1)
    print("OnSubFinish7316503")
end

function Quest73165:OnSubStart7316504(arg1)
    print("OnSubStart7316504")
    self:RequestInteraction(npcs.Npc20703Data.alias)
    self:GetQuestNpcActor(npcs.Npc20703Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73165:OnSubFinish7316504(arg1)
    print("OnSubFinish7316504")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20703Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73165
