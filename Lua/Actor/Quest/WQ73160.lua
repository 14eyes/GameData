require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73160 = class("Quest73160", QuestActorProxy)
Quest73160.defaultAlias = "Quest73160"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73160:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73160:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7316001"] = self.OnSubStart7316001,
        ["7316002"] = self.OnSubStart7316002,
        ["7316005"] = self.OnSubStart7316005,
        ["7316003"] = self.OnSubStart7316003,
        ["7316004"] = self.OnSubStart7316004
    }
end

function Quest73160:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7316001"] = self.OnSubFinish7316001,
        ["7316002"] = self.OnSubFinish7316002,
        ["7316005"] = self.OnSubFinish7316005,
        ["7316003"] = self.OnSubFinish7316003,
        ["7316004"] = self.OnSubFinish7316004
    }
end

function Quest73160:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73160:Start()
    print("Start")
end

function Quest73160:OnDestroy()
    print("OnDestroy")
end

function Quest73160:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73160:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73160:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73160:OnSubStart7316001(arg1)
    print("OnSubStart7316001")
end

function Quest73160:OnSubFinish7316001(arg1)
    print("OnSubFinish7316001")
end

function Quest73160:OnSubStart7316002(arg1)
    print("OnSubStart7316002")
    self.CreateQuestNpc(self, arg1, npcs.Npc20698Data.id, 1)
    self.GetQuestNpcActor(self, npcs.Npc20698Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self.GetQuestNpcActor(self, npcs.Npc20698Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
        self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7316002_N20698").pos, 1, 1, false, false)
        self:NarratorOnlyTaskByData(datas.NarratorWithId)
    end, nil)
end

function Quest73160:OnSubFinish7316002(arg1)
    print("OnSubFinish7316002")
end

function Quest73160:OnSubStart7316005(arg1)
    print("OnSubStart7316005")
    self:CreateQuestNpc(arg1, npcs.Npc20698Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20698Data.alias):DoFreeStyle(6010, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc20698Data.alias):CheckPlayerDistTask(12, 1, function(arg1)
        arg1:DestroyWithDisappear(false)
    end, nil)
end

function Quest73160:OnSubFinish7316005(arg1)
    print("OnSubFinish7316005")
end

function Quest73160:OnSubStart7316003(arg1)
    print("OnSubStart7316003")
    self:CreateQuestNpc(arg1, npcs.Npc20698Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20698Data.alias):DoFreeStyle(1040, true, nil, true, true, false, false)
end

function Quest73160:OnSubFinish7316003(arg1)
    print("OnSubFinish7316003")
end

function Quest73160:OnSubStart7316004(arg1)
    print("OnSubStart7316004")
    self:RequestInteraction(npcs.Npc20698Data.alias)
    self:GetQuestNpcActor(npcs.Npc20698Data.alias):DoFreeStyle(6060, true, nil, true, true, false, false)
end

function Quest73160:OnSubFinish7316004(arg1)
    print("OnSubFinish7316004")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20698Data.alias):DestroyWithDisappear(false)
    end)
end

return Quest73160
